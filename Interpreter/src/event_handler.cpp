
#include "event_handler.h"
namespace POLDAM
{
    SELOGGER_EVENT_TYPE getEventType(const std::string &log)
    {
        if (log.find("METHOD_ENTRY") != std::string::npos)
        {
            return SELOGGER_EVENT_TYPE::METHOD_ENTRY;
        }
        else if (log.find("METHOD_PARAM") != std::string::npos)
        {
            return SELOGGER_EVENT_TYPE::METHOD_PARAM;
        }
        else if (log.find("METHOD_NORMAL_EXIT") != std::string::npos)
        {
            return SELOGGER_EVENT_TYPE::METHOD_NORMAL_EXIT;
        }
        else if (log.find("METHOD_EXCEPTIONAL_EXIT") != std::string::npos)
        {
            return SELOGGER_EVENT_TYPE::METHOD_EXCEPTIONAL_EXIT;
        }
        else if (log.find("CALL_PARAM") != std::string::npos)
        {
            return SELOGGER_EVENT_TYPE::CALL_PARAM;
        }
        else if (log.find("CALL_RETURN") != std::string::npos)
        {
            return SELOGGER_EVENT_TYPE::CALL_RETURN;
        }
        else if (log.find("CALL") != std::string::npos)
        {
            return SELOGGER_EVENT_TYPE::CALL;
        }
        else
        {
            return SELOGGER_EVENT_TYPE::UNDEFINED;
        }
    }

    SELOGGER_EVENT_ATTR getEventTypeAttr(const SELOGGER_EVENT_TYPE &eventType)
    {
        switch (eventType)
        {

        // READ ATTR
        // Field Access
        case SELOGGER_EVENT_TYPE::GET_INSTANCE_FIELD:
        case SELOGGER_EVENT_TYPE::GET_INSTANCE_FIELD_RESULT:
        case SELOGGER_EVENT_TYPE::GET_STATIC_FIELD:
        case SELOGGER_EVENT_TYPE::LOCAL_LOAD:
            return SELOGGER_EVENT_ATTR::READ_OBJECT_ATTR;

            // WRITE ATTR
        case SELOGGER_EVENT_TYPE::PUT_INSTANCE_FIELD:
        case SELOGGER_EVENT_TYPE::PUT_INSTANCE_FIELD_VALUE:
        case SELOGGER_EVENT_TYPE::PUT_INSTANCE_FIELD_BEFORE_INITIALIZATION:
        case SELOGGER_EVENT_TYPE::PUT_STATIC_FIELD:
        case SELOGGER_EVENT_TYPE::LOCAL_STORE:
        case SELOGGER_EVENT_TYPE::LOCAL_INCREMENT:
            return SELOGGER_EVENT_ATTR::WRITE_OBJECT_ATTR;
        }
        return SELOGGER_EVENT_ATTR::UNDEFINED;
    }

    bool isPrimitiveType(const std::string &objectType)
    {
        return objectType.find("Ljava") == std::string::npos;
    }
}