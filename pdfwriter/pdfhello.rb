#!/usr/bin/env ruby
##<+>
##Ruby PDF生成
##ruby pdfwriter
##2011/12/28

require 'rubygems'
require 'pdf/writer'

pdf_doc = PDF::Writer.new

pdf_doc.select_font "Times-Roman"

pdf_doc.text "Hello world!"

pdf_doc.save_as "out.pdf"
