.class public interface abstract Lcom/android/providers/settings/flag/HtcProjectFlags;
.super Ljava/lang/Object;
.source "HtcProjectFlags.java"


# static fields
.field public static final CURRENT_PROJECT_FLAG:S

.field public static final isA0001:Z

.field public static final isA0002:Z

.field public static final isA0003:Z

.field public static final isA0004:Z

.field public static final isA0005:Z

.field public static final isA0006:Z

.field public static final isA0007:Z

.field public static final isB0001:Z

.field public static final isB0002:Z

.field public static final isB0003:Z

.field public static final isC0001:Z

.field public static final isC0002:Z

.field public static final isC0003:Z

.field public static final isC0004:Z

.field public static final isC0005:Z

.field public static final isC0006:Z

.field public static final isD0001:Z

.field public static final isD0002:Z

.field public static final isD0003:Z

.field public static final isD0004:Z

.field public static final isE0001:Z

.field public static final isE0002:Z

.field public static final isE0003:Z

.field public static final isE0004:Z

.field public static final isE0005:Z

.field public static final isE0006:Z

.field public static final isF0001:Z

.field public static final isG0001:Z

.field public static final isG0002:Z

.field public static final isG0003:Z

.field public static final isG0004:Z

.field public static final isG0005:Z

.field public static final isG0006:Z

.field public static final isG0007:Z

.field public static final isH0001:Z

.field public static final isI0001:Z

.field public static final isK0001:Z

.field public static final isL0001:Z

.field public static final isM0001:Z

.field public static final isM0002:Z

.field public static final isM0003:Z

.field public static final isM0004:Z

.field public static final isM0005:Z

.field public static final isN0001:Z

.field public static final isN0002:Z

.field public static final isO0001:Z

.field public static final isO0002:Z

.field public static final isO0003:Z

.field public static final isO0004:Z

.field public static final isO0005:Z

.field public static final isP0001:Z

.field public static final isQ0001:Z

.field public static final isR0001:Z

.field public static final isS0001:Z

.field public static final isS0002:Z

.field public static final isS0003:Z

.field public static final isS0004:Z

.field public static final isS0005:Z

.field public static final isS0006:Z

.field public static final isS0007:Z

.field public static final isS0008:Z

.field public static final isS0009:Z

.field public static final isS0010:Z

.field public static final isS0011:Z

.field public static final isS0012:Z

.field public static final isT0001:Z

.field public static final isT0002:Z

.field public static final isT0003:Z

.field public static final isT0004:Z

.field public static final isT0005:Z

.field public static final isT0006:Z

.field public static final isT0007:Z

.field public static final isT0008:Z

.field public static final isT0009:Z

.field public static final isT0010:Z

.field public static final isU0001:Z

.field public static final isU0002:Z

.field public static final isV0001:Z

.field public static final isV0002:Z

.field public static final isV0003:Z

.field public static final isV0004:Z

.field public static final isV0005:Z

.field public static final isZ0001:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x9b

    const/16 v4, 0x10

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 17
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    sput-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    .line 20
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isA0001:Z

    .line 24
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isA0002:Z

    .line 28
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isA0003:Z

    .line 32
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isA0004:Z

    .line 36
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isA0005:Z

    .line 40
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isA0006:Z

    .line 44
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/4 v3, 0x6

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isA0007:Z

    .line 48
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x8

    if-ne v0, v3, :cond_7

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isB0001:Z

    .line 52
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x9

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isB0002:Z

    .line 56
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xa

    if-ne v0, v3, :cond_9

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isB0003:Z

    .line 60
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    if-ne v0, v4, :cond_a

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isC0001:Z

    .line 64
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    if-ne v0, v4, :cond_b

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isC0002:Z

    .line 68
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x12

    if-ne v0, v3, :cond_c

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isC0003:Z

    .line 72
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x13

    if-ne v0, v3, :cond_d

    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isC0004:Z

    .line 76
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x14

    if-ne v0, v3, :cond_e

    move v0, v1

    :goto_e
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isC0005:Z

    .line 80
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x15

    if-ne v0, v3, :cond_f

    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isC0006:Z

    .line 84
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x18

    if-ne v0, v3, :cond_10

    move v0, v1

    :goto_10
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isD0001:Z

    .line 88
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x19

    if-ne v0, v3, :cond_11

    move v0, v1

    :goto_11
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isD0002:Z

    .line 92
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_12

    move v0, v1

    :goto_12
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isD0003:Z

    .line 96
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_13

    move v0, v1

    :goto_13
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isD0004:Z

    .line 100
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x20

    if-ne v0, v3, :cond_14

    move v0, v1

    :goto_14
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isE0001:Z

    .line 104
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x21

    if-ne v0, v3, :cond_15

    move v0, v1

    :goto_15
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isE0002:Z

    .line 108
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x22

    if-ne v0, v3, :cond_16

    move v0, v1

    :goto_16
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isE0003:Z

    .line 112
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x23

    if-ne v0, v3, :cond_17

    move v0, v1

    :goto_17
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isE0004:Z

    .line 116
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x24

    if-ne v0, v3, :cond_18

    move v0, v1

    :goto_18
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isE0005:Z

    .line 120
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x25

    if-ne v0, v3, :cond_19

    move v0, v1

    :goto_19
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isE0006:Z

    .line 124
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x28

    if-ne v0, v3, :cond_1a

    move v0, v1

    :goto_1a
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isF0001:Z

    .line 128
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x30

    if-ne v0, v3, :cond_1b

    move v0, v1

    :goto_1b
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isG0001:Z

    .line 132
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x31

    if-ne v0, v3, :cond_1c

    move v0, v1

    :goto_1c
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isG0002:Z

    .line 136
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x32

    if-ne v0, v3, :cond_1d

    move v0, v1

    :goto_1d
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isG0003:Z

    .line 140
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x33

    if-ne v0, v3, :cond_1e

    move v0, v1

    :goto_1e
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isG0004:Z

    .line 144
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x34

    if-ne v0, v3, :cond_1f

    move v0, v1

    :goto_1f
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isG0005:Z

    .line 148
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x35

    if-ne v0, v3, :cond_20

    move v0, v1

    :goto_20
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isG0006:Z

    .line 152
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x36

    if-ne v0, v3, :cond_21

    move v0, v1

    :goto_21
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isG0007:Z

    .line 156
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x38

    if-ne v0, v3, :cond_22

    move v0, v1

    :goto_22
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isH0001:Z

    .line 160
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x40

    if-ne v0, v3, :cond_23

    move v0, v1

    :goto_23
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isI0001:Z

    .line 164
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x50

    if-ne v0, v3, :cond_24

    move v0, v1

    :goto_24
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isK0001:Z

    .line 168
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x58

    if-ne v0, v3, :cond_25

    move v0, v1

    :goto_25
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isL0001:Z

    .line 172
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x60

    if-ne v0, v3, :cond_26

    move v0, v1

    :goto_26
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isM0001:Z

    .line 176
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x61

    if-ne v0, v3, :cond_27

    move v0, v1

    :goto_27
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isM0002:Z

    .line 180
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x62

    if-ne v0, v3, :cond_28

    move v0, v1

    :goto_28
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isM0003:Z

    .line 184
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x63

    if-ne v0, v3, :cond_29

    move v0, v1

    :goto_29
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isM0004:Z

    .line 188
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x64

    if-ne v0, v3, :cond_2a

    move v0, v1

    :goto_2a
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isM0005:Z

    .line 192
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x68

    if-ne v0, v3, :cond_2b

    move v0, v1

    :goto_2b
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isN0001:Z

    .line 196
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x69

    if-ne v0, v3, :cond_2c

    move v0, v1

    :goto_2c
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isN0002:Z

    .line 200
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x70

    if-ne v0, v3, :cond_2d

    move v0, v1

    :goto_2d
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isO0001:Z

    .line 204
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x71

    if-ne v0, v3, :cond_2e

    move v0, v1

    :goto_2e
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isO0002:Z

    .line 208
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x72

    if-ne v0, v3, :cond_2f

    move v0, v1

    :goto_2f
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isO0003:Z

    .line 212
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x73

    if-ne v0, v3, :cond_30

    move v0, v1

    :goto_30
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isO0004:Z

    .line 216
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x74

    if-ne v0, v3, :cond_31

    move v0, v1

    :goto_31
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isO0005:Z

    .line 220
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x78

    if-ne v0, v3, :cond_32

    move v0, v1

    :goto_32
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isP0001:Z

    .line 224
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x80

    if-ne v0, v3, :cond_33

    move v0, v1

    :goto_33
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isQ0001:Z

    .line 228
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x88

    if-ne v0, v3, :cond_34

    move v0, v1

    :goto_34
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isR0001:Z

    .line 232
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x90

    if-ne v0, v3, :cond_35

    move v0, v1

    :goto_35
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isS0001:Z

    .line 236
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x91

    if-ne v0, v3, :cond_36

    move v0, v1

    :goto_36
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isS0002:Z

    .line 240
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x92

    if-ne v0, v3, :cond_37

    move v0, v1

    :goto_37
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isS0003:Z

    .line 244
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x93

    if-ne v0, v3, :cond_38

    move v0, v1

    :goto_38
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isS0004:Z

    .line 248
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x94

    if-ne v0, v3, :cond_39

    move v0, v1

    :goto_39
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isS0005:Z

    .line 252
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x95

    if-ne v0, v3, :cond_3a

    move v0, v1

    :goto_3a
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isS0006:Z

    .line 256
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x96

    if-ne v0, v3, :cond_3b

    move v0, v1

    :goto_3b
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isS0007:Z

    .line 260
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x97

    if-ne v0, v3, :cond_3c

    move v0, v1

    :goto_3c
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isS0008:Z

    .line 264
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xd1

    if-ne v0, v3, :cond_3d

    move v0, v1

    :goto_3d
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isS0009:Z

    .line 268
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xd2

    if-ne v0, v3, :cond_3e

    move v0, v1

    :goto_3e
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isS0010:Z

    .line 272
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xd3

    if-ne v0, v3, :cond_3f

    move v0, v1

    :goto_3f
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isS0011:Z

    .line 276
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xd4

    if-ne v0, v3, :cond_40

    move v0, v1

    :goto_40
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isS0012:Z

    .line 280
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x98

    if-ne v0, v3, :cond_41

    move v0, v1

    :goto_41
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isT0001:Z

    .line 284
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x99

    if-ne v0, v3, :cond_42

    move v0, v1

    :goto_42
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isT0002:Z

    .line 288
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x9a

    if-ne v0, v3, :cond_43

    move v0, v1

    :goto_43
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isT0003:Z

    .line 292
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    if-ne v0, v5, :cond_44

    move v0, v1

    :goto_44
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isT0004:Z

    .line 296
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    if-ne v0, v5, :cond_45

    move v0, v1

    :goto_45
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isT0005:Z

    .line 300
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x9d

    if-ne v0, v3, :cond_46

    move v0, v1

    :goto_46
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isT0006:Z

    .line 304
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x9e

    if-ne v0, v3, :cond_47

    move v0, v1

    :goto_47
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isT0007:Z

    .line 308
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x9f

    if-ne v0, v3, :cond_48

    move v0, v1

    :goto_48
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isT0008:Z

    .line 312
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xd0

    if-ne v0, v3, :cond_49

    move v0, v1

    :goto_49
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isT0009:Z

    .line 316
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xd5

    if-ne v0, v3, :cond_4a

    move v0, v1

    :goto_4a
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isT0010:Z

    .line 320
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xa0

    if-ne v0, v3, :cond_4b

    move v0, v1

    :goto_4b
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isU0001:Z

    .line 324
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xa1

    if-ne v0, v3, :cond_4c

    move v0, v1

    :goto_4c
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isU0002:Z

    .line 328
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_4d

    move v0, v1

    :goto_4d
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isV0001:Z

    .line 332
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xa9

    if-ne v0, v3, :cond_4e

    move v0, v1

    :goto_4e
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isV0002:Z

    .line 336
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xaa

    if-ne v0, v3, :cond_4f

    move v0, v1

    :goto_4f
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isV0003:Z

    .line 340
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xab

    if-ne v0, v3, :cond_50

    move v0, v1

    :goto_50
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isV0004:Z

    .line 344
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xac

    if-ne v0, v3, :cond_51

    move v0, v1

    :goto_51
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isV0005:Z

    .line 348
    sget-short v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_52

    :goto_52
    sput-boolean v1, Lcom/android/providers/settings/flag/HtcProjectFlags;->isZ0001:Z

    return-void

    :cond_0
    move v0, v2

    .line 20
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 24
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 28
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 32
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 36
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 40
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 44
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 48
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 52
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 56
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 60
    goto/16 :goto_a

    :cond_b
    move v0, v2

    .line 64
    goto/16 :goto_b

    :cond_c
    move v0, v2

    .line 68
    goto/16 :goto_c

    :cond_d
    move v0, v2

    .line 72
    goto/16 :goto_d

    :cond_e
    move v0, v2

    .line 76
    goto/16 :goto_e

    :cond_f
    move v0, v2

    .line 80
    goto/16 :goto_f

    :cond_10
    move v0, v2

    .line 84
    goto/16 :goto_10

    :cond_11
    move v0, v2

    .line 88
    goto/16 :goto_11

    :cond_12
    move v0, v2

    .line 92
    goto/16 :goto_12

    :cond_13
    move v0, v2

    .line 96
    goto/16 :goto_13

    :cond_14
    move v0, v2

    .line 100
    goto/16 :goto_14

    :cond_15
    move v0, v2

    .line 104
    goto/16 :goto_15

    :cond_16
    move v0, v2

    .line 108
    goto/16 :goto_16

    :cond_17
    move v0, v2

    .line 112
    goto/16 :goto_17

    :cond_18
    move v0, v2

    .line 116
    goto/16 :goto_18

    :cond_19
    move v0, v2

    .line 120
    goto/16 :goto_19

    :cond_1a
    move v0, v2

    .line 124
    goto/16 :goto_1a

    :cond_1b
    move v0, v2

    .line 128
    goto/16 :goto_1b

    :cond_1c
    move v0, v2

    .line 132
    goto/16 :goto_1c

    :cond_1d
    move v0, v2

    .line 136
    goto/16 :goto_1d

    :cond_1e
    move v0, v2

    .line 140
    goto/16 :goto_1e

    :cond_1f
    move v0, v2

    .line 144
    goto/16 :goto_1f

    :cond_20
    move v0, v2

    .line 148
    goto/16 :goto_20

    :cond_21
    move v0, v2

    .line 152
    goto/16 :goto_21

    :cond_22
    move v0, v2

    .line 156
    goto/16 :goto_22

    :cond_23
    move v0, v2

    .line 160
    goto/16 :goto_23

    :cond_24
    move v0, v2

    .line 164
    goto/16 :goto_24

    :cond_25
    move v0, v2

    .line 168
    goto/16 :goto_25

    :cond_26
    move v0, v2

    .line 172
    goto/16 :goto_26

    :cond_27
    move v0, v2

    .line 176
    goto/16 :goto_27

    :cond_28
    move v0, v2

    .line 180
    goto/16 :goto_28

    :cond_29
    move v0, v2

    .line 184
    goto/16 :goto_29

    :cond_2a
    move v0, v2

    .line 188
    goto/16 :goto_2a

    :cond_2b
    move v0, v2

    .line 192
    goto/16 :goto_2b

    :cond_2c
    move v0, v2

    .line 196
    goto/16 :goto_2c

    :cond_2d
    move v0, v2

    .line 200
    goto/16 :goto_2d

    :cond_2e
    move v0, v2

    .line 204
    goto/16 :goto_2e

    :cond_2f
    move v0, v2

    .line 208
    goto/16 :goto_2f

    :cond_30
    move v0, v2

    .line 212
    goto/16 :goto_30

    :cond_31
    move v0, v2

    .line 216
    goto/16 :goto_31

    :cond_32
    move v0, v2

    .line 220
    goto/16 :goto_32

    :cond_33
    move v0, v2

    .line 224
    goto/16 :goto_33

    :cond_34
    move v0, v2

    .line 228
    goto/16 :goto_34

    :cond_35
    move v0, v2

    .line 232
    goto/16 :goto_35

    :cond_36
    move v0, v2

    .line 236
    goto/16 :goto_36

    :cond_37
    move v0, v2

    .line 240
    goto/16 :goto_37

    :cond_38
    move v0, v2

    .line 244
    goto/16 :goto_38

    :cond_39
    move v0, v2

    .line 248
    goto/16 :goto_39

    :cond_3a
    move v0, v2

    .line 252
    goto/16 :goto_3a

    :cond_3b
    move v0, v2

    .line 256
    goto/16 :goto_3b

    :cond_3c
    move v0, v2

    .line 260
    goto/16 :goto_3c

    :cond_3d
    move v0, v2

    .line 264
    goto/16 :goto_3d

    :cond_3e
    move v0, v2

    .line 268
    goto/16 :goto_3e

    :cond_3f
    move v0, v2

    .line 272
    goto/16 :goto_3f

    :cond_40
    move v0, v2

    .line 276
    goto/16 :goto_40

    :cond_41
    move v0, v2

    .line 280
    goto/16 :goto_41

    :cond_42
    move v0, v2

    .line 284
    goto/16 :goto_42

    :cond_43
    move v0, v2

    .line 288
    goto/16 :goto_43

    :cond_44
    move v0, v2

    .line 292
    goto/16 :goto_44

    :cond_45
    move v0, v2

    .line 296
    goto/16 :goto_45

    :cond_46
    move v0, v2

    .line 300
    goto/16 :goto_46

    :cond_47
    move v0, v2

    .line 304
    goto/16 :goto_47

    :cond_48
    move v0, v2

    .line 308
    goto/16 :goto_48

    :cond_49
    move v0, v2

    .line 312
    goto/16 :goto_49

    :cond_4a
    move v0, v2

    .line 316
    goto/16 :goto_4a

    :cond_4b
    move v0, v2

    .line 320
    goto/16 :goto_4b

    :cond_4c
    move v0, v2

    .line 324
    goto/16 :goto_4c

    :cond_4d
    move v0, v2

    .line 328
    goto/16 :goto_4d

    :cond_4e
    move v0, v2

    .line 332
    goto/16 :goto_4e

    :cond_4f
    move v0, v2

    .line 336
    goto/16 :goto_4f

    :cond_50
    move v0, v2

    .line 340
    goto/16 :goto_50

    :cond_51
    move v0, v2

    .line 344
    goto/16 :goto_51

    :cond_52
    move v1, v2

    .line 348
    goto/16 :goto_52
.end method
