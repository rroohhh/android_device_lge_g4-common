/*
 * Copyright (C) 2017 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include "cameraclient_shim.h"
#include <stdint.h>

namespace android {

const char CameraParameters::FOCUS_MODE_MANUAL_POSITION[] = "manual";
const char CameraParameters::WHITE_BALANCE_MANUAL_CCT[] = "manual-cct";

}; // namespace android

namespace android {
extern "C" void _ZN4qrcp22StillMoreTunableParamsC1Ev() {}
extern "C" void _Z20stillMore_jmf9K6K5NQfff() {}
extern "C" void _Z20stillMore_yPGmb6U2btPKPKhS2_jjjjjPKPKijjjPhS7_jjRiS8_S8_S8_() {}
}
