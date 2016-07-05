python
import sys
sys.path.insert(0, '/opt/remote/share/gdb')

import AgLeaderPrettyPrinters
AgLeaderPrettyPrinters.RegisterPrinters()

import qt4
qt4.register_qt4_printers(None)

end
set print pretty 1 
