import subprocess

testindex = 0

def assert_token(instr, outstr):
    global testindex

    testindex = testindex + 1

    p = subprocess.Popen(["a.out"], stdin=subprocess.PIPE, stdout=subprocess.PIPE)

    outs, errs = p.communicate(input=instr.encode('utf-8'))

    outs = outs.decode('utf-8')

    #print(outs)

    if outstr in outs:
        print(f"Test {testindex} passed")
    else:
        print(f"Test {testindex} failed with output {outs}, expected {outstr}")


assert_token("POINT", "POINT")
assert_token("1.05", "FLOAT")
assert_token("10", "INT")

