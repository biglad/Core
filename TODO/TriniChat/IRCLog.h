/*
 * Copyright (C) 2005 - 2012 MaNGOS <http://www.getmangos.com/>
 *
 * Copyright (C) 2008 - 2012 Trinity <http://www.trinitycore.org/>
 *
 * Copyright (C) 2010 - 2012 ProjectSkyfire <http://www.projectskyfire.org/>
 *
 * Copyright (C) 2011 - 2012 ArkCORE <http://www.arkania.net/>  *  * \n * \n * Copyright (C) 2012 - 2012 UNCore <http://un.mgawow.co.uk/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

#ifndef _IRC_LOG_H
#define _IRC_LOG_H

#include "Common.h"
#include <fstream>

class IRCLog
{
    public:
        IRCLog();
        ~IRCLog();

    public:
        void WriteLog(const char *what, ...);
        std::string GetLogDateStr() const;
        std::string GetLogDateTimeStr() const;
    private:
        std::ofstream ircLogfile;
};


#endif
