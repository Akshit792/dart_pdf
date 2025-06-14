/*
 * Copyright (C) 2017, David PHAM-VAN <dev.nfet.net@gmail.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#if __has_include(<printing/printing-Swift.h>)
#import <printing/printing-Swift.h>
#else
#import "printing-Swift.h"
#endif

// Dart:ffi API

void net_nfet_printing_set_document(uint32_t job,
                                    const uint8_t* doc,
                                    uint64_t size) {
  dispatch_async(dispatch_get_main_queue(), ^{
    [PrintingPlugin setDocumentWithJob:job doc:doc size:size];
  });
}

void net_nfet_printing_set_error(uint32_t job, const char* message) {
  dispatch_async(dispatch_get_main_queue(), ^{
    [PrintingPlugin setErrorWithJob:job message:message];
  });
}

