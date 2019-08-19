
def getQnA()
    operations = ['plus', 'subtract']
    num1 = rand(10) + 1
    num2 = rand(10) + 1

    op = rand(2)
    ans = 0
    if (op == 0)
        ans = num1 + num2
    else
        ans = num1 - num2
    end

    question = {q: "#{num1} #{operations[op]} #{num2}", a: ans} 
    return question
end
