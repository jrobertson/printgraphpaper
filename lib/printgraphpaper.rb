#!/usr/bin/env ruby

# file: printgraphpaper.rb


require 'rexle'


class PrintGraphPaper

  attr_reader :to_html

  def initialize(orientation: :portrait, cols: 30, rows: 44, 
                 size: '20px', color: '#aaa')

    @orientation, @cols, @rows  = orientation, cols, rows
    @size, @color = size, color
    @to_html = build_html()

  end

  private

  def build_html()

    doc = build_table()
    table = doc.root.xml pretty: true

html=<<EOF
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Graph paper template</title>
<style>

table {}
table, th, td {
  background-color: #{@color};
  border: 1px solid black;
  border-collapse: collapse;
}

td {  background-color: transparent; width: 20px; height: 20px;}

@media print {
  table, th, td {
    border: 1px solid #{@color};
  }

}

</style>
</head>
<body>
#{table}
</body>
</html>
EOF

  end

  def build_table()

    doc = Rexle.new('<table/>')

    @rows.times do

      tr = Rexle::Element.new('tr')

      @cols.times do 
        td = Rexle::Element.new('td', value: '&nbsp;')
        tr.add td
      end

      doc.root.add tr

    end

    doc

  end

end


