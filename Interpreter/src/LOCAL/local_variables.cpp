#pragma once
#include "../event_handler.h"

namespace POLDAM
{

    /**
     * @brief parse and extrac concreate data from log
     *
     * @param DataId
     */
    void localLoad(const std::string &str)
    {
        /*
         LOCAL_LOAD,Ljava/lang/Object;,"varindex=1,name=calculator,type=LcustomClass/myMath;"
         LOCAL_LOAD,I,"varindex=2,name=num,type=I"
         LOCAL_LOAD,Ljava/lang/Object;,"varindex=3,name=primes,type=Ljava/util/List;"
         LOCAL_LOAD,I,"varindex=4,name=idx,type=I"
        */

        const std::string objType = "";
        if (objType /* is Primitive*/ == "primitive")
        {
            // use concrete value from text file;
        }
        else if (objType /* is not primtive*/ != "primitive")
        {
            // use hash value from object info;
        }
    }
}