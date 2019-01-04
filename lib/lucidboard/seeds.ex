defmodule Lucidboard.Seeds do
  @moduledoc "Some database seed data"
  alias Lucidboard.Board.{Board, Card, Column, Pile}

  def board do
    %Board{
      title: "Retro Board",
      columns: [
        %Column{title: "Shout-outs", pos: 0},
        %Column{
          title: "What Went Well",
          pos: 1,
          piles: [
            %Pile{pos: 0, cards: [%Card{pos: 0, body: "test card content"}]},
            %Pile{pos: 2, cards: [%Card{pos: 0, body: "testing card content"}]}
          ]
        },
        %Column{
          title: "What Didn't Go Well",
          pos: 2,
          piles: [
            %Pile{
              pos: 0,
              cards: [
                %Card{pos: 0, body: "pile test card content"},
                %Card{pos: 1, body: "pile testing card content"},
                %Card{pos: 2, body: "pile testing THIS card content"}
              ]
            },
            %Pile{pos: 1, cards: [%Card{pos: 0, body: "test card content"}]},
            %Pile{pos: 2, cards: [%Card{pos: 0, body: "testing card content"}]},
            %Pile{pos: 3, cards: [%Card{pos: 0, body: "test THIS card content"}]}
          ]
        }
      ]
    }
  end
end
