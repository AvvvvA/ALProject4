table 70611980 "Flight"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Request UID"; Guid)
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Flight UID"; Guid)
        {
            DataClassification = ToBeClassified;
        }

        field(10; "Airline Code"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(11; "flightNumber"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Stops"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(13; "Departure Airport"; code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Arrival Airport"; code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(15; "Departure DateTime"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(16; "Arrival DateTime"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(17; "Latest Acceptance DateTime"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(18; "Time Of Availability"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(19; Bookable; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(20; AwbOptional; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(21; Available; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(22; AwbPrefix; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        /*
                field(23; AirlineConditions; Text[250])
                {
                    DataClassification = ToBeClassified;
                }
        */
        field(24; HandlingInfoLink; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(26; "Gha Name"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(27; "Gha Address"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Request UID", "Flight UID")
        {
            Clustered = true;
        }
    }


    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}