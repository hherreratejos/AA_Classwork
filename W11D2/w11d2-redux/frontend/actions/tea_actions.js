// Action Constants

export const RECIEVE_TEA = "RECIEVE_TEA"


// Action POJO
export const recieveGreenTea = {
  type: RECIEVE_TEA,
  tea: {
    flavor: "green tea",
    amount: 2.75,
    id:1
  }
}

export const recieveTea = (tea) => {
  return {
    type: RECIEVE_TEA,
    tea: tea
  }
}