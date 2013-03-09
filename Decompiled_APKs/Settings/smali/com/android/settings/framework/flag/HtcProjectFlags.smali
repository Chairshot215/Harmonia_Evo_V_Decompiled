.class public interface abstract Lcom/android/settings/framework/flag/HtcProjectFlags;
.super Ljava/lang/Object;
.source "HtcProjectFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/flag/HtcProjectFlags$Info;
    }
.end annotation


# static fields
.field public static final CURRENT_PROJECT_FLAG:S

.field public static final isA0001:Z

.field public static final isA0002:Z

.field public static final isA0003:Z

.field public static final isA0004:Z

.field public static final isA0005:Z

.field public static final isA0006:Z

.field public static final isA0007:Z

.field public static final isA0009:Z

.field public static final isB0001:Z

.field public static final isB0002:Z

.field public static final isB0003:Z

.field public static final isB0004:Z

.field public static final isB0005:Z

.field public static final isC0001:Z

.field public static final isC0002:Z

.field public static final isC0003:Z

.field public static final isC0004:Z

.field public static final isC0005:Z

.field public static final isC0006:Z

.field public static final isC0007:Z

.field public static final isC0008:Z

.field public static final isC0009:Z

.field public static final isC0010:Z

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

.field public static final isK0002:Z

.field public static final isL0001:Z

.field public static final isM0001:Z

.field public static final isM0002:Z

.field public static final isM0003:Z

.field public static final isM0004:Z

.field public static final isM0005:Z

.field public static final isM0006:Z

.field public static final isM0007:Z

.field public static final isN0001:Z

.field public static final isN0002:Z

.field public static final isO0001:Z

.field public static final isO0002:Z

.field public static final isO0003:Z

.field public static final isO0004:Z

.field public static final isO0005:Z

.field public static final isP0001:Z

.field public static final isP0002:Z

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

.field public static final isT0011:Z

.field public static final isT0012:Z

.field public static final isT0013:Z

.field public static final isU0001:Z

.field public static final isU0002:Z

.field public static final isU0003:Z

.field public static final isV0001:Z

.field public static final isV0002:Z

.field public static final isV0003:Z

.field public static final isV0004:Z

.field public static final isV0005:Z

.field public static final isV0008:Z

.field public static final isY0001:Z

.field public static final isZ0001:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x9b

    const/16 v5, 0x10

    const/16 v4, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 23
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_PROJECT_flag()S

    move-result v0

    sput-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    .line 26
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0001:Z

    .line 30
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0002:Z

    .line 34
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0003:Z

    .line 38
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0004:Z

    .line 42
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0005:Z

    .line 46
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0006:Z

    .line 50
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/4 v3, 0x6

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0007:Z

    .line 54
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xe1

    if-ne v0, v3, :cond_7

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0009:Z

    .line 58
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x8

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isB0001:Z

    .line 62
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x9

    if-ne v0, v3, :cond_9

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isB0002:Z

    .line 66
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    if-ne v0, v4, :cond_a

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isB0003:Z

    .line 70
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    if-ne v0, v4, :cond_b

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isB0004:Z

    .line 74
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xc

    if-ne v0, v3, :cond_c

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isB0005:Z

    .line 78
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    if-ne v0, v5, :cond_d

    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isC0001:Z

    .line 82
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    if-ne v0, v5, :cond_e

    move v0, v1

    :goto_e
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isC0002:Z

    .line 86
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x12

    if-ne v0, v3, :cond_f

    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isC0003:Z

    .line 90
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x13

    if-ne v0, v3, :cond_10

    move v0, v1

    :goto_10
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isC0004:Z

    .line 94
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x14

    if-ne v0, v3, :cond_11

    move v0, v1

    :goto_11
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isC0005:Z

    .line 98
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x15

    if-ne v0, v3, :cond_12

    move v0, v1

    :goto_12
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isC0006:Z

    .line 102
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x16

    if-ne v0, v3, :cond_13

    move v0, v1

    :goto_13
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isC0007:Z

    .line 106
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x17

    if-ne v0, v3, :cond_14

    move v0, v1

    :goto_14
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isC0008:Z

    .line 110
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xd8

    if-ne v0, v3, :cond_15

    move v0, v1

    :goto_15
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isC0009:Z

    .line 114
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xda

    if-ne v0, v3, :cond_16

    move v0, v1

    :goto_16
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isC0010:Z

    .line 118
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x18

    if-ne v0, v3, :cond_17

    move v0, v1

    :goto_17
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isD0001:Z

    .line 122
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x19

    if-ne v0, v3, :cond_18

    move v0, v1

    :goto_18
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isD0002:Z

    .line 126
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_19

    move v0, v1

    :goto_19
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isD0003:Z

    .line 130
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_1a

    move v0, v1

    :goto_1a
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isD0004:Z

    .line 134
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x1c

    if-ne v0, v3, :cond_1b

    move v0, v1

    :goto_1b
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isD0005:Z

    .line 138
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1c

    move v0, v1

    :goto_1c
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isE0001:Z

    .line 142
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x21

    if-ne v0, v3, :cond_1d

    move v0, v1

    :goto_1d
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isE0002:Z

    .line 146
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x22

    if-ne v0, v3, :cond_1e

    move v0, v1

    :goto_1e
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isE0003:Z

    .line 150
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x23

    if-ne v0, v3, :cond_1f

    move v0, v1

    :goto_1f
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isE0004:Z

    .line 154
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x24

    if-ne v0, v3, :cond_20

    move v0, v1

    :goto_20
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isE0005:Z

    .line 158
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x25

    if-ne v0, v3, :cond_21

    move v0, v1

    :goto_21
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isE0006:Z

    .line 162
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x28

    if-ne v0, v3, :cond_22

    move v0, v1

    :goto_22
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isF0001:Z

    .line 166
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x30

    if-ne v0, v3, :cond_23

    move v0, v1

    :goto_23
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isG0001:Z

    .line 170
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x31

    if-ne v0, v3, :cond_24

    move v0, v1

    :goto_24
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isG0002:Z

    .line 174
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x32

    if-ne v0, v3, :cond_25

    move v0, v1

    :goto_25
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isG0003:Z

    .line 178
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x33

    if-ne v0, v3, :cond_26

    move v0, v1

    :goto_26
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isG0004:Z

    .line 182
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x34

    if-ne v0, v3, :cond_27

    move v0, v1

    :goto_27
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isG0005:Z

    .line 186
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x35

    if-ne v0, v3, :cond_28

    move v0, v1

    :goto_28
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isG0006:Z

    .line 190
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x36

    if-ne v0, v3, :cond_29

    move v0, v1

    :goto_29
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isG0007:Z

    .line 194
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x38

    if-ne v0, v3, :cond_2a

    move v0, v1

    :goto_2a
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isH0001:Z

    .line 198
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x40

    if-ne v0, v3, :cond_2b

    move v0, v1

    :goto_2b
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isI0001:Z

    .line 202
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x50

    if-ne v0, v3, :cond_2c

    move v0, v1

    :goto_2c
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isK0001:Z

    .line 206
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x51

    if-ne v0, v3, :cond_2d

    move v0, v1

    :goto_2d
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isK0002:Z

    .line 210
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x58

    if-ne v0, v3, :cond_2e

    move v0, v1

    :goto_2e
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isL0001:Z

    .line 214
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x60

    if-ne v0, v3, :cond_2f

    move v0, v1

    :goto_2f
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isM0001:Z

    .line 218
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x61

    if-ne v0, v3, :cond_30

    move v0, v1

    :goto_30
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isM0002:Z

    .line 222
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x62

    if-ne v0, v3, :cond_31

    move v0, v1

    :goto_31
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isM0003:Z

    .line 226
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x63

    if-ne v0, v3, :cond_32

    move v0, v1

    :goto_32
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isM0004:Z

    .line 230
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x64

    if-ne v0, v3, :cond_33

    move v0, v1

    :goto_33
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isM0005:Z

    .line 234
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x65

    if-ne v0, v3, :cond_34

    move v0, v1

    :goto_34
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isM0006:Z

    .line 238
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x66

    if-ne v0, v3, :cond_35

    move v0, v1

    :goto_35
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isM0007:Z

    .line 242
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x68

    if-ne v0, v3, :cond_36

    move v0, v1

    :goto_36
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isN0001:Z

    .line 246
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x69

    if-ne v0, v3, :cond_37

    move v0, v1

    :goto_37
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isN0002:Z

    .line 250
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x70

    if-ne v0, v3, :cond_38

    move v0, v1

    :goto_38
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isO0001:Z

    .line 254
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x71

    if-ne v0, v3, :cond_39

    move v0, v1

    :goto_39
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isO0002:Z

    .line 258
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x72

    if-ne v0, v3, :cond_3a

    move v0, v1

    :goto_3a
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isO0003:Z

    .line 262
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x73

    if-ne v0, v3, :cond_3b

    move v0, v1

    :goto_3b
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isO0004:Z

    .line 266
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x74

    if-ne v0, v3, :cond_3c

    move v0, v1

    :goto_3c
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isO0005:Z

    .line 270
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x78

    if-ne v0, v3, :cond_3d

    move v0, v1

    :goto_3d
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isP0001:Z

    .line 274
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x79

    if-ne v0, v3, :cond_3e

    move v0, v1

    :goto_3e
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isP0002:Z

    .line 278
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x80

    if-ne v0, v3, :cond_3f

    move v0, v1

    :goto_3f
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isQ0001:Z

    .line 282
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x88

    if-ne v0, v3, :cond_40

    move v0, v1

    :goto_40
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isR0001:Z

    .line 286
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x90

    if-ne v0, v3, :cond_41

    move v0, v1

    :goto_41
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isS0001:Z

    .line 290
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x91

    if-ne v0, v3, :cond_42

    move v0, v1

    :goto_42
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isS0002:Z

    .line 294
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x92

    if-ne v0, v3, :cond_43

    move v0, v1

    :goto_43
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isS0003:Z

    .line 298
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x93

    if-ne v0, v3, :cond_44

    move v0, v1

    :goto_44
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isS0004:Z

    .line 302
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x94

    if-ne v0, v3, :cond_45

    move v0, v1

    :goto_45
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isS0005:Z

    .line 306
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x95

    if-ne v0, v3, :cond_46

    move v0, v1

    :goto_46
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isS0006:Z

    .line 310
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x96

    if-ne v0, v3, :cond_47

    move v0, v1

    :goto_47
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isS0007:Z

    .line 314
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x97

    if-ne v0, v3, :cond_48

    move v0, v1

    :goto_48
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isS0008:Z

    .line 318
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xd1

    if-ne v0, v3, :cond_49

    move v0, v1

    :goto_49
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isS0009:Z

    .line 322
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xd2

    if-ne v0, v3, :cond_4a

    move v0, v1

    :goto_4a
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isS0010:Z

    .line 326
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xd3

    if-ne v0, v3, :cond_4b

    move v0, v1

    :goto_4b
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isS0011:Z

    .line 330
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xd4

    if-ne v0, v3, :cond_4c

    move v0, v1

    :goto_4c
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isS0012:Z

    .line 334
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x98

    if-ne v0, v3, :cond_4d

    move v0, v1

    :goto_4d
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isT0001:Z

    .line 338
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x99

    if-ne v0, v3, :cond_4e

    move v0, v1

    :goto_4e
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isT0002:Z

    .line 342
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x9a

    if-ne v0, v3, :cond_4f

    move v0, v1

    :goto_4f
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isT0003:Z

    .line 346
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    if-ne v0, v6, :cond_50

    move v0, v1

    :goto_50
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isT0004:Z

    .line 350
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    if-ne v0, v6, :cond_51

    move v0, v1

    :goto_51
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isT0005:Z

    .line 354
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x9d

    if-ne v0, v3, :cond_52

    move v0, v1

    :goto_52
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isT0006:Z

    .line 358
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x9e

    if-ne v0, v3, :cond_53

    move v0, v1

    :goto_53
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isT0007:Z

    .line 362
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0x9f

    if-ne v0, v3, :cond_54

    move v0, v1

    :goto_54
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isT0008:Z

    .line 366
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xd0

    if-ne v0, v3, :cond_55

    move v0, v1

    :goto_55
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isT0009:Z

    .line 370
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xd5

    if-ne v0, v3, :cond_56

    move v0, v1

    :goto_56
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isT0010:Z

    .line 374
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xd6

    if-ne v0, v3, :cond_57

    move v0, v1

    :goto_57
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isT0011:Z

    .line 378
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xd7

    if-ne v0, v3, :cond_58

    move v0, v1

    :goto_58
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isT0012:Z

    .line 382
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xd9

    if-ne v0, v3, :cond_59

    move v0, v1

    :goto_59
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isT0013:Z

    .line 386
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xa0

    if-ne v0, v3, :cond_5a

    move v0, v1

    :goto_5a
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isU0001:Z

    .line 390
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xa1

    if-ne v0, v3, :cond_5b

    move v0, v1

    :goto_5b
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isU0002:Z

    .line 394
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xa2

    if-ne v0, v3, :cond_5c

    move v0, v1

    :goto_5c
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isU0003:Z

    .line 398
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_5d

    move v0, v1

    :goto_5d
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isV0001:Z

    .line 402
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xa9

    if-ne v0, v3, :cond_5e

    move v0, v1

    :goto_5e
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isV0002:Z

    .line 406
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xaa

    if-ne v0, v3, :cond_5f

    move v0, v1

    :goto_5f
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isV0003:Z

    .line 410
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xab

    if-ne v0, v3, :cond_60

    move v0, v1

    :goto_60
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isV0004:Z

    .line 414
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xaf

    if-ne v0, v3, :cond_61

    move v0, v1

    :goto_61
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isV0008:Z

    .line 423
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xac

    if-ne v0, v3, :cond_62

    move v0, v1

    :goto_62
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isV0005:Z

    .line 427
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_63

    move v0, v1

    :goto_63
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isY0001:Z

    .line 431
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_64

    :goto_64
    sput-boolean v1, Lcom/android/settings/framework/flag/HtcProjectFlags;->isZ0001:Z

    return-void

    :cond_0
    move v0, v2

    .line 26
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 30
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 34
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 38
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 42
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 46
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 50
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 54
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 58
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 62
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 66
    goto/16 :goto_a

    :cond_b
    move v0, v2

    .line 70
    goto/16 :goto_b

    :cond_c
    move v0, v2

    .line 74
    goto/16 :goto_c

    :cond_d
    move v0, v2

    .line 78
    goto/16 :goto_d

    :cond_e
    move v0, v2

    .line 82
    goto/16 :goto_e

    :cond_f
    move v0, v2

    .line 86
    goto/16 :goto_f

    :cond_10
    move v0, v2

    .line 90
    goto/16 :goto_10

    :cond_11
    move v0, v2

    .line 94
    goto/16 :goto_11

    :cond_12
    move v0, v2

    .line 98
    goto/16 :goto_12

    :cond_13
    move v0, v2

    .line 102
    goto/16 :goto_13

    :cond_14
    move v0, v2

    .line 106
    goto/16 :goto_14

    :cond_15
    move v0, v2

    .line 110
    goto/16 :goto_15

    :cond_16
    move v0, v2

    .line 114
    goto/16 :goto_16

    :cond_17
    move v0, v2

    .line 118
    goto/16 :goto_17

    :cond_18
    move v0, v2

    .line 122
    goto/16 :goto_18

    :cond_19
    move v0, v2

    .line 126
    goto/16 :goto_19

    :cond_1a
    move v0, v2

    .line 130
    goto/16 :goto_1a

    :cond_1b
    move v0, v2

    .line 134
    goto/16 :goto_1b

    :cond_1c
    move v0, v2

    .line 138
    goto/16 :goto_1c

    :cond_1d
    move v0, v2

    .line 142
    goto/16 :goto_1d

    :cond_1e
    move v0, v2

    .line 146
    goto/16 :goto_1e

    :cond_1f
    move v0, v2

    .line 150
    goto/16 :goto_1f

    :cond_20
    move v0, v2

    .line 154
    goto/16 :goto_20

    :cond_21
    move v0, v2

    .line 158
    goto/16 :goto_21

    :cond_22
    move v0, v2

    .line 162
    goto/16 :goto_22

    :cond_23
    move v0, v2

    .line 166
    goto/16 :goto_23

    :cond_24
    move v0, v2

    .line 170
    goto/16 :goto_24

    :cond_25
    move v0, v2

    .line 174
    goto/16 :goto_25

    :cond_26
    move v0, v2

    .line 178
    goto/16 :goto_26

    :cond_27
    move v0, v2

    .line 182
    goto/16 :goto_27

    :cond_28
    move v0, v2

    .line 186
    goto/16 :goto_28

    :cond_29
    move v0, v2

    .line 190
    goto/16 :goto_29

    :cond_2a
    move v0, v2

    .line 194
    goto/16 :goto_2a

    :cond_2b
    move v0, v2

    .line 198
    goto/16 :goto_2b

    :cond_2c
    move v0, v2

    .line 202
    goto/16 :goto_2c

    :cond_2d
    move v0, v2

    .line 206
    goto/16 :goto_2d

    :cond_2e
    move v0, v2

    .line 210
    goto/16 :goto_2e

    :cond_2f
    move v0, v2

    .line 214
    goto/16 :goto_2f

    :cond_30
    move v0, v2

    .line 218
    goto/16 :goto_30

    :cond_31
    move v0, v2

    .line 222
    goto/16 :goto_31

    :cond_32
    move v0, v2

    .line 226
    goto/16 :goto_32

    :cond_33
    move v0, v2

    .line 230
    goto/16 :goto_33

    :cond_34
    move v0, v2

    .line 234
    goto/16 :goto_34

    :cond_35
    move v0, v2

    .line 238
    goto/16 :goto_35

    :cond_36
    move v0, v2

    .line 242
    goto/16 :goto_36

    :cond_37
    move v0, v2

    .line 246
    goto/16 :goto_37

    :cond_38
    move v0, v2

    .line 250
    goto/16 :goto_38

    :cond_39
    move v0, v2

    .line 254
    goto/16 :goto_39

    :cond_3a
    move v0, v2

    .line 258
    goto/16 :goto_3a

    :cond_3b
    move v0, v2

    .line 262
    goto/16 :goto_3b

    :cond_3c
    move v0, v2

    .line 266
    goto/16 :goto_3c

    :cond_3d
    move v0, v2

    .line 270
    goto/16 :goto_3d

    :cond_3e
    move v0, v2

    .line 274
    goto/16 :goto_3e

    :cond_3f
    move v0, v2

    .line 278
    goto/16 :goto_3f

    :cond_40
    move v0, v2

    .line 282
    goto/16 :goto_40

    :cond_41
    move v0, v2

    .line 286
    goto/16 :goto_41

    :cond_42
    move v0, v2

    .line 290
    goto/16 :goto_42

    :cond_43
    move v0, v2

    .line 294
    goto/16 :goto_43

    :cond_44
    move v0, v2

    .line 298
    goto/16 :goto_44

    :cond_45
    move v0, v2

    .line 302
    goto/16 :goto_45

    :cond_46
    move v0, v2

    .line 306
    goto/16 :goto_46

    :cond_47
    move v0, v2

    .line 310
    goto/16 :goto_47

    :cond_48
    move v0, v2

    .line 314
    goto/16 :goto_48

    :cond_49
    move v0, v2

    .line 318
    goto/16 :goto_49

    :cond_4a
    move v0, v2

    .line 322
    goto/16 :goto_4a

    :cond_4b
    move v0, v2

    .line 326
    goto/16 :goto_4b

    :cond_4c
    move v0, v2

    .line 330
    goto/16 :goto_4c

    :cond_4d
    move v0, v2

    .line 334
    goto/16 :goto_4d

    :cond_4e
    move v0, v2

    .line 338
    goto/16 :goto_4e

    :cond_4f
    move v0, v2

    .line 342
    goto/16 :goto_4f

    :cond_50
    move v0, v2

    .line 346
    goto/16 :goto_50

    :cond_51
    move v0, v2

    .line 350
    goto/16 :goto_51

    :cond_52
    move v0, v2

    .line 354
    goto/16 :goto_52

    :cond_53
    move v0, v2

    .line 358
    goto/16 :goto_53

    :cond_54
    move v0, v2

    .line 362
    goto/16 :goto_54

    :cond_55
    move v0, v2

    .line 366
    goto/16 :goto_55

    :cond_56
    move v0, v2

    .line 370
    goto/16 :goto_56

    :cond_57
    move v0, v2

    .line 374
    goto/16 :goto_57

    :cond_58
    move v0, v2

    .line 378
    goto/16 :goto_58

    :cond_59
    move v0, v2

    .line 382
    goto/16 :goto_59

    :cond_5a
    move v0, v2

    .line 386
    goto/16 :goto_5a

    :cond_5b
    move v0, v2

    .line 390
    goto/16 :goto_5b

    :cond_5c
    move v0, v2

    .line 394
    goto/16 :goto_5c

    :cond_5d
    move v0, v2

    .line 398
    goto/16 :goto_5d

    :cond_5e
    move v0, v2

    .line 402
    goto/16 :goto_5e

    :cond_5f
    move v0, v2

    .line 406
    goto/16 :goto_5f

    :cond_60
    move v0, v2

    .line 410
    goto/16 :goto_60

    :cond_61
    move v0, v2

    .line 414
    goto/16 :goto_61

    :cond_62
    move v0, v2

    .line 423
    goto/16 :goto_62

    :cond_63
    move v0, v2

    .line 427
    goto/16 :goto_63

    :cond_64
    move v1, v2

    .line 431
    goto/16 :goto_64
.end method
