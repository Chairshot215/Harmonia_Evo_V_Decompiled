.class public Lorg/apache/http/impl/client/naf/hex/FastHex;
.super Ljava/lang/Object;
.source "FastHex.java"


# static fields
.field private static final INDEX_SHIFT:I = 0x80

.field private static final TO_STR_LOWER_MAP:[Ljava/lang/String;

.field private static final TO_STR_UPPER_MAP:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "80"

    aput-object v1, v0, v3

    const-string v1, "81"

    aput-object v1, v0, v4

    const-string v1, "82"

    aput-object v1, v0, v5

    const-string v1, "83"

    aput-object v1, v0, v6

    const-string v1, "84"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "85"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "86"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "87"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "88"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "89"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "8a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "8b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "8c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "8d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "8e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "8f"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "90"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "91"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "92"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "93"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "94"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "95"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "96"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "97"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "98"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "99"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "9a"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "9b"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "9c"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "9d"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "9e"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "9f"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "a0"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "a1"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "a2"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "a3"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "a4"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "a5"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "a6"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "a7"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "a8"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "a9"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "aa"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "ab"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "ac"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "ad"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "ae"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "af"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "b0"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "b1"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "b2"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "b3"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "b4"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "b5"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "b6"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "b7"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "b8"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "b9"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "ba"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "bb"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "bc"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "bd"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "be"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "bf"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "c0"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "c1"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "c2"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "c3"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "c4"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "c5"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "c6"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "c7"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "c8"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "c9"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "ca"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "cb"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "cc"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "cd"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "ce"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "cf"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "d0"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "d1"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "d2"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "d3"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "d4"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "d5"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "d6"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "d7"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "d8"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "d9"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "db"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "dc"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "dd"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "df"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "e0"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "e1"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "e2"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "e3"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "e4"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "e5"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "e6"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "e7"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "e8"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "e9"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "ea"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "eb"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "ec"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "ed"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "ee"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "ef"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "f0"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "f1"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "f2"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "f3"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "f4"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "f5"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "f6"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "f7"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "f8"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "f9"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "fa"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "fb"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "fc"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "fd"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "fe"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "ff"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "00"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "01"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "02"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "03"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "04"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "05"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "06"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "0a"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "0b"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "0c"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "0d"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "0e"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "0f"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "14"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "17"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "18"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "19"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "1a"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "1b"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "1c"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "1d"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "1e"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "1f"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "22"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "23"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "26"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "2a"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "2b"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "2c"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "2d"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "2e"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "2f"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "30"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "31"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "32"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "33"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "34"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "35"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "36"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "37"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "38"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "39"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "3a"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "3b"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "3c"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "3d"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "3e"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "3f"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "40"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "41"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "42"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "43"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "44"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "45"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "46"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "47"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "48"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "49"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "4a"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "4b"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "4c"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "4d"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "4e"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "4f"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "50"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "51"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "52"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "53"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "54"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "55"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "56"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "57"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "58"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "59"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "5a"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "5b"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "5c"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "5d"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "5e"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "5f"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "60"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "61"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "62"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "63"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "64"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "65"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "66"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "67"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "68"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "69"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "6a"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "6b"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "6c"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "6d"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "6e"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "6f"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "70"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "71"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "72"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "73"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "74"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "75"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "76"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "77"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "78"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "79"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "7a"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "7b"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "7c"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "7d"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "7e"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "7f"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/http/impl/client/naf/hex/FastHex;->TO_STR_LOWER_MAP:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "80"

    aput-object v1, v0, v3

    const-string v1, "81"

    aput-object v1, v0, v4

    const-string v1, "82"

    aput-object v1, v0, v5

    const-string v1, "83"

    aput-object v1, v0, v6

    const-string v1, "84"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "85"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "86"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "87"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "88"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "89"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "8A"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "8B"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "8C"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "8D"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "8E"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "8F"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "90"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "91"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "92"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "93"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "94"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "95"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "96"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "97"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "98"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "99"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "9A"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "9B"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "9C"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "9D"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "9E"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "9F"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "A0"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "A1"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "A2"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "A3"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "A4"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "A5"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "A6"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "A7"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "A8"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "A9"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "AA"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "AB"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "AC"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "AD"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "AE"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "AF"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "B0"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "B1"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "B2"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "B3"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "B4"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "B5"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "B6"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "B7"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "B8"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "B9"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "BA"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "BC"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "BD"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "BE"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "BF"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "C0"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "C1"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "C2"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "C3"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "C4"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "C5"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "C6"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "C7"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "C8"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "C9"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "CB"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "CC"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "CD"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "CE"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "CF"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "D0"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "D1"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "D2"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "D3"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "D4"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "D5"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "D6"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "D7"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "D8"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "D9"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "DA"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "DB"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "DC"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "DD"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "DE"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "DF"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "E0"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "E1"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "E2"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "E3"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "E4"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "E5"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "E6"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "E7"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "E8"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "E9"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "EA"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "EB"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "EC"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "ED"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "EE"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "EF"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "F0"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "F1"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "F2"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "F3"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "F4"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "F5"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "F6"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "F7"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "F8"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "F9"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "FA"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "FB"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "FC"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "FD"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "FE"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "FF"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "00"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "01"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "02"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "03"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "04"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "05"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "06"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "0A"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "0B"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "0C"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "0D"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "0E"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "0F"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "14"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "17"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "18"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "19"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "1A"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "1B"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "1C"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "1D"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "1E"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "1F"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "22"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "23"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "26"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "2A"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "2B"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "2C"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "2D"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "2E"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "2F"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "30"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "31"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "32"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "33"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "34"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "35"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "36"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "37"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "38"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "39"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "3A"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "3B"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "3C"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "3D"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "3E"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "3F"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "40"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "41"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "42"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "43"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "44"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "45"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "46"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "47"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "48"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "49"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "4A"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "4B"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "4C"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "4D"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "4E"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "4F"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "50"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "51"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "52"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "53"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "54"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "55"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "56"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "57"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "58"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "59"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "5A"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "5B"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "5C"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "5D"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "5E"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "5F"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "60"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "61"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "62"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "63"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "64"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "65"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "66"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "67"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "68"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "69"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "6A"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "6B"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "6C"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "6D"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "6E"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "6F"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "70"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "71"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "72"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "73"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "74"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "75"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "76"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "77"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "78"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "79"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "7A"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "7B"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "7C"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "7D"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "7E"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "7F"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/http/impl/client/naf/hex/FastHex;->TO_STR_UPPER_MAP:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static chToByte(C)B
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong input charaxter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_c
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_d
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_e
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_f
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x38 -> :sswitch_8
        0x39 -> :sswitch_9
        0x41 -> :sswitch_a
        0x42 -> :sswitch_b
        0x43 -> :sswitch_c
        0x44 -> :sswitch_d
        0x45 -> :sswitch_e
        0x46 -> :sswitch_f
        0x61 -> :sswitch_a
        0x62 -> :sswitch_b
        0x63 -> :sswitch_c
        0x64 -> :sswitch_d
        0x65 -> :sswitch_e
        0x66 -> :sswitch_f
    .end sparse-switch
.end method

.method public static toBytes(Ljava/lang/String;)[B
    .locals 9

    const/4 v7, 0x0

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v6, v3, 0x2

    new-array v5, v6, [B

    new-array v2, v3, [C

    invoke-virtual {p0, v7, v3, v2, v7}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-char v0, v2, v4

    add-int/lit8 v6, v4, 0x1

    aget-char v1, v2, v6

    div-int/lit8 v6, v4, 0x2

    invoke-static {v0}, Lorg/apache/http/impl/client/naf/hex/FastHex;->chToByte(C)B

    move-result v7

    mul-int/lit8 v7, v7, 0x10

    invoke-static {v1}, Lorg/apache/http/impl/client/naf/hex/FastHex;->chToByte(C)B

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method static toStr([B[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v3, p0

    mul-int/lit8 v5, v3, 0x2

    new-array v0, v5, [C

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, p0, v4

    add-int/lit16 v2, v5, 0x80

    aget-object v1, p1, v2

    mul-int/lit8 v5, v4, 0x2

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v0, v5

    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method

.method public static toStrLo([B)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/http/impl/client/naf/hex/FastHex;->TO_STR_LOWER_MAP:[Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/http/impl/client/naf/hex/FastHex;->toStr([B[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStrUp([B)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/http/impl/client/naf/hex/FastHex;->TO_STR_UPPER_MAP:[Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/http/impl/client/naf/hex/FastHex;->toStr([B[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
