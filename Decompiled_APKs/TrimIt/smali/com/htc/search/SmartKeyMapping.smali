.class public Lcom/htc/search/SmartKeyMapping;
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

.field public static final CLUSTER_START:I = 0x3100

.field private static final KEY_MAPPING_NAME_ASCII:[[C = null

.field public static final LBOUND_LOWERCASE_EN_GR:I = 0x3c9

.field public static final LBOUND_LOWERCASE_EN_US:I = 0x7a

.field public static final LBOUND_LOWERCASE_RU_RU:I = 0x44f

.field public static final LBOUND_UPPERCASE_EN_GR:I = 0x3a9

.field public static final LBOUND_UPPERCASE_EN_US:I = 0x5a

.field public static final LBOUND_UPPERCASE_RU_RU:I = 0x42f

.field public static final LOWBOUND_NUMBER:I = 0x39

.field public static final UBOUND_LOWERCASE_EN_GR:I = 0x3b1

.field public static final UBOUND_LOWERCASE_EN_US:I = 0x61

.field public static final UBOUND_LOWERCASE_RU_RU:I = 0x430

.field public static final UBOUND_UPPERCASE_EN_GR:I = 0x391

.field public static final UBOUND_UPPERCASE_EN_US:I = 0x41

.field public static final UBOUND_UPPERCASE_RU_RU:I = 0x410

.field public static final UPBOUND_NUMBER:I = 0x30


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 38
    const/16 v0, 0x4e

    new-array v0, v0, [[C

    new-array v1, v8, [C

    fill-array-data v1, :array_0

    aput-object v1, v0, v6

    const/16 v1, 0x1d

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    aput-object v1, v0, v7

    const/16 v1, 0x1d

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    aput-object v1, v0, v8

    const/16 v1, 0x15

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const/16 v2, 0x13

    new-array v2, v2, [C

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xd

    new-array v2, v2, [C

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x1d

    new-array v2, v2, [C

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x14

    new-array v2, v2, [C

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x17

    new-array v2, v2, [C

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x13

    new-array v2, v2, [C

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [C

    const/16 v3, 0x2a

    aput-char v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [C

    const/16 v3, 0x23

    aput-char v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v8, [C

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [C

    const/16 v3, 0x70

    aput-char v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [C

    const/16 v3, 0x77

    aput-char v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v4, v0, v1

    const/16 v1, 0x10

    aput-object v4, v0, v1

    const/16 v1, 0x11

    aput-object v4, v0, v1

    const/16 v1, 0x12

    aput-object v4, v0, v1

    const/16 v1, 0x13

    aput-object v4, v0, v1

    const/16 v1, 0x14

    aput-object v4, v0, v1

    const/16 v1, 0x15

    aput-object v4, v0, v1

    const/16 v1, 0x16

    aput-object v4, v0, v1

    const/16 v1, 0x17

    aput-object v4, v0, v1

    const/16 v1, 0x18

    aput-object v4, v0, v1

    const/16 v1, 0x19

    aput-object v4, v0, v1

    const/16 v1, 0x1a

    aput-object v4, v0, v1

    const/16 v1, 0x1b

    aput-object v4, v0, v1

    const/16 v1, 0x1c

    aput-object v4, v0, v1

    const/16 v1, 0x1d

    aput-object v4, v0, v1

    const/16 v1, 0x1e

    aput-object v4, v0, v1

    const/16 v1, 0x1f

    aput-object v4, v0, v1

    const/16 v1, 0x20

    aput-object v4, v0, v1

    const/16 v1, 0x21

    aput-object v4, v0, v1

    const/16 v1, 0x22

    aput-object v4, v0, v1

    const/16 v1, 0x23

    aput-object v4, v0, v1

    const/16 v1, 0x24

    aput-object v4, v0, v1

    const/16 v1, 0x25

    aput-object v4, v0, v1

    const/16 v1, 0x26

    aput-object v4, v0, v1

    const/16 v1, 0x27

    aput-object v4, v0, v1

    const/16 v1, 0x28

    aput-object v4, v0, v1

    const/16 v1, 0x29

    aput-object v4, v0, v1

    const/16 v1, 0x2a

    aput-object v4, v0, v1

    const/16 v1, 0x2b

    aput-object v4, v0, v1

    const/16 v1, 0x2c

    aput-object v4, v0, v1

    const/16 v1, 0x2d

    aput-object v4, v0, v1

    const/16 v1, 0x2e

    aput-object v4, v0, v1

    const/16 v1, 0x2f

    aput-object v4, v0, v1

    const/16 v1, 0x30

    aput-object v4, v0, v1

    const/16 v1, 0x31

    aput-object v4, v0, v1

    const/16 v1, 0x32

    aput-object v4, v0, v1

    const/16 v1, 0x33

    aput-object v4, v0, v1

    const/16 v1, 0x34

    new-array v2, v5, [C

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v5, [C

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v5, [C

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v5, [C

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v5, [C

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v5, [C

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v5, [C

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v5, [C

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v5, [C

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v5, [C

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v5, [C

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v5, [C

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v5, [C

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v5, [C

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v5, [C

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v5, [C

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v5, [C

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v5, [C

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v5, [C

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v5, [C

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v5, [C

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v5, [C

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v5, [C

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v8, [C

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v5, [C

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v8, [C

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/search/SmartKeyMapping;->KEY_MAPPING_NAME_ASCII:[[C

    return-void

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
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLowercaseCharEnGr(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 197
    const/16 v0, 0x3b1

    if-gt v0, p0, :cond_0

    const/16 v0, 0x3c9

    if-ge p0, v0, :cond_0

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
    .line 189
    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-ge p0, v0, :cond_0

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
    .line 205
    const/16 v0, 0x430

    if-gt v0, p0, :cond_0

    const/16 v0, 0x44f

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumberChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 213
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

.method public static isSeperatorChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 176
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

    .line 217
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/htc/search/SmartKeyMapping;->KEY_MAPPING_NAME_ASCII:[[C

    aget-object v2, v2, v1

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 218
    sget-object v2, Lcom/htc/search/SmartKeyMapping;->KEY_MAPPING_NAME_ASCII:[[C

    aget-object v2, v2, v1

    aget-char v2, v2, v0

    if-ne p0, v2, :cond_0

    .line 222
    :goto_1
    return v1

    .line 217
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isUppercaseCharEnGr(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 201
    const/16 v0, 0x391

    if-gt v0, p0, :cond_0

    const/16 v0, 0x3a9

    if-ge p0, v0, :cond_0

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
    .line 193
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-ge p0, v0, :cond_0

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
    .line 209
    const/16 v0, 0x410

    if-gt v0, p0, :cond_0

    const/16 v0, 0x42f

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static transformLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    .line 122
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 124
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 125
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 126
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

    .line 129
    :cond_2
    add-int/lit8 v3, v0, 0x20

    int-to-char v3, v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 124
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_3
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 135
    :sswitch_0
    const/16 v3, 0x3b1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 136
    goto :goto_1

    .line 139
    :sswitch_1
    const/16 v3, 0x3b5

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 140
    goto :goto_1

    .line 143
    :sswitch_2
    const/16 v3, 0x3b7

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 144
    goto :goto_1

    .line 150
    :sswitch_3
    const/16 v3, 0x3b9

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 151
    goto :goto_1

    .line 154
    :sswitch_4
    const/16 v3, 0x3bf

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 155
    goto :goto_1

    .line 158
    :sswitch_5
    const/16 v3, 0x3c9

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 159
    goto :goto_1

    .line 165
    :sswitch_6
    const/16 v3, 0x3c5

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 172
    .end local v0           #c:C
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_4
    return-object p0

    .line 132
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
