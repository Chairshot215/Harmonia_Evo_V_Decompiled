.class public Lcom/google/android/tts/local/AsciiLimiter;
.super Ljava/lang/Object;
.source "AsciiLimiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;
    }
.end annotation


# static fields
.field private static final SUBSTITUTION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;",
            ">;"
        }
    .end annotation
.end field

.field private static final highBit1Map_:[Ljava/lang/String;

.field private static final highBit2Map_:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x3b

    const/16 v8, 0x2e

    const/16 v7, 0x2d

    const/16 v6, 0x27

    const/16 v5, 0x20

    .line 30
    const/16 v1, 0x80

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "e"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, " "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\'"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "f"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\""

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "!"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "!"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "^"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "%"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "S"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "<"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "O"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, " "

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "Z"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, " "

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, " "

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "\'"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "\'"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "\""

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "\""

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "*"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "-"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "-"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "~"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "t"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "s"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, ">"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "o"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, " "

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "z"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "Y"

    aput-object v3, v1, v2

    const-string v2, " "

    aput-object v2, v1, v5

    const/16 v2, 0x21

    const-string v3, "!"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "c"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "L"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "$"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "Y"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "|"

    aput-object v3, v1, v2

    const-string v2, "S"

    aput-object v2, v1, v6

    const/16 v2, 0x28

    const-string v3, ":"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "C"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "a"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "<"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "~"

    aput-object v3, v1, v2

    const-string v2, "-"

    aput-object v2, v1, v7

    const-string v2, "R"

    aput-object v2, v1, v8

    const/16 v2, 0x2f

    const-string v3, "-"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, " degrees "

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "+"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "\'"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "u"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "P"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "."

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, ","

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "o"

    aput-object v3, v1, v2

    const-string v2, ">"

    aput-object v2, v1, v9

    const/16 v2, 0x3c

    const-string v3, "-"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "-"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "-"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "?"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "A"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "A"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "A"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "A"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "A"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "A"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "AE"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "C"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "E"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "E"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "E"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "E"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "I"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "I"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "I"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "I"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "D"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "N"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "O"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "O"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "O"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "O"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "O"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "x"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "O"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "U"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "U"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "U"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "U"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "Y"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "TH"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "ss"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "a"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "a"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "a"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "a"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "a"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "a"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "ae"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "c"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "e"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "e"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "e"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "e"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "i"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "i"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "i"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string v3, "i"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "d"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "n"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string v3, "o"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string v3, "o"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string v3, "o"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string v3, "o"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string v3, "o"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string v3, "/"

    aput-object v3, v1, v2

    const/16 v2, 0x78

    const-string v3, "o"

    aput-object v3, v1, v2

    const/16 v2, 0x79

    const-string v3, "u"

    aput-object v3, v1, v2

    const/16 v2, 0x7a

    const-string v3, "u"

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    const-string v3, "u"

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    const-string v3, "u"

    aput-object v3, v1, v2

    const/16 v2, 0x7d

    const-string v3, "y"

    aput-object v3, v1, v2

    const/16 v2, 0x7e

    const-string v3, "th"

    aput-object v3, v1, v2

    const/16 v2, 0x7f

    const-string v3, "y"

    aput-object v3, v1, v2

    sput-object v1, Lcom/google/android/tts/local/AsciiLimiter;->highBit1Map_:[Ljava/lang/String;

    .line 167
    const/16 v1, 0x80

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "A"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "a"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "A"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "a"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "A"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "a"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "C"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "c"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "C"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "c"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "C"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "c"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "C"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "c"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "D"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "d"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "D"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "d"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "E"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "e"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "E"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "e"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "E"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "e"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "E"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "e"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "E"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "e"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "G"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "g"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "G"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "g"

    aput-object v3, v1, v2

    const-string v2, "G"

    aput-object v2, v1, v5

    const/16 v2, 0x21

    const-string v3, "g"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "G"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "g"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "H"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "h"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "H"

    aput-object v3, v1, v2

    const-string v2, "h"

    aput-object v2, v1, v6

    const/16 v2, 0x28

    const-string v3, "I"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "i"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "I"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "i"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "I"

    aput-object v3, v1, v2

    const-string v2, "i"

    aput-object v2, v1, v7

    const-string v2, "I"

    aput-object v2, v1, v8

    const/16 v2, 0x2f

    const-string v3, "i"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "I"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "i"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "IJ"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "ij"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "J"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "j"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "K"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "k"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "k"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "L"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "l"

    aput-object v3, v1, v2

    const-string v2, "L"

    aput-object v2, v1, v9

    const/16 v2, 0x3c

    const-string v3, "l"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "L"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "l"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "L"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "l"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "L"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "l"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "N"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "n"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "N"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "n"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "N"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "n"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "\'n"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "N"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "n"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "O"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "o"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "O"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "o"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "O"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "o"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "OE"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "oe"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "R"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "r"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "R"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "r"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "R"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "r"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "S"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "s"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "S"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "s"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "S"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "s"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "S"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "s"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "T"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "t"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "T"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "t"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "T"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "t"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "U"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "u"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "U"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "u"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "U"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "u"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "U"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string v3, "u"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "U"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "u"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string v3, "U"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string v3, "u"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string v3, "W"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string v3, "w"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string v3, "Y"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string v3, "y"

    aput-object v3, v1, v2

    const/16 v2, 0x78

    const-string v3, "Y"

    aput-object v3, v1, v2

    const/16 v2, 0x79

    const-string v3, "Z"

    aput-object v3, v1, v2

    const/16 v2, 0x7a

    const-string v3, "z"

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    const-string v3, "Z"

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    const-string v3, "z"

    aput-object v3, v1, v2

    const/16 v2, 0x7d

    const-string v3, "Z"

    aput-object v3, v1, v2

    const/16 v2, 0x7e

    const-string v3, "z"

    aput-object v3, v1, v2

    const/16 v2, 0x7f

    const-string v3, "s"

    aput-object v3, v1, v2

    sput-object v1, Lcom/google/android/tts/local/AsciiLimiter;->highBit2Map_:[Ljava/lang/String;

    .line 305
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 314
    .local v0, builder:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;>;"
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2000

    const/16 v3, 0x200f

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 317
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2010

    const/16 v3, 0x2015

    invoke-direct {v1, v2, v3, v7}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 319
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2016

    const/16 v3, 0x2016

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 322
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2017

    const/16 v3, 0x2017

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 325
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2018

    const/16 v3, 0x201b

    invoke-direct {v1, v2, v3, v6}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 327
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x201c

    const/16 v3, 0x201f

    const/16 v4, 0x22

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 334
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2020

    const/16 v3, 0x2029

    invoke-direct {v1, v2, v3, v8}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 336
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x202a

    const/16 v3, 0x202f

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 338
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2030

    const/16 v3, 0x2031

    const/16 v4, 0x25

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 340
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2032

    const/16 v3, 0x2032

    invoke-direct {v1, v2, v3, v6}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 342
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2033

    const/16 v3, 0x2033

    invoke-direct {v1, v2, v3, v6}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 344
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2034

    const/16 v3, 0x2034

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 346
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2035

    const/16 v3, 0x2035

    invoke-direct {v1, v2, v3, v6}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 348
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2036

    const/16 v3, 0x2036

    invoke-direct {v1, v2, v3, v6}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 350
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2037

    const/16 v3, 0x2037

    invoke-direct {v1, v2, v3, v6}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 352
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2038

    const/16 v3, 0x2038

    const/16 v4, 0x5e

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 354
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2039

    const/16 v3, 0x2039

    const/16 v4, 0x3c

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 356
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x203a

    const/16 v3, 0x203a

    const/16 v4, 0x3e

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 358
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x203b

    const/16 v3, 0x203b

    invoke-direct {v1, v2, v3, v8}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 361
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x203c

    const/16 v3, 0x203d

    const/16 v4, 0x21

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 364
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x203e

    const/16 v3, 0x2043

    invoke-direct {v1, v2, v3, v7}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 366
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2044

    const/16 v3, 0x2044

    const/16 v4, 0x2f

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 368
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2045

    const/16 v3, 0x2045

    const/16 v4, 0x5b

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 370
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2046

    const/16 v3, 0x2046

    const/16 v4, 0x5d

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 373
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2047

    const/16 v3, 0x2049

    const/16 v4, 0x3f

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 376
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x204a

    const/16 v3, 0x204a

    const/16 v4, 0x26

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 379
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x204b

    const/16 v3, 0x204e

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 381
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x204f

    const/16 v3, 0x204f

    invoke-direct {v1, v2, v3, v9}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 383
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2050

    const/16 v3, 0x2051

    invoke-direct {v1, v2, v3, v9}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 389
    new-instance v1, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    const/16 v2, 0x2052

    const/16 v3, 0x206f

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;-><init>(CCC)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 391
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    sput-object v1, Lcom/google/android/tts/local/AsciiLimiter;->SUBSTITUTION_LIST:Ljava/util/List;

    .line 392
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    return-void
.end method

.method static findSubstitution(CLjava/util/List;)C
    .locals 8
    .parameter "unicode"
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;",
            ">;)C"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, searchList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;>;"
    const/4 v1, 0x0

    .line 443
    .local v1, l:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 444
    .local v4, r:I
    add-int v5, v1, v4

    div-int/lit8 v3, v5, 0x2

    .line 445
    .local v3, mid:I
    :goto_0
    if-gt v1, v4, :cond_3

    .line 446
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;

    .line 447
    .local v0, current:Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;
    invoke-virtual {v0, p0}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;->matches(C)I

    move-result v2

    .line 448
    .local v2, matches:I
    if-nez v2, :cond_0

    .line 449
    invoke-virtual {v0}, Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;->substitute()C

    move-result v5

    return v5

    .line 450
    :cond_0
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 451
    add-int/lit8 v1, v3, 0x1

    .line 455
    :cond_1
    :goto_1
    add-int v5, v1, v4

    div-int/lit8 v3, v5, 0x2

    .line 456
    goto :goto_0

    .line 452
    :cond_2
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 453
    add-int/lit8 v4, v3, -0x1

    goto :goto_1

    .line 458
    .end local v0           #current:Lcom/google/android/tts/local/AsciiLimiter$UnicodeRange;
    .end local v2           #matches:I
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Char :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Must be matched by atleast one range in the search list."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static substitutePunctuation(C)Ljava/lang/String;
    .locals 1
    .parameter "unicode"

    .prologue
    .line 431
    sget-object v0, Lcom/google/android/tts/local/AsciiLimiter;->SUBSTITUTION_LIST:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/google/android/tts/local/AsciiLimiter;->findSubstitution(CLjava/util/List;)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toAscii(CC)Ljava/lang/String;
    .locals 2
    .parameter "c"
    .parameter "sub"

    .prologue
    .line 402
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 403
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 411
    :goto_0
    return-object v0

    .line 404
    :cond_0
    const/16 v0, 0x100

    if-ge p0, v0, :cond_1

    .line 405
    sget-object v0, Lcom/google/android/tts/local/AsciiLimiter;->highBit1Map_:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x80

    aget-object v0, v0, v1

    goto :goto_0

    .line 406
    :cond_1
    const/16 v0, 0x180

    if-ge p0, v0, :cond_2

    .line 407
    sget-object v0, Lcom/google/android/tts/local/AsciiLimiter;->highBit2Map_:[Ljava/lang/String;

    add-int/lit16 v1, p0, -0x100

    aget-object v0, v0, v1

    goto :goto_0

    .line 408
    :cond_2
    const/16 v0, 0x2000

    if-lt p0, v0, :cond_3

    const/16 v0, 0x206f

    if-gt p0, v0, :cond_3

    .line 409
    invoke-static {p0}, Lcom/google/android/tts/local/AsciiLimiter;->substitutePunctuation(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    .line 421
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 422
    .local v2, len:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 423
    .local v0, bfr:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 424
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    invoke-static {v3, v4}, Lcom/google/android/tts/local/AsciiLimiter;->toAscii(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
