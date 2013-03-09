.class public interface abstract Lcom/android/providers/settings/flag/HtcDeviceFlags;
.super Ljava/lang/Object;
.source "HtcDeviceFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/flag/HtcDeviceFlags$Info;
    }
.end annotation


# static fields
.field public static final CURRENT_DEVICE_FLAG:S

.field public static final isA0001:Z

.field public static final isA0002:Z

.field public static final isA0003:Z

.field public static final isB0001:Z

.field public static final isB0002:Z

.field public static final isB0003:Z

.field public static final isB0004:Z

.field public static final isB0005:Z

.field public static final isB0006:Z

.field public static final isB0007:Z

.field public static final isB0008:Z

.field public static final isC0001:Z

.field public static final isD0001:Z

.field public static final isD0002:Z

.field public static final isD0003:Z

.field public static final isD0004:Z

.field public static final isD0005:Z

.field public static final isE0001:Z

.field public static final isE0002:Z

.field public static final isE0003:Z

.field public static final isF0001:Z

.field public static final isG0001:Z

.field public static final isH0001:Z

.field public static final isH0002:Z

.field public static final isH0003:Z

.field public static final isH0004:Z

.field public static final isH0005:Z

.field public static final isH0006:Z

.field public static final isH0007:Z

.field public static final isI0001:Z

.field public static final isI0002:Z

.field public static final isI0003:Z

.field public static final isK0001:Z

.field public static final isL0001:Z

.field public static final isL0002:Z

.field public static final isL0003:Z

.field public static final isL0004:Z

.field public static final isM0001:Z

.field public static final isM0002:Z

.field public static final isM0003:Z

.field public static final isM0004:Z

.field public static final isP0001:Z

.field public static final isP0002:Z

.field public static final isP0003:Z

.field public static final isP0004:Z

.field public static final isP0005:Z

.field public static final isP0006:Z

.field public static final isP0007:Z

.field public static final isR0001:Z

.field public static final isR0002:Z

.field public static final isR0003:Z

.field public static final isS0001:Z

.field public static final isS0002:Z

.field public static final isS0003:Z

.field public static final isS0004:Z

.field public static final isS0005:Z

.field public static final isS0006:Z

.field public static final isS0007:Z

.field public static final isT0001:Z

.field public static final isT0002:Z

.field public static final isT0003:Z

.field public static final isT0004:Z

.field public static final isT0005:Z

.field public static final isT0006:Z

.field public static final isV0001:Z

.field public static final isV0002:Z

.field public static final isV0003:Z

.field public static final isV0004:Z

.field public static final isV0005:Z

.field public static final isV0006:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 18
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sput-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    .line 21
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isA0001:Z

    .line 25
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isA0002:Z

    .line 29
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isA0003:Z

    .line 33
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isB0001:Z

    .line 37
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isB0002:Z

    .line 41
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xa

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isB0003:Z

    .line 45
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xb

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isB0004:Z

    .line 49
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xc

    if-ne v0, v3, :cond_7

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isB0005:Z

    .line 53
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xd

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isB0006:Z

    .line 57
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xe

    if-ne v0, v3, :cond_9

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isB0007:Z

    .line 61
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xf

    if-ne v0, v3, :cond_a

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isB0008:Z

    .line 65
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x10

    if-ne v0, v3, :cond_b

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isC0001:Z

    .line 69
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x18

    if-ne v0, v3, :cond_c

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isD0001:Z

    .line 73
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x19

    if-ne v0, v3, :cond_d

    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isD0002:Z

    .line 77
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_e

    move v0, v1

    :goto_e
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isD0003:Z

    .line 81
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_f

    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isD0004:Z

    .line 85
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x1c

    if-ne v0, v3, :cond_10

    move v0, v1

    :goto_10
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isD0005:Z

    .line 89
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x20

    if-ne v0, v3, :cond_11

    move v0, v1

    :goto_11
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isE0001:Z

    .line 93
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x21

    if-ne v0, v3, :cond_12

    move v0, v1

    :goto_12
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isE0002:Z

    .line 97
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x22

    if-ne v0, v3, :cond_13

    move v0, v1

    :goto_13
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isE0003:Z

    .line 101
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x28

    if-ne v0, v3, :cond_14

    move v0, v1

    :goto_14
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isF0001:Z

    .line 105
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x30

    if-ne v0, v3, :cond_15

    move v0, v1

    :goto_15
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isG0001:Z

    .line 109
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x38

    if-ne v0, v3, :cond_16

    move v0, v1

    :goto_16
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isH0001:Z

    .line 113
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x39

    if-ne v0, v3, :cond_17

    move v0, v1

    :goto_17
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isH0002:Z

    .line 117
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_18

    move v0, v1

    :goto_18
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isH0003:Z

    .line 121
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x3b

    if-ne v0, v3, :cond_19

    move v0, v1

    :goto_19
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isH0004:Z

    .line 125
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x3c

    if-ne v0, v3, :cond_1a

    move v0, v1

    :goto_1a
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isH0005:Z

    .line 129
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x3d

    if-ne v0, v3, :cond_1b

    move v0, v1

    :goto_1b
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isH0006:Z

    .line 133
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_1c

    move v0, v1

    :goto_1c
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isH0007:Z

    .line 137
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x40

    if-ne v0, v3, :cond_1d

    move v0, v1

    :goto_1d
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isI0001:Z

    .line 141
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x41

    if-ne v0, v3, :cond_1e

    move v0, v1

    :goto_1e
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isI0002:Z

    .line 145
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x42

    if-ne v0, v3, :cond_1f

    move v0, v1

    :goto_1f
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isI0003:Z

    .line 149
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x50

    if-ne v0, v3, :cond_20

    move v0, v1

    :goto_20
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isK0001:Z

    .line 153
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x58

    if-ne v0, v3, :cond_21

    move v0, v1

    :goto_21
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isL0001:Z

    .line 157
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x59

    if-ne v0, v3, :cond_22

    move v0, v1

    :goto_22
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isL0002:Z

    .line 161
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x5a

    if-ne v0, v3, :cond_23

    move v0, v1

    :goto_23
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isL0003:Z

    .line 165
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x5b

    if-ne v0, v3, :cond_24

    move v0, v1

    :goto_24
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isL0004:Z

    .line 169
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x60

    if-ne v0, v3, :cond_25

    move v0, v1

    :goto_25
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isM0001:Z

    .line 173
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x61

    if-ne v0, v3, :cond_26

    move v0, v1

    :goto_26
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isM0002:Z

    .line 177
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x62

    if-ne v0, v3, :cond_27

    move v0, v1

    :goto_27
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isM0003:Z

    .line 181
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x63

    if-ne v0, v3, :cond_28

    move v0, v1

    :goto_28
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isM0004:Z

    .line 185
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x78

    if-ne v0, v3, :cond_29

    move v0, v1

    :goto_29
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isP0001:Z

    .line 189
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x79

    if-ne v0, v3, :cond_2a

    move v0, v1

    :goto_2a
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isP0002:Z

    .line 193
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x7a

    if-ne v0, v3, :cond_2b

    move v0, v1

    :goto_2b
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isP0003:Z

    .line 197
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x7b

    if-ne v0, v3, :cond_2c

    move v0, v1

    :goto_2c
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isP0004:Z

    .line 201
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x7c

    if-ne v0, v3, :cond_2d

    move v0, v1

    :goto_2d
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isP0005:Z

    .line 205
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_2e

    move v0, v1

    :goto_2e
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isP0006:Z

    .line 209
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x7e

    if-ne v0, v3, :cond_2f

    move v0, v1

    :goto_2f
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isP0007:Z

    .line 213
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x88

    if-ne v0, v3, :cond_30

    move v0, v1

    :goto_30
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isR0001:Z

    .line 217
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x89

    if-ne v0, v3, :cond_31

    move v0, v1

    :goto_31
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isR0002:Z

    .line 221
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x8a

    if-ne v0, v3, :cond_32

    move v0, v1

    :goto_32
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isR0003:Z

    .line 225
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x90

    if-ne v0, v3, :cond_33

    move v0, v1

    :goto_33
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isS0001:Z

    .line 229
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x91

    if-ne v0, v3, :cond_34

    move v0, v1

    :goto_34
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isS0002:Z

    .line 233
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x92

    if-ne v0, v3, :cond_35

    move v0, v1

    :goto_35
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isS0003:Z

    .line 237
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x93

    if-ne v0, v3, :cond_36

    move v0, v1

    :goto_36
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isS0004:Z

    .line 241
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x94

    if-ne v0, v3, :cond_37

    move v0, v1

    :goto_37
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isS0005:Z

    .line 245
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x95

    if-ne v0, v3, :cond_38

    move v0, v1

    :goto_38
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isS0006:Z

    .line 249
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x96

    if-ne v0, v3, :cond_39

    move v0, v1

    :goto_39
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isS0007:Z

    .line 253
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x98

    if-ne v0, v3, :cond_3a

    move v0, v1

    :goto_3a
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isT0001:Z

    .line 257
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x99

    if-ne v0, v3, :cond_3b

    move v0, v1

    :goto_3b
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isT0002:Z

    .line 261
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x9a

    if-ne v0, v3, :cond_3c

    move v0, v1

    :goto_3c
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isT0003:Z

    .line 265
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x9b

    if-ne v0, v3, :cond_3d

    move v0, v1

    :goto_3d
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isT0004:Z

    .line 269
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x9c

    if-ne v0, v3, :cond_3e

    move v0, v1

    :goto_3e
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isT0005:Z

    .line 273
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x9d

    if-ne v0, v3, :cond_3f

    move v0, v1

    :goto_3f
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isT0006:Z

    .line 277
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_40

    move v0, v1

    :goto_40
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isV0001:Z

    .line 281
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xa9

    if-ne v0, v3, :cond_41

    move v0, v1

    :goto_41
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isV0002:Z

    .line 285
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xaa

    if-ne v0, v3, :cond_42

    move v0, v1

    :goto_42
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isV0003:Z

    .line 289
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xab

    if-ne v0, v3, :cond_43

    move v0, v1

    :goto_43
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isV0004:Z

    .line 293
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xac

    if-ne v0, v3, :cond_44

    move v0, v1

    :goto_44
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isV0005:Z

    .line 297
    sget-short v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xad

    if-ne v0, v3, :cond_45

    :goto_45
    sput-boolean v1, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isV0006:Z

    return-void

    :cond_0
    move v0, v2

    .line 21
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 25
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 29
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 33
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 37
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 41
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 45
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 49
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 53
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 57
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 61
    goto/16 :goto_a

    :cond_b
    move v0, v2

    .line 65
    goto/16 :goto_b

    :cond_c
    move v0, v2

    .line 69
    goto/16 :goto_c

    :cond_d
    move v0, v2

    .line 73
    goto/16 :goto_d

    :cond_e
    move v0, v2

    .line 77
    goto/16 :goto_e

    :cond_f
    move v0, v2

    .line 81
    goto/16 :goto_f

    :cond_10
    move v0, v2

    .line 85
    goto/16 :goto_10

    :cond_11
    move v0, v2

    .line 89
    goto/16 :goto_11

    :cond_12
    move v0, v2

    .line 93
    goto/16 :goto_12

    :cond_13
    move v0, v2

    .line 97
    goto/16 :goto_13

    :cond_14
    move v0, v2

    .line 101
    goto/16 :goto_14

    :cond_15
    move v0, v2

    .line 105
    goto/16 :goto_15

    :cond_16
    move v0, v2

    .line 109
    goto/16 :goto_16

    :cond_17
    move v0, v2

    .line 113
    goto/16 :goto_17

    :cond_18
    move v0, v2

    .line 117
    goto/16 :goto_18

    :cond_19
    move v0, v2

    .line 121
    goto/16 :goto_19

    :cond_1a
    move v0, v2

    .line 125
    goto/16 :goto_1a

    :cond_1b
    move v0, v2

    .line 129
    goto/16 :goto_1b

    :cond_1c
    move v0, v2

    .line 133
    goto/16 :goto_1c

    :cond_1d
    move v0, v2

    .line 137
    goto/16 :goto_1d

    :cond_1e
    move v0, v2

    .line 141
    goto/16 :goto_1e

    :cond_1f
    move v0, v2

    .line 145
    goto/16 :goto_1f

    :cond_20
    move v0, v2

    .line 149
    goto/16 :goto_20

    :cond_21
    move v0, v2

    .line 153
    goto/16 :goto_21

    :cond_22
    move v0, v2

    .line 157
    goto/16 :goto_22

    :cond_23
    move v0, v2

    .line 161
    goto/16 :goto_23

    :cond_24
    move v0, v2

    .line 165
    goto/16 :goto_24

    :cond_25
    move v0, v2

    .line 169
    goto/16 :goto_25

    :cond_26
    move v0, v2

    .line 173
    goto/16 :goto_26

    :cond_27
    move v0, v2

    .line 177
    goto/16 :goto_27

    :cond_28
    move v0, v2

    .line 181
    goto/16 :goto_28

    :cond_29
    move v0, v2

    .line 185
    goto/16 :goto_29

    :cond_2a
    move v0, v2

    .line 189
    goto/16 :goto_2a

    :cond_2b
    move v0, v2

    .line 193
    goto/16 :goto_2b

    :cond_2c
    move v0, v2

    .line 197
    goto/16 :goto_2c

    :cond_2d
    move v0, v2

    .line 201
    goto/16 :goto_2d

    :cond_2e
    move v0, v2

    .line 205
    goto/16 :goto_2e

    :cond_2f
    move v0, v2

    .line 209
    goto/16 :goto_2f

    :cond_30
    move v0, v2

    .line 213
    goto/16 :goto_30

    :cond_31
    move v0, v2

    .line 217
    goto/16 :goto_31

    :cond_32
    move v0, v2

    .line 221
    goto/16 :goto_32

    :cond_33
    move v0, v2

    .line 225
    goto/16 :goto_33

    :cond_34
    move v0, v2

    .line 229
    goto/16 :goto_34

    :cond_35
    move v0, v2

    .line 233
    goto/16 :goto_35

    :cond_36
    move v0, v2

    .line 237
    goto/16 :goto_36

    :cond_37
    move v0, v2

    .line 241
    goto/16 :goto_37

    :cond_38
    move v0, v2

    .line 245
    goto/16 :goto_38

    :cond_39
    move v0, v2

    .line 249
    goto/16 :goto_39

    :cond_3a
    move v0, v2

    .line 253
    goto/16 :goto_3a

    :cond_3b
    move v0, v2

    .line 257
    goto/16 :goto_3b

    :cond_3c
    move v0, v2

    .line 261
    goto/16 :goto_3c

    :cond_3d
    move v0, v2

    .line 265
    goto/16 :goto_3d

    :cond_3e
    move v0, v2

    .line 269
    goto/16 :goto_3e

    :cond_3f
    move v0, v2

    .line 273
    goto/16 :goto_3f

    :cond_40
    move v0, v2

    .line 277
    goto/16 :goto_40

    :cond_41
    move v0, v2

    .line 281
    goto/16 :goto_41

    :cond_42
    move v0, v2

    .line 285
    goto/16 :goto_42

    :cond_43
    move v0, v2

    .line 289
    goto/16 :goto_43

    :cond_44
    move v0, v2

    .line 293
    goto/16 :goto_44

    :cond_45
    move v1, v2

    .line 297
    goto/16 :goto_45
.end method
