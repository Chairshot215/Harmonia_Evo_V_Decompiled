.class public interface abstract Lcom/android/settings/framework/flag/HtcDeviceFlags;
.super Ljava/lang/Object;
.source "HtcDeviceFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;
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

.field public static final isE0004:Z

.field public static final isE0005:Z

.field public static final isE0006:Z

.field public static final isE0007:Z

.field public static final isF0001:Z

.field public static final isF0002:Z

.field public static final isF0003:Z

.field public static final isF0004:Z

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

.field public static final isJ0001:Z

.field public static final isJ0002:Z

.field public static final isK0001:Z

.field public static final isK0002:Z

.field public static final isK0003:Z

.field public static final isL0001:Z

.field public static final isL0002:Z

.field public static final isL0003:Z

.field public static final isL0004:Z

.field public static final isL0005:Z

.field public static final isL0006:Z

.field public static final isM0001:Z

.field public static final isM0002:Z

.field public static final isM0003:Z

.field public static final isM0004:Z

.field public static final isO0001:Z

.field public static final isP0001:Z

.field public static final isP0002:Z

.field public static final isP0003:Z

.field public static final isP0004:Z

.field public static final isP0005:Z

.field public static final isP0006:Z

.field public static final isP0007:Z

.field public static final isP0008:Z

.field public static final isP0009:Z

.field public static final isP0010:Z

.field public static final isP0011:Z

.field public static final isQ0001:Z

.field public static final isQ0002:Z

.field public static final isQ0003:Z

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

.field public static final isS0008:Z

.field public static final isS0009:Z

.field public static final isT0001:Z

.field public static final isT0002:Z

.field public static final isT0003:Z

.field public static final isT0004:Z

.field public static final isT0005:Z

.field public static final isT0006:Z

.field public static final isT0007:Z

.field public static final isT0008:Z

.field public static final isV0001:Z

.field public static final isV0002:Z

.field public static final isV0003:Z

.field public static final isV0004:Z

.field public static final isV0005:Z

.field public static final isV0006:Z

.field public static final isV0007:Z

.field public static final isV0008:Z

.field public static final isV0009:Z

.field public static final isV0010:Z

.field public static final isV0011:Z

.field public static final isV0012:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xe0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 20
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_DEVICE_flag()S

    move-result v0

    sput-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    .line 23
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isA0001:Z

    .line 27
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isA0002:Z

    .line 31
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isA0003:Z

    .line 35
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isB0001:Z

    .line 39
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isB0002:Z

    .line 43
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xa

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isB0003:Z

    .line 47
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xb

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isB0004:Z

    .line 51
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xc

    if-ne v0, v3, :cond_7

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isB0005:Z

    .line 55
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xd

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isB0006:Z

    .line 59
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xe

    if-ne v0, v3, :cond_9

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isB0007:Z

    .line 63
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xf

    if-ne v0, v3, :cond_a

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isB0008:Z

    .line 67
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x10

    if-ne v0, v3, :cond_b

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isC0001:Z

    .line 71
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x18

    if-ne v0, v3, :cond_c

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isD0001:Z

    .line 75
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x19

    if-ne v0, v3, :cond_d

    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isD0002:Z

    .line 79
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_e

    move v0, v1

    :goto_e
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isD0003:Z

    .line 83
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_f

    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isD0004:Z

    .line 87
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x1c

    if-ne v0, v3, :cond_10

    move v0, v1

    :goto_10
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isD0005:Z

    .line 91
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x20

    if-ne v0, v3, :cond_11

    move v0, v1

    :goto_11
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isE0001:Z

    .line 95
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x21

    if-ne v0, v3, :cond_12

    move v0, v1

    :goto_12
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isE0002:Z

    .line 99
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x22

    if-ne v0, v3, :cond_13

    move v0, v1

    :goto_13
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isE0003:Z

    .line 103
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x23

    if-ne v0, v3, :cond_14

    move v0, v1

    :goto_14
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isE0004:Z

    .line 107
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x24

    if-ne v0, v3, :cond_15

    move v0, v1

    :goto_15
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isE0005:Z

    .line 111
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x25

    if-ne v0, v3, :cond_16

    move v0, v1

    :goto_16
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isE0006:Z

    .line 115
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x26

    if-ne v0, v3, :cond_17

    move v0, v1

    :goto_17
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isE0007:Z

    .line 119
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x28

    if-ne v0, v3, :cond_18

    move v0, v1

    :goto_18
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isF0001:Z

    .line 123
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x29

    if-ne v0, v3, :cond_19

    move v0, v1

    :goto_19
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isF0002:Z

    .line 127
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_1a

    move v0, v1

    :goto_1a
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isF0003:Z

    .line 131
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x2b

    if-ne v0, v3, :cond_1b

    move v0, v1

    :goto_1b
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isF0004:Z

    .line 135
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x30

    if-ne v0, v3, :cond_1c

    move v0, v1

    :goto_1c
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isG0001:Z

    .line 139
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x38

    if-ne v0, v3, :cond_1d

    move v0, v1

    :goto_1d
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isH0001:Z

    .line 143
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x39

    if-ne v0, v3, :cond_1e

    move v0, v1

    :goto_1e
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isH0002:Z

    .line 147
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_1f

    move v0, v1

    :goto_1f
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isH0003:Z

    .line 151
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x3b

    if-ne v0, v3, :cond_20

    move v0, v1

    :goto_20
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isH0004:Z

    .line 155
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x3c

    if-ne v0, v3, :cond_21

    move v0, v1

    :goto_21
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isH0005:Z

    .line 159
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x3d

    if-ne v0, v3, :cond_22

    move v0, v1

    :goto_22
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isH0006:Z

    .line 163
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_23

    move v0, v1

    :goto_23
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isH0007:Z

    .line 167
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x40

    if-ne v0, v3, :cond_24

    move v0, v1

    :goto_24
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isI0001:Z

    .line 171
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x41

    if-ne v0, v3, :cond_25

    move v0, v1

    :goto_25
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isI0002:Z

    .line 175
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x42

    if-ne v0, v3, :cond_26

    move v0, v1

    :goto_26
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isI0003:Z

    .line 179
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x48

    if-ne v0, v3, :cond_27

    move v0, v1

    :goto_27
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isJ0001:Z

    .line 183
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x49

    if-ne v0, v3, :cond_28

    move v0, v1

    :goto_28
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isJ0002:Z

    .line 187
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x50

    if-ne v0, v3, :cond_29

    move v0, v1

    :goto_29
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isK0001:Z

    .line 191
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x51

    if-ne v0, v3, :cond_2a

    move v0, v1

    :goto_2a
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isK0002:Z

    .line 195
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x52

    if-ne v0, v3, :cond_2b

    move v0, v1

    :goto_2b
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isK0003:Z

    .line 199
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x58

    if-ne v0, v3, :cond_2c

    move v0, v1

    :goto_2c
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isL0001:Z

    .line 203
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x59

    if-ne v0, v3, :cond_2d

    move v0, v1

    :goto_2d
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isL0002:Z

    .line 207
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x5a

    if-ne v0, v3, :cond_2e

    move v0, v1

    :goto_2e
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isL0003:Z

    .line 211
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x5b

    if-ne v0, v3, :cond_2f

    move v0, v1

    :goto_2f
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isL0004:Z

    .line 215
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x5c

    if-ne v0, v3, :cond_30

    move v0, v1

    :goto_30
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isL0005:Z

    .line 219
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x5d

    if-ne v0, v3, :cond_31

    move v0, v1

    :goto_31
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isL0006:Z

    .line 223
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x60

    if-ne v0, v3, :cond_32

    move v0, v1

    :goto_32
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isM0001:Z

    .line 227
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x61

    if-ne v0, v3, :cond_33

    move v0, v1

    :goto_33
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isM0002:Z

    .line 231
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x62

    if-ne v0, v3, :cond_34

    move v0, v1

    :goto_34
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isM0003:Z

    .line 235
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x63

    if-ne v0, v3, :cond_35

    move v0, v1

    :goto_35
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isM0004:Z

    .line 239
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x70

    if-ne v0, v3, :cond_36

    move v0, v1

    :goto_36
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isO0001:Z

    .line 243
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x78

    if-ne v0, v3, :cond_37

    move v0, v1

    :goto_37
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isP0001:Z

    .line 247
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x79

    if-ne v0, v3, :cond_38

    move v0, v1

    :goto_38
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isP0002:Z

    .line 251
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x7a

    if-ne v0, v3, :cond_39

    move v0, v1

    :goto_39
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isP0003:Z

    .line 255
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x7b

    if-ne v0, v3, :cond_3a

    move v0, v1

    :goto_3a
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isP0004:Z

    .line 259
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x7c

    if-ne v0, v3, :cond_3b

    move v0, v1

    :goto_3b
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isP0005:Z

    .line 263
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_3c

    move v0, v1

    :goto_3c
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isP0006:Z

    .line 267
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x7e

    if-ne v0, v3, :cond_3d

    move v0, v1

    :goto_3d
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isP0007:Z

    .line 271
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x7f

    if-ne v0, v3, :cond_3e

    move v0, v1

    :goto_3e
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isP0008:Z

    .line 275
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xda

    if-ne v0, v3, :cond_3f

    move v0, v1

    :goto_3f
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isP0009:Z

    .line 279
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xdb

    if-ne v0, v3, :cond_40

    move v0, v1

    :goto_40
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isP0010:Z

    .line 288
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x80

    if-ne v0, v3, :cond_41

    move v0, v1

    :goto_41
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isQ0001:Z

    .line 292
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x81

    if-ne v0, v3, :cond_42

    move v0, v1

    :goto_42
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isQ0002:Z

    .line 296
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x82

    if-ne v0, v3, :cond_43

    move v0, v1

    :goto_43
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isQ0003:Z

    .line 300
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x88

    if-ne v0, v3, :cond_44

    move v0, v1

    :goto_44
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isR0001:Z

    .line 304
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x89

    if-ne v0, v3, :cond_45

    move v0, v1

    :goto_45
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isR0002:Z

    .line 308
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x8a

    if-ne v0, v3, :cond_46

    move v0, v1

    :goto_46
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isR0003:Z

    .line 312
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x90

    if-ne v0, v3, :cond_47

    move v0, v1

    :goto_47
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0001:Z

    .line 316
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x91

    if-ne v0, v3, :cond_48

    move v0, v1

    :goto_48
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0002:Z

    .line 320
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x92

    if-ne v0, v3, :cond_49

    move v0, v1

    :goto_49
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0003:Z

    .line 324
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x93

    if-ne v0, v3, :cond_4a

    move v0, v1

    :goto_4a
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0004:Z

    .line 328
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x94

    if-ne v0, v3, :cond_4b

    move v0, v1

    :goto_4b
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0005:Z

    .line 332
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x95

    if-ne v0, v3, :cond_4c

    move v0, v1

    :goto_4c
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0006:Z

    .line 336
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x96

    if-ne v0, v3, :cond_4d

    move v0, v1

    :goto_4d
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0007:Z

    .line 340
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x97

    if-ne v0, v3, :cond_4e

    move v0, v1

    :goto_4e
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0008:Z

    .line 344
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xdc

    if-ne v0, v3, :cond_4f

    move v0, v1

    :goto_4f
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0009:Z

    .line 348
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x98

    if-ne v0, v3, :cond_50

    move v0, v1

    :goto_50
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isT0001:Z

    .line 352
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x99

    if-ne v0, v3, :cond_51

    move v0, v1

    :goto_51
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isT0002:Z

    .line 356
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x9a

    if-ne v0, v3, :cond_52

    move v0, v1

    :goto_52
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isT0003:Z

    .line 360
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x9b

    if-ne v0, v3, :cond_53

    move v0, v1

    :goto_53
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isT0004:Z

    .line 364
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x9c

    if-ne v0, v3, :cond_54

    move v0, v1

    :goto_54
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isT0005:Z

    .line 368
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x9d

    if-ne v0, v3, :cond_55

    move v0, v1

    :goto_55
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isT0006:Z

    .line 372
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x9e

    if-ne v0, v3, :cond_56

    move v0, v1

    :goto_56
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isT0007:Z

    .line 376
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0x9f

    if-ne v0, v3, :cond_57

    move v0, v1

    :goto_57
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isT0008:Z

    .line 380
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_58

    move v0, v1

    :goto_58
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0001:Z

    .line 384
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xa9

    if-ne v0, v3, :cond_59

    move v0, v1

    :goto_59
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0002:Z

    .line 388
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xaa

    if-ne v0, v3, :cond_5a

    move v0, v1

    :goto_5a
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0003:Z

    .line 392
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xab

    if-ne v0, v3, :cond_5b

    move v0, v1

    :goto_5b
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0004:Z

    .line 396
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xac

    if-ne v0, v3, :cond_5c

    move v0, v1

    :goto_5c
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0005:Z

    .line 400
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xad

    if-ne v0, v3, :cond_5d

    move v0, v1

    :goto_5d
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0006:Z

    .line 404
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xae

    if-ne v0, v3, :cond_5e

    move v0, v1

    :goto_5e
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0007:Z

    .line 408
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xaf

    if-ne v0, v3, :cond_5f

    move v0, v1

    :goto_5f
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0008:Z

    .line 412
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xdd

    if-ne v0, v3, :cond_60

    move v0, v1

    :goto_60
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0009:Z

    .line 416
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    if-ne v0, v4, :cond_61

    move v0, v1

    :goto_61
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0010:Z

    .line 420
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    if-ne v0, v4, :cond_62

    move v0, v1

    :goto_62
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0011:Z

    .line 425
    sget-short v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->CURRENT_DEVICE_FLAG:S

    const/16 v3, 0xe1

    if-ne v0, v3, :cond_63

    :goto_63
    sput-boolean v1, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0012:Z

    return-void

    :cond_0
    move v0, v2

    .line 23
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 27
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 31
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 35
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 39
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 43
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 47
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 51
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 55
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 59
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 63
    goto/16 :goto_a

    :cond_b
    move v0, v2

    .line 67
    goto/16 :goto_b

    :cond_c
    move v0, v2

    .line 71
    goto/16 :goto_c

    :cond_d
    move v0, v2

    .line 75
    goto/16 :goto_d

    :cond_e
    move v0, v2

    .line 79
    goto/16 :goto_e

    :cond_f
    move v0, v2

    .line 83
    goto/16 :goto_f

    :cond_10
    move v0, v2

    .line 87
    goto/16 :goto_10

    :cond_11
    move v0, v2

    .line 91
    goto/16 :goto_11

    :cond_12
    move v0, v2

    .line 95
    goto/16 :goto_12

    :cond_13
    move v0, v2

    .line 99
    goto/16 :goto_13

    :cond_14
    move v0, v2

    .line 103
    goto/16 :goto_14

    :cond_15
    move v0, v2

    .line 107
    goto/16 :goto_15

    :cond_16
    move v0, v2

    .line 111
    goto/16 :goto_16

    :cond_17
    move v0, v2

    .line 115
    goto/16 :goto_17

    :cond_18
    move v0, v2

    .line 119
    goto/16 :goto_18

    :cond_19
    move v0, v2

    .line 123
    goto/16 :goto_19

    :cond_1a
    move v0, v2

    .line 127
    goto/16 :goto_1a

    :cond_1b
    move v0, v2

    .line 131
    goto/16 :goto_1b

    :cond_1c
    move v0, v2

    .line 135
    goto/16 :goto_1c

    :cond_1d
    move v0, v2

    .line 139
    goto/16 :goto_1d

    :cond_1e
    move v0, v2

    .line 143
    goto/16 :goto_1e

    :cond_1f
    move v0, v2

    .line 147
    goto/16 :goto_1f

    :cond_20
    move v0, v2

    .line 151
    goto/16 :goto_20

    :cond_21
    move v0, v2

    .line 155
    goto/16 :goto_21

    :cond_22
    move v0, v2

    .line 159
    goto/16 :goto_22

    :cond_23
    move v0, v2

    .line 163
    goto/16 :goto_23

    :cond_24
    move v0, v2

    .line 167
    goto/16 :goto_24

    :cond_25
    move v0, v2

    .line 171
    goto/16 :goto_25

    :cond_26
    move v0, v2

    .line 175
    goto/16 :goto_26

    :cond_27
    move v0, v2

    .line 179
    goto/16 :goto_27

    :cond_28
    move v0, v2

    .line 183
    goto/16 :goto_28

    :cond_29
    move v0, v2

    .line 187
    goto/16 :goto_29

    :cond_2a
    move v0, v2

    .line 191
    goto/16 :goto_2a

    :cond_2b
    move v0, v2

    .line 195
    goto/16 :goto_2b

    :cond_2c
    move v0, v2

    .line 199
    goto/16 :goto_2c

    :cond_2d
    move v0, v2

    .line 203
    goto/16 :goto_2d

    :cond_2e
    move v0, v2

    .line 207
    goto/16 :goto_2e

    :cond_2f
    move v0, v2

    .line 211
    goto/16 :goto_2f

    :cond_30
    move v0, v2

    .line 215
    goto/16 :goto_30

    :cond_31
    move v0, v2

    .line 219
    goto/16 :goto_31

    :cond_32
    move v0, v2

    .line 223
    goto/16 :goto_32

    :cond_33
    move v0, v2

    .line 227
    goto/16 :goto_33

    :cond_34
    move v0, v2

    .line 231
    goto/16 :goto_34

    :cond_35
    move v0, v2

    .line 235
    goto/16 :goto_35

    :cond_36
    move v0, v2

    .line 239
    goto/16 :goto_36

    :cond_37
    move v0, v2

    .line 243
    goto/16 :goto_37

    :cond_38
    move v0, v2

    .line 247
    goto/16 :goto_38

    :cond_39
    move v0, v2

    .line 251
    goto/16 :goto_39

    :cond_3a
    move v0, v2

    .line 255
    goto/16 :goto_3a

    :cond_3b
    move v0, v2

    .line 259
    goto/16 :goto_3b

    :cond_3c
    move v0, v2

    .line 263
    goto/16 :goto_3c

    :cond_3d
    move v0, v2

    .line 267
    goto/16 :goto_3d

    :cond_3e
    move v0, v2

    .line 271
    goto/16 :goto_3e

    :cond_3f
    move v0, v2

    .line 275
    goto/16 :goto_3f

    :cond_40
    move v0, v2

    .line 279
    goto/16 :goto_40

    :cond_41
    move v0, v2

    .line 288
    goto/16 :goto_41

    :cond_42
    move v0, v2

    .line 292
    goto/16 :goto_42

    :cond_43
    move v0, v2

    .line 296
    goto/16 :goto_43

    :cond_44
    move v0, v2

    .line 300
    goto/16 :goto_44

    :cond_45
    move v0, v2

    .line 304
    goto/16 :goto_45

    :cond_46
    move v0, v2

    .line 308
    goto/16 :goto_46

    :cond_47
    move v0, v2

    .line 312
    goto/16 :goto_47

    :cond_48
    move v0, v2

    .line 316
    goto/16 :goto_48

    :cond_49
    move v0, v2

    .line 320
    goto/16 :goto_49

    :cond_4a
    move v0, v2

    .line 324
    goto/16 :goto_4a

    :cond_4b
    move v0, v2

    .line 328
    goto/16 :goto_4b

    :cond_4c
    move v0, v2

    .line 332
    goto/16 :goto_4c

    :cond_4d
    move v0, v2

    .line 336
    goto/16 :goto_4d

    :cond_4e
    move v0, v2

    .line 340
    goto/16 :goto_4e

    :cond_4f
    move v0, v2

    .line 344
    goto/16 :goto_4f

    :cond_50
    move v0, v2

    .line 348
    goto/16 :goto_50

    :cond_51
    move v0, v2

    .line 352
    goto/16 :goto_51

    :cond_52
    move v0, v2

    .line 356
    goto/16 :goto_52

    :cond_53
    move v0, v2

    .line 360
    goto/16 :goto_53

    :cond_54
    move v0, v2

    .line 364
    goto/16 :goto_54

    :cond_55
    move v0, v2

    .line 368
    goto/16 :goto_55

    :cond_56
    move v0, v2

    .line 372
    goto/16 :goto_56

    :cond_57
    move v0, v2

    .line 376
    goto/16 :goto_57

    :cond_58
    move v0, v2

    .line 380
    goto/16 :goto_58

    :cond_59
    move v0, v2

    .line 384
    goto/16 :goto_59

    :cond_5a
    move v0, v2

    .line 388
    goto/16 :goto_5a

    :cond_5b
    move v0, v2

    .line 392
    goto/16 :goto_5b

    :cond_5c
    move v0, v2

    .line 396
    goto/16 :goto_5c

    :cond_5d
    move v0, v2

    .line 400
    goto/16 :goto_5d

    :cond_5e
    move v0, v2

    .line 404
    goto/16 :goto_5e

    :cond_5f
    move v0, v2

    .line 408
    goto/16 :goto_5f

    :cond_60
    move v0, v2

    .line 412
    goto/16 :goto_60

    :cond_61
    move v0, v2

    .line 416
    goto/16 :goto_61

    :cond_62
    move v0, v2

    .line 420
    goto/16 :goto_62

    :cond_63
    move v1, v2

    .line 425
    goto/16 :goto_63
.end method
