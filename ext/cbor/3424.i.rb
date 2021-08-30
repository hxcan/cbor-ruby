#!/usr/bin/env ruby

require './cbor'

puts CBOR

partCborFile = '/HkLunch/SoftwareDevelop/extremezip.Miso/material.ools/part.exz.file.tc/StockDataTools.exz.part.aa'

#fileObject= File.new

partCborFileContent = File.read partCborFile

        #wholeCborByteArray = wholeFileContent[4..-1] # 从第5个到末尾

partCborFileContent = partCborFileContent[4..-1] # 从第5个到末尾

options = {:tolerant => true}

decoded = CBOR.decode(partCborFileContent, options)

#decoded = CBOR.decode 

puts decoded['uuid']

puts decoded['version']

puts decoded.class.name

puts decoded.length
