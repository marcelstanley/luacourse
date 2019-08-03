function diames(mes, dia)
  local dias = {"Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sab"}
  local meses = {Jan = 31, Fev = 28, Mar = 31, Abr = 30, Mai = 31, Jun = 30, Jul = 31, Ago = 31, Set = 30, Out = 31, Nov = 30, Dez = 31}

  local index
    for k,v in ipairs(dias) do
      if dia == v then
        index = k
        break
      end
    end

  local total = meses[mes]
  index = (total % 7 + index - 1)
  index = index % 7 == 0 and index or index % 7

  return dias[index] 
end

assert(diames("Jan", "Ter") == "Qui", "FAILED 1")
assert(diames("Fev", "Sex") == "Qui", "FAILED 2")
assert(diames("Mar", "Sex") == "Dom", "FAILED 3")
assert(diames("Abr", "Seg") == "Ter", "FAILED 4")
assert(diames("Mai", "Qua") == "Sex", "FAILED 5")
assert(diames("Jun", "Sab") == "Dom", "FAILED 6")
assert(diames("Jul", "Seg") == "Qua", "FAILED 7")
assert(diames("Ago", "Qui") == "Sab", "FAILED 8")
assert(diames("Set", "Dom") == "Seg", "FAILED 9")
assert(diames("Out", "Ter") == "Qui", "FAILED 10")
assert(diames("Nov", "Sex") == "Sab", "FAILED 11")
assert(diames("Dez", "Dom") == "Ter", "FAILED 12")

