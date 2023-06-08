// Copyright (c) 2023, WSO2 LLC. (https://www.wso2.com).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied. See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/jballerina.java;

public type Error distinct error;

# A Parse a json value with projection
#
# + 'source - Source JSON value 
# + typed - Target type to be used for filtering in the projection
# + return - On success, returns the given target type value, else returns an `json:Error` 
public isolated function fromJsonWithType(json 'source, typedesc<any> typed = <>)
        returns typed|Error = @java:Method {'class: "io.ballerina.stdlib.data.json.JsonToJson"} external;

# Parse a json byte array with projection
#
# + bytes - Byte array of json
# + typed - Target type to be used for filtering in the projection
# + return - On success, returns the given target type value, else returns an `json:Error` 
public isolated function fromJsonByteArrayWithType(byte[] bytes, typedesc<any> typed = <>)
        returns typed|Error = @java:Method {'class: "io.ballerina.stdlib.data.json.JsonToJson"} external;


# Parse a json byte stream with projection
#
# + jsonStream - Byte stream of json value  
# + typed - Target type to be used for filtering in the projection
# + return - On success, returns the given target type value, else returns an `json:Error` 
public isolated function fromJsonByteStreamWithType(stream<byte[], error?> jsonStream, typedesc<any> typed = <>)
        returns typed|Error = @java:Method {'class: "io.ballerina.stdlib.data.json.JsonToJson"} external;