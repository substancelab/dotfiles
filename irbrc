# Keep track of the 5 most recent evaluations. Access them using `__[]`:
#
#     $ irb
#     2.7.2 :001 > "something"
#      => "something"
#     2.7.2 :002 > "something else"
#      => "something else"
#     2.7.2 :003 > __
#      =>
#     1 "something"
#     2 "something else"
#     2.7.2 :004 > __[2]
#      => "something else"
IRB.conf[:EVAL_HISTORY] = 5
