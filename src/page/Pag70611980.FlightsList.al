page 70611980 "Flights List"
{
    Caption = 'Flights List';

    ApplicationArea = All;
    UsageCategory = Administration;
    //CardPageID = ;
    //DataCaptionExpression = ;
    Editable = true;
    PageType = List;
    RefreshOnActivate = true;
    SourceTable = Flight;

    //SourceTableView = sorting(Description);


    layout
    {
        area(Content)
        {
            repeater(Flight)
            {
                field("Request UID"; Rec."Request UID")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Flight UID"; Rec."Flight UID")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Airline Code"; Rec."Airline Code")
                {
                    ApplicationArea = All;
                }
                field("Flight Number"; Rec."Flight Number")
                {
                    ApplicationArea = All;
                }
                field("Arrival DateTime"; Rec."Arrival DateTime")
                {
                    ApplicationArea = All;
                }
                field("Arrival Airport"; Rec."Arrival Airport")
                {
                    ApplicationArea = All;
                }
                field("Departure DateTime"; Rec."Departure DateTime")
                {
                    ApplicationArea = All;
                }
                field("Departure Airport"; Rec."Departure Airport")
                {
                    ApplicationArea = All;
                }
                field("Latest Acceptance DateTime"; Rec."Latest Acceptance DateTime")
                {
                    ApplicationArea = All;
                }
                field("Time Of Availability"; Rec."Time Of Availability")
                {
                    ApplicationArea = All;
                }
                field(Bookable; Rec.Bookable)
                {
                    ApplicationArea = All;
                }
                field(AwbOptional; Rec.AwbOptional)
                {
                    ApplicationArea = All;
                }
                field(Available; Rec.Available)
                {
                    ApplicationArea = All;
                }
                field(AwbPrefix; Rec.AwbPrefix)
                {
                    ApplicationArea = All;
                }
                field(HandlingInfoLink; Rec.HandlingInfoLink)
                {
                    ApplicationArea = All;
                }
                field("Gha Name"; Rec."Gha Name")
                {
                    ApplicationArea = All;
                }
                field("Gha Address"; Rec."Gha Address")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Request")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    CargoAI: Codeunit CargoAI;
                begin
                    CargoAI.SearchSchedulesAndRates();
                    CurrPage.Update();
                end;
            }
        }
    }

    var
        myInt: Integer;
}