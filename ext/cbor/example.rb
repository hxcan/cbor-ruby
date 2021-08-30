require 'cbor'
partCborFile = 'partly transferred cbor file' # 以 cbor 格式传输的文件，只成功传输了一部分。
partCborFileContent = File.read partCborFile
options = {:tolerant => true} # 要求解码过程中容错。
decoded = CBOR.decode(partCborFileContent, options)
#decoded = CBOR.decode partCborFileContent # 不加 tolerant 选项，遇到有问题的 cbor 会抛出异常。
puts decoded.class.name
# Hash
puts decoded.length
# 4