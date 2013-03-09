.class public Lcom/android/htcdialer/search/SmartKeyMapping;
.super Ljava/lang/Object;
.source "SmartKeyMapping.java"


# static fields
.field public static final CHAR_SEPARATE_COLON:I = 0x3a

.field public static final CHAR_SEPARATE_COMMA:I = 0x2c

.field public static final CHAR_SEPARATE_HYPHEN:I = 0x2d

.field public static final CHAR_SEPARATE_LEFT_PARENTHESIS:I = 0x28

.field public static final CHAR_SEPARATE_POINT:I = 0x2e

.field public static final CHAR_SEPARATE_RIGHT_PARENTHESIS:I = 0x29

.field public static final CHAR_SEPARATE_SEMICOLON:I = 0x3b

.field public static final CHAR_SEPARATE_SPACE:I = 0x20

.field public static final CHAR_SEPARATE_UNDERLINE:I = 0x5f

.field public static final CLUSTER_END:I = 0x312f

.field public static final CLUSTER_MID:I = 0x312e

.field public static final CLUSTER_START:I = 0x3100

.field public static final HW_KEY_MAP:Landroid/view/KeyCharacterMap; = null

.field private static final KEY_MAPPING_NAME_ASCII:[[C = null

.field private static final KEY_MAPPING_NAME_BOPOMOFO:[[C = null

.field private static final KEY_MAPPING_NAME_GREEK:[[C = null

.field private static final KEY_MAPPING_NAME_HEBREW:[[C = null

.field private static final KEY_MAPPING_NAME_JAPANESE:[[C = null

.field private static final KEY_MAPPING_NAME_KOREAN:[[C = null

.field private static final KEY_MAPPING_NAME_RUSSIAN:[[C = null

.field private static final KEY_MAPPING_NAME_THAILAND:[[C = null

.field private static final KEY_MAPPING_NUMBER:[[C = null

.field public static final KEY_MAPPING_TYPE_ASCII:I = 0x0

.field public static final KEY_MAPPING_TYPE_BOPOMOFO:I = 0x3

.field public static final KEY_MAPPING_TYPE_GREEK:I = 0x1

.field public static final KEY_MAPPING_TYPE_HEBREW:I = 0x7

.field public static final KEY_MAPPING_TYPE_JAPANESE:I = 0x6

.field public static final KEY_MAPPING_TYPE_KOREAN:I = 0x4

.field public static final KEY_MAPPING_TYPE_PINYIN:I = 0x0

.field public static final KEY_MAPPING_TYPE_RUSSIAN:I = 0x2

.field public static final KEY_MAPPING_TYPE_THAILAND:I = 0x5

.field public static final LBOUND_LOWERCASE_EN_GR:I = 0x3c9

.field public static final LBOUND_LOWERCASE_EN_US:I = 0x7a

.field public static final LBOUND_LOWERCASE_RU_RU:I = 0x44f

.field public static final LBOUND_TH:I = 0xe58

.field public static final LBOUND_UPPERCASE_EN_GR:I = 0x3a9

.field public static final LBOUND_UPPERCASE_EN_US:I = 0x5a

.field public static final LBOUND_UPPERCASE_RU_RU:I = 0x42f

.field public static final LOWBOUND_NUMBER:I = 0x39

.field public static final UBOUND_LOWERCASE_EN_GR:I = 0x3b1

.field public static final UBOUND_LOWERCASE_EN_US:I = 0x61

.field public static final UBOUND_LOWERCASE_RU_RU:I = 0x430

.field public static final UBOUND_TH:I = 0xe01

.field public static final UBOUND_UPPERCASE_EN_GR:I = 0x391

.field public static final UBOUND_UPPERCASE_EN_US:I = 0x41

.field public static final UBOUND_UPPERCASE_RU_RU:I = 0x410

.field public static final UPBOUND_NUMBER:I = 0x30

.field private static compareName:[[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    sput-object v1, Lcom/android/htcdialer/search/SmartKeyMapping;->HW_KEY_MAP:Landroid/view/KeyCharacterMap;

    .line 58
    const/16 v1, 0x6b

    new-array v1, v1, [[C

    new-array v2, v8, [C

    fill-array-data v2, :array_0

    aput-object v2, v1, v5

    const/16 v2, 0x1d

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    aput-object v2, v1, v7

    const/16 v2, 0x1d

    new-array v2, v2, [C

    fill-array-data v2, :array_2

    aput-object v2, v1, v8

    const/16 v2, 0x15

    new-array v2, v2, [C

    fill-array-data v2, :array_3

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const/16 v3, 0x13

    new-array v3, v3, [C

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0xd

    new-array v3, v3, [C

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x1d

    new-array v3, v3, [C

    fill-array-data v3, :array_6

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x14

    new-array v3, v3, [C

    fill-array-data v3, :array_7

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x17

    new-array v3, v3, [C

    fill-array-data v3, :array_8

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x13

    new-array v3, v3, [C

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v7, [C

    const/16 v4, 0x2a

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-array v3, v7, [C

    const/16 v4, 0x23

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-array v3, v8, [C

    fill-array-data v3, :array_a

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-array v3, v7, [C

    const/16 v4, 0x70

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-array v3, v7, [C

    const/16 v4, 0x77

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const/16 v2, 0x23

    aput-object v0, v1, v2

    const/16 v2, 0x24

    aput-object v0, v1, v2

    const/16 v2, 0x25

    aput-object v0, v1, v2

    const/16 v2, 0x26

    aput-object v0, v1, v2

    const/16 v2, 0x27

    aput-object v0, v1, v2

    const/16 v2, 0x28

    aput-object v0, v1, v2

    const/16 v2, 0x29

    aput-object v0, v1, v2

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    const/16 v2, 0x30

    aput-object v0, v1, v2

    const/16 v2, 0x31

    aput-object v0, v1, v2

    const/16 v2, 0x32

    aput-object v0, v1, v2

    const/16 v2, 0x33

    aput-object v0, v1, v2

    const/16 v2, 0x34

    new-array v3, v6, [C

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    const/16 v2, 0x35

    new-array v3, v6, [C

    fill-array-data v3, :array_c

    aput-object v3, v1, v2

    const/16 v2, 0x36

    new-array v3, v6, [C

    fill-array-data v3, :array_d

    aput-object v3, v1, v2

    const/16 v2, 0x37

    new-array v3, v6, [C

    fill-array-data v3, :array_e

    aput-object v3, v1, v2

    const/16 v2, 0x38

    new-array v3, v6, [C

    fill-array-data v3, :array_f

    aput-object v3, v1, v2

    const/16 v2, 0x39

    new-array v3, v6, [C

    fill-array-data v3, :array_10

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    new-array v3, v6, [C

    fill-array-data v3, :array_11

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    new-array v3, v6, [C

    fill-array-data v3, :array_12

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    new-array v3, v6, [C

    fill-array-data v3, :array_13

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    new-array v3, v6, [C

    fill-array-data v3, :array_14

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    new-array v3, v6, [C

    fill-array-data v3, :array_15

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    new-array v3, v6, [C

    fill-array-data v3, :array_16

    aput-object v3, v1, v2

    const/16 v2, 0x40

    new-array v3, v6, [C

    fill-array-data v3, :array_17

    aput-object v3, v1, v2

    const/16 v2, 0x41

    new-array v3, v6, [C

    fill-array-data v3, :array_18

    aput-object v3, v1, v2

    const/16 v2, 0x42

    new-array v3, v6, [C

    fill-array-data v3, :array_19

    aput-object v3, v1, v2

    const/16 v2, 0x43

    new-array v3, v6, [C

    fill-array-data v3, :array_1a

    aput-object v3, v1, v2

    const/16 v2, 0x44

    new-array v3, v6, [C

    fill-array-data v3, :array_1b

    aput-object v3, v1, v2

    const/16 v2, 0x45

    new-array v3, v6, [C

    fill-array-data v3, :array_1c

    aput-object v3, v1, v2

    const/16 v2, 0x46

    new-array v3, v6, [C

    fill-array-data v3, :array_1d

    aput-object v3, v1, v2

    const/16 v2, 0x47

    new-array v3, v6, [C

    fill-array-data v3, :array_1e

    aput-object v3, v1, v2

    const/16 v2, 0x48

    new-array v3, v6, [C

    fill-array-data v3, :array_1f

    aput-object v3, v1, v2

    const/16 v2, 0x49

    new-array v3, v6, [C

    fill-array-data v3, :array_20

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    new-array v3, v6, [C

    fill-array-data v3, :array_21

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    new-array v3, v8, [C

    fill-array-data v3, :array_22

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    new-array v3, v6, [C

    fill-array-data v3, :array_23

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    new-array v3, v8, [C

    fill-array-data v3, :array_24

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const/16 v3, 0x1d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const/16 v3, 0x1e

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const/16 v3, 0x1f

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const/16 v3, 0x20

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const/16 v3, 0x21

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const/16 v3, 0x22

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const/16 v3, 0x23

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const/16 v3, 0x24

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const/16 v3, 0x25

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const/16 v3, 0x26

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const/16 v3, 0x27

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const/16 v3, 0x28

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const/16 v3, 0x29

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const/16 v3, 0x2a

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const/16 v3, 0x2b

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const/16 v3, 0x2c

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const/16 v3, 0x2d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const/16 v3, 0x2e

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const/16 v3, 0x2f

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const/16 v3, 0x30

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const/16 v3, 0x31

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const/16 v3, 0x32

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const/16 v3, 0x33

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const/16 v3, 0x34

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const/16 v3, 0x35

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const/16 v3, 0x36

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const/16 v3, 0xd8

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const/16 v3, 0x3d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const/16 v3, 0x37

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NAME_ASCII:[[C

    .line 171
    const/16 v1, 0x6b

    new-array v1, v1, [[C

    new-array v2, v8, [C

    fill-array-data v2, :array_25

    aput-object v2, v1, v5

    const/16 v2, 0x20

    new-array v2, v2, [C

    fill-array-data v2, :array_26

    aput-object v2, v1, v7

    const/16 v2, 0xa

    new-array v2, v2, [C

    fill-array-data v2, :array_27

    aput-object v2, v1, v8

    const/16 v2, 0xb

    new-array v2, v2, [C

    fill-array-data v2, :array_28

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const/16 v3, 0xa

    new-array v3, v3, [C

    fill-array-data v3, :array_29

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0xa

    new-array v3, v3, [C

    fill-array-data v3, :array_2a

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0xb

    new-array v3, v3, [C

    fill-array-data v3, :array_2b

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0xc

    new-array v3, v3, [C

    fill-array-data v3, :array_2c

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0xb

    new-array v3, v3, [C

    fill-array-data v3, :array_2d

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0xd

    new-array v3, v3, [C

    fill-array-data v3, :array_2e

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const/4 v3, 0x4

    new-array v3, v3, [C

    fill-array-data v3, :array_2f

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const/4 v3, 0x4

    new-array v3, v3, [C

    fill-array-data v3, :array_30

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-array v3, v8, [C

    fill-array-data v3, :array_31

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-array v3, v7, [C

    const/16 v4, 0x70

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-array v3, v7, [C

    const/16 v4, 0x77

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const/16 v2, 0x23

    aput-object v0, v1, v2

    const/16 v2, 0x24

    aput-object v0, v1, v2

    const/16 v2, 0x25

    aput-object v0, v1, v2

    const/16 v2, 0x26

    aput-object v0, v1, v2

    const/16 v2, 0x27

    aput-object v0, v1, v2

    const/16 v2, 0x28

    aput-object v0, v1, v2

    const/16 v2, 0x29

    aput-object v0, v1, v2

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    const/16 v2, 0x30

    aput-object v0, v1, v2

    const/16 v2, 0x31

    aput-object v0, v1, v2

    const/16 v2, 0x32

    aput-object v0, v1, v2

    const/16 v2, 0x33

    aput-object v0, v1, v2

    const/16 v2, 0x34

    new-array v3, v6, [C

    fill-array-data v3, :array_32

    aput-object v3, v1, v2

    const/16 v2, 0x35

    new-array v3, v6, [C

    fill-array-data v3, :array_33

    aput-object v3, v1, v2

    const/16 v2, 0x36

    new-array v3, v6, [C

    fill-array-data v3, :array_34

    aput-object v3, v1, v2

    const/16 v2, 0x37

    new-array v3, v6, [C

    fill-array-data v3, :array_35

    aput-object v3, v1, v2

    const/16 v2, 0x38

    new-array v3, v6, [C

    fill-array-data v3, :array_36

    aput-object v3, v1, v2

    const/16 v2, 0x39

    new-array v3, v6, [C

    fill-array-data v3, :array_37

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    new-array v3, v6, [C

    fill-array-data v3, :array_38

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    new-array v3, v6, [C

    fill-array-data v3, :array_39

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    new-array v3, v6, [C

    fill-array-data v3, :array_3a

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    new-array v3, v6, [C

    fill-array-data v3, :array_3b

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    new-array v3, v6, [C

    fill-array-data v3, :array_3c

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    new-array v3, v6, [C

    fill-array-data v3, :array_3d

    aput-object v3, v1, v2

    const/16 v2, 0x40

    new-array v3, v6, [C

    fill-array-data v3, :array_3e

    aput-object v3, v1, v2

    const/16 v2, 0x41

    new-array v3, v6, [C

    fill-array-data v3, :array_3f

    aput-object v3, v1, v2

    const/16 v2, 0x42

    new-array v3, v6, [C

    fill-array-data v3, :array_40

    aput-object v3, v1, v2

    const/16 v2, 0x43

    new-array v3, v6, [C

    fill-array-data v3, :array_41

    aput-object v3, v1, v2

    const/16 v2, 0x44

    new-array v3, v6, [C

    fill-array-data v3, :array_42

    aput-object v3, v1, v2

    const/16 v2, 0x45

    new-array v3, v6, [C

    fill-array-data v3, :array_43

    aput-object v3, v1, v2

    const/16 v2, 0x46

    new-array v3, v6, [C

    fill-array-data v3, :array_44

    aput-object v3, v1, v2

    const/16 v2, 0x47

    new-array v3, v6, [C

    fill-array-data v3, :array_45

    aput-object v3, v1, v2

    const/16 v2, 0x48

    new-array v3, v6, [C

    fill-array-data v3, :array_46

    aput-object v3, v1, v2

    const/16 v2, 0x49

    new-array v3, v6, [C

    fill-array-data v3, :array_47

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    new-array v3, v6, [C

    fill-array-data v3, :array_48

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    new-array v3, v8, [C

    fill-array-data v3, :array_49

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    new-array v3, v6, [C

    fill-array-data v3, :array_4a

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    new-array v3, v8, [C

    fill-array-data v3, :array_4b

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const/16 v3, 0x1d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const/16 v3, 0x1e

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const/16 v3, 0x1f

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const/16 v3, 0x20

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const/16 v3, 0x21

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const/16 v3, 0x22

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const/16 v3, 0x23

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const/16 v3, 0x24

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const/16 v3, 0x25

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const/16 v3, 0x26

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const/16 v3, 0x27

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const/16 v3, 0x28

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const/16 v3, 0x29

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const/16 v3, 0x2a

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const/16 v3, 0x2b

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const/16 v3, 0x2c

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const/16 v3, 0x2d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const/16 v3, 0x2e

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const/16 v3, 0x2f

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const/16 v3, 0x30

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const/16 v3, 0x31

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const/16 v3, 0x32

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const/16 v3, 0x33

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const/16 v3, 0x34

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const/16 v3, 0x35

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const/16 v3, 0x36

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const/16 v3, 0xd8

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const/16 v3, 0x3d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const/16 v3, 0x37

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NAME_BOPOMOFO:[[C

    .line 284
    const/16 v1, 0x6b

    new-array v1, v1, [[C

    new-array v2, v8, [C

    fill-array-data v2, :array_4c

    aput-object v2, v1, v5

    const/16 v2, 0x1d

    new-array v2, v2, [C

    fill-array-data v2, :array_4d

    aput-object v2, v1, v7

    const/16 v2, 0xd

    new-array v2, v2, [C

    fill-array-data v2, :array_4e

    aput-object v2, v1, v8

    const/16 v2, 0xf

    new-array v2, v2, [C

    fill-array-data v2, :array_4f

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const/16 v3, 0x14

    new-array v3, v3, [C

    fill-array-data v3, :array_50

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0xb

    new-array v3, v3, [C

    fill-array-data v3, :array_51

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x13

    new-array v3, v3, [C

    fill-array-data v3, :array_52

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x12

    new-array v3, v3, [C

    fill-array-data v3, :array_53

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0xb

    new-array v3, v3, [C

    fill-array-data v3, :array_54

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x16

    new-array v3, v3, [C

    fill-array-data v3, :array_55

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v7, [C

    const/16 v4, 0x2a

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-array v3, v7, [C

    const/16 v4, 0x23

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-array v3, v8, [C

    fill-array-data v3, :array_56

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-array v3, v7, [C

    const/16 v4, 0x70

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-array v3, v7, [C

    const/16 v4, 0x77

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const/16 v2, 0x23

    aput-object v0, v1, v2

    const/16 v2, 0x24

    aput-object v0, v1, v2

    const/16 v2, 0x25

    aput-object v0, v1, v2

    const/16 v2, 0x26

    aput-object v0, v1, v2

    const/16 v2, 0x27

    aput-object v0, v1, v2

    const/16 v2, 0x28

    aput-object v0, v1, v2

    const/16 v2, 0x29

    aput-object v0, v1, v2

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    const/16 v2, 0x30

    aput-object v0, v1, v2

    const/16 v2, 0x31

    aput-object v0, v1, v2

    const/16 v2, 0x32

    aput-object v0, v1, v2

    const/16 v2, 0x33

    aput-object v0, v1, v2

    const/16 v2, 0x34

    new-array v3, v6, [C

    fill-array-data v3, :array_57

    aput-object v3, v1, v2

    const/16 v2, 0x35

    new-array v3, v6, [C

    fill-array-data v3, :array_58

    aput-object v3, v1, v2

    const/16 v2, 0x36

    new-array v3, v6, [C

    fill-array-data v3, :array_59

    aput-object v3, v1, v2

    const/16 v2, 0x37

    new-array v3, v6, [C

    fill-array-data v3, :array_5a

    aput-object v3, v1, v2

    const/16 v2, 0x38

    new-array v3, v6, [C

    fill-array-data v3, :array_5b

    aput-object v3, v1, v2

    const/16 v2, 0x39

    new-array v3, v6, [C

    fill-array-data v3, :array_5c

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    new-array v3, v6, [C

    fill-array-data v3, :array_5d

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    new-array v3, v6, [C

    fill-array-data v3, :array_5e

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    new-array v3, v6, [C

    fill-array-data v3, :array_5f

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    new-array v3, v6, [C

    fill-array-data v3, :array_60

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    new-array v3, v6, [C

    fill-array-data v3, :array_61

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    new-array v3, v6, [C

    fill-array-data v3, :array_62

    aput-object v3, v1, v2

    const/16 v2, 0x40

    new-array v3, v6, [C

    fill-array-data v3, :array_63

    aput-object v3, v1, v2

    const/16 v2, 0x41

    new-array v3, v6, [C

    fill-array-data v3, :array_64

    aput-object v3, v1, v2

    const/16 v2, 0x42

    new-array v3, v6, [C

    fill-array-data v3, :array_65

    aput-object v3, v1, v2

    const/16 v2, 0x43

    new-array v3, v6, [C

    fill-array-data v3, :array_66

    aput-object v3, v1, v2

    const/16 v2, 0x44

    new-array v3, v6, [C

    fill-array-data v3, :array_67

    aput-object v3, v1, v2

    const/16 v2, 0x45

    new-array v3, v6, [C

    fill-array-data v3, :array_68

    aput-object v3, v1, v2

    const/16 v2, 0x46

    new-array v3, v6, [C

    fill-array-data v3, :array_69

    aput-object v3, v1, v2

    const/16 v2, 0x47

    new-array v3, v6, [C

    fill-array-data v3, :array_6a

    aput-object v3, v1, v2

    const/16 v2, 0x48

    new-array v3, v6, [C

    fill-array-data v3, :array_6b

    aput-object v3, v1, v2

    const/16 v2, 0x49

    new-array v3, v6, [C

    fill-array-data v3, :array_6c

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    new-array v3, v6, [C

    fill-array-data v3, :array_6d

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    new-array v3, v8, [C

    fill-array-data v3, :array_6e

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    new-array v3, v6, [C

    fill-array-data v3, :array_6f

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    new-array v3, v8, [C

    fill-array-data v3, :array_70

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const/16 v3, 0x1d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const/16 v3, 0x1e

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const/16 v3, 0x1f

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const/16 v3, 0x20

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const/16 v3, 0x21

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const/16 v3, 0x22

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const/16 v3, 0x23

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const/16 v3, 0x24

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const/16 v3, 0x25

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const/16 v3, 0x26

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const/16 v3, 0x27

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const/16 v3, 0x28

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const/16 v3, 0x29

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const/16 v3, 0x2a

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const/16 v3, 0x2b

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const/16 v3, 0x2c

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const/16 v3, 0x2d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const/16 v3, 0x2e

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const/16 v3, 0x2f

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const/16 v3, 0x30

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const/16 v3, 0x31

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const/16 v3, 0x32

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const/16 v3, 0x33

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const/16 v3, 0x34

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const/16 v3, 0x35

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const/16 v3, 0x36

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const/16 v3, 0xd8

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const/16 v3, 0x3d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const/16 v3, 0x37

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NAME_GREEK:[[C

    .line 397
    const/16 v1, 0x6b

    new-array v1, v1, [[C

    new-array v2, v8, [C

    fill-array-data v2, :array_71

    aput-object v2, v1, v5

    const/16 v2, 0x1d

    new-array v2, v2, [C

    fill-array-data v2, :array_72

    aput-object v2, v1, v7

    const/16 v2, 0xf

    new-array v2, v2, [C

    fill-array-data v2, :array_73

    aput-object v2, v1, v8

    const/16 v2, 0xf

    new-array v2, v2, [C

    fill-array-data v2, :array_74

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const/16 v3, 0xf

    new-array v3, v3, [C

    fill-array-data v3, :array_75

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0xf

    new-array v3, v3, [C

    fill-array-data v3, :array_76

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0xf

    new-array v3, v3, [C

    fill-array-data v3, :array_77

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x11

    new-array v3, v3, [C

    fill-array-data v3, :array_78

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0xf

    new-array v3, v3, [C

    fill-array-data v3, :array_79

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x11

    new-array v3, v3, [C

    fill-array-data v3, :array_7a

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v7, [C

    const/16 v4, 0x2a

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-array v3, v7, [C

    const/16 v4, 0x23

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-array v3, v8, [C

    fill-array-data v3, :array_7b

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-array v3, v7, [C

    const/16 v4, 0x70

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-array v3, v7, [C

    const/16 v4, 0x77

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const/16 v2, 0x23

    aput-object v0, v1, v2

    const/16 v2, 0x24

    aput-object v0, v1, v2

    const/16 v2, 0x25

    aput-object v0, v1, v2

    const/16 v2, 0x26

    aput-object v0, v1, v2

    const/16 v2, 0x27

    aput-object v0, v1, v2

    const/16 v2, 0x28

    aput-object v0, v1, v2

    const/16 v2, 0x29

    aput-object v0, v1, v2

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    const/16 v2, 0x30

    aput-object v0, v1, v2

    const/16 v2, 0x31

    aput-object v0, v1, v2

    const/16 v2, 0x32

    aput-object v0, v1, v2

    const/16 v2, 0x33

    aput-object v0, v1, v2

    const/16 v2, 0x34

    new-array v3, v6, [C

    fill-array-data v3, :array_7c

    aput-object v3, v1, v2

    const/16 v2, 0x35

    new-array v3, v6, [C

    fill-array-data v3, :array_7d

    aput-object v3, v1, v2

    const/16 v2, 0x36

    new-array v3, v6, [C

    fill-array-data v3, :array_7e

    aput-object v3, v1, v2

    const/16 v2, 0x37

    new-array v3, v6, [C

    fill-array-data v3, :array_7f

    aput-object v3, v1, v2

    const/16 v2, 0x38

    new-array v3, v6, [C

    fill-array-data v3, :array_80

    aput-object v3, v1, v2

    const/16 v2, 0x39

    new-array v3, v6, [C

    fill-array-data v3, :array_81

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    new-array v3, v6, [C

    fill-array-data v3, :array_82

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    new-array v3, v6, [C

    fill-array-data v3, :array_83

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    new-array v3, v6, [C

    fill-array-data v3, :array_84

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    new-array v3, v6, [C

    fill-array-data v3, :array_85

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    new-array v3, v6, [C

    fill-array-data v3, :array_86

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    new-array v3, v6, [C

    fill-array-data v3, :array_87

    aput-object v3, v1, v2

    const/16 v2, 0x40

    new-array v3, v6, [C

    fill-array-data v3, :array_88

    aput-object v3, v1, v2

    const/16 v2, 0x41

    new-array v3, v6, [C

    fill-array-data v3, :array_89

    aput-object v3, v1, v2

    const/16 v2, 0x42

    new-array v3, v6, [C

    fill-array-data v3, :array_8a

    aput-object v3, v1, v2

    const/16 v2, 0x43

    new-array v3, v6, [C

    fill-array-data v3, :array_8b

    aput-object v3, v1, v2

    const/16 v2, 0x44

    new-array v3, v6, [C

    fill-array-data v3, :array_8c

    aput-object v3, v1, v2

    const/16 v2, 0x45

    new-array v3, v6, [C

    fill-array-data v3, :array_8d

    aput-object v3, v1, v2

    const/16 v2, 0x46

    new-array v3, v6, [C

    fill-array-data v3, :array_8e

    aput-object v3, v1, v2

    const/16 v2, 0x47

    new-array v3, v6, [C

    fill-array-data v3, :array_8f

    aput-object v3, v1, v2

    const/16 v2, 0x48

    new-array v3, v6, [C

    fill-array-data v3, :array_90

    aput-object v3, v1, v2

    const/16 v2, 0x49

    new-array v3, v6, [C

    fill-array-data v3, :array_91

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    new-array v3, v6, [C

    fill-array-data v3, :array_92

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    new-array v3, v8, [C

    fill-array-data v3, :array_93

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    new-array v3, v6, [C

    fill-array-data v3, :array_94

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    new-array v3, v8, [C

    fill-array-data v3, :array_95

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const/16 v3, 0x1d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const/16 v3, 0x1e

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const/16 v3, 0x1f

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const/16 v3, 0x20

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const/16 v3, 0x21

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const/16 v3, 0x22

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const/16 v3, 0x23

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const/16 v3, 0x24

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const/16 v3, 0x25

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const/16 v3, 0x26

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const/16 v3, 0x27

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const/16 v3, 0x28

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const/16 v3, 0x29

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const/16 v3, 0x2a

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const/16 v3, 0x2b

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const/16 v3, 0x2c

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const/16 v3, 0x2d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const/16 v3, 0x2e

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const/16 v3, 0x2f

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const/16 v3, 0x30

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const/16 v3, 0x31

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const/16 v3, 0x32

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const/16 v3, 0x33

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const/16 v3, 0x34

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const/16 v3, 0x35

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const/16 v3, 0x36

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const/16 v3, 0xd8

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const/16 v3, 0x3d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const/16 v3, 0x37

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NAME_RUSSIAN:[[C

    .line 510
    const/16 v1, 0x6b

    new-array v1, v1, [[C

    const/4 v2, 0x4

    new-array v2, v2, [C

    fill-array-data v2, :array_96

    aput-object v2, v1, v5

    const/16 v2, 0x20

    new-array v2, v2, [C

    fill-array-data v2, :array_97

    aput-object v2, v1, v7

    const/16 v2, 0x9

    new-array v2, v2, [C

    fill-array-data v2, :array_98

    aput-object v2, v1, v8

    const/16 v2, 0x9

    new-array v2, v2, [C

    fill-array-data v2, :array_99

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const/16 v3, 0xa

    new-array v3, v3, [C

    fill-array-data v3, :array_9a

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x9

    new-array v3, v3, [C

    fill-array-data v3, :array_9b

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x9

    new-array v3, v3, [C

    fill-array-data v3, :array_9c

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0xc

    new-array v3, v3, [C

    fill-array-data v3, :array_9d

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0xa

    new-array v3, v3, [C

    fill-array-data v3, :array_9e

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0xb

    new-array v3, v3, [C

    fill-array-data v3, :array_9f

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const/4 v3, 0x4

    new-array v3, v3, [C

    fill-array-data v3, :array_a0

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-array v3, v6, [C

    fill-array-data v3, :array_a1

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-array v3, v8, [C

    fill-array-data v3, :array_a2

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-array v3, v7, [C

    const/16 v4, 0x70

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-array v3, v7, [C

    const/16 v4, 0x77

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const/16 v2, 0x23

    aput-object v0, v1, v2

    const/16 v2, 0x24

    aput-object v0, v1, v2

    const/16 v2, 0x25

    aput-object v0, v1, v2

    const/16 v2, 0x26

    aput-object v0, v1, v2

    const/16 v2, 0x27

    aput-object v0, v1, v2

    const/16 v2, 0x28

    aput-object v0, v1, v2

    const/16 v2, 0x29

    aput-object v0, v1, v2

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    const/16 v2, 0x30

    aput-object v0, v1, v2

    const/16 v2, 0x31

    aput-object v0, v1, v2

    const/16 v2, 0x32

    aput-object v0, v1, v2

    const/16 v2, 0x33

    aput-object v0, v1, v2

    const/16 v2, 0x34

    new-array v3, v6, [C

    fill-array-data v3, :array_a3

    aput-object v3, v1, v2

    const/16 v2, 0x35

    new-array v3, v6, [C

    fill-array-data v3, :array_a4

    aput-object v3, v1, v2

    const/16 v2, 0x36

    new-array v3, v6, [C

    fill-array-data v3, :array_a5

    aput-object v3, v1, v2

    const/16 v2, 0x37

    new-array v3, v6, [C

    fill-array-data v3, :array_a6

    aput-object v3, v1, v2

    const/16 v2, 0x38

    new-array v3, v6, [C

    fill-array-data v3, :array_a7

    aput-object v3, v1, v2

    const/16 v2, 0x39

    new-array v3, v6, [C

    fill-array-data v3, :array_a8

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    new-array v3, v6, [C

    fill-array-data v3, :array_a9

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    new-array v3, v6, [C

    fill-array-data v3, :array_aa

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    new-array v3, v6, [C

    fill-array-data v3, :array_ab

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    new-array v3, v6, [C

    fill-array-data v3, :array_ac

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    new-array v3, v6, [C

    fill-array-data v3, :array_ad

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    new-array v3, v6, [C

    fill-array-data v3, :array_ae

    aput-object v3, v1, v2

    const/16 v2, 0x40

    new-array v3, v6, [C

    fill-array-data v3, :array_af

    aput-object v3, v1, v2

    const/16 v2, 0x41

    new-array v3, v6, [C

    fill-array-data v3, :array_b0

    aput-object v3, v1, v2

    const/16 v2, 0x42

    new-array v3, v6, [C

    fill-array-data v3, :array_b1

    aput-object v3, v1, v2

    const/16 v2, 0x43

    new-array v3, v6, [C

    fill-array-data v3, :array_b2

    aput-object v3, v1, v2

    const/16 v2, 0x44

    new-array v3, v6, [C

    fill-array-data v3, :array_b3

    aput-object v3, v1, v2

    const/16 v2, 0x45

    new-array v3, v6, [C

    fill-array-data v3, :array_b4

    aput-object v3, v1, v2

    const/16 v2, 0x46

    new-array v3, v6, [C

    fill-array-data v3, :array_b5

    aput-object v3, v1, v2

    const/16 v2, 0x47

    new-array v3, v6, [C

    fill-array-data v3, :array_b6

    aput-object v3, v1, v2

    const/16 v2, 0x48

    new-array v3, v6, [C

    fill-array-data v3, :array_b7

    aput-object v3, v1, v2

    const/16 v2, 0x49

    new-array v3, v6, [C

    fill-array-data v3, :array_b8

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    new-array v3, v6, [C

    fill-array-data v3, :array_b9

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    new-array v3, v8, [C

    fill-array-data v3, :array_ba

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    new-array v3, v6, [C

    fill-array-data v3, :array_bb

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    new-array v3, v8, [C

    fill-array-data v3, :array_bc

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const/16 v3, 0x1d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const/16 v3, 0x1e

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const/16 v3, 0x1f

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const/16 v3, 0x20

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const/16 v3, 0x21

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const/16 v3, 0x22

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const/16 v3, 0x23

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const/16 v3, 0x24

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const/16 v3, 0x25

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const/16 v3, 0x26

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const/16 v3, 0x27

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const/16 v3, 0x28

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const/16 v3, 0x29

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const/16 v3, 0x2a

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const/16 v3, 0x2b

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const/16 v3, 0x2c

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const/16 v3, 0x2d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const/16 v3, 0x2e

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const/16 v3, 0x2f

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const/16 v3, 0x30

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const/16 v3, 0x31

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const/16 v3, 0x32

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const/16 v3, 0x33

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const/16 v3, 0x34

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const/16 v3, 0x35

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const/16 v3, 0x36

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const/16 v3, 0xd8

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const/16 v3, 0x3d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const/16 v3, 0x37

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NAME_KOREAN:[[C

    .line 623
    const/16 v1, 0x6b

    new-array v1, v1, [[C

    const/16 v2, 0x2b

    new-array v2, v2, [C

    fill-array-data v2, :array_bd

    aput-object v2, v1, v5

    const/16 v2, 0x22

    new-array v2, v2, [C

    fill-array-data v2, :array_be

    aput-object v2, v1, v7

    const/16 v2, 0xb

    new-array v2, v2, [C

    fill-array-data v2, :array_bf

    aput-object v2, v1, v8

    const/16 v2, 0xb

    new-array v2, v2, [C

    fill-array-data v2, :array_c0

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const/16 v3, 0xd

    new-array v3, v3, [C

    fill-array-data v3, :array_c1

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0xc

    new-array v3, v3, [C

    fill-array-data v3, :array_c2

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0xc

    new-array v3, v3, [C

    fill-array-data v3, :array_c3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0xe

    new-array v3, v3, [C

    fill-array-data v3, :array_c4

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0xe

    new-array v3, v3, [C

    fill-array-data v3, :array_c5

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0xe

    new-array v3, v3, [C

    fill-array-data v3, :array_c6

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const/4 v3, 0x4

    new-array v3, v3, [C

    fill-array-data v3, :array_c7

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-array v3, v6, [C

    fill-array-data v3, :array_c8

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-array v3, v8, [C

    fill-array-data v3, :array_c9

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-array v3, v7, [C

    const/16 v4, 0x70

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-array v3, v7, [C

    const/16 v4, 0x77

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const/16 v2, 0x23

    aput-object v0, v1, v2

    const/16 v2, 0x24

    aput-object v0, v1, v2

    const/16 v2, 0x25

    aput-object v0, v1, v2

    const/16 v2, 0x26

    aput-object v0, v1, v2

    const/16 v2, 0x27

    aput-object v0, v1, v2

    const/16 v2, 0x28

    aput-object v0, v1, v2

    const/16 v2, 0x29

    aput-object v0, v1, v2

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    const/16 v2, 0x30

    aput-object v0, v1, v2

    const/16 v2, 0x31

    aput-object v0, v1, v2

    const/16 v2, 0x32

    aput-object v0, v1, v2

    const/16 v2, 0x33

    aput-object v0, v1, v2

    const/16 v2, 0x34

    new-array v3, v6, [C

    fill-array-data v3, :array_ca

    aput-object v3, v1, v2

    const/16 v2, 0x35

    new-array v3, v6, [C

    fill-array-data v3, :array_cb

    aput-object v3, v1, v2

    const/16 v2, 0x36

    new-array v3, v6, [C

    fill-array-data v3, :array_cc

    aput-object v3, v1, v2

    const/16 v2, 0x37

    new-array v3, v6, [C

    fill-array-data v3, :array_cd

    aput-object v3, v1, v2

    const/16 v2, 0x38

    new-array v3, v6, [C

    fill-array-data v3, :array_ce

    aput-object v3, v1, v2

    const/16 v2, 0x39

    new-array v3, v6, [C

    fill-array-data v3, :array_cf

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    new-array v3, v6, [C

    fill-array-data v3, :array_d0

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    new-array v3, v6, [C

    fill-array-data v3, :array_d1

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    new-array v3, v6, [C

    fill-array-data v3, :array_d2

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    new-array v3, v6, [C

    fill-array-data v3, :array_d3

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    new-array v3, v6, [C

    fill-array-data v3, :array_d4

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    new-array v3, v6, [C

    fill-array-data v3, :array_d5

    aput-object v3, v1, v2

    const/16 v2, 0x40

    new-array v3, v6, [C

    fill-array-data v3, :array_d6

    aput-object v3, v1, v2

    const/16 v2, 0x41

    new-array v3, v6, [C

    fill-array-data v3, :array_d7

    aput-object v3, v1, v2

    const/16 v2, 0x42

    new-array v3, v6, [C

    fill-array-data v3, :array_d8

    aput-object v3, v1, v2

    const/16 v2, 0x43

    new-array v3, v6, [C

    fill-array-data v3, :array_d9

    aput-object v3, v1, v2

    const/16 v2, 0x44

    new-array v3, v6, [C

    fill-array-data v3, :array_da

    aput-object v3, v1, v2

    const/16 v2, 0x45

    new-array v3, v6, [C

    fill-array-data v3, :array_db

    aput-object v3, v1, v2

    const/16 v2, 0x46

    new-array v3, v6, [C

    fill-array-data v3, :array_dc

    aput-object v3, v1, v2

    const/16 v2, 0x47

    new-array v3, v6, [C

    fill-array-data v3, :array_dd

    aput-object v3, v1, v2

    const/16 v2, 0x48

    new-array v3, v6, [C

    fill-array-data v3, :array_de

    aput-object v3, v1, v2

    const/16 v2, 0x49

    new-array v3, v6, [C

    fill-array-data v3, :array_df

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    new-array v3, v6, [C

    fill-array-data v3, :array_e0

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    new-array v3, v8, [C

    fill-array-data v3, :array_e1

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    new-array v3, v6, [C

    fill-array-data v3, :array_e2

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    new-array v3, v8, [C

    fill-array-data v3, :array_e3

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const/16 v3, 0x1d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const/16 v3, 0x1e

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const/16 v3, 0x1f

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const/16 v3, 0x20

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const/16 v3, 0x21

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const/16 v3, 0x22

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const/16 v3, 0x23

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const/16 v3, 0x24

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const/16 v3, 0x25

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const/16 v3, 0x26

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const/16 v3, 0x27

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const/16 v3, 0x28

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const/16 v3, 0x29

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const/16 v3, 0x2a

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const/16 v3, 0x2b

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const/16 v3, 0x2c

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const/16 v3, 0x2d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const/16 v3, 0x2e

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const/16 v3, 0x2f

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const/16 v3, 0x30

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const/16 v3, 0x31

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const/16 v3, 0x32

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const/16 v3, 0x33

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const/16 v3, 0x34

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const/16 v3, 0x35

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const/16 v3, 0x36

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const/16 v3, 0xd8

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const/16 v3, 0x3d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const/16 v3, 0x37

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NAME_THAILAND:[[C

    .line 736
    const/16 v1, 0x6b

    new-array v1, v1, [[C

    const/4 v2, 0x5

    new-array v2, v2, [C

    fill-array-data v2, :array_e4

    aput-object v2, v1, v5

    const/16 v2, 0x23

    new-array v2, v2, [C

    fill-array-data v2, :array_e5

    aput-object v2, v1, v7

    const/16 v2, 0xc

    new-array v2, v2, [C

    fill-array-data v2, :array_e6

    aput-object v2, v1, v8

    const/16 v2, 0xc

    new-array v2, v2, [C

    fill-array-data v2, :array_e7

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const/16 v3, 0xc

    new-array v3, v3, [C

    fill-array-data v3, :array_e8

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0xc

    new-array v3, v3, [C

    fill-array-data v3, :array_e9

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0xc

    new-array v3, v3, [C

    fill-array-data v3, :array_ea

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0xe

    new-array v3, v3, [C

    fill-array-data v3, :array_eb

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0xa

    new-array v3, v3, [C

    fill-array-data v3, :array_ec

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0xe

    new-array v3, v3, [C

    fill-array-data v3, :array_ed

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v7, [C

    const/16 v4, 0x2a

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-array v3, v7, [C

    const/16 v4, 0x23

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-array v3, v8, [C

    fill-array-data v3, :array_ee

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-array v3, v7, [C

    const/16 v4, 0x70

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-array v3, v7, [C

    const/16 v4, 0x77

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const/16 v2, 0x23

    aput-object v0, v1, v2

    const/16 v2, 0x24

    aput-object v0, v1, v2

    const/16 v2, 0x25

    aput-object v0, v1, v2

    const/16 v2, 0x26

    aput-object v0, v1, v2

    const/16 v2, 0x27

    aput-object v0, v1, v2

    const/16 v2, 0x28

    aput-object v0, v1, v2

    const/16 v2, 0x29

    aput-object v0, v1, v2

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    const/16 v2, 0x30

    aput-object v0, v1, v2

    const/16 v2, 0x31

    aput-object v0, v1, v2

    const/16 v2, 0x32

    aput-object v0, v1, v2

    const/16 v2, 0x33

    aput-object v0, v1, v2

    const/16 v2, 0x34

    new-array v3, v6, [C

    fill-array-data v3, :array_ef

    aput-object v3, v1, v2

    const/16 v2, 0x35

    new-array v3, v6, [C

    fill-array-data v3, :array_f0

    aput-object v3, v1, v2

    const/16 v2, 0x36

    new-array v3, v6, [C

    fill-array-data v3, :array_f1

    aput-object v3, v1, v2

    const/16 v2, 0x37

    new-array v3, v6, [C

    fill-array-data v3, :array_f2

    aput-object v3, v1, v2

    const/16 v2, 0x38

    new-array v3, v6, [C

    fill-array-data v3, :array_f3

    aput-object v3, v1, v2

    const/16 v2, 0x39

    new-array v3, v6, [C

    fill-array-data v3, :array_f4

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    new-array v3, v6, [C

    fill-array-data v3, :array_f5

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    new-array v3, v6, [C

    fill-array-data v3, :array_f6

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    new-array v3, v6, [C

    fill-array-data v3, :array_f7

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    new-array v3, v6, [C

    fill-array-data v3, :array_f8

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    new-array v3, v6, [C

    fill-array-data v3, :array_f9

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    new-array v3, v6, [C

    fill-array-data v3, :array_fa

    aput-object v3, v1, v2

    const/16 v2, 0x40

    new-array v3, v6, [C

    fill-array-data v3, :array_fb

    aput-object v3, v1, v2

    const/16 v2, 0x41

    new-array v3, v6, [C

    fill-array-data v3, :array_fc

    aput-object v3, v1, v2

    const/16 v2, 0x42

    new-array v3, v6, [C

    fill-array-data v3, :array_fd

    aput-object v3, v1, v2

    const/16 v2, 0x43

    new-array v3, v6, [C

    fill-array-data v3, :array_fe

    aput-object v3, v1, v2

    const/16 v2, 0x44

    new-array v3, v6, [C

    fill-array-data v3, :array_ff

    aput-object v3, v1, v2

    const/16 v2, 0x45

    new-array v3, v6, [C

    fill-array-data v3, :array_100

    aput-object v3, v1, v2

    const/16 v2, 0x46

    new-array v3, v6, [C

    fill-array-data v3, :array_101

    aput-object v3, v1, v2

    const/16 v2, 0x47

    new-array v3, v6, [C

    fill-array-data v3, :array_102

    aput-object v3, v1, v2

    const/16 v2, 0x48

    new-array v3, v6, [C

    fill-array-data v3, :array_103

    aput-object v3, v1, v2

    const/16 v2, 0x49

    new-array v3, v6, [C

    fill-array-data v3, :array_104

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    new-array v3, v6, [C

    fill-array-data v3, :array_105

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    new-array v3, v8, [C

    fill-array-data v3, :array_106

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    new-array v3, v6, [C

    fill-array-data v3, :array_107

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    new-array v3, v8, [C

    fill-array-data v3, :array_108

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const/16 v3, 0x1d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const/16 v3, 0x1e

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const/16 v3, 0x1f

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const/16 v3, 0x20

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const/16 v3, 0x21

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const/16 v3, 0x22

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const/16 v3, 0x23

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const/16 v3, 0x24

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const/16 v3, 0x25

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const/16 v3, 0x26

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const/16 v3, 0x27

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const/16 v3, 0x28

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const/16 v3, 0x29

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const/16 v3, 0x2a

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const/16 v3, 0x2b

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const/16 v3, 0x2c

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const/16 v3, 0x2d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const/16 v3, 0x2e

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const/16 v3, 0x2f

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const/16 v3, 0x30

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const/16 v3, 0x31

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const/16 v3, 0x32

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const/16 v3, 0x33

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const/16 v3, 0x34

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const/16 v3, 0x35

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const/16 v3, 0x36

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const/16 v3, 0xd8

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const/16 v3, 0x3d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const/16 v3, 0x37

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NAME_JAPANESE:[[C

    .line 849
    const/16 v1, 0x6b

    new-array v1, v1, [[C

    new-array v2, v8, [C

    fill-array-data v2, :array_109

    aput-object v2, v1, v5

    const/16 v2, 0x1d

    new-array v2, v2, [C

    fill-array-data v2, :array_10a

    aput-object v2, v1, v7

    const/16 v2, 0xa

    new-array v2, v2, [C

    fill-array-data v2, :array_10b

    aput-object v2, v1, v8

    const/16 v2, 0xa

    new-array v2, v2, [C

    fill-array-data v2, :array_10c

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const/16 v3, 0xb

    new-array v3, v3, [C

    fill-array-data v3, :array_10d

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0xb

    new-array v3, v3, [C

    fill-array-data v3, :array_10e

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0xa

    new-array v3, v3, [C

    fill-array-data v3, :array_10f

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0xc

    new-array v3, v3, [C

    fill-array-data v3, :array_110

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0xa

    new-array v3, v3, [C

    fill-array-data v3, :array_111

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0xd

    new-array v3, v3, [C

    fill-array-data v3, :array_112

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const/4 v3, 0x4

    new-array v3, v3, [C

    fill-array-data v3, :array_113

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-array v3, v6, [C

    fill-array-data v3, :array_114

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-array v3, v8, [C

    fill-array-data v3, :array_115

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-array v3, v7, [C

    const/16 v4, 0x70

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-array v3, v7, [C

    const/16 v4, 0x77

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const/16 v2, 0x23

    aput-object v0, v1, v2

    const/16 v2, 0x24

    aput-object v0, v1, v2

    const/16 v2, 0x25

    aput-object v0, v1, v2

    const/16 v2, 0x26

    aput-object v0, v1, v2

    const/16 v2, 0x27

    aput-object v0, v1, v2

    const/16 v2, 0x28

    aput-object v0, v1, v2

    const/16 v2, 0x29

    aput-object v0, v1, v2

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    const/16 v2, 0x30

    aput-object v0, v1, v2

    const/16 v2, 0x31

    aput-object v0, v1, v2

    const/16 v2, 0x32

    aput-object v0, v1, v2

    const/16 v2, 0x33

    aput-object v0, v1, v2

    const/16 v2, 0x34

    new-array v3, v6, [C

    fill-array-data v3, :array_116

    aput-object v3, v1, v2

    const/16 v2, 0x35

    new-array v3, v6, [C

    fill-array-data v3, :array_117

    aput-object v3, v1, v2

    const/16 v2, 0x36

    new-array v3, v6, [C

    fill-array-data v3, :array_118

    aput-object v3, v1, v2

    const/16 v2, 0x37

    new-array v3, v6, [C

    fill-array-data v3, :array_119

    aput-object v3, v1, v2

    const/16 v2, 0x38

    new-array v3, v6, [C

    fill-array-data v3, :array_11a

    aput-object v3, v1, v2

    const/16 v2, 0x39

    new-array v3, v6, [C

    fill-array-data v3, :array_11b

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    new-array v3, v6, [C

    fill-array-data v3, :array_11c

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    new-array v3, v6, [C

    fill-array-data v3, :array_11d

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    new-array v3, v6, [C

    fill-array-data v3, :array_11e

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    new-array v3, v6, [C

    fill-array-data v3, :array_11f

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    new-array v3, v6, [C

    fill-array-data v3, :array_120

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    new-array v3, v6, [C

    fill-array-data v3, :array_121

    aput-object v3, v1, v2

    const/16 v2, 0x40

    new-array v3, v6, [C

    fill-array-data v3, :array_122

    aput-object v3, v1, v2

    const/16 v2, 0x41

    new-array v3, v6, [C

    fill-array-data v3, :array_123

    aput-object v3, v1, v2

    const/16 v2, 0x42

    new-array v3, v6, [C

    fill-array-data v3, :array_124

    aput-object v3, v1, v2

    const/16 v2, 0x43

    new-array v3, v6, [C

    fill-array-data v3, :array_125

    aput-object v3, v1, v2

    const/16 v2, 0x44

    new-array v3, v6, [C

    fill-array-data v3, :array_126

    aput-object v3, v1, v2

    const/16 v2, 0x45

    new-array v3, v6, [C

    fill-array-data v3, :array_127

    aput-object v3, v1, v2

    const/16 v2, 0x46

    new-array v3, v6, [C

    fill-array-data v3, :array_128

    aput-object v3, v1, v2

    const/16 v2, 0x47

    new-array v3, v6, [C

    fill-array-data v3, :array_129

    aput-object v3, v1, v2

    const/16 v2, 0x48

    new-array v3, v6, [C

    fill-array-data v3, :array_12a

    aput-object v3, v1, v2

    const/16 v2, 0x49

    new-array v3, v6, [C

    fill-array-data v3, :array_12b

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    new-array v3, v6, [C

    fill-array-data v3, :array_12c

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    new-array v3, v8, [C

    fill-array-data v3, :array_12d

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    new-array v3, v6, [C

    fill-array-data v3, :array_12e

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    new-array v3, v8, [C

    fill-array-data v3, :array_12f

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const/16 v3, 0x1d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const/16 v3, 0x1e

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const/16 v3, 0x1f

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const/16 v3, 0x20

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const/16 v3, 0x21

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const/16 v3, 0x22

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const/16 v3, 0x23

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const/16 v3, 0x24

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const/16 v3, 0x25

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const/16 v3, 0x26

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const/16 v3, 0x27

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const/16 v3, 0x28

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const/16 v3, 0x29

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const/16 v3, 0x2a

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const/16 v3, 0x2b

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const/16 v3, 0x2c

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const/16 v3, 0x2d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const/16 v3, 0x2e

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const/16 v3, 0x2f

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const/16 v3, 0x30

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const/16 v3, 0x31

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const/16 v3, 0x32

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const/16 v3, 0x33

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const/16 v3, 0x34

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const/16 v3, 0x35

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const/16 v3, 0x36

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const/16 v3, 0xd8

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const/16 v3, 0x3d

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const/16 v3, 0x37

    invoke-static {v3, v5}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NAME_HEBREW:[[C

    .line 962
    const/16 v1, 0x6b

    new-array v1, v1, [[C

    new-array v2, v7, [C

    const/16 v3, 0x30

    aput-char v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v7, [C

    const/16 v3, 0x31

    aput-char v3, v2, v5

    aput-object v2, v1, v7

    new-array v2, v7, [C

    const/16 v3, 0x32

    aput-char v3, v2, v5

    aput-object v2, v1, v8

    new-array v2, v7, [C

    const/16 v3, 0x33

    aput-char v3, v2, v5

    aput-object v2, v1, v6

    const/4 v2, 0x4

    new-array v3, v7, [C

    const/16 v4, 0x34

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v7, [C

    const/16 v4, 0x35

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v7, [C

    const/16 v4, 0x36

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v6, [C

    fill-array-data v3, :array_130

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v7, [C

    const/16 v4, 0x38

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v6, [C

    fill-array-data v3, :array_131

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v7, [C

    const/16 v4, 0x2a

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-array v3, v7, [C

    const/16 v4, 0x23

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-array v3, v7, [C

    const/16 v4, 0x2b

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-array v3, v8, [C

    fill-array-data v3, :array_132

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-array v3, v8, [C

    fill-array-data v3, :array_133

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const/16 v2, 0x23

    aput-object v0, v1, v2

    const/16 v2, 0x24

    aput-object v0, v1, v2

    const/16 v2, 0x25

    aput-object v0, v1, v2

    const/16 v2, 0x26

    aput-object v0, v1, v2

    const/16 v2, 0x27

    aput-object v0, v1, v2

    const/16 v2, 0x28

    aput-object v0, v1, v2

    const/16 v2, 0x29

    aput-object v0, v1, v2

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    const/16 v2, 0x30

    aput-object v0, v1, v2

    const/16 v2, 0x31

    aput-object v0, v1, v2

    const/16 v2, 0x32

    aput-object v0, v1, v2

    const/16 v2, 0x33

    aput-object v0, v1, v2

    const/16 v2, 0x34

    aput-object v0, v1, v2

    const/16 v2, 0x35

    new-array v3, v7, [C

    const/16 v4, 0x2b

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0x36

    aput-object v0, v1, v2

    const/16 v2, 0x37

    aput-object v0, v1, v2

    const/16 v2, 0x38

    new-array v3, v7, [C

    const/16 v4, 0x33

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0x39

    aput-object v0, v1, v2

    const/16 v2, 0x3a

    aput-object v0, v1, v2

    const/16 v2, 0x3b

    new-array v3, v7, [C

    const/16 v4, 0x2a

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    new-array v3, v7, [C

    const/16 v4, 0x38

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    aput-object v0, v1, v2

    const/16 v2, 0x3e

    aput-object v0, v1, v2

    const/16 v2, 0x3f

    aput-object v0, v1, v2

    const/16 v2, 0x40

    aput-object v0, v1, v2

    const/16 v2, 0x41

    aput-object v0, v1, v2

    const/16 v2, 0x42

    new-array v3, v7, [C

    const/16 v4, 0x39

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0x43

    new-array v3, v6, [C

    fill-array-data v3, :array_134

    aput-object v3, v1, v2

    const/16 v2, 0x44

    new-array v3, v7, [C

    const/16 v4, 0x31

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0x45

    new-array v3, v7, [C

    const/16 v4, 0x34

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0x46

    new-array v3, v7, [C

    const/16 v4, 0x23

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0x47

    new-array v3, v7, [C

    const/16 v4, 0x35

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0x48

    new-array v3, v7, [C

    const/16 v4, 0x37

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0x49

    aput-object v0, v1, v2

    const/16 v2, 0x4a

    new-array v3, v6, [C

    fill-array-data v3, :array_135

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    aput-object v0, v1, v2

    const/16 v2, 0x4c

    new-array v3, v7, [C

    const/16 v4, 0x36

    aput-char v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    aput-object v0, v1, v2

    const/16 v2, 0x4e

    const/16 v3, 0x1d

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const/16 v3, 0x1e

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const/16 v3, 0x1f

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const/16 v3, 0x20

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const/16 v3, 0x21

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const/16 v3, 0x22

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const/16 v3, 0x23

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const/16 v3, 0x24

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const/16 v3, 0x25

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const/16 v3, 0x26

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const/16 v3, 0x27

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const/16 v3, 0x28

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const/16 v3, 0x29

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const/16 v3, 0x2a

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const/16 v3, 0x2b

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const/16 v3, 0x2c

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const/16 v3, 0x2d

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const/16 v3, 0x2e

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const/16 v3, 0x2f

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const/16 v3, 0x30

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const/16 v3, 0x31

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const/16 v3, 0x32

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const/16 v3, 0x33

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const/16 v3, 0x34

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const/16 v3, 0x35

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const/16 v3, 0x36

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const/16 v3, 0xd8

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const/16 v3, 0x3d

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const/16 v3, 0x37

    invoke-static {v3, v7}, Lcom/android/htcdialer/search/SmartKeyMapping;->getHWKeyMap(IZ)[C

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NUMBER:[[C

    .line 1075
    check-cast v0, [[C

    sput-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->compareName:[[C

    return-void

    .line 58
    nop

    :array_0
    .array-data 0x2
        0x2bt 0x0t
        0x30t 0x0t
    .end array-data

    :array_1
    .array-data 0x2
        0x31t 0x0t
        0x2dt 0x0t
        0x60t 0x0t
        0x3dt 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x21t 0x0t
        0x40t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x5et 0x0t
        0x26t 0x0t
        0x2at 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x3ft 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x7et 0x0t
        0x7ct 0x0t
        0x5ft 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x2et 0x0t
        0x2ct 0x0t
        0x5ct 0x0t
        0x2ft 0x0t
        0x22t 0x0t
        0x27t 0x0t
    .end array-data

    nop

    :array_2
    .array-data 0x2
        0x32t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0xc0t 0x0t
        0xc1t 0x0t
        0xc2t 0x0t
        0xc3t 0x0t
        0xc4t 0x0t
        0xc5t 0x0t
        0xc6t 0x0t
        0x4t 0x1t
        0xe0t 0x0t
        0xe1t 0x0t
        0xe2t 0x0t
        0xe3t 0x0t
        0xe4t 0x0t
        0xe5t 0x0t
        0xe6t 0x0t
        0x5t 0x1t
        0xc7t 0x0t
        0x6t 0x1t
        0xct 0x1t
        0xe7t 0x0t
        0x7t 0x1t
        0xdt 0x1t
    .end array-data

    nop

    :array_3
    .array-data 0x2
        0x33t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0xet 0x1t
        0xft 0x1t
        0xc8t 0x0t
        0xc9t 0x0t
        0xcat 0x0t
        0xcbt 0x0t
        0x18t 0x1t
        0x1at 0x1t
        0xe8t 0x0t
        0xe9t 0x0t
        0xeat 0x0t
        0xebt 0x0t
        0x19t 0x1t
        0x1bt 0x1t
    .end array-data

    nop

    :array_4
    .array-data 0x2
        0x34t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x1et 0x1t
        0x1ft 0x1t
        0xcct 0x0t
        0xcdt 0x0t
        0xcet 0x0t
        0xcft 0x0t
        0x30t 0x1t
        0xect 0x0t
        0xedt 0x0t
        0xeet 0x0t
        0xeft 0x0t
        0x31t 0x1t
    .end array-data

    nop

    :array_5
    .array-data 0x2
        0x35t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x41t 0x1t
        0x3bt 0x1t
        0x3ft 0x1t
        0x42t 0x1t
        0x3at 0x1t
        0x3et 0x1t
    .end array-data

    nop

    :array_6
    .array-data 0x2
        0x36t 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0xd1t 0x0t
        0x43t 0x1t
        0x47t 0x1t
        0xf1t 0x0t
        0x44t 0x1t
        0x48t 0x1t
        0xd2t 0x0t
        0xd3t 0x0t
        0xd4t 0x0t
        0xd5t 0x0t
        0xd6t 0x0t
        0x52t 0x1t
        0xd8t 0x0t
        0x50t 0x1t
        0xf2t 0x0t
        0xf3t 0x0t
        0xf4t 0x0t
        0xf5t 0x0t
        0xf6t 0x0t
        0x53t 0x1t
        0xf8t 0x0t
        0x51t 0x1t
    .end array-data

    nop

    :array_7
    .array-data 0x2
        0x37t 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x58t 0x1t
        0x56t 0x1t
        0x59t 0x1t
        0x55t 0x1t
        0x5at 0x1t
        0x5et 0x1t
        0x60t 0x1t
        0xdft 0x0t
        0x5bt 0x1t
        0x5ft 0x1t
        0x61t 0x1t
    .end array-data

    :array_8
    .array-data 0x2
        0x38t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x62t 0x1t
        0x64t 0x1t
        0x63t 0x1t
        0x65t 0x1t
        0xd9t 0x0t
        0xdat 0x0t
        0xdbt 0x0t
        0xdct 0x0t
        0x6et 0x1t
        0x70t 0x1t
        0xf9t 0x0t
        0xfat 0x0t
        0xfbt 0x0t
        0xfct 0x0t
        0x6ft 0x1t
        0x71t 0x1t
    .end array-data

    nop

    :array_9
    .array-data 0x2
        0x39t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0xddt 0x0t
        0x78t 0x1t
        0xfdt 0x0t
        0xfft 0x0t
        0x79t 0x1t
        0x7bt 0x1t
        0x7dt 0x1t
        0x7at 0x1t
        0x7ct 0x1t
        0x7et 0x1t
    .end array-data

    nop

    :array_a
    .array-data 0x2
        0x2bt 0x0t
        0x30t 0x0t
    .end array-data

    :array_b
    .array-data 0x2
        0x61t 0x0t
        0x41t 0x0t
        0x21t 0x0t
    .end array-data

    nop

    :array_c
    .array-data 0x2
        0x62t 0x0t
        0x42t 0x0t
        0x2bt 0x0t
    .end array-data

    nop

    :array_d
    .array-data 0x2
        0x63t 0x0t
        0x43t 0x0t
        0x5ft 0x0t
    .end array-data

    nop

    :array_e
    .array-data 0x2
        0x64t 0x0t
        0x44t 0x0t
        0x24t 0x0t
    .end array-data

    nop

    :array_f
    .array-data 0x2
        0x65t 0x0t
        0x45t 0x0t
        0x33t 0x0t
    .end array-data

    nop

    :array_10
    .array-data 0x2
        0x66t 0x0t
        0x46t 0x0t
        0x25t 0x0t
    .end array-data

    nop

    :array_11
    .array-data 0x2
        0x67t 0x0t
        0x47t 0x0t
        0x26t 0x0t
    .end array-data

    nop

    :array_12
    .array-data 0x2
        0x68t 0x0t
        0x48t 0x0t
        0x2at 0x0t
    .end array-data

    nop

    :array_13
    .array-data 0x2
        0x69t 0x0t
        0x49t 0x0t
        0x38t 0x0t
    .end array-data

    nop

    :array_14
    .array-data 0x2
        0x6at 0x0t
        0x4at 0x0t
        0x28t 0x0t
    .end array-data

    nop

    :array_15
    .array-data 0x2
        0x6bt 0x0t
        0x4bt 0x0t
        0x29t 0x0t
    .end array-data

    nop

    :array_16
    .array-data 0x2
        0x6ct 0x0t
        0x4ct 0x0t
        0x2ft 0x0t
    .end array-data

    nop

    :array_17
    .array-data 0x2
        0x6dt 0x0t
        0x4dt 0x0t
        0x27t 0x0t
    .end array-data

    nop

    :array_18
    .array-data 0x2
        0x6et 0x0t
        0x4et 0x0t
        0x3dt 0x0t
    .end array-data

    nop

    :array_19
    .array-data 0x2
        0x6ft 0x0t
        0x4ft 0x0t
        0x39t 0x0t
    .end array-data

    nop

    :array_1a
    .array-data 0x2
        0x70t 0x0t
        0x50t 0x0t
        0x30t 0x0t
    .end array-data

    nop

    :array_1b
    .array-data 0x2
        0x71t 0x0t
        0x51t 0x0t
        0x31t 0x0t
    .end array-data

    nop

    :array_1c
    .array-data 0x2
        0x72t 0x0t
        0x52t 0x0t
        0x34t 0x0t
    .end array-data

    nop

    :array_1d
    .array-data 0x2
        0x73t 0x0t
        0x53t 0x0t
        0x23t 0x0t
    .end array-data

    nop

    :array_1e
    .array-data 0x2
        0x74t 0x0t
        0x54t 0x0t
        0x35t 0x0t
    .end array-data

    nop

    :array_1f
    .array-data 0x2
        0x75t 0x0t
        0x55t 0x0t
        0x37t 0x0t
    .end array-data

    nop

    :array_20
    .array-data 0x2
        0x76t 0x0t
        0x56t 0x0t
        0x2dt 0x0t
    .end array-data

    nop

    :array_21
    .array-data 0x2
        0x77t 0x0t
        0x57t 0x0t
        0x32t 0x0t
    .end array-data

    nop

    :array_22
    .array-data 0x2
        0x78t 0x0t
        0x58t 0x0t
    .end array-data

    :array_23
    .array-data 0x2
        0x79t 0x0t
        0x59t 0x0t
        0x36t 0x0t
    .end array-data

    nop

    :array_24
    .array-data 0x2
        0x7at 0x0t
        0x5at 0x0t
    .end array-data

    .line 171
    :array_25
    .array-data 0x2
        0x2bt 0x0t
        0x30t 0x0t
    .end array-data

    :array_26
    .array-data 0x2
        0x31t 0x0t
        0x2dt 0x0t
        0x60t 0x0t
        0x3dt 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x21t 0x0t
        0x40t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x5et 0x0t
        0x26t 0x0t
        0x2at 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x3ft 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x7et 0x0t
        0x7ct 0x0t
        0x5ft 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x2et 0x0t
        0x2ct 0x0t
        0x5ct 0x0t
        0x2ft 0x0t
        0x22t 0x0t
        0x27t 0x0t
        0x5t 0x31t
        0x9t 0x31t
        0x1at 0x31t
    .end array-data

    :array_27
    .array-data 0x2
        0x32t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0xdt 0x31t
        0x10t 0x31t
        0x1et 0x31t
    .end array-data

    :array_28
    .array-data 0x2
        0x33t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x13t 0x31t
        0x17t 0x31t
        0x22t 0x31t
        0x26t 0x31t
    .end array-data

    nop

    :array_29
    .array-data 0x2
        0x34t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6t 0x31t
        0xat 0x31t
        0x1bt 0x31t
    .end array-data

    :array_2a
    .array-data 0x2
        0x35t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0xet 0x31t
        0x11t 0x31t
        0x1ft 0x31t
    .end array-data

    :array_2b
    .array-data 0x2
        0x36t 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x14t 0x31t
        0x18t 0x31t
        0x23t 0x31t
        0x27t 0x31t
    .end array-data

    nop

    :array_2c
    .array-data 0x2
        0x37t 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x7t 0x31t
        0xbt 0x31t
        0x1ct 0x31t
    .end array-data

    :array_2d
    .array-data 0x2
        0x38t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0xft 0x31t
        0x12t 0x31t
        0x20t 0x31t
        0x21t 0x31t
    .end array-data

    nop

    :array_2e
    .array-data 0x2
        0x39t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x15t 0x31t
        0x19t 0x31t
        0x24t 0x31t
        0x28t 0x31t
    .end array-data

    nop

    :array_2f
    .array-data 0x2
        0x2at 0x0t
        0x8t 0x31t
        0xct 0x31t
        0x1dt 0x31t
    .end array-data

    :array_30
    .array-data 0x2
        0x23t 0x0t
        0x16t 0x31t
        0x25t 0x31t
        0x29t 0x31t
    .end array-data

    :array_31
    .array-data 0x2
        0x2bt 0x0t
        0x30t 0x0t
    .end array-data

    :array_32
    .array-data 0x2
        0x61t 0x0t
        0x41t 0x0t
        0x21t 0x0t
    .end array-data

    nop

    :array_33
    .array-data 0x2
        0x62t 0x0t
        0x42t 0x0t
        0x2bt 0x0t
    .end array-data

    nop

    :array_34
    .array-data 0x2
        0x63t 0x0t
        0x43t 0x0t
        0x5ft 0x0t
    .end array-data

    nop

    :array_35
    .array-data 0x2
        0x64t 0x0t
        0x44t 0x0t
        0x24t 0x0t
    .end array-data

    nop

    :array_36
    .array-data 0x2
        0x65t 0x0t
        0x45t 0x0t
        0x33t 0x0t
    .end array-data

    nop

    :array_37
    .array-data 0x2
        0x66t 0x0t
        0x46t 0x0t
        0x25t 0x0t
    .end array-data

    nop

    :array_38
    .array-data 0x2
        0x67t 0x0t
        0x47t 0x0t
        0x26t 0x0t
    .end array-data

    nop

    :array_39
    .array-data 0x2
        0x68t 0x0t
        0x48t 0x0t
        0x2at 0x0t
    .end array-data

    nop

    :array_3a
    .array-data 0x2
        0x69t 0x0t
        0x49t 0x0t
        0x38t 0x0t
    .end array-data

    nop

    :array_3b
    .array-data 0x2
        0x6at 0x0t
        0x4at 0x0t
        0x28t 0x0t
    .end array-data

    nop

    :array_3c
    .array-data 0x2
        0x6bt 0x0t
        0x4bt 0x0t
        0x29t 0x0t
    .end array-data

    nop

    :array_3d
    .array-data 0x2
        0x6ct 0x0t
        0x4ct 0x0t
        0x2ft 0x0t
    .end array-data

    nop

    :array_3e
    .array-data 0x2
        0x6dt 0x0t
        0x4dt 0x0t
        0x27t 0x0t
    .end array-data

    nop

    :array_3f
    .array-data 0x2
        0x6et 0x0t
        0x4et 0x0t
        0x3dt 0x0t
    .end array-data

    nop

    :array_40
    .array-data 0x2
        0x6ft 0x0t
        0x4ft 0x0t
        0x39t 0x0t
    .end array-data

    nop

    :array_41
    .array-data 0x2
        0x70t 0x0t
        0x50t 0x0t
        0x30t 0x0t
    .end array-data

    nop

    :array_42
    .array-data 0x2
        0x71t 0x0t
        0x51t 0x0t
        0x31t 0x0t
    .end array-data

    nop

    :array_43
    .array-data 0x2
        0x72t 0x0t
        0x52t 0x0t
        0x34t 0x0t
    .end array-data

    nop

    :array_44
    .array-data 0x2
        0x73t 0x0t
        0x53t 0x0t
        0x23t 0x0t
    .end array-data

    nop

    :array_45
    .array-data 0x2
        0x74t 0x0t
        0x54t 0x0t
        0x35t 0x0t
    .end array-data

    nop

    :array_46
    .array-data 0x2
        0x75t 0x0t
        0x55t 0x0t
        0x37t 0x0t
    .end array-data

    nop

    :array_47
    .array-data 0x2
        0x76t 0x0t
        0x56t 0x0t
        0x2dt 0x0t
    .end array-data

    nop

    :array_48
    .array-data 0x2
        0x77t 0x0t
        0x57t 0x0t
        0x32t 0x0t
    .end array-data

    nop

    :array_49
    .array-data 0x2
        0x78t 0x0t
        0x58t 0x0t
    .end array-data

    :array_4a
    .array-data 0x2
        0x79t 0x0t
        0x59t 0x0t
        0x36t 0x0t
    .end array-data

    nop

    :array_4b
    .array-data 0x2
        0x7at 0x0t
        0x5at 0x0t
    .end array-data

    .line 284
    :array_4c
    .array-data 0x2
        0x2bt 0x0t
        0x30t 0x0t
    .end array-data

    :array_4d
    .array-data 0x2
        0x31t 0x0t
        0x2dt 0x0t
        0x60t 0x0t
        0x3dt 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x21t 0x0t
        0x40t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x5et 0x0t
        0x26t 0x0t
        0x2at 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x3ft 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x7et 0x0t
        0x7ct 0x0t
        0x5ft 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x2et 0x0t
        0x2ct 0x0t
        0x5ct 0x0t
        0x2ft 0x0t
        0x22t 0x0t
        0x27t 0x0t
    .end array-data

    nop

    :array_4e
    .array-data 0x2
        0x32t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x91t 0x3t
        0xb1t 0x3t
        0x86t 0x3t
        0xact 0x3t
        0x92t 0x3t
        0xb2t 0x3t
    .end array-data

    nop

    :array_4f
    .array-data 0x2
        0x33t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x94t 0x3t
        0xb4t 0x3t
        0x95t 0x3t
        0xb5t 0x3t
        0xadt 0x3t
        0x88t 0x3t
        0xa6t 0x3t
        0xc6t 0x3t
    .end array-data

    nop

    :array_50
    .array-data 0x2
        0x34t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x93t 0x3t
        0xb3t 0x3t
        0x97t 0x3t
        0xb7t 0x3t
        0xaet 0x3t
        0x89t 0x3t
        0x99t 0x3t
        0xb9t 0x3t
        0xaft 0x3t
        0x8at 0x3t
        0x90t 0x3t
        0xaat 0x3t
        0xcat 0x3t
    .end array-data

    :array_51
    .array-data 0x2
        0x35t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x9at 0x3t
        0xbat 0x3t
        0x9bt 0x3t
        0xbbt 0x3t
    .end array-data

    nop

    :array_52
    .array-data 0x2
        0x36t 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x9ct 0x3t
        0xbct 0x3t
        0x9dt 0x3t
        0xbdt 0x3t
        0x9ft 0x3t
        0xbft 0x3t
        0xcct 0x3t
        0x8ct 0x3t
        0xa9t 0x3t
        0xc9t 0x3t
        0xcet 0x3t
        0x8ft 0x3t
    .end array-data

    nop

    :array_53
    .array-data 0x2
        0x37t 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0xa0t 0x3t
        0xc0t 0x3t
        0xa1t 0x3t
        0xc1t 0x3t
        0xa3t 0x3t
        0xc3t 0x3t
        0xa8t 0x3t
        0xc8t 0x3t
        0xc2t 0x3t
    .end array-data

    :array_54
    .array-data 0x2
        0x38t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x98t 0x3t
        0xb8t 0x3t
        0xa4t 0x3t
        0xc4t 0x3t
    .end array-data

    nop

    :array_55
    .array-data 0x2
        0x39t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x96t 0x3t
        0xb6t 0x3t
        0x9et 0x3t
        0xbet 0x3t
        0xa5t 0x3t
        0xc5t 0x3t
        0xabt 0x3t
        0xc8t 0x3t
        0x8et 0x3t
        0xcdt 0x3t
        0xb0t 0x3t
        0xa7t 0x3t
        0xc7t 0x3t
    .end array-data

    :array_56
    .array-data 0x2
        0x2bt 0x0t
        0x30t 0x0t
    .end array-data

    :array_57
    .array-data 0x2
        0x61t 0x0t
        0x41t 0x0t
        0x21t 0x0t
    .end array-data

    nop

    :array_58
    .array-data 0x2
        0x62t 0x0t
        0x42t 0x0t
        0x2bt 0x0t
    .end array-data

    nop

    :array_59
    .array-data 0x2
        0x63t 0x0t
        0x43t 0x0t
        0x5ft 0x0t
    .end array-data

    nop

    :array_5a
    .array-data 0x2
        0x64t 0x0t
        0x44t 0x0t
        0x24t 0x0t
    .end array-data

    nop

    :array_5b
    .array-data 0x2
        0x65t 0x0t
        0x45t 0x0t
        0x33t 0x0t
    .end array-data

    nop

    :array_5c
    .array-data 0x2
        0x66t 0x0t
        0x46t 0x0t
        0x25t 0x0t
    .end array-data

    nop

    :array_5d
    .array-data 0x2
        0x67t 0x0t
        0x47t 0x0t
        0x26t 0x0t
    .end array-data

    nop

    :array_5e
    .array-data 0x2
        0x68t 0x0t
        0x48t 0x0t
        0x2at 0x0t
    .end array-data

    nop

    :array_5f
    .array-data 0x2
        0x69t 0x0t
        0x49t 0x0t
        0x38t 0x0t
    .end array-data

    nop

    :array_60
    .array-data 0x2
        0x6at 0x0t
        0x4at 0x0t
        0x28t 0x0t
    .end array-data

    nop

    :array_61
    .array-data 0x2
        0x6bt 0x0t
        0x4bt 0x0t
        0x29t 0x0t
    .end array-data

    nop

    :array_62
    .array-data 0x2
        0x6ct 0x0t
        0x4ct 0x0t
        0x2ft 0x0t
    .end array-data

    nop

    :array_63
    .array-data 0x2
        0x6dt 0x0t
        0x4dt 0x0t
        0x27t 0x0t
    .end array-data

    nop

    :array_64
    .array-data 0x2
        0x6et 0x0t
        0x4et 0x0t
        0x3dt 0x0t
    .end array-data

    nop

    :array_65
    .array-data 0x2
        0x6ft 0x0t
        0x4ft 0x0t
        0x39t 0x0t
    .end array-data

    nop

    :array_66
    .array-data 0x2
        0x70t 0x0t
        0x50t 0x0t
        0x30t 0x0t
    .end array-data

    nop

    :array_67
    .array-data 0x2
        0x71t 0x0t
        0x51t 0x0t
        0x31t 0x0t
    .end array-data

    nop

    :array_68
    .array-data 0x2
        0x72t 0x0t
        0x52t 0x0t
        0x34t 0x0t
    .end array-data

    nop

    :array_69
    .array-data 0x2
        0x73t 0x0t
        0x53t 0x0t
        0x23t 0x0t
    .end array-data

    nop

    :array_6a
    .array-data 0x2
        0x74t 0x0t
        0x54t 0x0t
        0x35t 0x0t
    .end array-data

    nop

    :array_6b
    .array-data 0x2
        0x75t 0x0t
        0x55t 0x0t
        0x37t 0x0t
    .end array-data

    nop

    :array_6c
    .array-data 0x2
        0x76t 0x0t
        0x56t 0x0t
        0x2dt 0x0t
    .end array-data

    nop

    :array_6d
    .array-data 0x2
        0x77t 0x0t
        0x57t 0x0t
        0x32t 0x0t
    .end array-data

    nop

    :array_6e
    .array-data 0x2
        0x78t 0x0t
        0x58t 0x0t
    .end array-data

    :array_6f
    .array-data 0x2
        0x79t 0x0t
        0x59t 0x0t
        0x36t 0x0t
    .end array-data

    nop

    :array_70
    .array-data 0x2
        0x7at 0x0t
        0x5at 0x0t
    .end array-data

    .line 397
    :array_71
    .array-data 0x2
        0x2bt 0x0t
        0x30t 0x0t
    .end array-data

    :array_72
    .array-data 0x2
        0x31t 0x0t
        0x2dt 0x0t
        0x60t 0x0t
        0x3dt 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x21t 0x0t
        0x40t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x5et 0x0t
        0x26t 0x0t
        0x2at 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x3ft 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x7et 0x0t
        0x7ct 0x0t
        0x5ft 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x2et 0x0t
        0x2ct 0x0t
        0x5ct 0x0t
        0x2ft 0x0t
        0x22t 0x0t
        0x27t 0x0t
    .end array-data

    nop

    :array_73
    .array-data 0x2
        0x32t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x10t 0x4t
        0x11t 0x4t
        0x12t 0x4t
        0x13t 0x4t
        0x30t 0x4t
        0x31t 0x4t
        0x32t 0x4t
        0x33t 0x4t
    .end array-data

    nop

    :array_74
    .array-data 0x2
        0x33t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x14t 0x4t
        0x15t 0x4t
        0x16t 0x4t
        0x17t 0x4t
        0x34t 0x4t
        0x35t 0x4t
        0x36t 0x4t
        0x37t 0x4t
    .end array-data

    nop

    :array_75
    .array-data 0x2
        0x34t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x18t 0x4t
        0x19t 0x4t
        0x1at 0x4t
        0x1bt 0x4t
        0x38t 0x4t
        0x39t 0x4t
        0x3at 0x4t
        0x3bt 0x4t
    .end array-data

    nop

    :array_76
    .array-data 0x2
        0x35t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x1ct 0x4t
        0x1dt 0x4t
        0x1et 0x4t
        0x1ft 0x4t
        0x3ct 0x4t
        0x3dt 0x4t
        0x3et 0x4t
        0x3ft 0x4t
    .end array-data

    nop

    :array_77
    .array-data 0x2
        0x36t 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x20t 0x4t
        0x21t 0x4t
        0x22t 0x4t
        0x23t 0x4t
        0x40t 0x4t
        0x41t 0x4t
        0x42t 0x4t
        0x43t 0x4t
    .end array-data

    nop

    :array_78
    .array-data 0x2
        0x37t 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x24t 0x4t
        0x25t 0x4t
        0x26t 0x4t
        0x27t 0x4t
        0x44t 0x4t
        0x45t 0x4t
        0x46t 0x4t
        0x47t 0x4t
    .end array-data

    nop

    :array_79
    .array-data 0x2
        0x38t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x28t 0x4t
        0x29t 0x4t
        0x2at 0x4t
        0x2bt 0x4t
        0x48t 0x4t
        0x49t 0x4t
        0x4at 0x4t
        0x4bt 0x4t
    .end array-data

    nop

    :array_7a
    .array-data 0x2
        0x39t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x2ct 0x4t
        0x2dt 0x4t
        0x2et 0x4t
        0x2ft 0x4t
        0x4ct 0x4t
        0x4dt 0x4t
        0x4et 0x4t
        0x4ft 0x4t
    .end array-data

    nop

    :array_7b
    .array-data 0x2
        0x2bt 0x0t
        0x30t 0x0t
    .end array-data

    :array_7c
    .array-data 0x2
        0x61t 0x0t
        0x41t 0x0t
        0x21t 0x0t
    .end array-data

    nop

    :array_7d
    .array-data 0x2
        0x62t 0x0t
        0x42t 0x0t
        0x2bt 0x0t
    .end array-data

    nop

    :array_7e
    .array-data 0x2
        0x63t 0x0t
        0x43t 0x0t
        0x5ft 0x0t
    .end array-data

    nop

    :array_7f
    .array-data 0x2
        0x64t 0x0t
        0x44t 0x0t
        0x24t 0x0t
    .end array-data

    nop

    :array_80
    .array-data 0x2
        0x65t 0x0t
        0x45t 0x0t
        0x33t 0x0t
    .end array-data

    nop

    :array_81
    .array-data 0x2
        0x66t 0x0t
        0x46t 0x0t
        0x25t 0x0t
    .end array-data

    nop

    :array_82
    .array-data 0x2
        0x67t 0x0t
        0x47t 0x0t
        0x26t 0x0t
    .end array-data

    nop

    :array_83
    .array-data 0x2
        0x68t 0x0t
        0x48t 0x0t
        0x2at 0x0t
    .end array-data

    nop

    :array_84
    .array-data 0x2
        0x69t 0x0t
        0x49t 0x0t
        0x38t 0x0t
    .end array-data

    nop

    :array_85
    .array-data 0x2
        0x6at 0x0t
        0x4at 0x0t
        0x28t 0x0t
    .end array-data

    nop

    :array_86
    .array-data 0x2
        0x6bt 0x0t
        0x4bt 0x0t
        0x29t 0x0t
    .end array-data

    nop

    :array_87
    .array-data 0x2
        0x6ct 0x0t
        0x4ct 0x0t
        0x2ft 0x0t
    .end array-data

    nop

    :array_88
    .array-data 0x2
        0x6dt 0x0t
        0x4dt 0x0t
        0x27t 0x0t
    .end array-data

    nop

    :array_89
    .array-data 0x2
        0x6et 0x0t
        0x4et 0x0t
        0x3dt 0x0t
    .end array-data

    nop

    :array_8a
    .array-data 0x2
        0x6ft 0x0t
        0x4ft 0x0t
        0x39t 0x0t
    .end array-data

    nop

    :array_8b
    .array-data 0x2
        0x70t 0x0t
        0x50t 0x0t
        0x30t 0x0t
    .end array-data

    nop

    :array_8c
    .array-data 0x2
        0x71t 0x0t
        0x51t 0x0t
        0x31t 0x0t
    .end array-data

    nop

    :array_8d
    .array-data 0x2
        0x72t 0x0t
        0x52t 0x0t
        0x34t 0x0t
    .end array-data

    nop

    :array_8e
    .array-data 0x2
        0x73t 0x0t
        0x53t 0x0t
        0x23t 0x0t
    .end array-data

    nop

    :array_8f
    .array-data 0x2
        0x74t 0x0t
        0x54t 0x0t
        0x35t 0x0t
    .end array-data

    nop

    :array_90
    .array-data 0x2
        0x75t 0x0t
        0x55t 0x0t
        0x37t 0x0t
    .end array-data

    nop

    :array_91
    .array-data 0x2
        0x76t 0x0t
        0x56t 0x0t
        0x2dt 0x0t
    .end array-data

    nop

    :array_92
    .array-data 0x2
        0x77t 0x0t
        0x57t 0x0t
        0x32t 0x0t
    .end array-data

    nop

    :array_93
    .array-data 0x2
        0x78t 0x0t
        0x58t 0x0t
    .end array-data

    :array_94
    .array-data 0x2
        0x79t 0x0t
        0x59t 0x0t
        0x36t 0x0t
    .end array-data

    nop

    :array_95
    .array-data 0x2
        0x7at 0x0t
        0x5at 0x0t
    .end array-data

    .line 510
    :array_96
    .array-data 0x2
        0x2bt 0x0t
        0x30t 0x0t
        0x47t 0x31t
        0x4et 0x31t
    .end array-data

    :array_97
    .array-data 0x2
        0x31t 0x0t
        0x2dt 0x0t
        0x60t 0x0t
        0x3dt 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x21t 0x0t
        0x40t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x5et 0x0t
        0x26t 0x0t
        0x2at 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x3ft 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x7et 0x0t
        0x7ct 0x0t
        0x5ft 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x2et 0x0t
        0x2ct 0x0t
        0x5ct 0x0t
        0x2ft 0x0t
        0x22t 0x0t
        0x27t 0x0t
        0x31t 0x31t
        0x32t 0x31t
        0x4bt 0x31t
    .end array-data

    :array_98
    .array-data 0x2
        0x32t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x61t 0x31t
        0x63t 0x31t
    .end array-data

    nop

    :array_99
    .array-data 0x2
        0x33t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x4ft 0x31t
        0x51t 0x31t
    .end array-data

    nop

    :array_9a
    .array-data 0x2
        0x34t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x37t 0x31t
        0x38t 0x31t
        0x4ct 0x31t
    .end array-data

    :array_9b
    .array-data 0x2
        0x35t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x34t 0x31t
        0x39t 0x31t
    .end array-data

    nop

    :array_9c
    .array-data 0x2
        0x36t 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x53t 0x31t
        0x55t 0x31t
    .end array-data

    nop

    :array_9d
    .array-data 0x2
        0x37t 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x41t 0x31t
        0x45t 0x31t
        0x46t 0x31t
    .end array-data

    :array_9e
    .array-data 0x2
        0x38t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x42t 0x31t
        0x43t 0x31t
        0x4dt 0x31t
    .end array-data

    :array_9f
    .array-data 0x2
        0x39t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x57t 0x31t
        0x5bt 0x31t
    .end array-data

    nop

    :array_a0
    .array-data 0x2
        0x2at 0x0t
        0x48t 0x31t
        0x49t 0x31t
        0x4at 0x31t
    .end array-data

    :array_a1
    .array-data 0x2
        0x23t 0x0t
        0x5ct 0x31t
        0x60t 0x31t
    .end array-data

    nop

    :array_a2
    .array-data 0x2
        0x2bt 0x0t
        0x30t 0x0t
    .end array-data

    :array_a3
    .array-data 0x2
        0x61t 0x0t
        0x41t 0x0t
        0x21t 0x0t
    .end array-data

    nop

    :array_a4
    .array-data 0x2
        0x62t 0x0t
        0x42t 0x0t
        0x2bt 0x0t
    .end array-data

    nop

    :array_a5
    .array-data 0x2
        0x63t 0x0t
        0x43t 0x0t
        0x5ft 0x0t
    .end array-data

    nop

    :array_a6
    .array-data 0x2
        0x64t 0x0t
        0x44t 0x0t
        0x24t 0x0t
    .end array-data

    nop

    :array_a7
    .array-data 0x2
        0x65t 0x0t
        0x45t 0x0t
        0x33t 0x0t
    .end array-data

    nop

    :array_a8
    .array-data 0x2
        0x66t 0x0t
        0x46t 0x0t
        0x25t 0x0t
    .end array-data

    nop

    :array_a9
    .array-data 0x2
        0x67t 0x0t
        0x47t 0x0t
        0x26t 0x0t
    .end array-data

    nop

    :array_aa
    .array-data 0x2
        0x68t 0x0t
        0x48t 0x0t
        0x2at 0x0t
    .end array-data

    nop

    :array_ab
    .array-data 0x2
        0x69t 0x0t
        0x49t 0x0t
        0x38t 0x0t
    .end array-data

    nop

    :array_ac
    .array-data 0x2
        0x6at 0x0t
        0x4at 0x0t
        0x28t 0x0t
    .end array-data

    nop

    :array_ad
    .array-data 0x2
        0x6bt 0x0t
        0x4bt 0x0t
        0x29t 0x0t
    .end array-data

    nop

    :array_ae
    .array-data 0x2
        0x6ct 0x0t
        0x4ct 0x0t
        0x2ft 0x0t
    .end array-data

    nop

    :array_af
    .array-data 0x2
        0x6dt 0x0t
        0x4dt 0x0t
        0x27t 0x0t
    .end array-data

    nop

    :array_b0
    .array-data 0x2
        0x6et 0x0t
        0x4et 0x0t
        0x3dt 0x0t
    .end array-data

    nop

    :array_b1
    .array-data 0x2
        0x6ft 0x0t
        0x4ft 0x0t
        0x39t 0x0t
    .end array-data

    nop

    :array_b2
    .array-data 0x2
        0x70t 0x0t
        0x50t 0x0t
        0x30t 0x0t
    .end array-data

    nop

    :array_b3
    .array-data 0x2
        0x71t 0x0t
        0x51t 0x0t
        0x31t 0x0t
    .end array-data

    nop

    :array_b4
    .array-data 0x2
        0x72t 0x0t
        0x52t 0x0t
        0x34t 0x0t
    .end array-data

    nop

    :array_b5
    .array-data 0x2
        0x73t 0x0t
        0x53t 0x0t
        0x23t 0x0t
    .end array-data

    nop

    :array_b6
    .array-data 0x2
        0x74t 0x0t
        0x54t 0x0t
        0x35t 0x0t
    .end array-data

    nop

    :array_b7
    .array-data 0x2
        0x75t 0x0t
        0x55t 0x0t
        0x37t 0x0t
    .end array-data

    nop

    :array_b8
    .array-data 0x2
        0x76t 0x0t
        0x56t 0x0t
        0x2dt 0x0t
    .end array-data

    nop

    :array_b9
    .array-data 0x2
        0x77t 0x0t
        0x57t 0x0t
        0x32t 0x0t
    .end array-data

    nop

    :array_ba
    .array-data 0x2
        0x78t 0x0t
        0x58t 0x0t
    .end array-data

    :array_bb
    .array-data 0x2
        0x79t 0x0t
        0x59t 0x0t
        0x36t 0x0t
    .end array-data

    nop

    :array_bc
    .array-data 0x2
        0x7at 0x0t
        0x5at 0x0t
    .end array-data

    .line 623
    :array_bd
    .array-data 0x2
        0x2bt 0x0t
        0x30t 0x0t
        0x2ft 0xet
        0x30t 0xet
        0x31t 0xet
        0x32t 0xet
        0x33t 0xet
        0x34t 0xet
        0x35t 0xet
        0x36t 0xet
        0x37t 0xet
        0x38t 0xet
        0x39t 0xet
        0x3at 0xet
        0x3ft 0xet
        0x40t 0xet
        0x41t 0xet
        0x42t 0xet
        0x43t 0xet
        0x44t 0xet
        0x45t 0xet
        0x46t 0xet
        0x47t 0xet
        0x48t 0xet
        0x49t 0xet
        0x4at 0xet
        0x4bt 0xet
        0x4ct 0xet
        0x4dt 0xet
        0x4et 0xet
        0x4ft 0xet
        0x50t 0xet
        0x51t 0xet
        0x52t 0xet
        0x53t 0xet
        0x54t 0xet
        0x55t 0xet
        0x56t 0xet
        0x57t 0xet
        0x58t 0xet
        0x59t 0xet
        0x5at 0xet
        0x5bt 0xet
    .end array-data

    nop

    :array_be
    .array-data 0x2
        0x31t 0x0t
        0x2dt 0x0t
        0x60t 0x0t
        0x3dt 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x21t 0x0t
        0x40t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x5et 0x0t
        0x26t 0x0t
        0x2at 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x3ft 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x7et 0x0t
        0x7ct 0x0t
        0x5ft 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x2et 0x0t
        0x2ct 0x0t
        0x5ct 0x0t
        0x2ft 0x0t
        0x22t 0x0t
        0x27t 0x0t
        0x1t 0xet
        0x2t 0xet
        0x3t 0xet
        0x4t 0xet
        0x5t 0xet
    .end array-data

    :array_bf
    .array-data 0x2
        0x32t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x6t 0xet
        0x7t 0xet
        0x8t 0xet
        0x9t 0xet
    .end array-data

    nop

    :array_c0
    .array-data 0x2
        0x33t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0xat 0xet
        0xbt 0xet
        0xct 0xet
        0xdt 0xet
    .end array-data

    nop

    :array_c1
    .array-data 0x2
        0x34t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0xet 0xet
        0xft 0xet
        0x10t 0xet
        0x11t 0xet
        0x12t 0xet
        0x13t 0xet
    .end array-data

    nop

    :array_c2
    .array-data 0x2
        0x35t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x14t 0xet
        0x15t 0xet
        0x16t 0xet
        0x17t 0xet
        0x18t 0xet
    .end array-data

    :array_c3
    .array-data 0x2
        0x36t 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x19t 0xet
        0x1at 0xet
        0x1bt 0xet
        0x1ct 0xet
        0x1dt 0xet
    .end array-data

    :array_c4
    .array-data 0x2
        0x37t 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x1et 0xet
        0x1ft 0xet
        0x20t 0xet
        0x21t 0xet
        0x22t 0xet
    .end array-data

    :array_c5
    .array-data 0x2
        0x38t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x23t 0xet
        0x24t 0xet
        0x25t 0xet
        0x26t 0xet
        0x27t 0xet
        0x28t 0xet
        0x29t 0xet
    .end array-data

    :array_c6
    .array-data 0x2
        0x39t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x2at 0xet
        0x2bt 0xet
        0x2ct 0xet
        0x2dt 0xet
        0x2et 0xet
    .end array-data

    :array_c7
    .array-data 0x2
        0x2at 0x0t
        0x48t 0x31t
        0x49t 0x31t
        0x4at 0x31t
    .end array-data

    :array_c8
    .array-data 0x2
        0x23t 0x0t
        0x5ct 0x31t
        0x60t 0x31t
    .end array-data

    nop

    :array_c9
    .array-data 0x2
        0x2bt 0x0t
        0x30t 0x0t
    .end array-data

    :array_ca
    .array-data 0x2
        0x61t 0x0t
        0x41t 0x0t
        0x21t 0x0t
    .end array-data

    nop

    :array_cb
    .array-data 0x2
        0x62t 0x0t
        0x42t 0x0t
        0x2bt 0x0t
    .end array-data

    nop

    :array_cc
    .array-data 0x2
        0x63t 0x0t
        0x43t 0x0t
        0x5ft 0x0t
    .end array-data

    nop

    :array_cd
    .array-data 0x2
        0x64t 0x0t
        0x44t 0x0t
        0x24t 0x0t
    .end array-data

    nop

    :array_ce
    .array-data 0x2
        0x65t 0x0t
        0x45t 0x0t
        0x33t 0x0t
    .end array-data

    nop

    :array_cf
    .array-data 0x2
        0x66t 0x0t
        0x46t 0x0t
        0x25t 0x0t
    .end array-data

    nop

    :array_d0
    .array-data 0x2
        0x67t 0x0t
        0x47t 0x0t
        0x26t 0x0t
    .end array-data

    nop

    :array_d1
    .array-data 0x2
        0x68t 0x0t
        0x48t 0x0t
        0x2at 0x0t
    .end array-data

    nop

    :array_d2
    .array-data 0x2
        0x69t 0x0t
        0x49t 0x0t
        0x38t 0x0t
    .end array-data

    nop

    :array_d3
    .array-data 0x2
        0x6at 0x0t
        0x4at 0x0t
        0x28t 0x0t
    .end array-data

    nop

    :array_d4
    .array-data 0x2
        0x6bt 0x0t
        0x4bt 0x0t
        0x29t 0x0t
    .end array-data

    nop

    :array_d5
    .array-data 0x2
        0x6ct 0x0t
        0x4ct 0x0t
        0x2ft 0x0t
    .end array-data

    nop

    :array_d6
    .array-data 0x2
        0x6dt 0x0t
        0x4dt 0x0t
        0x27t 0x0t
    .end array-data

    nop

    :array_d7
    .array-data 0x2
        0x6et 0x0t
        0x4et 0x0t
        0x3dt 0x0t
    .end array-data

    nop

    :array_d8
    .array-data 0x2
        0x6ft 0x0t
        0x4ft 0x0t
        0x39t 0x0t
    .end array-data

    nop

    :array_d9
    .array-data 0x2
        0x70t 0x0t
        0x50t 0x0t
        0x30t 0x0t
    .end array-data

    nop

    :array_da
    .array-data 0x2
        0x71t 0x0t
        0x51t 0x0t
        0x31t 0x0t
    .end array-data

    nop

    :array_db
    .array-data 0x2
        0x72t 0x0t
        0x52t 0x0t
        0x34t 0x0t
    .end array-data

    nop

    :array_dc
    .array-data 0x2
        0x73t 0x0t
        0x53t 0x0t
        0x23t 0x0t
    .end array-data

    nop

    :array_dd
    .array-data 0x2
        0x74t 0x0t
        0x54t 0x0t
        0x35t 0x0t
    .end array-data

    nop

    :array_de
    .array-data 0x2
        0x75t 0x0t
        0x55t 0x0t
        0x37t 0x0t
    .end array-data

    nop

    :array_df
    .array-data 0x2
        0x76t 0x0t
        0x56t 0x0t
        0x2dt 0x0t
    .end array-data

    nop

    :array_e0
    .array-data 0x2
        0x77t 0x0t
        0x57t 0x0t
        0x32t 0x0t
    .end array-data

    nop

    :array_e1
    .array-data 0x2
        0x78t 0x0t
        0x58t 0x0t
    .end array-data

    :array_e2
    .array-data 0x2
        0x79t 0x0t
        0x59t 0x0t
        0x36t 0x0t
    .end array-data

    nop

    :array_e3
    .array-data 0x2
        0x7at 0x0t
        0x5at 0x0t
    .end array-data

    .line 736
    :array_e4
    .array-data 0x2
        0x2bt 0x0t
        0x30t 0x0t
        0x8ft 0x30t
        0x4at 0x30t
        0x93t 0x30t
    .end array-data

    nop

    :array_e5
    .array-data 0x2
        0x31t 0x0t
        0x2dt 0x0t
        0x60t 0x0t
        0x3dt 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x21t 0x0t
        0x40t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x5et 0x0t
        0x26t 0x0t
        0x2at 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x3ft 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x7et 0x0t
        0x7ct 0x0t
        0x5ft 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x2et 0x0t
        0x2ct 0x0t
        0x5ct 0x0t
        0x2ft 0x0t
        0x22t 0x0t
        0x27t 0x0t
        0x0t 0x30t
        0x42t 0x30t
        0x44t 0x30t
        0x46t 0x30t
        0x48t 0x30t
        0x4at 0x30t
    .end array-data

    nop

    :array_e6
    .array-data 0x2
        0x32t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x4bt 0x30t
        0x4dt 0x30t
        0x4ft 0x30t
        0x51t 0x30t
        0x53t 0x30t
    .end array-data

    :array_e7
    .array-data 0x2
        0x33t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x55t 0x30t
        0x57t 0x30t
        0x59t 0x30t
        0x5bt 0x30t
        0x5dt 0x30t
    .end array-data

    :array_e8
    .array-data 0x2
        0x34t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x5ft 0x30t
        0x61t 0x30t
        0x64t 0x30t
        0x66t 0x30t
        0x68t 0x30t
    .end array-data

    :array_e9
    .array-data 0x2
        0x35t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6at 0x30t
        0x6bt 0x30t
        0x6ct 0x30t
        0x6dt 0x30t
        0x6et 0x30t
    .end array-data

    :array_ea
    .array-data 0x2
        0x36t 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x6ft 0x30t
        0x72t 0x30t
        0x75t 0x30t
        0x78t 0x30t
        0x7bt 0x30t
    .end array-data

    :array_eb
    .array-data 0x2
        0x37t 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x7et 0x30t
        0x7ft 0x30t
        0x80t 0x30t
        0x81t 0x30t
        0x82t 0x30t
    .end array-data

    :array_ec
    .array-data 0x2
        0x38t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x84t 0x30t
        0x86t 0x30t
        0x88t 0x30t
    .end array-data

    :array_ed
    .array-data 0x2
        0x39t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x89t 0x30t
        0x8at 0x30t
        0x8bt 0x30t
        0x8ct 0x30t
        0x8dt 0x30t
    .end array-data

    :array_ee
    .array-data 0x2
        0x2bt 0x0t
        0x30t 0x0t
    .end array-data

    :array_ef
    .array-data 0x2
        0x61t 0x0t
        0x41t 0x0t
        0x21t 0x0t
    .end array-data

    nop

    :array_f0
    .array-data 0x2
        0x62t 0x0t
        0x42t 0x0t
        0x2bt 0x0t
    .end array-data

    nop

    :array_f1
    .array-data 0x2
        0x63t 0x0t
        0x43t 0x0t
        0x5ft 0x0t
    .end array-data

    nop

    :array_f2
    .array-data 0x2
        0x64t 0x0t
        0x44t 0x0t
        0x24t 0x0t
    .end array-data

    nop

    :array_f3
    .array-data 0x2
        0x65t 0x0t
        0x45t 0x0t
        0x33t 0x0t
    .end array-data

    nop

    :array_f4
    .array-data 0x2
        0x66t 0x0t
        0x46t 0x0t
        0x25t 0x0t
    .end array-data

    nop

    :array_f5
    .array-data 0x2
        0x67t 0x0t
        0x47t 0x0t
        0x26t 0x0t
    .end array-data

    nop

    :array_f6
    .array-data 0x2
        0x68t 0x0t
        0x48t 0x0t
        0x2at 0x0t
    .end array-data

    nop

    :array_f7
    .array-data 0x2
        0x69t 0x0t
        0x49t 0x0t
        0x38t 0x0t
    .end array-data

    nop

    :array_f8
    .array-data 0x2
        0x6at 0x0t
        0x4at 0x0t
        0x28t 0x0t
    .end array-data

    nop

    :array_f9
    .array-data 0x2
        0x6bt 0x0t
        0x4bt 0x0t
        0x29t 0x0t
    .end array-data

    nop

    :array_fa
    .array-data 0x2
        0x6ct 0x0t
        0x4ct 0x0t
        0x2ft 0x0t
    .end array-data

    nop

    :array_fb
    .array-data 0x2
        0x6dt 0x0t
        0x4dt 0x0t
        0x27t 0x0t
    .end array-data

    nop

    :array_fc
    .array-data 0x2
        0x6et 0x0t
        0x4et 0x0t
        0x3dt 0x0t
    .end array-data

    nop

    :array_fd
    .array-data 0x2
        0x6ft 0x0t
        0x4ft 0x0t
        0x39t 0x0t
    .end array-data

    nop

    :array_fe
    .array-data 0x2
        0x70t 0x0t
        0x50t 0x0t
        0x30t 0x0t
    .end array-data

    nop

    :array_ff
    .array-data 0x2
        0x71t 0x0t
        0x51t 0x0t
        0x31t 0x0t
    .end array-data

    nop

    :array_100
    .array-data 0x2
        0x72t 0x0t
        0x52t 0x0t
        0x34t 0x0t
    .end array-data

    nop

    :array_101
    .array-data 0x2
        0x73t 0x0t
        0x53t 0x0t
        0x23t 0x0t
    .end array-data

    nop

    :array_102
    .array-data 0x2
        0x74t 0x0t
        0x54t 0x0t
        0x35t 0x0t
    .end array-data

    nop

    :array_103
    .array-data 0x2
        0x75t 0x0t
        0x55t 0x0t
        0x37t 0x0t
    .end array-data

    nop

    :array_104
    .array-data 0x2
        0x76t 0x0t
        0x56t 0x0t
        0x2dt 0x0t
    .end array-data

    nop

    :array_105
    .array-data 0x2
        0x77t 0x0t
        0x57t 0x0t
        0x32t 0x0t
    .end array-data

    nop

    :array_106
    .array-data 0x2
        0x78t 0x0t
        0x58t 0x0t
    .end array-data

    :array_107
    .array-data 0x2
        0x79t 0x0t
        0x59t 0x0t
        0x36t 0x0t
    .end array-data

    nop

    :array_108
    .array-data 0x2
        0x7at 0x0t
        0x5at 0x0t
    .end array-data

    .line 849
    :array_109
    .array-data 0x2
        0x2bt 0x0t
        0x30t 0x0t
    .end array-data

    :array_10a
    .array-data 0x2
        0x31t 0x0t
        0x2dt 0x0t
        0x60t 0x0t
        0x3dt 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x21t 0x0t
        0x40t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x5et 0x0t
        0x26t 0x0t
        0x2at 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x3ft 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x7et 0x0t
        0x7ct 0x0t
        0x5ft 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x2et 0x0t
        0x2ct 0x0t
        0x5ct 0x0t
        0x2ft 0x0t
        0x22t 0x0t
        0x27t 0x0t
    .end array-data

    nop

    :array_10b
    .array-data 0x2
        0x32t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0xd3t 0x5t
        0xd4t 0x5t
        0xd5t 0x5t
    .end array-data

    :array_10c
    .array-data 0x2
        0x33t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0xd0t 0x5t
        0xd1t 0x5t
        0xd2t 0x5t
    .end array-data

    :array_10d
    .array-data 0x2
        0x34t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0xdet 0x5t
        0xddt 0x5t
        0xe0t 0x5t
        0xdft 0x5t
    .end array-data

    nop

    :array_10e
    .array-data 0x2
        0x35t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0xd9t 0x5t
        0xdbt 0x5t
        0xdat 0x5t
        0xdct 0x5t
    .end array-data

    nop

    :array_10f
    .array-data 0x2
        0x36t 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0xd6t 0x5t
        0xd7t 0x5t
        0xd8t 0x5t
    .end array-data

    :array_110
    .array-data 0x2
        0x37t 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0xe8t 0x5t
        0xe9t 0x5t
        0xeat 0x5t
    .end array-data

    :array_111
    .array-data 0x2
        0x38t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0xe6t 0x5t
        0xe5t 0x5t
        0xe7t 0x5t
    .end array-data

    :array_112
    .array-data 0x2
        0x39t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0xe1t 0x5t
        0xe2t 0x5t
        0xe4t 0x5t
        0xe3t 0x5t
    .end array-data

    nop

    :array_113
    .array-data 0x2
        0x2at 0x0t
        0x48t 0x31t
        0x49t 0x31t
        0x4at 0x31t
    .end array-data

    :array_114
    .array-data 0x2
        0x23t 0x0t
        0x5ct 0x31t
        0x60t 0x31t
    .end array-data

    nop

    :array_115
    .array-data 0x2
        0x2bt 0x0t
        0x30t 0x0t
    .end array-data

    :array_116
    .array-data 0x2
        0x61t 0x0t
        0x41t 0x0t
        0x21t 0x0t
    .end array-data

    nop

    :array_117
    .array-data 0x2
        0x62t 0x0t
        0x42t 0x0t
        0x2bt 0x0t
    .end array-data

    nop

    :array_118
    .array-data 0x2
        0x63t 0x0t
        0x43t 0x0t
        0x5ft 0x0t
    .end array-data

    nop

    :array_119
    .array-data 0x2
        0x64t 0x0t
        0x44t 0x0t
        0x24t 0x0t
    .end array-data

    nop

    :array_11a
    .array-data 0x2
        0x65t 0x0t
        0x45t 0x0t
        0x33t 0x0t
    .end array-data

    nop

    :array_11b
    .array-data 0x2
        0x66t 0x0t
        0x46t 0x0t
        0x25t 0x0t
    .end array-data

    nop

    :array_11c
    .array-data 0x2
        0x67t 0x0t
        0x47t 0x0t
        0x26t 0x0t
    .end array-data

    nop

    :array_11d
    .array-data 0x2
        0x68t 0x0t
        0x48t 0x0t
        0x2at 0x0t
    .end array-data

    nop

    :array_11e
    .array-data 0x2
        0x69t 0x0t
        0x49t 0x0t
        0x38t 0x0t
    .end array-data

    nop

    :array_11f
    .array-data 0x2
        0x6at 0x0t
        0x4at 0x0t
        0x28t 0x0t
    .end array-data

    nop

    :array_120
    .array-data 0x2
        0x6bt 0x0t
        0x4bt 0x0t
        0x29t 0x0t
    .end array-data

    nop

    :array_121
    .array-data 0x2
        0x6ct 0x0t
        0x4ct 0x0t
        0x2ft 0x0t
    .end array-data

    nop

    :array_122
    .array-data 0x2
        0x6dt 0x0t
        0x4dt 0x0t
        0x27t 0x0t
    .end array-data

    nop

    :array_123
    .array-data 0x2
        0x6et 0x0t
        0x4et 0x0t
        0x3dt 0x0t
    .end array-data

    nop

    :array_124
    .array-data 0x2
        0x6ft 0x0t
        0x4ft 0x0t
        0x39t 0x0t
    .end array-data

    nop

    :array_125
    .array-data 0x2
        0x70t 0x0t
        0x50t 0x0t
        0x30t 0x0t
    .end array-data

    nop

    :array_126
    .array-data 0x2
        0x71t 0x0t
        0x51t 0x0t
        0x31t 0x0t
    .end array-data

    nop

    :array_127
    .array-data 0x2
        0x72t 0x0t
        0x52t 0x0t
        0x34t 0x0t
    .end array-data

    nop

    :array_128
    .array-data 0x2
        0x73t 0x0t
        0x53t 0x0t
        0x23t 0x0t
    .end array-data

    nop

    :array_129
    .array-data 0x2
        0x74t 0x0t
        0x54t 0x0t
        0x35t 0x0t
    .end array-data

    nop

    :array_12a
    .array-data 0x2
        0x75t 0x0t
        0x55t 0x0t
        0x37t 0x0t
    .end array-data

    nop

    :array_12b
    .array-data 0x2
        0x76t 0x0t
        0x56t 0x0t
        0x2dt 0x0t
    .end array-data

    nop

    :array_12c
    .array-data 0x2
        0x77t 0x0t
        0x57t 0x0t
        0x32t 0x0t
    .end array-data

    nop

    :array_12d
    .array-data 0x2
        0x78t 0x0t
        0x58t 0x0t
    .end array-data

    :array_12e
    .array-data 0x2
        0x79t 0x0t
        0x59t 0x0t
        0x36t 0x0t
    .end array-data

    nop

    :array_12f
    .array-data 0x2
        0x7at 0x0t
        0x5at 0x0t
    .end array-data

    .line 962
    :array_130
    .array-data 0x2
        0x37t 0x0t
        0x50t 0x0t
        0x70t 0x0t
    .end array-data

    nop

    :array_131
    .array-data 0x2
        0x39t 0x0t
        0x57t 0x0t
        0x77t 0x0t
    .end array-data

    nop

    :array_132
    .array-data 0x2
        0x50t 0x0t
        0x70t 0x0t
    .end array-data

    :array_133
    .array-data 0x2
        0x57t 0x0t
        0x77t 0x0t
    .end array-data

    :array_134
    .array-data 0x2
        0x30t 0x0t
        0x50t 0x0t
        0x70t 0x0t
    .end array-data

    nop

    :array_135
    .array-data 0x2
        0x32t 0x0t
        0x57t 0x0t
        0x77t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compare(IC[[C)Z
    .locals 3
    .parameter "index"
    .parameter "compareChar"
    .parameter "compareTarget"

    .prologue
    .line 1117
    array-length v2, p2

    if-ge p0, v2, :cond_1

    .line 1118
    aget-object v2, p2, p0

    if-eqz v2, :cond_1

    .line 1119
    aget-object v2, p2, p0

    array-length v1, v2

    .line 1120
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1121
    aget-object v2, p2, p0

    aget-char v2, v2, v0

    if-ne p1, v2, :cond_0

    .line 1122
    const/4 v2, 0x1

    .line 1127
    .end local v0           #i:I
    .end local v1           #len:I
    :goto_1
    return v2

    .line 1120
    .restart local v0       #i:I
    .restart local v1       #len:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1127
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static final getHWKeyMap(IZ)[C
    .locals 10
    .parameter "keyCode"
    .parameter "forNumber"

    .prologue
    const/16 v9, 0x37

    const/16 v7, 0x2c

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1448
    const/16 v4, 0x1d

    if-gt v4, p0, :cond_6

    const/16 v4, 0x36

    if-gt p0, v4, :cond_6

    .line 1449
    add-int/lit8 v2, p0, -0x1d

    .line 1450
    .local v2, keyCodeShift:I
    sget-object v4, Lcom/android/htcdialer/search/SmartKeyMapping;->HW_KEY_MAP:Landroid/view/KeyCharacterMap;

    invoke-virtual {v4, p0, v8}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v3

    .line 1451
    .local v3, secondKeyCode:I
    if-eqz p1, :cond_0

    if-eqz p1, :cond_2

    if-eq v7, p0, :cond_0

    const/16 v4, 0x33

    if-ne v4, p0, :cond_2

    :cond_0
    move v0, v5

    .line 1452
    .local v0, has1stKeyCode:Z
    :goto_0
    if-eqz v3, :cond_3

    if-eqz p1, :cond_1

    if-eqz p1, :cond_3

    int-to-char v4, v3

    invoke-static {v4}, Lcom/android/htcdialer/search/SmartKeyMapping;->isNumberKeyCode(C)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    move v1, v5

    .line 1453
    .local v1, has2rdKeyCode:Z
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1454
    const/4 v4, 0x3

    new-array v4, v4, [C

    add-int/lit8 v7, v2, 0x41

    int-to-char v7, v7

    aput-char v7, v4, v6

    add-int/lit8 v6, v2, 0x61

    int-to-char v6, v6

    aput-char v6, v4, v5

    int-to-char v5, v3

    aput-char v5, v4, v8

    .line 1481
    .end local v0           #has1stKeyCode:Z
    .end local v1           #has2rdKeyCode:Z
    .end local v2           #keyCodeShift:I
    .end local v3           #secondKeyCode:I
    :goto_2
    return-object v4

    .restart local v2       #keyCodeShift:I
    .restart local v3       #secondKeyCode:I
    :cond_2
    move v0, v6

    .line 1451
    goto :goto_0

    .restart local v0       #has1stKeyCode:Z
    :cond_3
    move v1, v6

    .line 1452
    goto :goto_1

    .line 1455
    .restart local v1       #has2rdKeyCode:Z
    :cond_4
    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    .line 1456
    new-array v4, v8, [C

    add-int/lit8 v7, v2, 0x41

    int-to-char v7, v7

    aput-char v7, v4, v6

    add-int/lit8 v6, v2, 0x61

    int-to-char v6, v6

    aput-char v6, v4, v5

    goto :goto_2

    .line 1457
    :cond_5
    if-nez v0, :cond_f

    if-eqz v1, :cond_f

    .line 1458
    new-array v4, v5, [C

    int-to-char v5, v3

    aput-char v5, v4, v6

    goto :goto_2

    .line 1460
    .end local v0           #has1stKeyCode:Z
    .end local v1           #has2rdKeyCode:Z
    .end local v2           #keyCodeShift:I
    .end local v3           #secondKeyCode:I
    :cond_6
    const/16 v4, 0xd8

    if-eq v4, p0, :cond_7

    const/16 v4, 0x3d

    if-eq v4, p0, :cond_7

    if-ne v9, p0, :cond_f

    .line 1462
    :cond_7
    invoke-static {}, Lcom/android/htcdialer/util/KeyEventUtils;->isChaChaAttCid()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1463
    const/16 v4, 0x3d

    if-ne p0, v4, :cond_a

    .line 1464
    const/16 p0, 0x11

    .line 1470
    :cond_8
    :goto_3
    sget-object v4, Lcom/android/htcdialer/search/SmartKeyMapping;->HW_KEY_MAP:Landroid/view/KeyCharacterMap;

    invoke-virtual {v4, p0, v8}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v3

    .line 1471
    .restart local v3       #secondKeyCode:I
    if-nez p1, :cond_b

    if-ne v9, p0, :cond_b

    move v0, v5

    .line 1472
    .restart local v0       #has1stKeyCode:Z
    :goto_4
    if-eqz v3, :cond_c

    if-eqz p1, :cond_9

    if-eqz p1, :cond_c

    int-to-char v4, v3

    invoke-static {v4}, Lcom/android/htcdialer/search/SmartKeyMapping;->isNumberKeyCode(C)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_9
    move v1, v5

    .line 1473
    .restart local v1       #has2rdKeyCode:Z
    :goto_5
    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    .line 1474
    new-array v4, v8, [C

    aput-char v7, v4, v6

    int-to-char v6, v3

    aput-char v6, v4, v5

    goto :goto_2

    .line 1465
    .end local v0           #has1stKeyCode:Z
    .end local v1           #has2rdKeyCode:Z
    .end local v3           #secondKeyCode:I
    :cond_a
    if-ne p0, v9, :cond_8

    .line 1466
    const/16 p0, 0x12

    goto :goto_3

    .restart local v3       #secondKeyCode:I
    :cond_b
    move v0, v6

    .line 1471
    goto :goto_4

    .restart local v0       #has1stKeyCode:Z
    :cond_c
    move v1, v6

    .line 1472
    goto :goto_5

    .line 1475
    .restart local v1       #has2rdKeyCode:Z
    :cond_d
    if-eqz v0, :cond_e

    if-nez v1, :cond_e

    .line 1476
    new-array v4, v5, [C

    aput-char v7, v4, v6

    goto :goto_2

    .line 1477
    :cond_e
    if-nez v0, :cond_f

    if-eqz v1, :cond_f

    .line 1478
    new-array v4, v5, [C

    int-to-char v5, v3

    aput-char v5, v4, v6

    goto :goto_2

    .line 1481
    .end local v0           #has1stKeyCode:Z
    .end local v1           #has2rdKeyCode:Z
    .end local v3           #secondKeyCode:I
    :cond_f
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static final isCJKCharacter(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 1317
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 1318
    .local v0, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 1331
    :cond_0
    const/4 v1, 0x1

    .line 1333
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLowercaseChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1198
    invoke-static {p0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isLowercaseCharEnUs(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isLowercaseCharAccent(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isLowercaseCharEnGr(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isLowercaseCharRuRu(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowercaseCharAccent(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1214
    sparse-switch p0, :sswitch_data_0

    .line 1247
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1245
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1214
    nop

    :sswitch_data_0
    .sparse-switch
        0xdf -> :sswitch_0
        0xe0 -> :sswitch_0
        0xe1 -> :sswitch_0
        0xe2 -> :sswitch_0
        0xe3 -> :sswitch_0
        0xe4 -> :sswitch_0
        0xe5 -> :sswitch_0
        0xe6 -> :sswitch_0
        0xe7 -> :sswitch_0
        0xe8 -> :sswitch_0
        0xe9 -> :sswitch_0
        0xea -> :sswitch_0
        0xeb -> :sswitch_0
        0xec -> :sswitch_0
        0xed -> :sswitch_0
        0xee -> :sswitch_0
        0xef -> :sswitch_0
        0xf1 -> :sswitch_0
        0xf2 -> :sswitch_0
        0xf3 -> :sswitch_0
        0xf4 -> :sswitch_0
        0xf5 -> :sswitch_0
        0xf6 -> :sswitch_0
        0xf8 -> :sswitch_0
        0xf9 -> :sswitch_0
        0xfa -> :sswitch_0
        0xfb -> :sswitch_0
        0xfc -> :sswitch_0
        0xfd -> :sswitch_0
        0xff -> :sswitch_0
        0x105 -> :sswitch_0
        0x107 -> :sswitch_0
        0x10d -> :sswitch_0
        0x10f -> :sswitch_0
        0x119 -> :sswitch_0
        0x11b -> :sswitch_0
        0x11f -> :sswitch_0
        0x131 -> :sswitch_0
        0x13a -> :sswitch_0
        0x13e -> :sswitch_0
        0x142 -> :sswitch_0
        0x144 -> :sswitch_0
        0x148 -> :sswitch_0
        0x151 -> :sswitch_0
        0x153 -> :sswitch_0
        0x155 -> :sswitch_0
        0x159 -> :sswitch_0
        0x15b -> :sswitch_0
        0x15f -> :sswitch_0
        0x161 -> :sswitch_0
        0x163 -> :sswitch_0
        0x165 -> :sswitch_0
        0x16f -> :sswitch_0
        0x171 -> :sswitch_0
        0x17a -> :sswitch_0
        0x17c -> :sswitch_0
        0x17e -> :sswitch_0
    .end sparse-switch
.end method

.method public static isLowercaseCharEnGr(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1288
    const/16 v0, 0x3b1

    if-gt v0, p0, :cond_0

    const/16 v0, 0x3c9

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowercaseCharEnUs(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1206
    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowercaseCharRuRu(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1296
    const/16 v0, 0x430

    if-gt v0, p0, :cond_0

    const/16 v0, 0x44f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNameMatch(IC)Z
    .locals 1
    .parameter "index"
    .parameter "compareChar"

    .prologue
    .line 1109
    sget-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->compareName:[[C

    invoke-static {p0, p1, v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->compare(IC[[C)Z

    move-result v0

    return v0
.end method

.method public static isNumberChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1304
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isNumberKeyCode(C)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 1441
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2

    .line 1442
    :cond_1
    const/4 v0, 0x1

    .line 1444
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumberMatch(IC)Z
    .locals 1
    .parameter "index"
    .parameter "compareChar"

    .prologue
    .line 1113
    sget-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NUMBER:[[C

    invoke-static {p0, p1, v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->compare(IC[[C)Z

    move-result v0

    return v0
.end method

.method public static isSeperatorChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1185
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x28

    if-eq p0, v0, :cond_0

    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x312f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSymbolicChar(C)Z
    .locals 3
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 1308
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NAME_ASCII:[[C

    aget-object v2, v2, v1

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1309
    sget-object v2, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NAME_ASCII:[[C

    aget-object v2, v2, v1

    aget-char v2, v2, v0

    if-ne p0, v2, :cond_0

    .line 1313
    :goto_1
    return v1

    .line 1308
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1313
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isThailandChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1437
    const/16 v0, 0xe01

    if-gt v0, p0, :cond_0

    const/16 v0, 0xe58

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUppercaseChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1202
    invoke-static {p0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isUppercaseCharEnUs(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isUppercaseCharAccent(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isUppercaseCharEnGr(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isUppercaseCharRuRu(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUppercaseCharAccent(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1251
    sparse-switch p0, :sswitch_data_0

    .line 1284
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1282
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1251
    nop

    :sswitch_data_0
    .sparse-switch
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_0
        0xc3 -> :sswitch_0
        0xc4 -> :sswitch_0
        0xc5 -> :sswitch_0
        0xc6 -> :sswitch_0
        0xc7 -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0xcb -> :sswitch_0
        0xcc -> :sswitch_0
        0xcd -> :sswitch_0
        0xce -> :sswitch_0
        0xcf -> :sswitch_0
        0xd1 -> :sswitch_0
        0xd2 -> :sswitch_0
        0xd3 -> :sswitch_0
        0xd4 -> :sswitch_0
        0xd5 -> :sswitch_0
        0xd6 -> :sswitch_0
        0xd8 -> :sswitch_0
        0xd9 -> :sswitch_0
        0xda -> :sswitch_0
        0xdb -> :sswitch_0
        0xdc -> :sswitch_0
        0xdd -> :sswitch_0
        0x104 -> :sswitch_0
        0x106 -> :sswitch_0
        0x10c -> :sswitch_0
        0x10e -> :sswitch_0
        0x118 -> :sswitch_0
        0x11a -> :sswitch_0
        0x11e -> :sswitch_0
        0x130 -> :sswitch_0
        0x13b -> :sswitch_0
        0x13f -> :sswitch_0
        0x141 -> :sswitch_0
        0x143 -> :sswitch_0
        0x147 -> :sswitch_0
        0x150 -> :sswitch_0
        0x152 -> :sswitch_0
        0x156 -> :sswitch_0
        0x158 -> :sswitch_0
        0x15a -> :sswitch_0
        0x15e -> :sswitch_0
        0x160 -> :sswitch_0
        0x162 -> :sswitch_0
        0x164 -> :sswitch_0
        0x16e -> :sswitch_0
        0x170 -> :sswitch_0
        0x178 -> :sswitch_0
        0x179 -> :sswitch_0
        0x17b -> :sswitch_0
        0x17d -> :sswitch_0
    .end sparse-switch
.end method

.method public static isUppercaseCharEnGr(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1292
    const/16 v0, 0x391

    if-gt v0, p0, :cond_0

    const/16 v0, 0x3a9

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUppercaseCharEnUs(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1210
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUppercaseCharRuRu(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1300
    const/16 v0, 0x410

    if-gt v0, p0, :cond_0

    const/16 v0, 0x42f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setKeyMapping(I)V
    .locals 1
    .parameter "mappingType"

    .prologue
    .line 1079
    packed-switch p0, :pswitch_data_0

    .line 1103
    sget-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NAME_ASCII:[[C

    sput-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->compareName:[[C

    .line 1106
    :goto_0
    return-void

    .line 1081
    :pswitch_0
    sget-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NAME_GREEK:[[C

    sput-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->compareName:[[C

    goto :goto_0

    .line 1084
    :pswitch_1
    sget-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NAME_RUSSIAN:[[C

    sput-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->compareName:[[C

    goto :goto_0

    .line 1087
    :pswitch_2
    sget-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NAME_BOPOMOFO:[[C

    sput-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->compareName:[[C

    goto :goto_0

    .line 1090
    :pswitch_3
    sget-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NAME_KOREAN:[[C

    sput-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->compareName:[[C

    goto :goto_0

    .line 1093
    :pswitch_4
    sget-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NAME_THAILAND:[[C

    sput-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->compareName:[[C

    goto :goto_0

    .line 1096
    :pswitch_5
    sget-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NAME_JAPANESE:[[C

    sput-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->compareName:[[C

    goto :goto_0

    .line 1099
    :pswitch_6
    sget-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->KEY_MAPPING_NAME_HEBREW:[[C

    sput-object v0, Lcom/android/htcdialer/search/SmartKeyMapping;->compareName:[[C

    goto :goto_0

    .line 1079
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static final toUpperCaseCharacter(C)C
    .locals 1
    .parameter "c"

    .prologue
    .line 1337
    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    .line 1338
    add-int/lit8 v0, p0, -0x20

    int-to-char p0, v0

    .line 1433
    .end local p0
    :goto_0
    return p0

    .line 1341
    .restart local p0
    :cond_0
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1346
    :pswitch_1
    const/16 p0, 0x41

    goto :goto_0

    .line 1352
    :pswitch_2
    const/16 p0, 0x43

    goto :goto_0

    .line 1358
    :pswitch_3
    const/16 p0, 0x44

    goto :goto_0

    .line 1364
    :pswitch_4
    const/16 p0, 0x45

    goto :goto_0

    .line 1370
    :pswitch_5
    const/16 p0, 0x47

    goto :goto_0

    .line 1376
    :pswitch_6
    const/16 p0, 0x49

    goto :goto_0

    .line 1382
    :pswitch_7
    const/16 p0, 0x4c

    goto :goto_0

    .line 1388
    :pswitch_8
    const/16 p0, 0x4e

    goto :goto_0

    .line 1394
    :pswitch_9
    const/16 p0, 0x4f

    goto :goto_0

    .line 1400
    :pswitch_a
    const/16 p0, 0x52

    goto :goto_0

    .line 1406
    :pswitch_b
    const/16 p0, 0x53

    goto :goto_0

    .line 1412
    :pswitch_c
    const/16 p0, 0x54

    goto :goto_0

    .line 1418
    :pswitch_d
    const/16 p0, 0x55

    goto :goto_0

    .line 1424
    :pswitch_e
    const/16 p0, 0x59

    goto :goto_0

    .line 1430
    :pswitch_f
    const/16 p0, 0x5a

    goto :goto_0

    .line 1341
    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_9
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_9
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public static transformLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    .line 1131
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 1132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1133
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 1134
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1135
    .local v0, c:C
    const/16 v3, 0x41

    if-gt v3, v0, :cond_0

    const/16 v3, 0x5a

    if-le v0, v3, :cond_2

    :cond_0
    const/16 v3, 0x391

    if-gt v3, v0, :cond_1

    const/16 v3, 0x3a9

    if-le v0, v3, :cond_2

    :cond_1
    const/16 v3, 0x410

    if-gt v3, v0, :cond_3

    const/16 v3, 0x42f

    if-gt v0, v3, :cond_3

    .line 1138
    :cond_2
    add-int/lit8 v3, v0, 0x20

    int-to-char v3, v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1133
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1141
    :cond_3
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 1144
    :sswitch_0
    const/16 v3, 0x3b1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1145
    goto :goto_1

    .line 1148
    :sswitch_1
    const/16 v3, 0x3b5

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1149
    goto :goto_1

    .line 1152
    :sswitch_2
    const/16 v3, 0x3b7

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1153
    goto :goto_1

    .line 1159
    :sswitch_3
    const/16 v3, 0x3b9

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1160
    goto :goto_1

    .line 1163
    :sswitch_4
    const/16 v3, 0x3bf

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1164
    goto :goto_1

    .line 1167
    :sswitch_5
    const/16 v3, 0x3c9

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1168
    goto :goto_1

    .line 1174
    :sswitch_6
    const/16 v3, 0x3c5

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1181
    .end local v0           #c:C
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_4
    return-object p0

    .line 1141
    nop

    :sswitch_data_0
    .sparse-switch
        0x386 -> :sswitch_0
        0x388 -> :sswitch_1
        0x389 -> :sswitch_2
        0x38a -> :sswitch_3
        0x38c -> :sswitch_4
        0x38e -> :sswitch_6
        0x38f -> :sswitch_5
        0x390 -> :sswitch_3
        0x3aa -> :sswitch_3
        0x3ab -> :sswitch_6
        0x3ac -> :sswitch_0
        0x3ad -> :sswitch_1
        0x3ae -> :sswitch_2
        0x3af -> :sswitch_3
        0x3b0 -> :sswitch_6
        0x3c8 -> :sswitch_6
        0x3ca -> :sswitch_3
        0x3cc -> :sswitch_4
        0x3cd -> :sswitch_6
        0x3ce -> :sswitch_5
    .end sparse-switch
.end method
