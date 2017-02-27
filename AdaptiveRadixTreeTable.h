//
// Created by Players Inc on 27/02/2017.
//

#ifndef MVCCART_ADAPTIVERADIXTREETABLE_H
#define MVCCART_ADAPTIVERADIXTREETABLE_H

#include <iostream>
#include <inttypes.h>
#include "art.h"

typedef struct {
    int count;
    int max_count;
    const char **expected;
} prefix_data;



namespace pfabric {

    int iter_cb(void *data, const unsigned char* key, uint32_t key_len, void *val);
    static int test_prefix_cb(void *data, const unsigned char *k, uint32_t k_len, void *val);


    static int test_prefix_cb(void *data, const unsigned char *k, uint32_t k_len, void *val) {
        prefix_data *p = (prefix_data*)data;
        if(p->count < p->max_count)
        {
            std::cout << "p->count < p->max_count " << std::endl;
        }
        if(memcmp(k, p->expected[p->count], k_len) == 0)
        {
            std::cout <<"Key: %s Expect: %s", k, p->expected[p->count];
        }

        p->count++;
        return 0;
    }

    int iter_cb(void *data, const unsigned char* key, uint32_t key_len, void *val) {
        uint64_t *out = (uint64_t*)data;
        uintptr_t line = (uintptr_t)val;
        uint64_t mask = (line * (key[0] + key_len));
        out[0]++;
        out[1] ^= mask;
        return 0;
    }


    template <typename RecordType = char[512], typename KeyType = char[25]>
    class AdaptiveRadixTreeTable
    {

    private: art_tree t;
    private: char buf[512];
    private: int res;


        /**
         * Constructor for creating an empty table with a given schema.
         */
        AdaptiveRadixTreeTable() {  int res = art_tree_init(&t);}

        /**
         * Destructor for table.
         */
        ~AdaptiveRadixTreeTable() {  art_tree_destroy(&t); }



        /**
         * insert into tree keys and their values;
         */
        public:void insertOrUpdateByKey(KeyType key, const RecordType& rec)
        {
            int len = strlen(key);
            key[len-1] = '\0';
            art_insert(&t, (unsigned char*)key, len, (void*)key);
            std::cout<<"Size of ART: "<<art_size(&t)<<std::endl;
        }

        public:void deleteByKey(KeyType key)
        {
            int len;
            uintptr_t line = 1;
            len = strlen(key);
            key[len-1] = '\0';

            // Search first, ensure the entries still exit optional
            uintptr_t val = (uintptr_t)art_search(&t, (unsigned char*)key, len);

             // Delete, should get lineno back
            val = (uintptr_t)art_delete(&t, (unsigned char*)key, len);


        }


         public:void iterate()
        {
            uint64_t out[] = {0, 0};
            art_iter(&t, iter_cb, &out);
        }



    };
}


#endif //MVCCART_ADAPTIVERADIXTREETABLE_H
