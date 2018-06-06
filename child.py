#!/usr/bin/env python
import sys
sys.stderr.write("e" * 0x100000)
sys.stdout.write("o" * 0x100000)
sys.stdout.flush()
sys.stderr.write("e" * 0x100000)
