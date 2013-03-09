.class public Lcom/htc/android/htcime/util/SIPSwitcherData;
.super Ljava/lang/Object;
.source "SIPSwitcherData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;
    }
.end annotation


# static fields
.field public static final CID_DEF_LANG_MAPPING:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CID_LANG_MAPPING:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static CID_ZH_SUK_LIST:[Ljava/lang/String; = null

.field static final DEBUG:Z = true

.field public static final EIME_LANG_MAP:[I = null

.field public static final EIME_LANG_MAPPING:Ljava/util/HashMap; = null
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

.field public static final EIME_LANG_MAP_T:[[I = null

.field public static final IME_INPUTMETHOD_MAP:Ljava/util/HashMap; = null
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

.field public static final IME_INPUTMETHOD_MAP_LAND:Ljava/util/HashMap; = null
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

.field static final INFO:Z = false

.field public static final LATINSET_IN_LATIN_MASK:I = -0x1020041

.field public static LATIN_LANG_STRING:[Ljava/lang/String; = null

.field public static final LATIN_SIP_MASK:I = 0x1

.field public static Language_Change:Z = false

.field public static LocaleMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NON_LATIN_SIP_MASK:I = 0x3e

.field public static final SHIFT_CANGJIE_MAX:I = 0x2

.field public static final SHIFT_CANGJIE_NORMAL:I = 0x0

.field public static final SHIFT_CANGJIE_SIMPLIFIED:I = 0x1

.field public static final SHIFT_EIME_LANG_ARABIC:I = 0xe

.field public static final SHIFT_EIME_LANG_BULGARIAN:I = 0x18

.field public static final SHIFT_EIME_LANG_CROATIAN:I = 0x17

.field public static final SHIFT_EIME_LANG_CZECH:I = 0x7

.field public static final SHIFT_EIME_LANG_DANISH:I = 0x8

.field public static final SHIFT_EIME_LANG_DUTCH:I = 0xb

.field public static final SHIFT_EIME_LANG_ENGLISH:I = 0x0

.field public static final SHIFT_EIME_LANG_ESTONIAN:I = 0x19

.field public static final SHIFT_EIME_LANG_FINNISH:I = 0xc

.field public static final SHIFT_EIME_LANG_FRENCH:I = 0x1

.field public static final SHIFT_EIME_LANG_FRENCH_CANADA:I = 0x14

.field public static final SHIFT_EIME_LANG_GERMAN:I = 0x2

.field public static final SHIFT_EIME_LANG_GREEK:I = 0x11

.field public static final SHIFT_EIME_LANG_HUNGARIAN:I = 0x12

.field public static final SHIFT_EIME_LANG_ITALIAN:I = 0x3

.field public static final SHIFT_EIME_LANG_LATVIAN:I = 0x1a

.field public static final SHIFT_EIME_LANG_LITHUANIAN:I = 0x1b

.field public static final SHIFT_EIME_LANG_MAX:I = 0x1c

.field public static final SHIFT_EIME_LANG_NORWEGIAN:I = 0xa

.field public static final SHIFT_EIME_LANG_POLISH:I = 0xd

.field public static final SHIFT_EIME_LANG_PORTUGAL:I = 0x5

.field public static final SHIFT_EIME_LANG_ROMANIAN:I = 0x10

.field public static final SHIFT_EIME_LANG_RUSSIAN:I = 0x6

.field public static final SHIFT_EIME_LANG_SERBIAN:I = 0x16

.field public static final SHIFT_EIME_LANG_SLOVAK:I = 0x13

.field public static final SHIFT_EIME_LANG_SLOVENIAN:I = 0x15

.field public static final SHIFT_EIME_LANG_SPANISH:I = 0x4

.field public static final SHIFT_EIME_LANG_SWEDISH:I = 0x9

.field public static final SHIFT_EIME_LANG_TURKISH:I = 0xf

.field public static final SIP_MAPPING:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIP_SHIFT_CANGJIE:I = 0x3

.field public static final SIP_SHIFT_HANDWRITING:I = 0x1

.field public static final SIP_SHIFT_LATIN:I = 0x0

.field public static final SIP_SHIFT_MAX:I = 0x6

.field public static final SIP_SHIFT_PINYIN:I = 0x4

.field public static final SIP_SHIFT_STROKE:I = 0x5

.field public static final SIP_SHIFT_ZHUYIN:I = 0x2

.field public static final SIP_SWITCH_MASK:I = 0xffff

.field public static final SIP_TYPE_MASK:I = 0xf0000

.field public static final SIP_TYPE_SHIFT:I = 0x10

.field public static final SIP_TYPE_SHIFT_12KEY:I = 0x1

.field public static final SIP_TYPE_SHIFT_20KEY:I = 0x0

.field public static final SIP_TYPE_SHIFT_QWERTY:I = 0x2

.field public static final STATUS_ICON_MAP_LATIN:[[I

.field public static final STATUS_ICON_MAP_ZH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    .line 92
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x40001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x20001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x10001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x40002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x20002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x10002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x40004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x20004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x10004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x40010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x10010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x20010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x40008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x10008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x20008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x40020

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x10020

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x20020

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    const v1, 0x40020

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP_LAND:Ljava/util/HashMap;

    .line 135
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP_LAND:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP_LAND:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP_LAND:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP_LAND:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP_LAND:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP_LAND:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAP:[I

    .line 177
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LATIN_LANG_STRING:[Ljava/lang/String;

    .line 178
    sput-boolean v4, Lcom/htc/android/htcime/util/SIPSwitcherData;->Language_Change:Z

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    .line 182
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "en;*"

    const-string v2, "0;0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "fr;CA"

    const-string v2, "0;20"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "fr;*"

    const-string v2, "0;1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "de;*"

    const-string v2, "0;2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "it;*"

    const-string v2, "0;3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "es;*"

    const-string v2, "0;4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "pt;*"

    const-string v2, "0;5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "ru;*"

    const-string v2, "0;6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "cs;*"

    const-string v2, "0;7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "da;*"

    const-string v2, "0;8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "sv;*"

    const-string v2, "0;9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "nb;*"

    const-string v2, "0;10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "nl;*"

    const-string v2, "0;11"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "fi;*"

    const-string v2, "0;12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "pl;*"

    const-string v2, "0;13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "tr;*"

    const-string v2, "0;15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "ro;*"

    const-string v2, "0;16"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "el;*"

    const-string v2, "0;17"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "hu;*"

    const-string v2, "0;18"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "sk;*"

    const-string v2, "0;19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "zh;TW"

    const-string v2, "2;-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "zh;CN"

    const-string v2, "4;-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "zh;*"

    const-string v2, "2;-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "hr;*"

    const-string v2, "0;23"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "sl;*"

    const-string v2, "0;21"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "sr;*"

    const-string v2, "0;22"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "bg;*"

    const-string v2, "0;24"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "et;*"

    const-string v2, "0;25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "lv;*"

    const-string v2, "0;26"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    const-string v1, "lt;*"

    const-string v2, "0;27"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->CID_LANG_MAPPING:Ljava/util/HashMap;

    .line 225
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->CID_LANG_MAPPING:Ljava/util/HashMap;

    const-string v1, "00000000"

    const-string v2, "0-0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->CID_DEF_LANG_MAPPING:Ljava/util/HashMap;

    .line 240
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->CID_DEF_LANG_MAPPING:Ljava/util/HashMap;

    const-string v1, "00000000"

    const-string v2, "0-0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->SIP_MAPPING:Ljava/util/HashMap;

    .line 274
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->SIP_MAPPING:Ljava/util/HashMap;

    const-string v1, "English"

    const-string v2, "0;0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->SIP_MAPPING:Ljava/util/HashMap;

    const-string v1, "Handwriting"

    const-string v2, "1;-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->SIP_MAPPING:Ljava/util/HashMap;

    const-string v1, "PinYin"

    const-string v2, "4;-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->SIP_MAPPING:Ljava/util/HashMap;

    const-string v1, "ZuhYin"

    const-string v2, "2;-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    .line 282
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const/16 v0, 0x1c

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v7

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAP_T:[[I

    .line 345
    const/16 v0, 0x11

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_21

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_25

    aput-object v1, v0, v7

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->STATUS_ICON_MAP_LATIN:[[I

    .line 367
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2e

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2f

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_30

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_32

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->STATUS_ICON_MAP_ZH:[[I

    .line 375
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "11111111"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->CID_ZH_SUK_LIST:[Ljava/lang/String;

    return-void

    .line 143
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
    .end array-data

    .line 312
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0x13t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    :array_16
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0x17t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0x18t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    :array_1a
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    :array_1b
    .array-data 0x4
        0x1at 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data

    :array_1c
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
    .end array-data

    .line 345
    :array_1d
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x9t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1f
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x1t 0x2t 0x7ft
    .end array-data

    :array_20
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xbt 0x1t 0x2t 0x7ft
    .end array-data

    :array_21
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x7t 0x1t 0x2t 0x7ft
    .end array-data

    :array_22
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x2t 0x7ft
    .end array-data

    :array_23
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x2t 0x7ft
    .end array-data

    :array_24
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x1t 0x2t 0x7ft
    .end array-data

    :array_25
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x3t 0x1t 0x2t 0x7ft
    .end array-data

    :array_26
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x13t 0x1t 0x2t 0x7ft
    .end array-data

    :array_27
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xdt 0x1t 0x2t 0x7ft
    .end array-data

    :array_28
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x1t 0x2t 0x7ft
    .end array-data

    :array_29
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x8t 0x1t 0x2t 0x7ft
    .end array-data

    :array_2a
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x1t 0x2t 0x7ft
    .end array-data

    :array_2b
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x14t 0x1t 0x2t 0x7ft
    .end array-data

    :array_2c
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0x5t 0x1t 0x2t 0x7ft
    .end array-data

    :array_2d
    .array-data 0x4
        0x12t 0x0t 0x0t 0x0t
        0xat 0x1t 0x2t 0x7ft
    .end array-data

    .line 367
    :array_2e
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x16t 0x1t 0x2t 0x7ft
    .end array-data

    :array_2f
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x15t 0x1t 0x2t 0x7ft
    .end array-data

    :array_30
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x1t 0x2t 0x7ft
    .end array-data

    :array_31
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xft 0x1t 0x2t 0x7ft
    .end array-data

    :array_32
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xet 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    return-void
.end method

.method public static getDefInputMethod()Ljava/lang/String;
    .locals 5

    .prologue
    .line 244
    const-string v1, "0-0"

    .line 245
    .local v1, ret:Ljava/lang/String;
    sget-object v2, Lcom/htc/android/htcime/util/SIPSwitcherData;->CID_DEF_LANG_MAPPING:Ljava/util/HashMap;

    const-string v3, "ro.cid"

    const-string v4, "00000000"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 246
    .local v0, L:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 247
    move-object v1, v0

    .line 249
    :cond_0
    return-object v1
.end method

.method public static getInputMethodMapping()Ljava/lang/String;
    .locals 5

    .prologue
    .line 229
    const-string v1, "0-0"

    .line 230
    .local v1, ret:Ljava/lang/String;
    sget-object v2, Lcom/htc/android/htcime/util/SIPSwitcherData;->CID_LANG_MAPPING:Ljava/util/HashMap;

    const-string v3, "ro.cid"

    const-string v4, "00000000"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    .local v0, L:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 232
    move-object v1, v0

    .line 234
    :cond_0
    return-object v1
.end method

.method public static isZHSKU()Z
    .locals 5

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, ret:Z
    const-string v3, "ro.cid"

    const-string v4, "00000000"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, cid:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/htc/android/htcime/util/SIPSwitcherData;->CID_ZH_SUK_LIST:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 257
    sget-object v3, Lcom/htc/android/htcime/util/SIPSwitcherData;->CID_ZH_SUK_LIST:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    const/4 v2, 0x1

    .line 269
    :cond_0
    return v2

    .line 256
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
