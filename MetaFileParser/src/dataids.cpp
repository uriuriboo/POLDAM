#include "dataids.h"

namespace POLDAM
{
    void dataidsParser::readFile(const std::string filePath, std::vector<std::string> &data)
    {
        std::ifstream fileStream;

        fileStream.open(filePath, std::ios::in);

        if (!fileStream)
        {
            std::cout << POLDAM_UTIL::POLDAM_ERROR_PRINT_SUFFIX << "dataids file is not found\n";
            exit(1);
        }

        while (not fileStream.eof())
        {
            std::string buffer;
            std::getline(fileStream, buffer);

            if (buffer.empty())
                continue;
            // if you want to hold interpreted data, call parseLine()
            // buffer = this.parseLine(buffer);
            data.push_back(buffer);
        }
    }

    void dataidsParser::parseReadlines()
    {
        std::vector<DataId> parsedData;
        for (const auto &str : this->data)
        {
            parsedData.push_back(this->parseLine(str));
        }
        this->parsedData = std::move(parsedData);
    }

    DataId dataidsParser::parseLine(std::string line)
    {
        DataId dataid;

        const auto &&parsedline = POLDAM_UTIL::parse(line);

        dataid.dataidx = static_cast<unsigned int>(std::stoi(parsedline[0]));
        dataid.classid = static_cast<unsigned int>(std::stoi(parsedline[1]));
        dataid.methodid = static_cast<unsigned int>(std::stoi(parsedline[2]));
        dataid.linenumber = std::stoi(parsedline[3]);
        dataid.ordernumber = std::stoi(parsedline[4]);
        dataid.eventtype = parsedline[5];
        dataid.descriptor = parsedline[6];

        for (int i = 7; i < parsedline.size(); ++i)
        {
            if (parsedline[i].find("=") == std::string::npos)
            {
                //            9, 0, 0, 2, 6, CATCH_LABEL, I, ExceptionalExit
                dataid.eventinfo[parsedline[i]] = parsedline[i];
            }
            else
            {
                const auto &vec = POLDAM_UTIL::split(parsedline[i], '=');
                dataid.eventinfo[vec[0]] = vec[1];
            }
        }

        return dataid;
    }

    // TODO: move this fucntion to base class, all you need to do is just desginate fileName in base class.
    void dataidsParser::dirTraversal(std::string dirName)
    {
        for (const std::filesystem::directory_entry &i : std::filesystem::directory_iterator(dirName))
        {
            const auto filePath = i.path();

            if (filePath.filename() == this->fileName)
            {
                this->filePath = std::string(i.path().c_str());
            }
        }
    };

}