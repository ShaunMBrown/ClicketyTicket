{"filter":false,"title":"user.rb","tooltip":"/app/models/user.rb","undoManager":{"mark":10,"position":10,"stack":[[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":18,"column":7},"end":{"row":19,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":19,"column":0},"end":{"row":19,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":19,"column":4},"end":{"row":20,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":20,"column":0},"end":{"row":20,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":20,"column":4},"end":{"row":21,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":21,"column":0},"end":{"row":21,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":20,"column":4},"end":{"row":20,"column":29}},"text":"  def tickets_left(event)"},{"action":"insertText","range":{"start":{"row":20,"column":29},"end":{"row":21,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":21,"column":0},"end":{"row":23,"column":0}},"lines":["      ordered = sum(Order.where(:event_id == event.id).all.tickets_purchased)","      event.total_tickets - ordered"]},{"action":"insertText","range":{"start":{"row":23,"column":0},"end":{"row":23,"column":5}},"text":"  end"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":20,"column":4},"end":{"row":20,"column":6}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":20,"column":2},"end":{"row":20,"column":4}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":21,"column":2},"end":{"row":21,"column":4}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":22,"column":2},"end":{"row":22,"column":4}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":23,"column":0},"end":{"row":23,"column":5}},"text":"  end"},{"action":"removeLines","range":{"start":{"row":20,"column":0},"end":{"row":23,"column":0}},"nl":"\n","lines":["  def tickets_left(event)","    ordered = sum(Order.where(:event_id == event.id).all.tickets_purchased)","    event.total_tickets - ordered"]}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":21,"column":0},"end":{"row":21,"column":4}},"text":"    "},{"action":"removeLines","range":{"start":{"row":20,"column":0},"end":{"row":21,"column":0}},"nl":"\n","lines":[""]}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":19,"column":4},"end":{"row":20,"column":0}},"text":"\n"}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":19,"column":4},"end":{"row":19,"column":4},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1415218187895,"hash":"23048e94e1f8e4597fbf8ccc0aa609d2319b9080"}