/*
 * Copyright (c) 2014-16 The PipeFabric team,
 *                       All Rights Reserved.
 *
 * This file is part of the PipeFabric package.
 *
 * PipeFabric is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License (GPL) as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This package is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; see the file LICENSE.
 * If not you can find the GPL at http://www.gnu.org/copyleft/gpl.html
 */

#ifndef ELEMENTSERIALIZABLE_HPP_
#define ELEMENTSERIALIZABLE_HPP_

#include "PFabricTypes.hpp"
#include "serialize.hpp"

namespace pfabric {
class ElementSerializable {
public:
	virtual void deserializeFromStream(StreamType& res) = 0;
	virtual void serializeToStream(StreamType& res) const = 0;
	virtual ~ElementSerializable() {} // to remove compiler warning
};
}
#endif /* ELEMENTSERIALIZABLE_HPP_ */
