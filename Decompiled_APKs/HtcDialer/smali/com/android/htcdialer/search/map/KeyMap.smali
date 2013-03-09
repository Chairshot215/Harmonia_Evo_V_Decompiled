.class public Lcom/android/htcdialer/search/map/KeyMap;
.super Ljava/lang/Object;
.source "KeyMap.java"


# static fields
.field public static final HW_KEY_MAP:Landroid/view/KeyCharacterMap; = null

.field public static final HW_KEY_TO_IDX:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final IDX_HW_KEY_0:I = 0xf

.field public static final IDX_HW_KEY_1:I = 0x10

.field public static final IDX_HW_KEY_2:I = 0x11

.field public static final IDX_HW_KEY_3:I = 0x12

.field public static final IDX_HW_KEY_4:I = 0x13

.field public static final IDX_HW_KEY_5:I = 0x14

.field public static final IDX_HW_KEY_6:I = 0x15

.field public static final IDX_HW_KEY_7:I = 0x16

.field public static final IDX_HW_KEY_8:I = 0x17

.field public static final IDX_HW_KEY_9:I = 0x18

.field public static final IDX_HW_KEY_A:I = 0x19

.field public static final IDX_HW_KEY_AT:I = 0x33

.field public static final IDX_HW_KEY_B:I = 0x1a

.field public static final IDX_HW_KEY_C:I = 0x1b

.field public static final IDX_HW_KEY_COMMA:I = 0x37

.field public static final IDX_HW_KEY_D:I = 0x1c

.field public static final IDX_HW_KEY_E:I = 0x1d

.field public static final IDX_HW_KEY_END:I = 0x3b

.field public static final IDX_HW_KEY_F:I = 0x1e

.field public static final IDX_HW_KEY_FUNC_1:I = 0x3a

.field public static final IDX_HW_KEY_G:I = 0x1f

.field public static final IDX_HW_KEY_H:I = 0x20

.field public static final IDX_HW_KEY_I:I = 0x21

.field public static final IDX_HW_KEY_J:I = 0x22

.field public static final IDX_HW_KEY_K:I = 0x23

.field public static final IDX_HW_KEY_L:I = 0x24

.field public static final IDX_HW_KEY_M:I = 0x25

.field public static final IDX_HW_KEY_N:I = 0x26

.field public static final IDX_HW_KEY_O:I = 0x27

.field public static final IDX_HW_KEY_P:I = 0x28

.field public static final IDX_HW_KEY_PLUS:I = 0x36

.field public static final IDX_HW_KEY_POUND:I = 0x35

.field public static final IDX_HW_KEY_Q:I = 0x29

.field public static final IDX_HW_KEY_R:I = 0x2a

.field public static final IDX_HW_KEY_S:I = 0x2b

.field public static final IDX_HW_KEY_STAR:I = 0x34

.field public static final IDX_HW_KEY_SYM:I = 0x39

.field public static final IDX_HW_KEY_T:I = 0x2c

.field public static final IDX_HW_KEY_TAB:I = 0x38

.field public static final IDX_HW_KEY_U:I = 0x2d

.field public static final IDX_HW_KEY_V:I = 0x2e

.field public static final IDX_HW_KEY_W:I = 0x2f

.field public static final IDX_HW_KEY_X:I = 0x30

.field public static final IDX_HW_KEY_Y:I = 0x31

.field public static final IDX_HW_KEY_Z:I = 0x32

.field public static final IDX_SW_KEY_0:I = 0x0

.field public static final IDX_SW_KEY_1:I = 0x1

.field public static final IDX_SW_KEY_2:I = 0x2

.field public static final IDX_SW_KEY_3:I = 0x3

.field public static final IDX_SW_KEY_4:I = 0x4

.field public static final IDX_SW_KEY_5:I = 0x5

.field public static final IDX_SW_KEY_6:I = 0x6

.field public static final IDX_SW_KEY_7:I = 0x7

.field public static final IDX_SW_KEY_8:I = 0x8

.field public static final IDX_SW_KEY_9:I = 0x9

.field public static final IDX_SW_KEY_PLUS:I = 0xc

.field public static final IDX_SW_KEY_POUND:I = 0xb

.field public static final IDX_SW_KEY_STAR:I = 0xa

.field public static final IDX_SW_KEY_STAR_P:I = 0xd

.field public static final IDX_SW_KEY_STAR_W:I = 0xe


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x1d

    const/16 v6, 0x12

    const/16 v5, 0x11

    const/16 v4, 0x10

    const/16 v3, 0xf

    .line 11
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_MAP:Landroid/view/KeyCharacterMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    .line 81
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    const/16 v1, 0xd8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyIndex(I)I
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 128
    sget-object v0, Lcom/android/htcdialer/search/SmartKeyIndex;->SW_KEY_0:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v0}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v0

    if-gt v0, p0, :cond_0

    sget-object v0, Lcom/android/htcdialer/search/SmartKeyIndex;->SW_KEY_STAR_W:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v0}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v0

    if-gt p0, v0, :cond_0

    .line 149
    .end local p0
    :goto_0
    return p0

    .line 131
    .restart local p0
    :cond_0
    sget-object v0, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_0:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v0}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v0

    if-gt v0, p0, :cond_1

    sget-object v0, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_Z:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v0}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v0

    if-gt p0, v0, :cond_1

    .line 133
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 134
    :cond_1
    sget-object v0, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_A_Espresso:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v0}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v0

    if-gt v0, p0, :cond_2

    sget-object v0, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_Z_Espresso:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v0}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v0

    if-gt p0, v0, :cond_2

    .line 136
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    add-int/lit8 v1, p0, -0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 137
    :cond_2
    sget-object v0, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_A_ChaCha:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v0}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v0

    if-gt v0, p0, :cond_3

    sget-object v0, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_Z_ChaCha:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v0}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v0

    if-gt p0, v0, :cond_3

    .line 139
    sget-object v0, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_TO_IDX:Ljava/util/HashMap;

    add-int/lit8 v1, p0, -0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 140
    :cond_3
    sget-object v0, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_AT:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v0}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_4

    .line 141
    const/16 p0, 0x33

    goto :goto_0

    .line 142
    :cond_4
    sget-object v0, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_FUNC_1_ChaCha:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v0}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_5

    .line 143
    const/16 p0, 0x3a

    goto :goto_0

    .line 144
    :cond_5
    sget-object v0, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_TAB_ChaCha:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v0}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_6

    .line 145
    const/16 p0, 0x38

    goto/16 :goto_0

    .line 146
    :cond_6
    sget-object v0, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_COMMA_ChaCha:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v0}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_7

    .line 147
    const/16 p0, 0x37

    goto/16 :goto_0

    .line 149
    :cond_7
    const/16 p0, 0x3b

    goto/16 :goto_0
.end method
