#pragma once

#include "Acts/Definitions/Algebra.hpp"
#include "Acts/MagneticField/InterpolatedBFieldMap.hpp"
#include "Acts/Utilities/detail/Axis.hpp"
#include "Acts/Utilities/Grid.hpp"


#include <iostream>
#include <vector>
#include <functional>

namespace LUXEMagneticField {

/// 3D equidistant binning
using Grid_t =
        Acts::Grid<Acts::Vector3, Acts::detail::EquidistantAxis
                , Acts::detail::EquidistantAxis
                , Acts::detail::EquidistantAxis>;

using BField_t = Acts::InterpolatedBFieldMap<Grid_t>;

/// If any coordinate transformations are required
using transformationPos_t = std::function
        <Acts::Vector3(const Acts::Vector3)>;

using transformationBField_t = std::function
        <Acts::Vector3(const Acts::Vector3,
                       const Acts::Vector3)>;

using bFieldValue_t = std::function
        <Acts::Vector3(const std::array<double, 3>)>;

/// @brief Construct the test magnetic field
/// of a simple dipole located at the origin
///
/// @return an interpolated B field based
/// on a linear interpolation from values
/// calculated on a grid
BField_t buildLUXEBField(const transformationPos_t& transformPos,
                         const transformationBField_t& transformBField,
                         const std::vector<unsigned int> bins);

} // namespace LUXEGeometry
