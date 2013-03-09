.class public Lcom/htc/android/htcime/util/SmartRecoderUtil;
.super Ljava/lang/Object;
.source "SmartRecoderUtil.java"


# static fields
.field private static final CURRENT_KEYBOARD_COLUMN:[Ljava/lang/String; = null

.field public static final IME_KEYCODE_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final IME_LATING_KEYBOARD_BIT_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final IM_ALPHABET:Ljava/lang/String; = "ALPHABET"

.field public static final IM_CJ:Ljava/lang/String; = "CHANGJIE"

.field public static final IM_CP_SYMBOL:Ljava/lang/String; = "CP_SYMBOL"

.field public static final IM_PP:Ljava/lang/String; = "HANDWRITING"

.field public static final IM_PY:Ljava/lang/String; = "PINYIN"

.field public static final IM_ST:Ljava/lang/String; = "STROKE"

.field public static final IM_SYMBOL:Ljava/lang/String; = "SYMBOL"

.field public static final IM_ZY:Ljava/lang/String; = "ZHUYIN"

.field private static final INTERNATIONAL_KEYBOARD_COLUMNS:[Ljava/lang/String; = null

.field public static final SIP_12KEY:Ljava/lang/String; = "12KEY"

.field public static final SIP_20KEY:Ljava/lang/String; = "20KEY"

.field public static final SIP_PP_DAIL:Ljava/lang/String; = "PP_DAIL"

.field public static final SIP_PP_DAIL_HIGH:Ljava/lang/String; = "PP_DAIL_HIGH"

.field public static final SIP_PP_HIGH:Ljava/lang/String; = "PP_HIGH"

.field public static final SIP_PP_NORMAL:Ljava/lang/String; = "PP_NORMAL"

.field public static final SIP_QWERTY:Ljava/lang/String; = "QWERTY"

.field static zh_type:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, -0x8

    const/16 v7, -0x9

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 153
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    .line 155
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_SHIFT"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_SYM_SIP"

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_SETTINGS"

    const/4 v3, -0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_CLOSE_SIP"

    const/4 v3, -0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_ALT"

    const/4 v3, -0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_DOTCOM"

    const/4 v3, -0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_T9"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_PHONE_PAUSE"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_PHONE_WAIT"

    const/16 v3, -0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_ABC_SIP"

    const/16 v3, -0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_PAGE"

    const/16 v3, -0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_EMOTION"

    const/16 v3, -0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_ACCENT"

    const/16 v3, -0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_LANG_SWITCH"

    const/16 v3, -0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_GLOBAL_LANG_SWITCH"

    const/16 v3, -0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_HONZ_PAGE"

    const/16 v3, -0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_ARROW_UP"

    const/16 v3, -0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_ARROW_DOWN"

    const/16 v3, -0x13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_ARROW_LEFT"

    const/16 v3, -0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_ARROW_RIGHT"

    const/16 v3, -0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_CAPS"

    const/16 v3, -0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_VOICEINPUT"

    const/16 v3, -0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_LANG_N_VOICE"

    const/16 v3, -0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_KEYBOARD_TYPE_SWITCH"

    const/16 v3, -0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_KEYBOARD_TAB"

    const/16 v3, -0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_HWKB_SYM_SIP"

    const/16 v3, -0x1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_NOT_A_KEY"

    const/16 v3, -0x62

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_REMOVE_KEY"

    const/16 v3, -0x63

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_STROKE1"

    const/16 v3, 0x31

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_STROKE2"

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_STROKE3"

    const/16 v3, 0x33

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_STROKE4"

    const/16 v3, 0x34

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_STROKE5"

    const/16 v3, 0x35

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_BPMF_RISING"

    const/16 v3, 0xee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_BPMF_DIPPING"

    const/16 v3, 0xef

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_BPMF_FALLING"

    const/16 v3, 0xf0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_BPMF_SOFTMUTE"

    const/16 v3, 0xf1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_PY_SEPARATOR"

    const/16 v3, 0xef

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_PHON_LIST_CAND1"

    const/16 v3, 0xf2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_PHON_LIST_CAND2"

    const/16 v3, 0xf3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_PHON_LIST_CAND3"

    const/16 v3, 0xf4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_PHON_LIST_DOWN"

    const/16 v3, 0xf5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_PHON_LIST_UP"

    const/16 v3, 0xf6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_SYMB_NUM"

    const/16 v3, -0x33

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_SYMB_MATH"

    const/16 v3, -0x34

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_SYMB_EMOTICON"

    const/16 v3, -0x35

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_SYMB_OTHER"

    const/16 v3, -0x36

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_SYMB_WIDTH"

    const/16 v3, -0x37

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_CANGJIE_MODE"

    const/16 v3, -0x38

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_STROKE_WILDCHAR"

    const/16 v3, -0x39

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_HWR_SCREEN_SWITCH"

    const/16 v3, -0x3a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_HWR_CONTINUOUS_EN_NUM"

    const/16 v3, -0x3b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_SYMB_PUNCTUATION"

    const/16 v3, -0x3d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_SYMB_MULTICHAR"

    const/16 v3, -0x3e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_SYMB_LIST_UP"

    const/16 v3, -0x3f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_SYMB_LIST_DOWN"

    const/16 v3, -0x40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_ENG_SIP_NOLP"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_ENG_SIP"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_DELETE"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_ENTER"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_SPACE"

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_FH_QUESTION"

    const v3, 0xff1f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_FH_PERIOD"

    const/16 v3, 0x3002

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_FH_COMMA"

    const v3, 0xff0c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_FH_ELLIPSIS"

    const/16 v3, 0x2026

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    const-string v2, "KEYCODE_FH_EXCLAMATION"

    const v3, 0xff01

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_LATING_KEYBOARD_BIT_MAP:Ljava/util/HashMap;

    .line 246
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    if-ge v0, v1, :cond_0

    .line 248
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_LATING_KEYBOARD_BIT_MAP:Ljava/util/HashMap;

    sget-object v2, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleData:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v4

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleData:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "KEYBOARD_NAME"

    aput-object v2, v1, v4

    const-string v2, "CHECKED"

    aput-object v2, v1, v5

    const-string v2, "_id"

    aput-object v2, v1, v6

    sput-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->INTERNATIONAL_KEYBOARD_COLUMNS:[Ljava/lang/String;

    .line 309
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "KEYBOARD_NAME"

    aput-object v2, v1, v4

    const-string v2, "_id"

    aput-object v2, v1, v5

    sput-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->CURRENT_KEYBOARD_COLUMN:[Ljava/lang/String;

    .line 313
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Latin"

    aput-object v2, v1, v4

    const-string v2, "HANDWRITING"

    aput-object v2, v1, v5

    const-string v2, "ZHUYIN"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "CHANGJIE"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "PINYIN"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "STROKE"

    aput-object v3, v1, v2

    sput-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->zh_type:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIMTypeBySIPId(II)Ljava/lang/String;
    .locals 1
    .parameter "orientation"
    .parameter "sipId"

    .prologue
    .line 38
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 40
    packed-switch p1, :pswitch_data_0

    .line 53
    const-string v0, ""

    .line 86
    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    const-string v0, "ALPHABET"

    goto :goto_0

    .line 43
    :pswitch_1
    const-string v0, "SYMBOL"

    goto :goto_0

    .line 44
    :pswitch_2
    const-string v0, "SYMBOL"

    goto :goto_0

    .line 45
    :pswitch_3
    const-string v0, "SYMBOL"

    goto :goto_0

    .line 46
    :pswitch_4
    const-string v0, "HANDWRITING"

    goto :goto_0

    .line 47
    :pswitch_5
    const-string v0, "ZHUYIN"

    goto :goto_0

    .line 48
    :pswitch_6
    const-string v0, "CHANGJIE"

    goto :goto_0

    .line 49
    :pswitch_7
    const-string v0, "PINYIN"

    goto :goto_0

    .line 50
    :pswitch_8
    const-string v0, "STROKE"

    goto :goto_0

    .line 51
    :pswitch_9
    const-string v0, "CP_SYMBOL"

    goto :goto_0

    .line 52
    :pswitch_a
    const-string v0, "HANDWRITING"

    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 58
    packed-switch p1, :pswitch_data_1

    .line 82
    :pswitch_b
    const-string v0, ""

    goto :goto_0

    .line 60
    :pswitch_c
    const-string v0, "ALPHABET"

    goto :goto_0

    .line 61
    :pswitch_d
    const-string v0, "ALPHABET"

    goto :goto_0

    .line 62
    :pswitch_e
    const-string v0, "ALPHABET"

    goto :goto_0

    .line 63
    :pswitch_f
    const-string v0, "SYMBOL"

    goto :goto_0

    .line 64
    :pswitch_10
    const-string v0, "SYMBOL"

    goto :goto_0

    .line 65
    :pswitch_11
    const-string v0, "SYMBOL"

    goto :goto_0

    .line 66
    :pswitch_12
    const-string v0, "ALPHABET"

    goto :goto_0

    .line 67
    :pswitch_13
    const-string v0, "HANDWRITING"

    goto :goto_0

    .line 68
    :pswitch_14
    const-string v0, "CHANGJIE"

    goto :goto_0

    .line 69
    :pswitch_15
    const-string v0, "CHANGJIE"

    goto :goto_0

    .line 70
    :pswitch_16
    const-string v0, "ZHUYIN"

    goto :goto_0

    .line 71
    :pswitch_17
    const-string v0, "ZHUYIN"

    goto :goto_0

    .line 72
    :pswitch_18
    const-string v0, "PINYIN"

    goto :goto_0

    .line 73
    :pswitch_19
    const-string v0, "PINYIN"

    goto :goto_0

    .line 74
    :pswitch_1a
    const-string v0, "STROKE"

    goto :goto_0

    .line 75
    :pswitch_1b
    const-string v0, "STROKE"

    goto :goto_0

    .line 76
    :pswitch_1c
    const-string v0, "HANDWRITING"

    goto :goto_0

    .line 77
    :pswitch_1d
    const-string v0, "CP_SYMBOL"

    goto :goto_0

    .line 78
    :pswitch_1e
    const-string v0, "CP_SYMBOL"

    goto :goto_0

    .line 79
    :pswitch_1f
    const-string v0, "CP_SYMBOL"

    goto :goto_0

    .line 80
    :pswitch_20
    const-string v0, "HANDWRITING"

    goto :goto_0

    .line 81
    :pswitch_21
    const-string v0, "HANDWRITING"

    goto :goto_0

    .line 86
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_2
    .end packed-switch

    .line 58
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method private static getLatingMapingBit(Ljava/lang/String;)I
    .locals 2
    .parameter "lating"

    .prologue
    .line 360
    const/4 v0, -0x1

    .line 362
    .local v0, bit:I
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_LATING_KEYBOARD_BIT_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    sget-object v1, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_LATING_KEYBOARD_BIT_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 366
    :cond_0
    return v0
.end method

.method public static getSIPTypeBySIPId(II)Ljava/lang/String;
    .locals 1
    .parameter "orientation"
    .parameter "sipId"

    .prologue
    .line 101
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 103
    packed-switch p1, :pswitch_data_0

    .line 116
    const-string v0, ""

    .line 149
    :goto_0
    return-object v0

    .line 105
    :pswitch_0
    const-string v0, "QWERTY"

    goto :goto_0

    .line 106
    :pswitch_1
    const-string v0, "QWERTY"

    goto :goto_0

    .line 107
    :pswitch_2
    const-string v0, "QWERTY"

    goto :goto_0

    .line 108
    :pswitch_3
    const-string v0, "QWERTY"

    goto :goto_0

    .line 109
    :pswitch_4
    const-string v0, "QWERTY"

    goto :goto_0

    .line 110
    :pswitch_5
    const-string v0, "QWERTY"

    goto :goto_0

    .line 111
    :pswitch_6
    const-string v0, "QWERTY"

    goto :goto_0

    .line 112
    :pswitch_7
    const-string v0, "QWERTY"

    goto :goto_0

    .line 113
    :pswitch_8
    const-string v0, "QWERTY"

    goto :goto_0

    .line 114
    :pswitch_9
    const-string v0, "QWERTY"

    goto :goto_0

    .line 115
    :pswitch_a
    const-string v0, "PP_HIGH"

    goto :goto_0

    .line 119
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 121
    packed-switch p1, :pswitch_data_1

    .line 145
    :pswitch_b
    const-string v0, ""

    goto :goto_0

    .line 123
    :pswitch_c
    const-string v0, "20KEY"

    goto :goto_0

    .line 124
    :pswitch_d
    const-string v0, "12KEY"

    goto :goto_0

    .line 125
    :pswitch_e
    const-string v0, "QWERTY"

    goto :goto_0

    .line 126
    :pswitch_f
    const-string v0, "QWERTY"

    goto :goto_0

    .line 127
    :pswitch_10
    const-string v0, "12KEY"

    goto :goto_0

    .line 128
    :pswitch_11
    const-string v0, "12KEY"

    goto :goto_0

    .line 129
    :pswitch_12
    const-string v0, "QWERTY"

    goto :goto_0

    .line 130
    :pswitch_13
    const-string v0, "PP_NORMAL"

    goto :goto_0

    .line 131
    :pswitch_14
    const-string v0, "12KEY"

    goto :goto_0

    .line 132
    :pswitch_15
    const-string v0, "QWERTY"

    goto :goto_0

    .line 133
    :pswitch_16
    const-string v0, "12KEY"

    goto :goto_0

    .line 134
    :pswitch_17
    const-string v0, "QWERTY"

    goto :goto_0

    .line 135
    :pswitch_18
    const-string v0, "12KEY"

    goto :goto_0

    .line 136
    :pswitch_19
    const-string v0, "QWERTY"

    goto :goto_0

    .line 137
    :pswitch_1a
    const-string v0, "12KEY"

    goto :goto_0

    .line 138
    :pswitch_1b
    const-string v0, "QWERTY"

    goto :goto_0

    .line 139
    :pswitch_1c
    const-string v0, "PP_HIGH"

    goto :goto_0

    .line 140
    :pswitch_1d
    const-string v0, "QWERTY"

    goto :goto_0

    .line 141
    :pswitch_1e
    const-string v0, "12KEY"

    goto :goto_0

    .line 142
    :pswitch_1f
    const-string v0, "QWERTY"

    goto :goto_0

    .line 143
    :pswitch_20
    const-string v0, "PP_DAIL"

    goto :goto_0

    .line 144
    :pswitch_21
    const-string v0, "PP_DAIL_HIGH"

    goto :goto_0

    .line 149
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_2
    .end packed-switch

    .line 121
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method private static getZhMapingBit(Ljava/lang/String;)I
    .locals 3
    .parameter "zhLang"

    .prologue
    .line 370
    const/4 v0, -0x1

    .line 372
    .local v0, bit:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/htc/android/htcime/util/SmartRecoderUtil;->zh_type:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 373
    sget-object v2, Lcom/htc/android/htcime/util/SmartRecoderUtil;->zh_type:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    move v0, v1

    .line 372
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    :cond_1
    return v0
.end method

.method public static queryCurrentInternationalKeyboard(Landroid/content/Context;)Landroid/database/MatrixCursor;
    .locals 19
    .parameter "ctx"

    .prologue
    .line 316
    invoke-static/range {p0 .. p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getIMESettingsData(Landroid/content/Context;)V

    .line 317
    sget v17, Lcom/htc/android/htcime/util/CustomizeUtil;->mZHSIP:I

    add-int/lit8 v15, v17, 0x1

    .line 319
    .local v15, supportSIPs:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 320
    .local v11, res:Landroid/content/res/Resources;
    invoke-static/range {p0 .. p0}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 322
    .local v14, sp:Landroid/content/SharedPreferences;
    const v17, 0x7f0900e3

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, SIPSwitchKey:Ljava/lang/String;
    const v17, 0x7f0900e4

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, LatinLangKey:Ljava/lang/String;
    const v17, 0x7f0900e5

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 325
    .local v9, mSIPSwitchKeyDef:Ljava/lang/String;
    const v17, 0x7f0900e6

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 326
    .local v8, mEIMELangKeyDef:Ljava/lang/String;
    const v17, 0x7f070009

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, defaultLocaleString:[Ljava/lang/String;
    const v17, 0x7f07000b

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, defaultLocaleVaule:[Ljava/lang/String;
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-interface {v14, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 330
    .local v12, sip_select:I
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-interface {v14, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 331
    .local v5, eime_select:I
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-interface {v14, v9, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 332
    .local v13, sip_select_def:I
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-interface {v14, v8, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 335
    .local v6, eime_select_def:I
    new-instance v10, Landroid/database/MatrixCursor;

    sget-object v17, Lcom/htc/android/htcime/util/SmartRecoderUtil;->CURRENT_KEYBOARD_COLUMN:[Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 336
    .local v10, mac:Landroid/database/MatrixCursor;
    sget-object v17, Lcom/htc/android/htcime/util/SmartRecoderUtil;->CURRENT_KEYBOARD_COLUMN:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 338
    .local v16, value:[Ljava/lang/Object;
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_1

    .line 339
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_3

    .line 340
    const/16 v17, 0x1

    aget-object v18, v4, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    shl-int v17, v17, v18

    move/from16 v0, v17

    if-ne v0, v6, :cond_0

    .line 341
    const/16 v17, 0x0

    aget-object v18, v3, v7

    aput-object v18, v16, v17

    .line 339
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 346
    .end local v7           #i:I
    :cond_1
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_1
    sget-object v17, Lcom/htc/android/htcime/util/SmartRecoderUtil;->zh_type:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_3

    .line 347
    const/16 v17, 0x1

    shl-int v17, v17, v7

    move/from16 v0, v17

    if-ne v0, v13, :cond_2

    .line 348
    const/16 v17, 0x0

    sget-object v18, Lcom/htc/android/htcime/util/SmartRecoderUtil;->zh_type:[Ljava/lang/String;

    aget-object v18, v18, v7

    aput-object v18, v16, v17

    .line 346
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 353
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 356
    return-object v10
.end method

.method public static queryInternationalKeyboards(Landroid/content/Context;)Landroid/database/MatrixCursor;
    .locals 15
    .parameter "ctx"

    .prologue
    .line 257
    invoke-static {p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getIMESettingsData(Landroid/content/Context;)V

    .line 259
    sget v12, Lcom/htc/android/htcime/util/CustomizeUtil;->mZHSIP:I

    add-int/lit8 v9, v12, 0x1

    .line 261
    .local v9, supportSIPs:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 262
    .local v6, res:Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 264
    .local v8, sp:Landroid/content/SharedPreferences;
    const/4 v12, 0x5

    new-array v11, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "HANDWRITING"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "ZHUYIN"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "CHANGJIE"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, "PINYIN"

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "STROKE"

    aput-object v13, v11, v12

    .line 265
    .local v11, zh_type:[Ljava/lang/String;
    new-instance v5, Landroid/database/MatrixCursor;

    sget-object v12, Lcom/htc/android/htcime/util/SmartRecoderUtil;->INTERNATIONAL_KEYBOARD_COLUMNS:[Ljava/lang/String;

    invoke-direct {v5, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 267
    .local v5, mac:Landroid/database/MatrixCursor;
    const v12, 0x7f0900e3

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, SIPSwitchKey:Ljava/lang/String;
    const v12, 0x7f0900e4

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, LatinLangKey:Ljava/lang/String;
    const/4 v12, 0x1

    invoke-interface {v8, v1, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 271
    .local v7, sips:I
    const/4 v12, 0x7

    invoke-interface {v8, v0, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 273
    .local v4, latin_langs:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v12, 0x6

    if-ge v2, v12, :cond_5

    .line 274
    const/4 v12, 0x1

    shl-int/2addr v12, v2

    and-int/2addr v12, v9

    if-eqz v12, :cond_3

    .line 275
    if-nez v2, :cond_2

    .line 277
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    sget v12, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    if-ge v3, v12, :cond_3

    .line 278
    sget-object v12, Lcom/htc/android/htcime/util/SmartRecoderUtil;->INTERNATIONAL_KEYBOARD_COLUMNS:[Ljava/lang/String;

    array-length v12, v12

    new-array v10, v12, [Ljava/lang/Object;

    .line 279
    .local v10, value:[Ljava/lang/Object;
    const/4 v12, 0x0

    sget-object v13, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleData:[[Ljava/lang/String;

    aget-object v13, v13, v3

    const/4 v14, 0x0

    aget-object v13, v13, v14

    aput-object v13, v10, v12

    .line 280
    const/4 v12, 0x1

    shl-int/2addr v12, v2

    and-int/2addr v12, v7

    if-eqz v12, :cond_1

    .line 281
    const/4 v12, 0x1

    sget-object v13, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleData:[[Ljava/lang/String;

    aget-object v13, v13, v3

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    shl-int/2addr v12, v13

    and-int/2addr v12, v4

    if-eqz v12, :cond_0

    .line 282
    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v12

    .line 289
    :goto_2
    invoke-virtual {v5, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 284
    :cond_0
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v12

    goto :goto_2

    .line 287
    :cond_1
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v12

    goto :goto_2

    .line 294
    .end local v3           #j:I
    .end local v10           #value:[Ljava/lang/Object;
    :cond_2
    sget-object v12, Lcom/htc/android/htcime/util/SmartRecoderUtil;->INTERNATIONAL_KEYBOARD_COLUMNS:[Ljava/lang/String;

    array-length v12, v12

    new-array v10, v12, [Ljava/lang/Object;

    .line 295
    .restart local v10       #value:[Ljava/lang/Object;
    const/4 v12, 0x0

    add-int/lit8 v13, v2, -0x1

    aget-object v13, v11, v13

    aput-object v13, v10, v12

    .line 296
    const/4 v12, 0x1

    shl-int/2addr v12, v2

    and-int/2addr v12, v7

    if-eqz v12, :cond_4

    .line 297
    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v12

    .line 301
    :goto_3
    invoke-virtual {v5, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 273
    .end local v10           #value:[Ljava/lang/Object;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    .restart local v10       #value:[Ljava/lang/Object;
    :cond_4
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v12

    goto :goto_3

    .line 306
    .end local v10           #value:[Ljava/lang/Object;
    :cond_5
    return-object v5
.end method

.method public static setCurrentInternationalKeyboard(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 17
    .parameter "ctx"
    .parameter "args"

    .prologue
    .line 439
    move-object/from16 v0, p1

    array-length v15, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 482
    :goto_0
    return-void

    .line 441
    :cond_0
    const/4 v15, 0x0

    aget-object v4, p1, v15

    .line 443
    .local v4, curKeyboard:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getIMESettingsData(Landroid/content/Context;)V

    .line 444
    sget v15, Lcom/htc/android/htcime/util/CustomizeUtil;->mZHSIP:I

    add-int/lit8 v14, v15, 0x1

    .line 446
    .local v14, supportSIPs:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 447
    .local v11, res:Landroid/content/res/Resources;
    invoke-static/range {p0 .. p0}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 449
    .local v13, sp:Landroid/content/SharedPreferences;
    const v15, 0x7f0900e3

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, SIPSwitchKey:Ljava/lang/String;
    const v15, 0x7f0900e4

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, LatinLangKey:Ljava/lang/String;
    const v15, 0x7f0900e5

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 452
    .local v10, mSIPSwitchKeyDef:Ljava/lang/String;
    const v15, 0x7f0900e6

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 453
    .local v9, mEIMELangKeyDef:Ljava/lang/String;
    const v15, 0x7f070009

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, defaultLocaleString:[Ljava/lang/String;
    const v15, 0x7f07000b

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 457
    .local v6, defaultLocaleVaule:[Ljava/lang/String;
    const/4 v15, -0x1

    invoke-interface {v13, v10, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 458
    .local v12, sip_select_def:I
    const/4 v15, -0x1

    invoke-interface {v13, v9, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 461
    .local v7, eime_select_def:I
    const/4 v3, 0x0

    .line 463
    .local v3, cimeIsSeleced:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    sget-object v15, Lcom/htc/android/htcime/util/SmartRecoderUtil;->zh_type:[Ljava/lang/String;

    array-length v15, v15

    if-ge v8, v15, :cond_1

    .line 464
    sget-object v15, Lcom/htc/android/htcime/util/SmartRecoderUtil;->zh_type:[Ljava/lang/String;

    aget-object v15, v15, v8

    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 465
    const/4 v3, 0x1

    .line 466
    const/4 v15, 0x1

    shl-int v12, v15, v8

    .line 471
    :cond_1
    if-nez v3, :cond_4

    .line 472
    const/4 v12, 0x1

    .line 473
    const/4 v8, 0x0

    :goto_2
    array-length v15, v6

    if-ge v8, v15, :cond_4

    .line 474
    aget-object v15, v5, v8

    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 475
    const/4 v15, 0x1

    aget-object v16, v6, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    shl-int v7, v15, v16

    .line 473
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 463
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 479
    :cond_4
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    invoke-interface {v15, v10, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 480
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    invoke-interface {v15, v9, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public static setInternationalKeyboards(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 17
    .parameter "ctx"
    .parameter "args"

    .prologue
    .line 382
    sget v14, Lcom/htc/android/htcime/util/CustomizeUtil;->mZHSIP:I

    add-int/lit8 v13, v14, 0x1

    .line 383
    .local v13, supportSIPs:I
    invoke-static/range {p0 .. p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getIMESettingsData(Landroid/content/Context;)V

    .line 385
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 386
    .local v9, res:Landroid/content/res/Resources;
    invoke-static/range {p0 .. p0}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 387
    .local v11, sp:Landroid/content/SharedPreferences;
    const v14, 0x7f0900e3

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, SIPSwitchKey:Ljava/lang/String;
    const v14, 0x7f0900e4

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, LatinLangKey:Ljava/lang/String;
    const/4 v14, 0x1

    invoke-interface {v11, v2, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 390
    .local v10, sips:I
    const/4 v14, 0x7

    invoke-interface {v11, v1, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 392
    .local v6, latin_langs:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v5, v14, :cond_4

    .line 393
    aget-object v14, p1, v5

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 395
    .local v12, subString:[Ljava/lang/String;
    array-length v14, v12

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 396
    const/4 v4, -0x1

    .line 399
    .local v4, enable:I
    const/4 v14, 0x1

    :try_start_0
    aget-object v14, v12, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 404
    :goto_1
    const/4 v14, 0x0

    aget-object v14, v12, v14

    invoke-static {v14}, Lcom/htc/android/htcime/util/SmartRecoderUtil;->getLatingMapingBit(Ljava/lang/String;)I

    move-result v3

    .line 406
    .local v3, bitPos:I
    if-ltz v4, :cond_2

    if-ltz v3, :cond_2

    .line 407
    if-eqz v4, :cond_1

    .line 408
    const/4 v14, 0x1

    shl-int v8, v14, v3

    .line 409
    .local v8, op:I
    or-int/2addr v6, v8

    .line 392
    .end local v3           #bitPos:I
    .end local v4           #enable:I
    .end local v8           #op:I
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 401
    .restart local v4       #enable:I
    :catch_0
    move-exception v7

    .line 402
    .local v7, nFE:Ljava/lang/NumberFormatException;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "Not an Integer"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 411
    .end local v7           #nFE:Ljava/lang/NumberFormatException;
    .restart local v3       #bitPos:I
    :cond_1
    const/4 v14, 0x1

    shl-int/2addr v14, v3

    xor-int/lit8 v14, v14, -0x1

    and-int/2addr v6, v14

    goto :goto_2

    .line 414
    :cond_2
    const/4 v14, 0x0

    aget-object v14, v12, v14

    invoke-static {v14}, Lcom/htc/android/htcime/util/SmartRecoderUtil;->getZhMapingBit(Ljava/lang/String;)I

    move-result v3

    .line 415
    if-ltz v4, :cond_0

    if-ltz v3, :cond_0

    .line 417
    if-eqz v4, :cond_3

    .line 418
    const/4 v14, 0x1

    shl-int v8, v14, v3

    .line 420
    .restart local v8       #op:I
    or-int/2addr v10, v8

    .line 421
    goto :goto_2

    .line 422
    .end local v8           #op:I
    :cond_3
    const/4 v14, 0x1

    shl-int/2addr v14, v3

    xor-int/lit8 v14, v14, -0x1

    and-int/2addr v10, v14

    goto :goto_2

    .line 430
    .end local v3           #bitPos:I
    .end local v4           #enable:I
    .end local v12           #subString:[Ljava/lang/String;
    :cond_4
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14, v2, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 431
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 432
    const-string v14, "MODIFIED"

    const/4 v15, 0x0

    invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x3

    if-ge v14, v15, :cond_5

    .line 433
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "MODIFIED"

    const/16 v16, 0x3

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 434
    :cond_5
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 436
    return-void
.end method
