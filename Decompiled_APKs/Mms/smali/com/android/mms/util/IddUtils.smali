.class public Lcom/android/mms/util/IddUtils;
.super Ljava/lang/Object;
.source "IddUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/IddUtils$1;,
        Lcom/android/mms/util/IddUtils$mcciddnode;,
        Lcom/android/mms/util/IddUtils$MCCIDD;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IddUtils"

.field private static mMccIddLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/util/IddUtils$mcciddnode;",
            ">;"
        }
    .end annotation
.end field

.field private static middutils:Lcom/android/mms/util/IddUtils;

.field private static final numericCC:[Ljava/lang/String;

.field private static final numericNANP:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/IddUtils;->middutils:Lcom/android/mms/util/IddUtils;

    .line 72
    const/16 v0, 0x145

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "201"

    aput-object v1, v0, v3

    const-string v1, "203"

    aput-object v1, v0, v4

    const-string v1, "204"

    aput-object v1, v0, v5

    const-string v1, "205"

    aput-object v1, v0, v6

    const-string v1, "206"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "207"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "208"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "209"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "210"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "212"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "213"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "214"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "215"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "216"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "217"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "218"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "219"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "224"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "225"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "226"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "228"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "229"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "231"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "234"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "239"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "240"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "242"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "246"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "248"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "250"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "251"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "252"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "253"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "254"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "256"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "260"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "262"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "264"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "267"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "268"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "269"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "270"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "276"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "281"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "284"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "289"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "301"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "302"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "303"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "304"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "305"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "306"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "307"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "308"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "309"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "310"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "312"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "313"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "314"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "315"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "316"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "317"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "318"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "319"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "320"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "321"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "323"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "325"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "330"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "334"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "336"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "337"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "339"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "340"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "345"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "347"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "352"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "360"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "361"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "386"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "401"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "402"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "403"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "404"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "405"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "406"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "407"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "408"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "409"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "410"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "412"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "413"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "414"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "415"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "416"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "417"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "418"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "419"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "423"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "424"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "425"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "430"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "432"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "434"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "435"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "438"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "440"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "441"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "443"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "450"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "469"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "473"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "478"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "479"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "480"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "484"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "501"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "502"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "503"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "504"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "505"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "506"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "507"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "508"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "509"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "510"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "512"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "513"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "514"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "515"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "516"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "517"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "518"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "519"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "520"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "530"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "540"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "541"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "551"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "559"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "561"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "562"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "563"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "567"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "570"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "571"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "573"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "574"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "575"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "580"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "585"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "586"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "601"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "602"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "603"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "604"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "605"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "606"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "607"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "608"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "609"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "610"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "612"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "613"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "614"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "615"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "616"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "617"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "618"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "619"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "620"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "623"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "626"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "630"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "631"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "636"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "641"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "646"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "647"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "649"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "650"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "651"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "660"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "661"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "662"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "664"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "670"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "671"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "678"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "682"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "684"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "701"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "702"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "703"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "704"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "705"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "706"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "707"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "708"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "709"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "712"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "713"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "714"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "715"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "716"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "717"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "718"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "719"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "720"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "724"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "727"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "731"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "732"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "734"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "740"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "754"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "757"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "758"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "760"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "763"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "765"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "767"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "769"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "770"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "772"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "773"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "774"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "775"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "778"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "780"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "781"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "784"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "785"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "786"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "787"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "800"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "801"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "802"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "803"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "804"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "805"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "806"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "807"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "808"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "809"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "810"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "812"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "813"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "814"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "815"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "816"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "817"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "818"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "819"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "828"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "829"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "830"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "831"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "832"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "843"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "845"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "847"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "848"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "850"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "856"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "857"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "858"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "859"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "860"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "862"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "863"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "864"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "865"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "866"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "867"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "868"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "869"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "870"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "876"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "877"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "878"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "888"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "901"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "902"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "903"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "904"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "905"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "906"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "907"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "908"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "909"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "910"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "912"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "913"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "914"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "915"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "916"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "917"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v2, "918"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "919"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "920"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string v2, "925"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "928"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "931"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "936"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "937"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "939"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "940"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "941"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "947"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "949"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "951"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "952"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "954"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "956"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "970"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "971"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "972"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "973"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "978"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "979"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "980"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "985"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "989"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/IddUtils;->numericNANP:[Ljava/lang/String;

    .line 419
    const/16 v0, 0xbf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "7"

    aput-object v1, v0, v4

    const-string v1, "20"

    aput-object v1, v0, v5

    const-string v1, "27"

    aput-object v1, v0, v6

    const-string v1, "30"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "31"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "32"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "33"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "34"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "36"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "39"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "40"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "41"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "43"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "44"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "45"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "46"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "47"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "48"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "49"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "51"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "52"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "53"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "54"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "55"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "56"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "57"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "58"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "60"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "61"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "62"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "63"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "64"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "65"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "66"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "81"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "82"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "84"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "86"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "90"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "91"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "92"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "93"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "94"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "95"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "98"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "212"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "213"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "216"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "218"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "220"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "221"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "222"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "223"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "224"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "225"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "226"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "227"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "228"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "229"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "230"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "231"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "232"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "233"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "234"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "235"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "237"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "238"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "239"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "240"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "241"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "243"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "244"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "245"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "248"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "249"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "250"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "251"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "252"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "253"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "254"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "255"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "256"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "257"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "258"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "260"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "261"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "262"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "263"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "264"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "265"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "266"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "267"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "268"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "269"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "291"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "297"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "298"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "299"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "350"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "352"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "353"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "354"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "355"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "356"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "357"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "358"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "359"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "370"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "372"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "373"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "374"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "375"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "376"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "377"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "378"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "380"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "381"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "385"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "386"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "387"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "389"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "420"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "421"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "423"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "501"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "502"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "504"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "505"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "506"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "507"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "508"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "509"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "590"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "591"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "592"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "593"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "594"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "595"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "596"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "597"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "598"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "599"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "670"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "673"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "674"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "675"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "676"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "677"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "678"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "679"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "680"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "681"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "682"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "685"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "686"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "687"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "689"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "691"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "692"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "850"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "852"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "853"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "855"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "856"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "880"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "886"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "960"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "961"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "962"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "963"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "964"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "965"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "966"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "967"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "968"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "971"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "972"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "973"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "974"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "975"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "976"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "977"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "992"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "993"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "994"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "995"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "996"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "998"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/IddUtils;->numericCC:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 403
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 404
    invoke-static {}, Lcom/android/mms/util/IddUtils;->initmcciddlist()V

    .line 405
    return-void
.end method

.method public static getCCcode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "preceed"

    .prologue
    .line 452
    const/4 v2, 0x0

    .line 453
    .local v2, rtValue:Ljava/lang/String;
    const/4 v3, 0x0

    .line 455
    .local v3, subString:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v4, Lcom/android/mms/util/IddUtils;->numericCC:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 456
    sget-object v4, Lcom/android/mms/util/IddUtils;->numericCC:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 458
    .local v0, cclen:I
    sget-object v4, Lcom/android/mms/util/IddUtils;->numericCC:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 459
    const-string v4, "IddUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match CC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/mms/util/IddUtils;->numericCC:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    sget-object v4, Lcom/android/mms/util/IddUtils;->numericCC:[Ljava/lang/String;

    aget-object v2, v4, v1

    .line 455
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    .end local v0           #cclen:I
    :cond_1
    return-object v2
.end method

.method public static getInstance()Lcom/android/mms/util/IddUtils;
    .locals 2

    .prologue
    .line 407
    sget-object v0, Lcom/android/mms/util/IddUtils;->middutils:Lcom/android/mms/util/IddUtils;

    if-nez v0, :cond_0

    .line 408
    const-string v0, "IddUtils"

    const-string v1, "middutils is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v0, Lcom/android/mms/util/IddUtils;

    invoke-direct {v0}, Lcom/android/mms/util/IddUtils;-><init>()V

    sput-object v0, Lcom/android/mms/util/IddUtils;->middutils:Lcom/android/mms/util/IddUtils;

    .line 412
    :cond_0
    sget-object v0, Lcom/android/mms/util/IddUtils;->middutils:Lcom/android/mms/util/IddUtils;

    return-object v0
.end method

.method public static getlocalIDDlen(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "mcc"
    .parameter "preceed"

    .prologue
    .line 473
    const/4 v3, 0x0

    .line 475
    .local v3, rtValue:I
    if-nez p0, :cond_0

    move v4, v3

    .line 491
    .end local v3           #rtValue:I
    .local v4, rtValue:I
    :goto_0
    return v4

    .line 478
    .end local v4           #rtValue:I
    .restart local v3       #rtValue:I
    :cond_0
    sget-object v5, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 479
    .local v1, iterator:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 480
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/IddUtils$mcciddnode;

    .line 483
    .local v0, inode:Lcom/android/mms/util/IddUtils$mcciddnode;
    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/mms/util/IddUtils$mcciddnode;->data:Lcom/android/mms/util/IddUtils$MCCIDD;

    iget-object v6, v6, Lcom/android/mms/util/IddUtils$MCCIDD;->idd:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, nidd:Ljava/lang/String;
    iget-object v5, v0, Lcom/android/mms/util/IddUtils$mcciddnode;->data:Lcom/android/mms/util/IddUtils$MCCIDD;

    iget-object v5, v5, Lcom/android/mms/util/IddUtils$MCCIDD;->mcc:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/mms/util/IddUtils$mcciddnode;->data:Lcom/android/mms/util/IddUtils$MCCIDD;

    iget-object v5, v5, Lcom/android/mms/util/IddUtils$MCCIDD;->idd:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 485
    const-string v5, "IddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "match localIDD "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/mms/util/IddUtils$mcciddnode;->data:Lcom/android/mms/util/IddUtils$MCCIDD;

    iget-object v7, v7, Lcom/android/mms/util/IddUtils$MCCIDD;->idd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v5, v0, Lcom/android/mms/util/IddUtils$mcciddnode;->data:Lcom/android/mms/util/IddUtils$MCCIDD;

    iget-object v5, v5, Lcom/android/mms/util/IddUtils$MCCIDD;->idd:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .end local v0           #inode:Lcom/android/mms/util/IddUtils$mcciddnode;
    .end local v2           #nidd:Ljava/lang/String;
    :cond_2
    move v4, v3

    .line 491
    .end local v3           #rtValue:I
    .restart local v4       #rtValue:I
    goto :goto_0
.end method

.method private static initmcciddlist()V
    .locals 4

    .prologue
    .line 166
    const-string v0, "IddUtils"

    const-string v1, "initmcciddlist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    .line 170
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "412"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "276"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "603"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "544"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "213"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "631"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "365"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "344"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "722"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "283"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "363"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "505"

    const-string v3, "0011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "232"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "400"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "364"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "426"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "470"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "342"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "257"

    const-string v3, "810"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "206"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "702"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "616"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "350"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "402"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "736"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "218"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "652"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "724"

    const-string v3, "0015"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "348"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "528"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "284"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "613"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "642"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "456"

    const-string v3, "001"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "624"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "302"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "625"

    const-string v3, "0"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "346"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "623"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "622"

    const-string v3, "15"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "730"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "460"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "732"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "654"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "548"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "712"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "612"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "219"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "368"

    const-string v3, "119"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "280"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "230"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "630"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "238"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "638"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "366"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "370"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "514"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "740"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "602"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "706"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "627"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "657"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "248"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "636"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "288"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "550"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "542"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "244"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "208"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "742"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "547"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "628"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "607"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "282"

    const-string v3, "810"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "262"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "620"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "266"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "202"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "290"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "352"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "340"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "535"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "704"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "611"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "632"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "738"

    const-string v3, "001"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "372"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "708"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "454"

    const-string v3, "001"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "216"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "274"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "404"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "405"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "510"

    const-string v3, "001"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "432"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "418"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "272"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "425"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "222"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "338"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "440"

    const-string v3, "010"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "441"

    const-string v3, "010"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "416"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "401"

    const-string v3, "810"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "639"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "545"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "467"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "450"

    const-string v3, "00700"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "419"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "437"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "457"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "247"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "415"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "651"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "618"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "606"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "295"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "246"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "270"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "455"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "646"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "650"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "502"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "472"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "610"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "278"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "551"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "340"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "609"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "617"

    const-string v3, "020"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "334"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "259"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "212"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "428"

    const-string v3, "001"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "354"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "604"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "643"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "414"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "649"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "536"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "429"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "204"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "362"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "546"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "530"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "710"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "614"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "621"

    const-string v3, "009"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "534"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "242"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "422"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "410"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "552"

    const-string v3, "11"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "714"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "537"

    const-string v3, "5"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "744"

    const-string v3, "2"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "716"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "515"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "260"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "268"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "330"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "427"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "294"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "629"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "647"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "226"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "250"

    const-string v3, "810"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "635"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "356"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "358"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "308"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "360"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "549"

    const-string v3, "0"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "292"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "626"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "420"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "608"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "220"

    const-string v3, "99"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "633"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "619"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "525"

    const-string v3, "001"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "231"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "293"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "540"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "637"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "655"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "214"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "413"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "634"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "746"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "653"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "240"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "228"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "417"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "466"

    const-string v3, "002"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "436"

    const-string v3, "810"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "640"

    const-string v3, "000"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "520"

    const-string v3, "001"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "615"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "539"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "374"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "605"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "286"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "438"

    const-string v3, "810"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "376"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "641"

    const-string v3, "000"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "255"

    const-string v3, "810"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "424"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "430"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "431"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "234"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "235"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "310"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "311"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "312"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "313"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "314"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "315"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "316"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "332"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "748"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "434"

    const-string v3, "810"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "541"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "225"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "734"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "452"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "543"

    const-string v3, "19"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "421"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "645"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "648"

    const-string v3, "00"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v0, Lcom/android/mms/util/IddUtils;->mMccIddLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/IddUtils$mcciddnode;

    const-string v2, "901"

    const-string v3, "011"

    invoke-direct {v1, v2, v3}, Lcom/android/mms/util/IddUtils$mcciddnode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    return-void
.end method

.method public static isinNANPtable(Ljava/lang/String;)Z
    .locals 2
    .parameter "preceed"

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, rtValue:Z
    sget-object v1, Lcom/android/mms/util/IddUtils;->numericNANP:[Ljava/lang/String;

    invoke-static {v1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 160
    :cond_0
    return v0
.end method


# virtual methods
.method public prependIDD(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "dest"

    .prologue
    .line 543
    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v5, p1

    .line 775
    .end local p1
    .local v5, dest:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 545
    .end local v5           #dest:Ljava/lang/String;
    .restart local p1
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    .line 546
    .local v11, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v9

    .line 547
    .local v9, sNetworkOperator:Ljava/lang/String;
    const/4 v6, 0x0

    .line 548
    .local v6, nMCC:Ljava/lang/String;
    const/4 v3, 0x0

    .line 550
    .local v3, bunderVZW:Z
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x3

    if-le v13, v14, :cond_1

    .line 551
    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 556
    :cond_1
    const-string v13, "310012"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "310004"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 558
    :cond_2
    const/4 v3, 0x1

    .line 560
    :cond_3
    const-string v13, "IddUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ope/undervzw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v2, 0x0

    .line 563
    .local v2, bprocessed:Z
    const/4 v12, 0x0

    .line 564
    .local v12, tmpDigits:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    .line 566
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xc

    if-lt v13, v14, :cond_a

    const-string v13, "+1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_a

    .line 568
    const/4 v2, 0x1

    .line 587
    :cond_4
    :goto_1
    const-string v13, "IddUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "simoperator: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-string v13, "20404"

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "310004"

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "310012"

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 592
    :cond_5
    const-string v13, "IddUtils"

    const-string v14, "enter vzw simcard"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    if-nez v2, :cond_6

    .line 596
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xc

    if-le v13, v14, :cond_6

    const-string v13, "+011"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_6

    .line 597
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 598
    const/4 v2, 0x1

    .line 603
    :cond_6
    if-nez v2, :cond_7

    .line 604
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xc

    if-lt v13, v14, :cond_7

    const-string v13, "+"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_7

    .line 605
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 606
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static {v12}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 607
    .local v7, ncc:Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 608
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "011"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 609
    const/4 v2, 0x1

    .line 615
    .end local v7           #ncc:Ljava/lang/String;
    :cond_7
    if-nez v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xc

    if-lt v13, v14, :cond_8

    .line 616
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/android/mms/util/IddUtils;->getlocalIDDlen(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 617
    .local v8, niddsize:I
    if-lez v8, :cond_8

    .line 618
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 619
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static {v12}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 620
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "011"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 621
    const/4 v2, 0x1

    .line 628
    .end local v8           #niddsize:I
    :cond_8
    if-nez v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xb

    if-lt v13, v14, :cond_9

    const-string v13, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_9

    .line 629
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static/range {p1 .. p1}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 630
    .restart local v7       #ncc:Ljava/lang/String;
    if-eqz v7, :cond_9

    const-string v13, "65"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 631
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "011"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 632
    const/4 v2, 0x1

    .end local v7           #ncc:Ljava/lang/String;
    :cond_9
    :goto_2
    move-object/from16 v5, p1

    .line 775
    .end local p1
    .restart local v5       #dest:Ljava/lang/String;
    goto/16 :goto_0

    .line 571
    .end local v5           #dest:Ljava/lang/String;
    .restart local p1
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xc

    if-lt v13, v14, :cond_4

    .line 573
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/android/mms/util/IddUtils;->getlocalIDDlen(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 574
    .restart local v8       #niddsize:I
    if-lez v8, :cond_4

    .line 576
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 577
    .local v10, subStr:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xb

    if-ne v13, v14, :cond_4

    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_4

    .line 578
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    const/4 v13, 0x1

    const/4 v14, 0x4

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/mms/util/IddUtils;->isinNANPtable(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 579
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "+"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 580
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 636
    .end local v8           #niddsize:I
    .end local v10           #subStr:Ljava/lang/String;
    :cond_b
    const-string v13, "SmsMessageSender"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Don\'t prepend address because MCCMNC : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 638
    :cond_c
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_9

    .line 642
    const-string v13, "ril.cdmaphoneapp.nbpcd.support"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 644
    .local v1, bNBPCD:Z
    const-string v13, "IddUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "be NBPCD: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    if-eqz v3, :cond_15

    .line 650
    const/4 v2, 0x0

    .line 655
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xa

    if-ge v13, v14, :cond_e

    .line 683
    :cond_d
    :goto_3
    if-nez v2, :cond_9

    .line 685
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xe

    if-lt v13, v14, :cond_12

    const-string v13, "011"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_12

    .line 686
    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 687
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static {v12}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 688
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 659
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_f

    .line 660
    const/4 v13, 0x0

    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 661
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static {v12}, Lcom/android/mms/util/IddUtils;->isinNANPtable(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 662
    const/4 v2, 0x1

    goto :goto_3

    .line 665
    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xb

    if-ne v13, v14, :cond_10

    const-string v13, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_10

    .line 666
    const/4 v13, 0x1

    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 667
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static {v12}, Lcom/android/mms/util/IddUtils;->isinNANPtable(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 668
    const/4 v2, 0x1

    goto :goto_3

    .line 671
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xc

    if-ne v13, v14, :cond_d

    const-string v13, "+1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_d

    .line 672
    const/4 v13, 0x2

    const/4 v14, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 673
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static {v12}, Lcom/android/mms/util/IddUtils;->isinNANPtable(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 674
    if-nez v1, :cond_11

    .line 675
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 676
    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 692
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xc

    if-lt v13, v14, :cond_14

    const-string v13, "+"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_14

    .line 693
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 694
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static {v12}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 695
    if-nez v1, :cond_13

    .line 696
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "011"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 697
    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 701
    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xb

    if-lt v13, v14, :cond_9

    const-string v13, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_9

    .line 702
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static/range {p1 .. p1}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 703
    .local v4, cc:Ljava/lang/String;
    if-eqz v4, :cond_9

    const-string v13, "65"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 704
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "011"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 705
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 716
    .end local v4           #cc:Ljava/lang/String;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xc

    if-ne v13, v14, :cond_17

    const-string v13, "+1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_17

    .line 717
    const-string v13, "IddUtils"

    const-string v14, "35131-1"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    if-nez v1, :cond_16

    .line 719
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 720
    :cond_16
    const/4 v2, 0x1

    .line 724
    :cond_17
    if-nez v2, :cond_18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xc

    if-lt v13, v14, :cond_18

    .line 725
    const-string v13, "IddUtils"

    const-string v14, "35131-2"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/android/mms/util/IddUtils;->getlocalIDDlen(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 727
    .restart local v8       #niddsize:I
    if-lez v8, :cond_18

    .line 728
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 729
    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_18

    .line 730
    move-object/from16 p1, v12

    .line 731
    const/4 v2, 0x1

    .line 737
    .end local v8           #niddsize:I
    :cond_18
    if-nez v2, :cond_19

    .line 739
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xe

    if-lt v13, v14, :cond_1a

    const-string v13, "011"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_1a

    .line 740
    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 741
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static {v12}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_19

    .line 742
    const/4 v2, 0x1

    .line 764
    :cond_19
    :goto_4
    if-nez v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xc

    if-lt v13, v14, :cond_9

    .line 765
    const-string v13, "IddUtils"

    const-string v14, "35132-1"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/android/mms/util/IddUtils;->getlocalIDDlen(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 767
    .restart local v8       #niddsize:I
    if-lez v8, :cond_9

    .line 768
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 769
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static {v12}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 770
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "011"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 746
    .end local v8           #niddsize:I
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xc

    if-lt v13, v14, :cond_1c

    const-string v13, "+"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_1c

    .line 747
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 748
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static {v12}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_19

    .line 749
    if-nez v1, :cond_1b

    .line 750
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "011"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 751
    :cond_1b
    const/4 v2, 0x1

    goto :goto_4

    .line 755
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xb

    if-lt v13, v14, :cond_19

    const-string v13, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_19

    .line 756
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static/range {p1 .. p1}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 757
    .restart local v4       #cc:Ljava/lang/String;
    if-eqz v4, :cond_19

    const-string v13, "65"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19

    .line 758
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "011"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 759
    const/4 v2, 0x1

    goto/16 :goto_4
.end method
