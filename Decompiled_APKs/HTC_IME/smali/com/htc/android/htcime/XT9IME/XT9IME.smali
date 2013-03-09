.class public Lcom/htc/android/htcime/XT9IME/XT9IME;
.super Lcom/htc/android/htcime/XT9IME/LatinIM;
.source "XT9IME.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCIM;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/XT9IME/XT9IME$2;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTC_LDBID;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTC_ERR_STATUS;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTC_MDBTYPE;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTC_ASDBTYPE;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTC_ET9AWORDSOURCE;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTC_ET9INPUTSHIFTSTATE;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$ET9AEXACTINLIST;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$ET9ASPCMODE;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$ET9ASLCORRECTIONMODE;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTC_PREDICTMODE_I;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTC_PREDICTMODE;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$Normal4PDSwitch;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$KeyType;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$Position;
    }
.end annotation


# static fields
.field protected static final CMPQW_WORD_COMPLETE_POINT:I = 0x2

.field private static final CMQW_KDBMAP_VER1:[I = null

.field private static final CMQW_KDBMAP_VER2:[I = null

.field protected static final DBG_TAG:Ljava/lang/String; = "OVT9LOG"

.field public static final DEBUG_SCAN_FOR_CUSTOM_WORD:Z = false

.field protected static final DEBUG_TAG:Ljava/lang/String; = "OVT9LOG"

.field protected static final DEBUG_TAG2:Ljava/lang/String; = "Eric_debug"

.field protected static final DEFAULT_WCL:I = 0x0

.field private static final DOUBLE_SPACE_INTERVAL:J = 0x7d0L

.field protected static final DUMP_LOG:Z = false

.field public static final DUMP_SCAN_FOR_CUSTOM_WORD:Z = true

.field protected static final EXACTWORD_HILITE_COLOR:I = 0x0

.field protected static final FG_EXACTWORD_HILITE_COLOR:I = -0x1000000

.field protected static final FG_NONWORD_HILITE_COLOR:I = -0x1000000

.field protected static final FG_SELECTED_HILITE_COLOR:I = -0x1

.field protected static final FG_TYPED_HILITE_COLOR:I = -0x1000000

.field protected static final FLOATING_WCL:I = 0x2

.field private static final IM_LABEL:Ljava/lang/String; = ""

.field protected static final INFO_LOG:Z = true

.field public static final INTENT_SCAN_FOR_CUSTOM_WORD:Ljava/lang/String; = "htc.android.intent.action.SCAN_FOR_CUSTOM_WORD"

.field public static final INTENT_SCAN_FOR_CUSTOM_WORD_CONTENT:Ljava/lang/String; = "article"

.field private static final INVALID_POS:I = -0x1

.field public static final KEYCODE_CHOOSE_CANDIDATE:I = 0x25c

.field public static final KEYCODE_CLEAR_RESELECT_WCL:I = 0x259

.field protected static final KEYCODE_ENTER:I = 0xa

.field public static final KEYCODE_RESET_FOR_KNOWN_WORD:I = 0x25b

.field public static final KEYCODE_SET_RESELECT_IDX:I = 0x25a

.field public static final KEYCODE_SHOW_DOT_UNDERLINE:I = 0x25d

.field public static final KEYCODE_SHOW_RESELECT_WCL:I = 0x258

.field protected static LIMIT_SCAN_SIZE:I = 0x0

.field public static final MAX_WORD_LEN:I = 0x40

.field protected static final MODE_ABC:I = 0x2

.field protected static final MODE_DISCRETE:I = 0x2

.field public static final MODE_XT9:I = 0x1

.field protected static final NONWORD_HILITE_COLOR:I = -0x19079800

.field public static final QW_VALID_SEL_LST_RANGE:I = 0x2

.field protected static final QW_WORD_COMPLETE_LEN_LMT:I = 0x0

.field protected static final QW_WORD_COMPLETE_POINT:I = 0x2

.field public static final QW_WORD_PREDICT_POINT:I = 0x1

.field protected static final SA_TAG:Ljava/lang/String; = "ScanArticle"

.field protected static SELECTED_HILITE_COLOR:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "Eric_J"

.field public static final TIMER_OF_SCAN_FOR_CUSTOM_WORD:Z = true

.field protected static final TYPED_HILITE_COLOR:I = -0x194f4f50

.field public static final Xt9P20L1Text:[Ljava/lang/CharSequence; = null

.field protected static mLastSpaceTime:J = 0x0L

.field private static final mMultiTapInputSequSize:I = 0x80

.field public static final mSpecTerms:[Ljava/lang/String;

.field private static sCurrKbdID:I

.field private static sFeature_CompactQWERTYStyle:I

.field private static sFeature_QwertyKdbReady:Z

.field private static final sPHKD_KDBMAP:Ljava/util/HashMap;
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

.field private static final sSmartSpaceMAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static sXT9CoreMutex:Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;


# instance fields
.field private final A:Ljava/lang/String;

.field private A_MATCH_STR:Ljava/lang/String;

.field protected final CLASS_NAME:Ljava/lang/String;

.field private CMQW_KDBMAP:[I

.field private final COMPACTQWERTSTYLEMAP:[[I

.field private final CVB:[Ljava/lang/String;

.field private final CVB_LEN:I

.field private CVB_MATCH_STR:Ljava/lang/String;

.field protected final DummyPos:Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

.field private final LEN_TO_COMPARE:I

.field QwCharRegInfo:[Ljava/lang/String;

.field protected bMultiCharOn:Z

.field protected candidate_count:I

.field disableKeyEnlarge:Z

.field private enableOnFlyAddWord:Z

.field enlargeKeyCache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;

.field private is9CharRule:Z

.field isKeyEnlarge:Z

.field private mAC_Start_with_A:Z

.field private mAC_Start_with_CVB:Z

.field protected mAddWord:Z

.field mAddWordIntentReceiver:Landroid/content/BroadcastReceiver;

.field mAppName:Ljava/lang/String;

.field mAppToken:Landroid/os/IBinder;

.field protected mAutoAppend:Z

.field protected mAutoSubstitute:Z

.field private final mBalckList:[C

.field protected mDummyString:Ljava/lang/String;

.field private mEndIdx:I

.field private mExactWordLen:I

.field private mExactWordSB:Ljava/lang/StringBuilder;

.field private mFirstACWordSB:Ljava/lang/StringBuilder;

.field protected mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

.field mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

.field mInputConnection:Landroid/view/inputmethod/InputConnection;

.field protected mMode:I

.field private mMultiTapInputSequ:[C

.field private mMultiTapInputSequIndex:I

.field protected mMultitapWordComplete:Z

.field protected mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

.field protected mNextWordPredict:Z

.field protected mNonwordDelFlag:Z

.field private mPSUtil:Lcom/htc/android/htcime/util/PostSpellingUtil;

.field protected mPasteCandString:Ljava/lang/String;

.field protected mShiftState:I

.field protected mSpanSB:Landroid/text/SpannableStringBuilder;

.field protected mSpellCorrect:Z

.field private mStartIdx:I

.field protected mUDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

.field private mVibrateCount:B

.field private mVibratorPattern:[[J

.field protected mWCLDisplay:Z

.field protected mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

.field protected mWCLSelChange:Z

.field protected mWordComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 98
    sput v4, Lcom/htc/android/htcime/XT9IME/XT9IME;->sCurrKbdID:I

    .line 109
    const v1, -0x804ee8

    sput v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->SELECTED_HILITE_COLOR:I

    .line 158
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mLastSpaceTime:J

    .line 180
    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ".net"

    aput-object v2, v1, v4

    const-string v2, ".com"

    aput-object v2, v1, v5

    const-string v2, ".org"

    aput-object v2, v1, v6

    const-string v2, ".gov"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, ".edu"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, ".tw"

    aput-object v3, v1, v2

    const-string v2, ".cn"

    aput-object v2, v1, v8

    const/4 v2, 0x7

    const-string v3, ".jp"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, ".fr"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, ".es"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, ".de"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, ".it"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, ".se"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, ".ru"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, ".pl"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, ".no"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, ".nl"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, ".dk"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, ".cz"

    aput-object v3, v1, v2

    sput-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpecTerms:[Ljava/lang/String;

    .line 213
    sput v4, Lcom/htc/android/htcime/XT9IME/XT9IME;->sFeature_CompactQWERTYStyle:I

    .line 218
    sput-boolean v4, Lcom/htc/android/htcime/XT9IME/XT9IME;->sFeature_QwertyKdbReady:Z

    .line 220
    new-instance v1, Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;

    invoke-direct {v1}, Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;-><init>()V

    sput-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sXT9CoreMutex:Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;

    .line 2186
    const/16 v1, 0x19

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->CMQW_KDBMAP_VER1:[I

    .line 2193
    const/16 v1, 0x18

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->CMQW_KDBMAP_VER2:[I

    .line 2202
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sPHKD_KDBMAP:Ljava/util/HashMap;

    .line 2203
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sPHKD_KDBMAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2204
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sPHKD_KDBMAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2205
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sPHKD_KDBMAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2207
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sPHKD_KDBMAP:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2208
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sPHKD_KDBMAP:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2209
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sPHKD_KDBMAP:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2211
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sPHKD_KDBMAP:Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2212
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sPHKD_KDBMAP:Ljava/util/HashMap;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sPHKD_KDBMAP:Ljava/util/HashMap;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2215
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sPHKD_KDBMAP:Ljava/util/HashMap;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x67

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sPHKD_KDBMAP:Ljava/util/HashMap;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x68

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2217
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sPHKD_KDBMAP:Ljava/util/HashMap;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x69

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4711
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sSmartSpaceMAP:Ljava/util/HashMap;

    .line 4712
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sSmartSpaceMAP:Ljava/util/HashMap;

    const/16 v2, 0x61

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xe0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4713
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sSmartSpaceMAP:Ljava/util/HashMap;

    const/16 v2, 0xe0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x61

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4714
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sSmartSpaceMAP:Ljava/util/HashMap;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xe8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4715
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sSmartSpaceMAP:Ljava/util/HashMap;

    const/16 v2, 0xe8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xe9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4716
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sSmartSpaceMAP:Ljava/util/HashMap;

    const/16 v2, 0xe9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x65

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4717
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sSmartSpaceMAP:Ljava/util/HashMap;

    const/16 v2, 0x75

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xf9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4718
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sSmartSpaceMAP:Ljava/util/HashMap;

    const/16 v2, 0xf9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x75

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4719
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sSmartSpaceMAP:Ljava/util/HashMap;

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xec

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4720
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sSmartSpaceMAP:Ljava/util/HashMap;

    const/16 v2, 0xec

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x69

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4721
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sSmartSpaceMAP:Ljava/util/HashMap;

    const/16 v2, 0x6f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xf2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4722
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sSmartSpaceMAP:Ljava/util/HashMap;

    const/16 v2, 0xf2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x6f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5304
    const/16 v1, 0x400

    sput v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->LIMIT_SCAN_SIZE:I

    .line 7127
    :try_start_0
    const-string v1, "t9"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 7214
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const/16 v1, 0x1d

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v2, "\""

    aput-object v2, v1, v4

    const-string v2, "!"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "2"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "3"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "+"

    aput-object v3, v1, v2

    const-string v2, ""

    aput-object v2, v1, v8

    const/4 v2, 0x7

    const-string v3, "?"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "-"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "@"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, ";"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, ":"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, ""

    aput-object v3, v1, v2

    sput-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->Xt9P20L1Text:[Ljava/lang/CharSequence;

    return-void

    .line 7128
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 7130
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load libt9.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2186
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x68t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x69t 0x0t 0x0t 0x0t
    .end array-data

    .line 2193
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x68t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x69t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 223
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/LatinIM;-><init>()V

    .line 90
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCIMData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCIMData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    .line 92
    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 93
    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAppName:Ljava/lang/String;

    .line 94
    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAppToken:Landroid/os/IBinder;

    .line 128
    const-string v0, "XT9IME"

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->CLASS_NAME:Ljava/lang/String;

    .line 137
    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    .line 138
    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    .line 139
    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mUDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    .line 140
    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPSUtil:Lcom/htc/android/htcime/util/PostSpellingUtil;

    .line 141
    iput v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    .line 143
    iput v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMode:I

    .line 144
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->bMultiCharOn:Z

    .line 146
    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    .line 165
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    .line 166
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSelChange:Z

    .line 169
    iput-boolean v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enableOnFlyAddWord:Z

    .line 171
    iput v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultiTapInputSequIndex:I

    .line 175
    iput v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    .line 186
    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    invoke-direct {v0, p0, v7, v7}, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;II)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->DummyPos:Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    .line 202
    sget-object v0, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 206
    const/4 v0, 0x6

    new-array v0, v0, [[J

    new-array v1, v5, [J

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v5, [J

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v5, [J

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-array v2, v5, [J

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v5, [J

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [J

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mVibratorPattern:[[J

    .line 207
    iput-byte v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mVibrateCount:B

    .line 208
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNonwordDelFlag:Z

    .line 214
    new-array v0, v5, [[I

    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->CMQW_KDBMAP_VER1:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->CMQW_KDBMAP_VER2:[I

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->COMPACTQWERTSTYLEMAP:[[I

    .line 846
    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enlargeKeyCache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;

    .line 848
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->disableKeyEnlarge:Z

    .line 849
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->isKeyEnlarge:Z

    .line 2225
    sget-object v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->CMQW_KDBMAP_VER1:[I

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->CMQW_KDBMAP:[I

    .line 4588
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "aqsz"

    aput-object v1, v0, v3

    const-string v1, "bgnv"

    aput-object v1, v0, v6

    const-string v1, "cdvx"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "defsc"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "erdw"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "frgdv"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gthfb"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hyjgn"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ioku"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "jukhm"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "kilj"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lok"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mjn"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "nhmb"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "opli"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "po"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "qwa"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "rtfe"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "swdax"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "tygr"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "uijy"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "vfbc"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "wesq"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "xscz"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "yuht"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "zax"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->QwCharRegInfo:[Ljava/lang/String;

    .line 5004
    const/16 v0, 0x1f

    new-array v0, v0, [C

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mBalckList:[C

    .line 7296
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAC_Start_with_CVB:Z

    .line 7297
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAC_Start_with_A:Z

    .line 7298
    iput v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->LEN_TO_COMPARE:I

    .line 7299
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "z"

    aput-object v1, v0, v3

    const-string v1, "x"

    aput-object v1, v0, v6

    const-string v1, "c"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "v"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "n"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "m"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->CVB:[Ljava/lang/String;

    .line 7300
    const-string v0, "a"

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->A:Ljava/lang/String;

    .line 7301
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->CVB:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->CVB_LEN:I

    .line 7319
    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->CVB_MATCH_STR:Ljava/lang/String;

    .line 7320
    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->A_MATCH_STR:Ljava/lang/String;

    .line 7514
    iput v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mStartIdx:I

    .line 7515
    iput v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mEndIdx:I

    .line 7543
    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mExactWordSB:Ljava/lang/StringBuilder;

    .line 7544
    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mFirstACWordSB:Ljava/lang/StringBuilder;

    .line 7545
    iput v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mExactWordLen:I

    .line 7546
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->is9CharRule:Z

    .line 225
    const-string v0, "XT9IME"

    const-string v1, "Do constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    .line 228
    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    .line 229
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imName:Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput v3, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 231
    return-void

    .line 206
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 5004
    :array_6
    .array-data 0x2
        0xat 0x0t
        0x2et 0x0t
        0x20t 0x0t
        0x7et 0x0t
        0x2dt 0x0t
        0x2bt 0x0t
        0x21t 0x0t
        0x40t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x5et 0x0t
        0x26t 0x0t
        0x2at 0x0t
        0x28t 0x0t
        0x5bt 0x0t
        0x7bt 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x3ct 0x0t
        0x2ct 0x0t
        0x3ft 0x0t
        0x2ft 0x0t
        0x5ct 0x0t
        0xact 0x20t
        0xa5t 0x0t
        0xa3t 0x0t
        0xa1t 0x0t
        0xbft 0x0t
        0xa6t 0x0t
        0x5ft 0x0t
    .end array-data
.end method

.method private acceptSuggestion()V
    .locals 5

    .prologue
    .line 4875
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4878
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isQWERTY()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4879
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isSuggestionRejected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4880
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    iput v2, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 4881
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4882
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4883
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4888
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4889
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->NotifyWordCommit(Ljava/lang/String;)V

    .line 4891
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4892
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4899
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 4900
    return-void

    .line 4894
    :catch_0
    move-exception v0

    .line 4895
    .local v0, e:Landroid/util/AndroidException;
    invoke-virtual {v0}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->sFeature_QwertyKdbReady:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/XT9IME/XT9IME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->acceptSuggestion()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/XT9IME/XT9IME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->cancelComposing()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/XT9IME/XT9IME;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->apply_9_Char_Rule(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/android/htcime/XT9IME/XT9IME;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->is9CharRule:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/android/htcime/XT9IME/XT9IME;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->is9CharRule:Z

    return p1
.end method

.method private apply_9_Char_Rule(I)I
    .locals 9
    .parameter "orgIdx"

    .prologue
    .line 7555
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->is9CharRule:Z

    .line 7557
    iget v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mExactWordLen:I

    const/16 v8, 0x9

    if-ge v7, v8, :cond_1

    .line 7586
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 7561
    .restart local p1
    :cond_1
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mExactWordSB:Ljava/lang/StringBuilder;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mFirstACWordSB:Ljava/lang/StringBuilder;

    if-eqz v7, :cond_0

    .line 7566
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v5, v7, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    .line 7567
    .local v5, exactWordIdx:I
    const/4 v2, 0x0

    .line 7568
    .local v2, difCnt:I
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mExactWordSB:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 7569
    .local v4, exactWordCharCnt:I
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mFirstACWordSB:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 7571
    .local v1, autoCompCharCnt:I
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->is9CharRule:Z

    .line 7573
    add-int/lit8 v6, v4, -0x1

    .local v6, i:I
    :goto_1
    if-ltz v6, :cond_0

    .line 7574
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mExactWordSB:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 7575
    .local v3, exactChar:C
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mFirstACWordSB:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 7577
    .local v0, autoCompChar:C
    if-eq v3, v0, :cond_2

    .line 7578
    add-int/lit8 v2, v2, 0x1

    .line 7581
    :cond_2
    const/4 v7, 0x3

    if-le v2, v7, :cond_3

    move p1, v5

    .line 7582
    goto :goto_0

    .line 7573
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1
.end method

.method private build_PHKD_KDBMAP(Landroid/content/res/Resources;)V
    .locals 3
    .parameter "res"

    .prologue
    .line 2222
    sget-object v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->sPHKD_KDBMAP:Ljava/util/HashMap;

    const v1, 0x7f0a0006

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2223
    return-void
.end method

.method private cancelComposing()V
    .locals 5

    .prologue
    .line 4903
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4905
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4909
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4911
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 4914
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 4915
    return-void

    .line 4906
    :catch_0
    move-exception v0

    .line 4907
    .local v0, e:Landroid/util/AndroidException;
    invoke-virtual {v0}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0
.end method

.method private clearNonWordVibrateCount()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5132
    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNonwordDelFlag:Z

    .line 5133
    invoke-direct {p0, v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->setNonWordNoSuggestionStatus(Z)V

    .line 5134
    iput-byte v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mVibrateCount:B

    .line 5135
    return-void
.end method

.method private findQwertySIPRegKey(CIZ)I
    .locals 0
    .parameter "ch"
    .parameter "org_key_id"
    .parameter "landScape"

    .prologue
    .line 825
    return p2
.end method

.method private handleErrorReselect(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Z
    .locals 11
    .parameter "InputConnection"
    .parameter "keycode"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 5713
    const/4 v0, 0x1

    .line 5714
    .local v0, bRet:Z
    const/4 v4, 0x0

    .line 5715
    .local v4, s:I
    const/4 v3, 0x0

    .line 5716
    .local v3, l:I
    const/4 v1, 0x0

    .line 5718
    .local v1, e:I
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 5719
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 5720
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mReselectCursorStart:I

    .line 5721
    add-int v1, v4, v3

    .line 5725
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 5878
    .end local v0           #bRet:Z
    :cond_1
    :goto_0
    :sswitch_0
    return v0

    .line 5728
    .restart local v0       #bRet:Z
    :sswitch_1
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-boolean v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isReselectWCL:Z

    if-nez v6, :cond_2

    .line 5729
    const/4 v0, 0x0

    goto :goto_0

    .line 5731
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 5733
    if-lez v3, :cond_3

    .line 5734
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    .line 5735
    const-string v6, "OVT9LOG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE continue Reselect WCL word="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ^^^^^^^^^^^^^^^"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5736
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {p1, v6, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 5737
    const/16 v6, 0x258

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, p1, v6, v7, v8}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleErrorReselect(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 5739
    :cond_3
    const-string v6, "OVT9LOG"

    const-string v7, "DELETE clear Reselect WCL ^^^^^^^^^^^^^^^"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5740
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 5741
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 5742
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v7, ""

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 5749
    :sswitch_2
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-boolean v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isReselectWCL:Z

    if-nez v6, :cond_4

    .line 5750
    const/4 v0, 0x0

    goto :goto_0

    .line 5752
    :cond_4
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 5754
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 5755
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 5757
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isPSCKnownWord(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5758
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPSUtil:Lcom/htc/android/htcime/util/PostSpellingUtil;

    add-int v7, v4, v3

    invoke-virtual {v6, v4, v7}, Lcom/htc/android/htcime/util/PostSpellingUtil;->removeErrorSpan(II)Z

    goto/16 :goto_0

    .line 5765
    :sswitch_3
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-boolean v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isReselectWCL:Z

    if-nez v6, :cond_5

    .line 5766
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 5768
    :cond_5
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 5769
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 5771
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 5773
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isPSCKnownWord(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5774
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPSUtil:Lcom/htc/android/htcime/util/PostSpellingUtil;

    add-int v7, v4, v3

    invoke-virtual {v6, v4, v7}, Lcom/htc/android/htcime/util/PostSpellingUtil;->removeErrorSpan(II)Z

    goto/16 :goto_0

    .line 5780
    :sswitch_4
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-boolean v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isReselectWCL:Z

    if-nez v6, :cond_6

    .line 5781
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 5783
    :cond_6
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 5785
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 5786
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 5788
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isPSCKnownWord(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5789
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPSUtil:Lcom/htc/android/htcime/util/PostSpellingUtil;

    add-int v7, v4, v3

    invoke-virtual {v6, v4, v7}, Lcom/htc/android/htcime/util/PostSpellingUtil;->addErrorSpan(II)Z

    goto/16 :goto_0

    .line 5796
    :sswitch_5
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 5797
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 5798
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-static {v7}, Lcom/htc/android/htcime/XT9IME/XT9IME;->pureCandStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5800
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v7}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->getSapnBGColor()Landroid/text/style/BackgroundColorSpan;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5801
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/htc/android/htcime/util/PostSpellingUtil;->sDotUnderlineSpan:Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5802
    invoke-interface {p1, v4, v1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 5803
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    const/4 v7, 0x1

    invoke-interface {p1, v6, v7}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 5805
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    iput v7, v6, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    .line 5807
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 5808
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->postReselect:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;

    invoke-virtual {v6}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->begin()V

    .line 5809
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeReselectWord([CI)I

    .line 5810
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL_Reselect(Landroid/view/inputmethod/InputConnection;)I

    move-result v6

    iput v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    .line 5811
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isReselectWCL:Z

    .line 5813
    iget v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    if-nez v6, :cond_7

    .line 5814
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->postReselect:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;

    invoke-virtual {v6}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->end()V

    .line 5819
    :goto_1
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 5820
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 5816
    :cond_7
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    sput-object v6, Lcom/htc/android/htcime/HTCIMMData;->mReselectWCLWord:Ljava/lang/String;

    .line 5817
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput v4, Lcom/htc/android/htcime/HTCIMMData;->mReselectWCLCursorStart:I
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 5821
    :catch_1
    move-exception v6

    goto/16 :goto_0

    .line 5827
    :sswitch_6
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-boolean v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isReselectWCL:Z

    if-nez v6, :cond_8

    .line 5828
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 5830
    :cond_8
    invoke-virtual {p0, p3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->getCandString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->pureCandStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5831
    .local v2, err_s:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput-object v2, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    .line 5833
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 5834
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-static {v7}, Lcom/htc/android/htcime/XT9IME/XT9IME;->pureCandStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5835
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v7}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->getSapnBGColor()Landroid/text/style/BackgroundColorSpan;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5836
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/htc/android/htcime/util/PostSpellingUtil;->sDotUnderlineSpan:Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5837
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/htcime/HTCIMEService;->setComposingText(Landroid/text/Spanned;I)V

    .line 5839
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput-object v2, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    .line 5840
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput-object v2, Lcom/htc/android/htcime/HTCIMMData;->mReselectWCLWord:Ljava/lang/String;

    goto/16 :goto_0

    .line 5850
    .end local v2           #err_s:Ljava/lang/String;
    :sswitch_7
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-boolean v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isReselectWCL:Z

    if-nez v6, :cond_9

    .line 5851
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 5853
    :cond_9
    invoke-static {p3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->pureCandStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5855
    .local v5, submitText:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 5856
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 5858
    invoke-direct {p0, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isPSCKnownWord(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 5859
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 5860
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPSUtil:Lcom/htc/android/htcime/util/PostSpellingUtil;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v6, v4, v7}, Lcom/htc/android/htcime/util/PostSpellingUtil;->removeErrorSpan(II)Z

    .line 5861
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mUDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->addWord([CI)I

    .line 5862
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v7}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->showToast(Ljava/lang/String;)V

    .line 5863
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->check_remove_previous_PSC_words(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5865
    :cond_a
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 5866
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPSUtil:Lcom/htc/android/htcime/util/PostSpellingUtil;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v6, v4, v7}, Lcom/htc/android/htcime/util/PostSpellingUtil;->removeErrorSpan(II)Z

    goto/16 :goto_0

    .line 5725
    :sswitch_data_0
    .sparse-switch
        0x3e -> :sswitch_2
        0x42 -> :sswitch_3
        0x43 -> :sswitch_1
        0x258 -> :sswitch_5
        0x259 -> :sswitch_4
        0x25a -> :sswitch_6
        0x25b -> :sswitch_0
        0x25c -> :sswitch_7
    .end sparse-switch
.end method

.method private inBlackList(C)Z
    .locals 5
    .parameter "c"

    .prologue
    .line 5022
    const/4 v1, 0x0

    .line 5023
    .local v1, retVal:Z
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mBalckList:[C

    array-length v2, v4

    .line 5025
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 5026
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mBalckList:[C

    aget-char v3, v4, v0

    .line 5027
    .local v3, tmp:C
    if-ne v3, p1, :cond_1

    .line 5028
    const/4 v1, 0x1

    .line 5030
    .end local v1           #retVal:Z
    .end local v3           #tmp:C
    :cond_0
    return v1

    .line 5025
    .restart local v1       #retVal:Z
    .restart local v3       #tmp:C
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isEndWithLetter(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 7508
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 7511
    :goto_0
    return v1

    .line 7510
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 7511
    .local v0, lastC:C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    goto :goto_0
.end method

.method private isFstCandRC()Z
    .locals 1

    .prologue
    .line 5175
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isRCWord(I)Z

    move-result v0

    return v0
.end method

.method private isKnowWord(Ljava/lang/String;)Z
    .locals 8
    .parameter "word"

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    .line 5146
    if-nez p1, :cond_1

    .line 5170
    :cond_0
    :goto_0
    return v2

    .line 5149
    :cond_1
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->prev_selectionList:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 5152
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->prev_selectionList:Ljava/lang/String;

    const-string v5, "[<>]"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->prev_selectionList:Ljava/lang/String;

    .line 5155
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->prev_selectionList:Ljava/lang/String;

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5158
    .local v1, words:[Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v3, v7, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v3, v7, :cond_4

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-nez v3, :cond_4

    .line 5160
    :cond_3
    const/4 v0, 0x1

    .line 5165
    .local v0, idx:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_5

    .line 5166
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 5165
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5162
    .end local v0           #idx:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #idx:I
    goto :goto_1

    .line 5170
    .end local v0           #idx:I
    .end local v1           #words:[Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeIsKnownWord([CI)I

    move-result v3

    if-eq v3, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNonWordNoSuggestion()Z
    .locals 1

    .prologue
    .line 5137
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isNonWordNoSuggestion:Z

    return v0
.end method

.method private isPSCKnownWord(Ljava/lang/String;)Z
    .locals 5
    .parameter "word"

    .prologue
    const/4 v3, 0x1

    .line 5696
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isKnowWord(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5697
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 5698
    .local v2, s:[C
    const/4 v0, 0x0

    .line 5701
    .local v0, bKnownWord:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    if-nez v0, :cond_2

    .line 5702
    aget-char v4, v2, v1

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v3

    .line 5701
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5702
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .end local v0           #bKnownWord:Z
    .end local v1           #i:I
    .end local v2           #s:[C
    :cond_1
    move v0, v3

    .line 5708
    :cond_2
    return v0
.end method

.method public static isQWERTYKDB()Z
    .locals 3

    .prologue
    .line 714
    sget v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sCurrKbdID:I

    const v2, 0xffff

    and-int v0, v1, v2

    .line 715
    .local v0, kbdTypeID:I
    const/16 v1, 0xd09

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc09

    if-eq v0, v1, :cond_0

    const v1, 0x8d09

    if-eq v0, v1, :cond_0

    const v1, 0x8c09

    if-eq v0, v1, :cond_0

    const v1, 0x9d09

    if-eq v0, v1, :cond_0

    const v1, 0x9c09

    if-ne v0, v1, :cond_1

    .line 718
    :cond_0
    const/4 v1, 0x1

    .line 720
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRCWord(I)Z
    .locals 7
    .parameter "selLst_Index"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5180
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandCount()I

    move-result v4

    if-gt v4, v3, :cond_1

    .line 5199
    :cond_0
    :goto_0
    return v2

    .line 5183
    :cond_1
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    if-eq p1, v4, :cond_0

    .line 5186
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v1

    .line 5187
    .local v1, exactWord:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v0

    .line 5188
    .local v0, cand:Ljava/lang/String;
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 5189
    :cond_2
    const-string v4, "XT9IME"

    const-string v5, "[isRCWord] Error in nativeGetCandString() : exactWord = %s, cand = %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5193
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 5196
    invoke-static {p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeIsSCWord(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 5199
    goto :goto_0
.end method

.method private lookupSortedAutoCompIdx(I)I
    .locals 3
    .parameter "idx"

    .prologue
    .line 7519
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mStartIdx:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mEndIdx:I

    if-le p1, v0, :cond_1

    .line 7528
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 7522
    .restart local p1
    :cond_1
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mStartIdx:I

    if-ne p1, v0, :cond_2

    .line 7523
    const-string v0, "Eric_J"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "swap index from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mEndIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7524
    iget p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mEndIdx:I

    goto :goto_0

    .line 7527
    :cond_2
    const-string v0, "Eric_J"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "swap index from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7528
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method protected static native nativeASDBAddWord([C[C)I
.end method

.method protected static native nativeAddSymbol(I)V
.end method

.method protected static native nativeAddSymbolOnly(II)V
.end method

.method protected static native nativeBuildCandList()I
.end method

.method protected static native nativeClearAllSymb()V
.end method

.method protected static native nativeClearOneSymb()V
.end method

.method protected static native nativeClearOneSymbOnly()V
.end method

.method protected static native nativeContextBreak()I
.end method

.method protected static native nativeContextFill(Ljava/lang/String;)I
.end method

.method protected static native nativeDisableSubstituteString(I)V
.end method

.method protected static native nativeDumpUDB()I
.end method

.method protected static native nativeEnableAutoDownshift(I)V
.end method

.method protected static native nativeEnableMDB(Z)I
.end method

.method protected static native nativeEnableSpellCheck(Z)V
.end method

.method protected static native nativeEnableWordStem(I)V
.end method

.method protected static native nativeExportUDB(Ljava/lang/String;)I
.end method

.method protected static native nativeGetActiveWordIndex()I
.end method

.method protected static native nativeGetCandCount()I
.end method

.method protected static native nativeGetCandString(I)Ljava/lang/String;
.end method

.method protected static native nativeGetSubstituteString(I)Ljava/lang/String;
.end method

.method protected static native nativeGetWCLString()Ljava/lang/String;
.end method

.method protected static native nativeGetWordSrcType(I)I
.end method

.method protected static native nativeImportUDB(Ljava/lang/String;)I
.end method

.method protected static native nativeInitial(Landroid/content/res/AssetManager;)I
.end method

.method protected static native nativeIsKnownWord([CI)I
.end method

.method protected static native nativeIsMDBEnabled()Z
.end method

.method protected static native nativeIsSCWord(I)Z
.end method

.method protected static native nativeLockWord(I)I
.end method

.method protected static native nativeNoteCandAccept(I)I
.end method

.method protected static native nativeNoteWordCommit(Ljava/lang/String;)I
.end method

.method protected static native nativePreRegCorrect(II)I
.end method

.method protected static native nativePreRegCorrectDone()V
.end method

.method protected static native nativeProcessKey(I)I
.end method

.method protected static native nativeProcessKeyBySymbol(CZI)I
.end method

.method protected static native nativeProcessKeyOnly(I)I
.end method

.method protected static native nativeProcessTap(III)I
.end method

.method protected static native nativeProcessTapOnly(III)I
.end method

.method protected static native nativeProcessTrace([I)I
.end method

.method protected static native nativeReselectWord([CI)I
.end method

.method protected static native nativeResetUDB()I
.end method

.method protected static native nativeScanArticleForCustomWord([C)I
.end method

.method protected static native nativeSetAmbigiousMode()V
.end method

.method protected static native nativeSetAutoAppend(I)V
.end method

.method protected static native nativeSetAutoSubstitute(II)I
.end method

.method protected static native nativeSetBigramEnabled(Z)I
.end method

.method protected static native nativeSetExactInList(I)V
.end method

.method protected static native nativeSetInputMode(I)V
.end method

.method protected static native nativeSetKdb(II)I
.end method

.method protected static native nativeSetKdbPage(I)V
.end method

.method protected static native nativeSetLanguage(II)V
.end method

.method protected static native nativeSetMDB(I)V
.end method

.method protected static native nativeSetMultiTapDone()V
.end method

.method protected static native nativeSetMultiTapMode()V
.end method

.method protected static native nativeSetSelLstMode(I)V
.end method

.method protected static native nativeSetShiftMode(I)V
.end method

.method protected static native nativeSetWordComplete(I)V
.end method

.method protected static native nativeSetWordCompletePoint(I)V
.end method

.method protected static native nativeSetWordPredict(I)V
.end method

.method protected static native nativeUDBReload()V
.end method

.method private promoteLowerCaseFREQ(ILjava/lang/String;)V
    .locals 5
    .parameter "idxPromote"
    .parameter "wordPromote"

    .prologue
    const/4 v4, 0x2

    .line 5247
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    .line 5296
    :cond_0
    :goto_0
    return-void

    .line 5249
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    if-eq p1, v2, :cond_0

    .line 5251
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 5256
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v2, v4, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-nez v2, :cond_0

    .line 5280
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    const-string v3, "\\|"

    const/16 v4, 0x15

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 5286
    .local v1, words:[Ljava/lang/String;
    const-string v2, "XT9IME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[promoteLowerCaseFREQ] mHTCIMEInfo.idxEngAdvised = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5287
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    aget-object v0, v1, v2

    .line 5290
    .local v0, word_EngAdvis:Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 5291
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeReselectWord([CI)I

    .line 5292
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeNoteCandAccept(I)I

    .line 5293
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    goto :goto_0
.end method

.method public static pureCandStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "CandString"

    .prologue
    const/4 v4, -0x1

    .line 2018
    const/16 v3, 0x3c

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2019
    .local v1, iWordCompStart:I
    const/16 v3, 0x3e

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2021
    .local v0, iWordCompEnd:I
    if-eq v4, v1, :cond_0

    if-eq v4, v0, :cond_0

    .line 2023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2030
    .local v2, retStr:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2027
    .end local v2           #retStr:Ljava/lang/String;
    :cond_0
    move-object v2, p0

    .restart local v2       #retStr:Ljava/lang/String;
    goto :goto_0
.end method

.method public static final sExportUDB(Ljava/lang/String;)V
    .locals 0
    .parameter "targetPath"

    .prologue
    .line 7252
    return-void
.end method

.method public static final sImportUDB(Ljava/lang/String;)V
    .locals 0
    .parameter "sourcePath"

    .prologue
    .line 7256
    return-void
.end method

.method private scanArticleForCustomWord_ReceiverReg()V
    .locals 2

    .prologue
    .line 5311
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5313
    .local v0, mAddWordFilter:Landroid/content/IntentFilter;
    const-string v1, "htc.android.intent.action.SCAN_FOR_CUSTOM_WORD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5315
    new-instance v1, Lcom/htc/android/htcime/XT9IME/XT9IME$1;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$1;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;)V

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAddWordIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 5355
    return-void
.end method

.method private scanArticleForCustomWord_ReceiverUnReg()V
    .locals 0

    .prologue
    .line 5359
    return-void
.end method

.method private setNonWordNoSuggestionStatus(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 5140
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput-boolean p1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imNonWord:Z

    iput-boolean p1, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isNonWordNoSuggestion:Z

    .line 5141
    return-void
.end method

.method private sortAutoComp(Ljava/lang/String;)Ljava/lang/String;
    .locals 36
    .parameter "origWCL"

    .prologue
    .line 7326
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAC_Start_with_CVB:Z

    .line 7327
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAC_Start_with_A:Z

    .line 7330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mExactWordSB:Ljava/lang/StringBuilder;

    .line 7331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mFirstACWordSB:Ljava/lang/StringBuilder;

    .line 7332
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mExactWordLen:I

    .line 7335
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mEndIdx:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mStartIdx:I

    .line 7336
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 7504
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 7338
    .restart local p1
    :cond_1
    const/16 v32, -0x1

    .line 7339
    .local v32, totalCandidates:I
    const/16 v16, -0x1

    .line 7340
    .local v16, curIdx:I
    const/16 v18, -0x1

    .line 7341
    .local v18, firstAutoCompIdx:I
    const/16 v26, -0x1

    .line 7342
    .local v26, shortestMatchIdx:I
    const/16 v17, -0x1

    .line 7344
    .local v17, defaultShortestLen:I
    const/16 v29, -0x1

    .line 7345
    .local v29, solidMatchIdx:I
    const/16 v34, -0x1

    .line 7347
    .local v34, weakMatchIdx:I
    const/4 v2, 0x0

    .line 7348
    .local v2, exactWord:Ljava/lang/String;
    const/16 v28, 0x0

    .line 7349
    .local v28, soildMatchStr:Ljava/lang/String;
    const/16 v35, 0x0

    .line 7351
    .local v35, weakMatchStr:Ljava/lang/String;
    const-string v22, ""

    .line 7352
    .local v22, retVal:Ljava/lang/String;
    const/16 v27, 0x0

    .line 7354
    .local v27, shortestMatchStr:Ljava/lang/String;
    new-instance v30, Ljava/util/StringTokenizer;

    const-string v3, "|"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7355
    .local v30, st:Ljava/util/StringTokenizer;
    invoke-virtual/range {v30 .. v30}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v32

    .line 7357
    const/16 v16, -0x1

    .line 7358
    :cond_2
    :goto_1
    invoke-virtual/range {v30 .. v30}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 7359
    add-int/lit8 v16, v16, 0x1

    .line 7360
    invoke-virtual/range {v30 .. v30}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 7362
    .local v5, str:Ljava/lang/String;
    if-nez v16, :cond_3

    .line 7363
    move-object v2, v5

    .line 7364
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isEndWithLetter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mExactWordSB:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mExactWordSB:Ljava/lang/StringBuilder;

    .line 7368
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mExactWordLen:I

    goto :goto_1

    .line 7372
    :cond_3
    const/16 v3, 0x3c

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    .line 7373
    .local v20, idx:I
    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_2

    .line 7375
    const/16 v23, 0x0

    .line 7377
    .local v23, samePrefix:Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAC_Start_with_CVB:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAC_Start_with_A:Z

    if-nez v3, :cond_5

    .line 7378
    :cond_4
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mExactWordLen:I

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v23

    .line 7380
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAC_Start_with_CVB:Z

    if-nez v3, :cond_8

    .line 7381
    if-eqz v23, :cond_8

    .line 7382
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->CVB_LEN:I

    add-int/lit8 v19, v3, -0x1

    .local v19, i:I
    :goto_2
    if-ltz v19, :cond_8

    .line 7383
    const/4 v6, 0x1

    add-int/lit8 v7, v20, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->CVB:[Ljava/lang/String;

    aget-object v8, v3, v19

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAC_Start_with_CVB:Z

    .line 7384
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAC_Start_with_CVB:Z

    if-eqz v3, :cond_7

    .line 7385
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->DEBUG_DHA:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->CVB_MATCH_STR:Ljava/lang/String;

    .line 7386
    :cond_6
    const/16 v19, 0x0

    .line 7382
    :cond_7
    add-int/lit8 v19, v19, -0x1

    goto :goto_2

    .line 7392
    .end local v19           #i:I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAC_Start_with_A:Z

    if-nez v3, :cond_9

    .line 7393
    if-eqz v23, :cond_9

    .line 7394
    const/4 v6, 0x1

    add-int/lit8 v7, v20, 0x1

    const-string v8, "a"

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAC_Start_with_A:Z

    .line 7395
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAC_Start_with_A:Z

    if-eqz v3, :cond_9

    .line 7396
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->DEBUG_DHA:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->A_MATCH_STR:Ljava/lang/String;

    .line 7401
    :cond_9
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->DEBUG_DHA:Z

    if-eqz v3, :cond_a

    .line 7402
    const-string v3, "DHA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "samePrefix = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7403
    const-string v3, "DHA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAC_Start_with_CVB = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAC_Start_with_CVB:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7404
    const-string v3, "DHA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAC_Start_with_A = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAC_Start_with_A:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7405
    const-string v3, "DHA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CVB_MATCH_STR = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->CVB_MATCH_STR:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7406
    const-string v3, "DHA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A_MATCH_STR = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->A_MATCH_STR:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7410
    :cond_a
    const/16 v3, 0x3e

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    .line 7411
    .local v21, idx2:I
    if-ltz v21, :cond_0

    move/from16 v0, v21

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 7414
    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    .line 7415
    .local v33, userInputPart:Ljava/lang/String;
    add-int/lit8 v3, v20, 0x1

    move/from16 v0, v21

    invoke-virtual {v5, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 7416
    .local v11, autoCompPart:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    .line 7418
    .local v12, autoCompPartLen:I
    const/16 v25, 0x0

    .line 7420
    .local v25, shortestMatchFound:Z
    if-lez v17, :cond_e

    .line 7421
    move/from16 v0, v17

    if-ge v12, v0, :cond_b

    .line 7422
    const/16 v25, 0x1

    .line 7423
    move/from16 v17, v12

    .line 7432
    :cond_b
    :goto_3
    if-nez v25, :cond_c

    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_d

    .line 7434
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mFirstACWordSB:Ljava/lang/StringBuilder;

    .line 7435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mFirstACWordSB:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mFirstACWordSB:Ljava/lang/StringBuilder;

    .line 7439
    :cond_d
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_f

    .line 7440
    move/from16 v18, v16

    goto/16 :goto_1

    .line 7428
    :cond_e
    const/16 v25, 0x1

    .line 7429
    move/from16 v17, v12

    goto :goto_3

    .line 7441
    :cond_f
    if-eqz v25, :cond_2

    .line 7442
    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 7443
    move/from16 v29, v16

    .line 7444
    move-object/from16 v28, v5

    goto/16 :goto_1

    .line 7446
    :cond_10
    move/from16 v34, v16

    .line 7447
    move-object/from16 v35, v5

    goto/16 :goto_1

    .line 7453
    .end local v5           #str:Ljava/lang/String;
    .end local v11           #autoCompPart:Ljava/lang/String;
    .end local v12           #autoCompPartLen:I
    .end local v20           #idx:I
    .end local v21           #idx2:I
    .end local v23           #samePrefix:Z
    .end local v25           #shortestMatchFound:Z
    .end local v33           #userInputPart:Ljava/lang/String;
    :cond_11
    const/4 v3, -0x1

    move/from16 v0, v29

    if-eq v0, v3, :cond_18

    .line 7454
    if-eqz v28, :cond_15

    if-eqz v35, :cond_15

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_15

    const/4 v13, 0x1

    .line 7455
    .local v13, b1:Z
    :goto_4
    if-eqz v28, :cond_16

    if-nez v35, :cond_16

    const/4 v14, 0x1

    .line 7457
    .local v14, b2:Z
    :goto_5
    if-nez v13, :cond_12

    if-eqz v14, :cond_17

    .line 7458
    :cond_12
    move/from16 v26, v29

    .line 7459
    move-object/from16 v27, v28

    .line 7469
    .end local v13           #b1:Z
    .end local v14           #b2:Z
    :cond_13
    :goto_6
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_0

    const/4 v3, -0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_0

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 7472
    new-instance v30, Ljava/util/StringTokenizer;

    .end local v30           #st:Ljava/util/StringTokenizer;
    const-string v3, "|"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7473
    .restart local v30       #st:Ljava/util/StringTokenizer;
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .line 7474
    .local v24, sb:Ljava/lang/StringBuffer;
    const/16 v16, -0x1

    .line 7475
    add-int/lit8 v31, v32, -0x1

    .line 7477
    .local v31, tmpI:I
    :cond_14
    :goto_7
    invoke-virtual/range {v30 .. v30}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 7478
    const/4 v15, 0x0

    .line 7479
    .local v15, bSkip:Z
    add-int/lit8 v16, v16, 0x1

    .line 7480
    invoke-virtual/range {v30 .. v30}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 7482
    .restart local v5       #str:Ljava/lang/String;
    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    .line 7483
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 7484
    const-string v3, "|"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 7485
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 7486
    move/from16 v0, v16

    move/from16 v1, v31

    if-eq v0, v1, :cond_14

    .line 7487
    const-string v3, "|"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    goto :goto_7

    .line 7454
    .end local v5           #str:Ljava/lang/String;
    .end local v15           #bSkip:Z
    .end local v24           #sb:Ljava/lang/StringBuffer;
    .end local v31           #tmpI:I
    :cond_15
    const/4 v13, 0x0

    goto :goto_4

    .line 7455
    .restart local v13       #b1:Z
    :cond_16
    const/4 v14, 0x0

    goto :goto_5

    .line 7461
    .restart local v14       #b2:Z
    :cond_17
    move/from16 v26, v34

    .line 7462
    move-object/from16 v27, v35

    goto :goto_6

    .line 7464
    .end local v13           #b1:Z
    .end local v14           #b2:Z
    :cond_18
    const/4 v3, -0x1

    move/from16 v0, v34

    if-eq v0, v3, :cond_13

    .line 7465
    move/from16 v26, v34

    .line 7466
    move-object/from16 v27, v35

    goto :goto_6

    .line 7489
    .restart local v5       #str:Ljava/lang/String;
    .restart local v15       #bSkip:Z
    .restart local v24       #sb:Ljava/lang/StringBuffer;
    .restart local v31       #tmpI:I
    :cond_19
    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_1a

    .line 7490
    const/4 v15, 0x1

    goto :goto_7

    .line 7492
    :cond_1a
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 7493
    move/from16 v0, v16

    move/from16 v1, v31

    if-eq v0, v1, :cond_14

    .line 7494
    const-string v3, "|"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    goto :goto_7

    .line 7499
    .end local v5           #str:Ljava/lang/String;
    .end local v15           #bSkip:Z
    :cond_1b
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    .line 7501
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mStartIdx:I

    .line 7502
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mEndIdx:I

    move-object/from16 p1, v22

    .line 7504
    goto/16 :goto_0
.end method


# virtual methods
.method public GetQwRegInfo(C)Ljava/lang/String;
    .locals 3
    .parameter "input_char"

    .prologue
    .line 4600
    const-string v0, ""

    .line 4602
    .local v0, ret_str:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    .line 4603
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->QwCharRegInfo:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x61

    aget-object v0, v1, v2

    .line 4607
    return-object v0
.end method

.method public HandleXT9Key(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;I)Z
    .locals 9
    .parameter "InputConnection"
    .parameter "keyIndex"
    .parameter "event"
    .parameter "sip_state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2256
    const/4 v0, 0x1

    .line 2260
    .local v0, bRet:Z
    invoke-virtual {p0, p4, p2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->mapXT9KeyIndexToKeyCode(II)I

    move-result v1

    .line 2264
    .local v1, real_handle_key:I
    const/4 v3, -0x1

    if-ne v3, v1, :cond_1

    .line 2419
    :cond_0
    :goto_0
    return v6

    .line 2267
    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 2401
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v6, v3, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_doLagAlert:Z

    .line 2404
    iget-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSelChange:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    if-eqz v3, :cond_2

    .line 2407
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeLockWord(I)I

    .line 2408
    iput-boolean v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSelChange:Z

    .line 2410
    :cond_2
    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeProcessKey(I)I

    .line 2412
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL(Landroid/view/inputmethod/InputConnection;)I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    goto :goto_0

    .line 2270
    :sswitch_0
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v6, v3, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_doLagAlert:Z

    .line 2272
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 2277
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v2

    .line 2279
    .local v2, sTemp:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 2281
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeDisableSubstituteString(I)V

    .line 2282
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 2283
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v4, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2288
    :cond_3
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->TYPED_SPAN:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanBGColor(Landroid/text/style/BackgroundColorSpan;)V

    .line 2289
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->FG_TYPED_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanFGColor(Landroid/text/style/ForegroundColorSpan;)V

    .line 2290
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearOneSymb()V

    .line 2291
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL(Landroid/view/inputmethod/InputConnection;)I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    goto :goto_0

    .line 2306
    .end local v2           #sTemp:Ljava/lang/String;
    :cond_4
    const/16 v3, 0x43

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->doNormalKey(I)V

    .line 2308
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->bigram:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;

    invoke-virtual {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;->onDelKey()V

    goto :goto_0

    .line 2314
    :sswitch_1
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v6, v3, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_doLagAlert:Z

    .line 2317
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 2319
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4, v7}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2320
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->NotifyWordCommitFirm(Ljava/lang/String;I)V

    .line 2322
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput-boolean v6, v3, Lcom/htc/android/htcime/Intf/HTCIMData;->passUpdateSelection:Z

    .line 2323
    iput-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 2324
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 2361
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/htc/android/htcime/XT9IME/XT9IME;->mLastSpaceTime:J

    goto/16 :goto_0

    .line 2347
    :cond_6
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_5

    .line 2348
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2350
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->doubleSpaceForPreiod(Landroid/view/inputmethod/InputConnection;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2351
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3, v6, v7}, Lcom/htc/android/htcime/HTCIMEService;->deleteSurroundingText(II)Z

    .line 2352
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string v4, ""

    const-string v5, ". "

    invoke-virtual {p0, v3, v4, v5, v7}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2357
    :goto_2
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_1

    .line 2356
    :cond_7
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string v4, ""

    const-string v5, " "

    invoke-virtual {p0, v3, v4, v5, v7}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 2365
    :sswitch_2
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2368
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->getWCLSelectionAtButton()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/16 v4, 0x17

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventUp(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2372
    :cond_8
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v4, v7}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2373
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->NotifyWordCommitFirm(Ljava/lang/String;I)V

    .line 2375
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput-boolean v6, v3, Lcom/htc/android/htcime/Intf/HTCIMData;->passUpdateSelection:Z

    .line 2376
    iput-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 2377
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    goto/16 :goto_0

    .line 2381
    :cond_9
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendKeyChar(C)V

    goto/16 :goto_0

    .line 2387
    :sswitch_3
    iget-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSelChange:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    if-eqz v3, :cond_a

    .line 2390
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeLockWord(I)I

    .line 2391
    iput-boolean v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSelChange:Z

    .line 2393
    :cond_a
    const/16 v3, 0x30

    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeAddSymbol(I)V

    .line 2397
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL(Landroid/view/inputmethod/InputConnection;)I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    goto/16 :goto_0

    .line 2267
    nop

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_0
        0x68 -> :sswitch_1
        0x69 -> :sswitch_2
        0x200 -> :sswitch_3
    .end sparse-switch
.end method

.method public addUserWord(Ljava/lang/String;)V
    .locals 3
    .parameter "addUserWord"

    .prologue
    .line 5051
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mUDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->addWord([CI)I

    .line 5052
    return-void
.end method

.method public addWordToUDBBuffer(Ljava/lang/String;)V
    .locals 4
    .parameter "word"

    .prologue
    .line 2045
    iget-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enableOnFlyAddWord:Z

    if-eqz v0, :cond_0

    .line 2047
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultiTapInputSequ:[C

    iget v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultiTapInputSequIndex:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 2048
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultiTapInputSequIndex:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultiTapInputSequIndex:I

    .line 2053
    :cond_0
    return-void
.end method

.method public buildSCCand(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 6
    .parameter "word"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3690
    .local p2, suggestion_words:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->sIsTraceKeyboard:Z

    if-eqz v4, :cond_1

    .line 3691
    :cond_0
    const/4 v1, 0x0

    .line 3705
    :goto_0
    return v1

    .line 3693
    :cond_1
    const/4 v1, 0x1

    .line 3694
    .local v1, isNonWord:Z
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeReselectWord([CI)I

    .line 3695
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isKnowWord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3696
    const/4 v1, 0x0

    .line 3697
    :cond_2
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetWCLString()Ljava/lang/String;

    move-result-object v3

    .line 3699
    .local v3, result:Ljava/lang/String;
    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3700
    .local v2, rawData:[Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 3701
    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->pureCandStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3700
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3704
    :cond_3
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    goto :goto_0
.end method

.method buildWCL(Landroid/view/inputmethod/InputConnection;)I
    .locals 6
    .parameter "InputConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x13

    .line 1220
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandCount()I

    move-result v1

    .line 1224
    .local v1, ret:I
    if-lez v1, :cond_5

    .line 1228
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    if-ne v4, v2, :cond_1

    .line 1229
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    const/4 v3, 0x0

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    .line 1234
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    .line 1235
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 1236
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 1245
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    if-ne v4, v2, :cond_2

    .line 1247
    const/4 v1, 0x1

    .line 1248
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    .line 1254
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    .line 1255
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    .line 1257
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1259
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1262
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1263
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1266
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1293
    :goto_2
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 1299
    :goto_3
    return v1

    .line 1231
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetActiveWordIndex()I

    move-result v3

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    goto :goto_0

    .line 1294
    :catch_0
    move-exception v2

    goto :goto_3

    .line 1251
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetWCLString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    goto :goto_1

    .line 1270
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v0

    .line 1272
    .local v0, newStr:Ljava/lang/String;
    if-nez v0, :cond_4

    .line 1273
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v0

    .line 1275
    :cond_4
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1276
    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    goto :goto_2

    .line 1282
    .end local v0           #newStr:Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 1284
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1285
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1287
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1289
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public buildWCL_AutoCompleteText([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 10
    .parameter "completions"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1470
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-nez v5, :cond_0

    .line 1471
    const-string v5, "Eric_J"

    const-string v6, "[buildWCL_AutoCompleteText] Received IMF AutoCompletion message, but not allowed in current scenario!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :goto_0
    return-void

    .line 1476
    :cond_0
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1478
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-boolean v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    if-eqz v5, :cond_1

    const-string v5, "Eric_J"

    const-string v6, "[buildWCL_AutoCompleteText] isIMFAutoCompletion flag reset"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->IMFcompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1481
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput-boolean v8, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    goto :goto_0

    .line 1485
    :cond_2
    if-nez p1, :cond_3

    .line 1486
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 1487
    const-string v5, "Eric_J"

    const-string v6, "[buildWCL_AutoCompleteText] completions array received from IMF is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1491
    :cond_3
    const/4 v4, 0x0

    .line 1492
    .local v4, valid_completions_count:I
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 1493
    .local v3, stringWCL:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_8

    .line 1494
    aget-object v0, p1, v1

    .line 1495
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1496
    if-eqz v4, :cond_4

    .line 1497
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1499
    :cond_4
    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1501
    add-int/lit8 v4, v4, 0x1

    .line 1493
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1507
    :cond_6
    if-nez v0, :cond_7

    .line 1508
    const-string v5, "Eric_J"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[buildWCL_AutoCompleteText] completions#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is null!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1509
    :cond_7
    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1510
    const-string v5, "Eric_J"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[buildWCL_AutoCompleteText] completions#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " text is null!  Label is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1514
    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_8
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput-object v3, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    .line 1516
    if-nez v4, :cond_9

    .line 1517
    const-string v5, "Eric_J"

    const-string v6, "[buildWCL_AutoCompleteText] There is no and valid completions received from IMF, do nothing!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    goto/16 :goto_0

    .line 1522
    :cond_9
    iput v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    .line 1525
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    new-array v6, v6, [Landroid/view/inputmethod/CompletionInfo;

    iput-object v6, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->IMFcompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1526
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    array-length v5, p1

    if-ge v1, v5, :cond_b

    .line 1527
    aget-object v5, p1, v1

    if-eqz v5, :cond_a

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 1528
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->IMFcompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v6, p1, v1

    aput-object v6, v5, v2

    .line 1529
    add-int/lit8 v2, v2, 0x1

    .line 1526
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1533
    :cond_b
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-boolean v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    if-nez v5, :cond_c

    .line 1534
    const-string v5, "Eric_J"

    const-string v6, "[buildWCL_AutoCompleteText] IMF\'s Auto-Completion coming, set isIMFAutoCompletion flage!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_c
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput-boolean v9, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    .line 1538
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    .line 1539
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput v8, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 1540
    iput-boolean v9, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    .line 1544
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    goto/16 :goto_0
.end method

.method buildWCL_QW(Landroid/view/inputmethod/InputConnection;)I
    .locals 7
    .parameter "InputConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1310
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandCount()I

    move-result v1

    .line 1312
    .local v1, ret:I
    if-lez v1, :cond_5

    .line 1314
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1317
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetActiveWordIndex()I

    move-result v3

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    .line 1318
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    .line 1319
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 1320
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 1323
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1324
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1325
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1327
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1396
    :goto_0
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 1398
    return v1

    .line 1331
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 1332
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->prev_selectionList:Ljava/lang/String;

    .line 1335
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1336
    .local v0, orgPasteCandString:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 1337
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1339
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 1340
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1345
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nonWordNoSuggestionVibrate(ILjava/lang/String;)V

    .line 1347
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->autoSubstitute:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;

    invoke-virtual {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;->isActive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1348
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1352
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetWCLString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    .line 1354
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->sortAutoComp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    .line 1357
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetActiveWordIndex()I

    move-result v3

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    .line 1359
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v6, v4}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    .line 1360
    iput-boolean v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    .line 1366
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->famousWordRule:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->getQWSuggestion(Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;)I

    move-result v3

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    .line 1367
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 1369
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(I)V

    goto/16 :goto_0

    .line 1342
    :cond_4
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->autoSubstitute:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;

    invoke-virtual {v2, v0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;->save(Ljava/lang/String;)V

    goto :goto_1

    .line 1385
    .end local v0           #orgPasteCandString:Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 1387
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p0, p1, v2, v3, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1388
    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1390
    :cond_6
    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1392
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    goto/16 :goto_0
.end method

.method buildWCL_Reselect(Landroid/view/inputmethod/InputConnection;)I
    .locals 6
    .parameter "InputConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x13

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1550
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandCount()I

    move-result v0

    .line 1552
    .local v0, ret:I
    if-lez v0, :cond_4

    .line 1556
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    if-ne v5, v1, :cond_0

    .line 1557
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput v3, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    .line 1562
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    iput v4, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    .line 1563
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    iput v4, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 1564
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    iput v4, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 1567
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    if-ne v5, v1, :cond_1

    .line 1569
    const/4 v0, 0x1

    .line 1570
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    .line 1576
    :goto_1
    if-ne v2, v0, :cond_3

    .line 1577
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isKnowWord(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->setNonWordNoSuggestionStatus(Z)V

    .line 1581
    :goto_3
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    invoke-virtual {v1, v4, v5, v3}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    .line 1582
    iput-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    .line 1591
    :goto_4
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 1593
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1595
    return v0

    .line 1559
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetActiveWordIndex()I

    move-result v4

    iput v4, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    goto :goto_0

    .line 1573
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetWCLString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v1, v3

    .line 1577
    goto :goto_2

    .line 1579
    :cond_3
    invoke-direct {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->setNonWordNoSuggestionStatus(Z)V

    goto :goto_3

    .line 1587
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    goto :goto_4
.end method

.method buildWCL_Trace(Landroid/view/inputmethod/InputConnection;)I
    .locals 6
    .parameter "ic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1410
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandCount()I

    move-result v0

    .line 1412
    .local v0, ret:I
    if-lez v0, :cond_2

    .line 1414
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1415
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->prev_selectionList:Ljava/lang/String;

    .line 1418
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    iput v2, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 1419
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1420
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1421
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1426
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1430
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetWCLString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    .line 1432
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetActiveWordIndex()I

    move-result v2

    iput v2, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    .line 1433
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->famousWordRule:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->getQWSuggestion(Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;)I

    move-result v2

    iput v2, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    .line 1434
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    iput v2, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 1435
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    .line 1436
    iput-boolean v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    .line 1457
    :goto_1
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 1459
    return v0

    .line 1423
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->autoSubstitute:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;->save(Ljava/lang/String;)V

    goto :goto_0

    .line 1447
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1449
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1450
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1453
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    goto :goto_1
.end method

.method public check_remove_previous_PSC_words(Ljava/lang/String;)V
    .locals 0
    .parameter "word"

    .prologue
    .line 7603
    return-void
.end method

.method clearWCL()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1693
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mEndIdx:I

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mStartIdx:I

    .line 1694
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->setDefaultWCLText(Ljava/lang/String;I)V

    .line 1695
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reset()V

    .line 1696
    iput v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    .line 1697
    iput-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    .line 1698
    iput-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSelChange:Z

    .line 1699
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearNonWordVibrateCount()V

    .line 1700
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput-boolean v2, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isReselectWCL:Z

    .line 1701
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput v2, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    .line 1704
    iput v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mExactWordLen:I

    .line 1705
    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mExactWordSB:Ljava/lang/StringBuilder;

    .line 1706
    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mFirstACWordSB:Ljava/lang/StringBuilder;

    .line 1708
    return-void
.end method

.method clearWCL_GC()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1716
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mEndIdx:I

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mStartIdx:I

    .line 1717
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->setDefaultWCLText(Ljava/lang/String;I)V

    .line 1718
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reset()V

    .line 1719
    iput v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    .line 1720
    iput-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    .line 1721
    iput-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSelChange:Z

    .line 1722
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearNonWordVibrateCount()V

    .line 1725
    iput v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mExactWordLen:I

    .line 1726
    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mExactWordSB:Ljava/lang/StringBuilder;

    .line 1727
    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mFirstACWordSB:Ljava/lang/StringBuilder;

    .line 1730
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1731
    return-void
.end method

.method protected createKeyMapFactory()Lcom/htc/android/htcime/XT9IME/IKeyMapFactory;
    .locals 3

    .prologue
    .line 318
    const-string v0, "XT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createKeyMapFactory] sFeature_QWERTYStyle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->sFeature_QWERTYStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->sFeature_QWERTYStyle:I

    packed-switch v0, :pswitch_data_0

    .line 326
    const-string v0, "Eric_J"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown vaule : Feature_QWERTYStyle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->sFeature_QWERTYStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9PhoneKeyMapFactory;

    invoke-direct {v0}, Lcom/htc/android/htcime/XT9IME/XT9PhoneKeyMapFactory;-><init>()V

    :goto_0
    return-object v0

    .line 322
    :pswitch_0
    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9PhoneKeyMapFactory;

    invoke-direct {v0}, Lcom/htc/android/htcime/XT9IME/XT9PhoneKeyMapFactory;-><init>()V

    goto :goto_0

    .line 324
    :pswitch_1
    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9TabletKeyMapFactory;

    invoke-direct {v0}, Lcom/htc/android/htcime/XT9IME/XT9TabletKeyMapFactory;-><init>()V

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method doNormalKey(I)V
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    .line 2164
    return-void
.end method

.method doNormalKeyCap(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)V
    .locals 3
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2176
    const/4 v1, 0x0

    sget-object v2, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v1, v2}, Landroid/text/method/QwertyKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;

    move-result-object v0

    .line 2177
    .local v0, im:Landroid/text/method/KeyListener;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 2178
    return-void
.end method

.method public doesUserInputKnownWord()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 5204
    iget v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMode:I

    if-eq v2, v4, :cond_1

    .line 5231
    :cond_0
    :goto_0
    return v1

    .line 5207
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v0

    .line 5208
    .local v0, exactWord:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 5212
    const/4 v1, 0x0

    .line 5214
    .local v1, result:Z
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeIsKnownWord([CI)I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 5216
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->DEBUG_DHA:Z

    if-eqz v2, :cond_2

    .line 5217
    const-string v2, "DHA"

    const-string v3, "doesUserInputKnownWord case 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5219
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 5221
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    invoke-direct {p0, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isRCWord(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5223
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->DEBUG_DHA:Z

    if-eqz v2, :cond_4

    .line 5224
    const-string v2, "DHA"

    const-string v3, "doesUserInputKnownWord case 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5225
    const-string v2, "DHA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doesUserInputKnownWord firstCand = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5226
    const-string v2, "DHA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doesUserInputKnownWord exactWord = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5228
    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method doublePeriodPreprocess(C)V
    .locals 7
    .parameter "curr_uni_char"

    .prologue
    const/16 v6, 0x2e

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5035
    if-eq p1, v6, :cond_1

    .line 5046
    :cond_0
    :goto_0
    return-void

    .line 5038
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x64

    invoke-virtual {v1, v5, v3, v2}, Lcom/htc/android/htcime/HTCIMEService;->getTextBeforeCursor(III)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5040
    .local v0, textBeforCursor:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v1, v5, :cond_0

    .line 5043
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_0

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 5045
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v4, v3}, Lcom/htc/android/htcime/HTCIMEService;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method protected doubleSpaceForPreiod(Landroid/view/inputmethod/InputConnection;)Z
    .locals 11
    .parameter "inputContext"

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4966
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v7, 0xb

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletionPortrait:Z

    if-nez v6, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/htc/android/htcime/XT9IME/XT9IME;->mLastSpaceTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7d0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 4983
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v6, v10}, Lcom/htc/android/htcime/HTCIMEService;->getTextBeforeCursor(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4990
    .local v3, str:Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v6, v10, :cond_1

    .line 4991
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 4992
    .local v0, c_0:C
    invoke-direct {p0, v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->inBlackList(C)Z

    move-result v2

    .line 4993
    .local v2, inBlackList:Z
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_0

    move v1, v4

    .line 4995
    .local v1, endsWithSpace:Z
    :goto_0
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 5000
    .end local v0           #c_0:C
    .end local v1           #endsWithSpace:Z
    .end local v2           #inBlackList:Z
    .end local v3           #str:Ljava/lang/CharSequence;
    :goto_1
    return v4

    .restart local v0       #c_0:C
    .restart local v2       #inBlackList:Z
    .restart local v3       #str:Ljava/lang/CharSequence;
    :cond_0
    move v1, v5

    .line 4993
    goto :goto_0

    .end local v0           #c_0:C
    .end local v2           #inBlackList:Z
    .end local v3           #str:Ljava/lang/CharSequence;
    :cond_1
    move v4, v5

    .line 5000
    goto :goto_1
.end method

.method dummyRunForFroyo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 7135
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeBuildCandList()I

    .line 7136
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetWCLString()Ljava/lang/String;

    .line 7137
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    .line 7138
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeDisableSubstituteString(I)V

    .line 7139
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandCount()I

    .line 7140
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeEnableSpellCheck(Z)V

    .line 7141
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeProcessKey(I)I

    .line 7142
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeProcessKeyOnly(I)I

    .line 7143
    invoke-static {v2, v2, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeProcessTap(III)I

    .line 7144
    invoke-static {v2, v2, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeProcessTapOnly(III)I

    .line 7145
    new-array v0, v2, [I

    aput v2, v0, v3

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeProcessTrace([I)I

    .line 7146
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    .line 7147
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearOneSymb()V

    .line 7148
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearOneSymbOnly()V

    .line 7149
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 7150
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetMultiTapMode()V

    .line 7151
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetAmbigiousMode()V

    .line 7152
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetMultiTapDone()V

    .line 7153
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetShiftMode(I)V

    .line 7154
    invoke-static {v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetKdb(II)I

    .line 7155
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetKdbPage(I)V

    .line 7157
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeAddSymbol(I)V

    .line 7158
    invoke-static {v2, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeAddSymbolOnly(II)V

    .line 7159
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetWordComplete(I)V

    .line 7160
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetAutoAppend(I)V

    .line 7161
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetWordPredict(I)V

    .line 7162
    invoke-static {v2, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetAutoSubstitute(II)I

    .line 7163
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetInputMode(I)V

    .line 7165
    const/4 v0, -0x1

    invoke-static {v2, v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetLanguage(II)V

    .line 7166
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetActiveWordIndex()I

    .line 7167
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetWordCompletePoint(I)V

    .line 7168
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeLockWord(I)I

    .line 7170
    invoke-static {v2, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativePreRegCorrect(II)I

    .line 7171
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativePreRegCorrectDone()V

    .line 7173
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetExactInList(I)V

    .line 7174
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetSelLstMode(I)V

    .line 7176
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeIsKnownWord([CI)I

    .line 7177
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeIsSCWord(I)Z

    .line 7178
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeIsMDBEnabled()Z

    .line 7179
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeASDBAddWord([C[C)I

    .line 7180
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeScanArticleForCustomWord([C)I

    .line 7181
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeReselectWord([CI)I

    .line 7182
    const-string v0, ""

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeExportUDB(Ljava/lang/String;)I

    .line 7183
    const-string v0, ""

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeImportUDB(Ljava/lang/String;)I

    .line 7184
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeResetUDB()I

    .line 7185
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeDumpUDB()I

    .line 7186
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetMDB(I)V

    .line 7187
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetWordSrcType(I)I

    .line 7188
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeEnableWordStem(I)V

    .line 7189
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeEnableAutoDownshift(I)V

    .line 7190
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeEnableMDB(Z)I

    .line 7192
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetBigramEnabled(Z)I

    .line 7193
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeNoteCandAccept(I)I

    .line 7194
    const-string v0, ""

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeNoteWordCommit(Ljava/lang/String;)I

    .line 7195
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeContextBreak()I

    .line 7196
    const-string v0, ""

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeContextFill(Ljava/lang/String;)I

    .line 7198
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeUDBReload()V

    .line 7199
    return-void
.end method

.method public expandFullWCL()I
    .locals 1

    .prologue
    .line 691
    const/4 v0, 0x0

    return v0
.end method

.method finishComposingText()V
    .locals 2

    .prologue
    .line 4959
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->finishComposingText()V

    .line 4960
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    .line 4961
    return-void
.end method

.method public finishInput()V
    .locals 4

    .prologue
    .line 350
    const-string v1, "XT9IME"

    const-string v2, "[finishInput]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sXT9CoreMutex:Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;

    const-string v2, "XT9IME"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;->hold(Ljava/lang/String;)V

    .line 356
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enableOnFlyAddWord:Z

    if-eqz v1, :cond_0

    .line 357
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultiTapInputSequIndex:I

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 367
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 368
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 370
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sXT9CoreMutex:Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;

    const-string v2, "XT9IME"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;->release(Ljava/lang/String;)V

    .line 377
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "XT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[finishInput] Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method firstWantedWord(Ljava/lang/String;III)I
    .locals 8
    .parameter "word_lst"
    .parameter "start"
    .parameter "end"
    .parameter "def_value"

    .prologue
    const/4 v7, -0x1

    .line 2118
    if-nez p1, :cond_1

    .line 2147
    .end local p4
    :cond_0
    :goto_0
    return p4

    .line 2120
    .restart local p4
    :cond_1
    if-eqz p3, :cond_0

    .line 2126
    const-string v5, "\\|"

    add-int/lit8 v6, p3, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 2128
    .local v4, words:[Ljava/lang/String;
    array-length v5, v4

    if-le v5, p2, :cond_0

    .line 2135
    move v2, p2

    .local v2, i:I
    :goto_1
    if-ge v2, p3, :cond_4

    .line 2136
    aget-object v5, v4, v2

    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2137
    .local v1, autoCmp_Start:I
    aget-object v5, v4, v2

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2138
    .local v0, autoCmp_End:I
    if-eq v1, v7, :cond_2

    if-eq v0, v7, :cond_2

    .line 2139
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v3, v5, -0x2

    .line 2143
    .local v3, word_len:I
    :goto_2
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_3

    move p4, v2

    .line 2144
    goto :goto_0

    .line 2141
    .end local v3           #word_len:I
    :cond_2
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .restart local v3       #word_len:I
    goto :goto_2

    .line 2135
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #autoCmp_End:I
    .end local v1           #autoCmp_Start:I
    .end local v3           #word_len:I
    :cond_4
    move p4, p2

    .line 2147
    goto :goto_0
.end method

.method public getA_Match_Str()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7316
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->A_MATCH_STR:Ljava/lang/String;

    return-object v0
.end method

.method public getCVB_Match_Str()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7312
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->CVB_MATCH_STR:Ljava/lang/String;

    return-object v0
.end method

.method public getCandString(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 4863
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->lookupSortedAutoCompIdx(I)I

    move-result v1

    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v0

    .line 4865
    .local v0, newStr:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4866
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->lookupSortedAutoCompIdx(I)I

    move-result v1

    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v0

    .line 4868
    :cond_0
    return-object v0
.end method

.method public getExactWord()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5235
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v0

    .line 5236
    .local v0, exactWord:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #exactWord:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #exactWord:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getIMEStatus()I
    .locals 1

    .prologue
    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    return-object v0
.end method

.method public getPredictionMode()I
    .locals 1

    .prologue
    .line 5061
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMode:I

    return v0
.end method

.method public getSpellCount()I
    .locals 1

    .prologue
    .line 696
    const/4 v0, 0x0

    return v0
.end method

.method public getSpellString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 706
    const-string v0, ""

    return-object v0
.end method

.method public getSpellType(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method public getWCL()Ljava/lang/String;
    .locals 5

    .prologue
    .line 7533
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7534
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    .line 7539
    :goto_0
    return-object v3

    .line 7536
    :cond_0
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandCount()I

    move-result v0

    .line 7537
    .local v0, count:I
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetWCLString()Ljava/lang/String;

    move-result-object v2

    .line 7538
    .local v2, orig:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetWCLString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->sortAutoComp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7539
    .local v1, modify:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHTCIMEInfo.selectionList_IS_NULL, mPasteCandString = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]nativeGetCandCount()=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], orig_wcl=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], modify=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getWCLCand(IIZ)Ljava/lang/String;
    .locals 3
    .parameter "i"
    .parameter "idWCL"
    .parameter "bAtbottomBtn"

    .prologue
    .line 7227
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->lookupSortedAutoCompIdx(I)I

    move-result p1

    .line 7229
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-boolean v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    if-eqz v1, :cond_1

    .line 7230
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->IMFcompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v1, v1

    iget v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    sub-int v0, v1, v2

    .line 7235
    .local v0, startAutocompletionindx:I
    if-gez v0, :cond_0

    .line 7236
    const/4 v1, 0x0

    .line 7241
    .end local v0           #startAutocompletionindx:I
    :goto_0
    return-object v1

    .line 7238
    .restart local v0       #startAutocompletionindx:I
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->IMFcompletions:[Landroid/view/inputmethod/CompletionInfo;

    add-int v2, p1, v0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7241
    .end local v0           #startAutocompletionindx:I
    :cond_1
    invoke-static {p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/htcime/util/CharTransfer;->transfer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getWCLCount(IZ)I
    .locals 2
    .parameter "idWCL"
    .parameter "bAtbottomBtn"

    .prologue
    .line 7247
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public handleCMPQWKeyPB(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;)Z
    .locals 10
    .parameter "InputConnection"
    .parameter "ucode"
    .parameter "pos"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2837
    const/4 v0, 0x0

    .line 2838
    .local v0, bHandle:Z
    const/16 v7, 0x13

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v8, v8, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    if-ne v7, v8, :cond_5

    move v1, v4

    .line 2840
    .local v1, bNonTextField:Z
    :goto_0
    iget v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMode:I

    if-eq v4, v7, :cond_0

    iget-boolean v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultitapWordComplete:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAddWord:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    if-eqz v7, :cond_9

    :cond_0
    if-nez v1, :cond_9

    .line 2844
    const/4 v2, 0x0

    .line 2846
    .local v2, needSetCap:Z
    invoke-static {p2}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2847
    iget v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    if-ne v7, v4, :cond_1

    .line 2848
    const/4 v2, 0x1

    .line 2849
    invoke-static {v9}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetShiftMode(I)V

    .line 2858
    :cond_1
    :goto_1
    iget-boolean v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSelChange:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    if-eqz v7, :cond_2

    .line 2861
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    invoke-static {v7}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeLockWord(I)I

    .line 2862
    iput-boolean v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSelChange:Z

    .line 2864
    :cond_2
    invoke-static {p2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeAddSymbol(I)V

    .line 2865
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL(Landroid/view/inputmethod/InputConnection;)I

    move-result v7

    iput v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    .line 2868
    iget v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMode:I

    if-eq v7, v4, :cond_3

    .line 2869
    iget v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, v4, v7}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nonWordNoSuggestionVibrate(ILjava/lang/String;)V

    .line 2870
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v8, v8, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    invoke-virtual {v4, v7, v8, v5}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    .line 2873
    :cond_3
    if-eqz v2, :cond_4

    .line 2874
    iget v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    if-ne v4, v9, :cond_8

    move v4, v6

    :goto_2
    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetShiftMode(I)V

    .line 2912
    .end local v2           #needSetCap:Z
    :cond_4
    :goto_3
    return v0

    .end local v1           #bNonTextField:Z
    :cond_5
    move v1, v5

    .line 2838
    goto :goto_0

    .line 2852
    .restart local v1       #bNonTextField:Z
    .restart local v2       #needSetCap:Z
    :cond_6
    iget v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    if-ne v7, v9, :cond_1

    .line 2853
    :cond_7
    const/4 v2, 0x1

    .line 2854
    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetShiftMode(I)V

    goto :goto_1

    .line 2874
    :cond_8
    iget v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    goto :goto_2

    .line 2895
    .end local v2           #needSetCap:Z
    :cond_9
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 2897
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v6, p2

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2898
    .local v3, newPastStr:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->addWordToUDBBuffer(Ljava/lang/String;)V

    .line 2900
    const-string v4, ""

    invoke-virtual {p0, p1, v4, v3, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2901
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 2902
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 2903
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    goto :goto_3

    .line 2905
    .end local v3           #newPastStr:Ljava/lang/String;
    :cond_a
    int-to-char v4, p2

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 2906
    .restart local v3       #newPastStr:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->addWordToUDBBuffer(Ljava/lang/String;)V

    .line 2908
    const-string v4, ""

    invoke-virtual {p0, p1, v4, v3, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3
.end method

.method public handleFNKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z
    .locals 27
    .parameter "InputConnection"
    .parameter "FnInfo"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 2969
    const/high16 v22, 0xff

    and-int v22, v22, p2

    shr-int/lit8 v9, v22, 0x10

    .line 2970
    .local v9, fn_id:I
    const v22, 0xffff

    and-int v10, p2, v22

    .line 2973
    .local v10, fn_val:I
    packed-switch v9, :pswitch_data_0

    .line 3683
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v22, 0x1

    :goto_1
    return v22

    .line 2976
    :pswitch_1
    and-int/lit16 v0, v10, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    .line 2977
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/16 v22, 0x3

    :goto_2
    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetShiftMode(I)V

    .line 2978
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v10, v0, :cond_0

    .line 2979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->smartCAP:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->onSIPCapLock()V

    goto :goto_0

    .line 2977
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    move/from16 v22, v0

    goto :goto_2

    .line 2982
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->mPDSwitch:Lcom/htc/android/htcime/XT9IME/util/PDSwitch;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    move-object/from16 v23, v0

    const/16 v24, 0x65

    invoke-virtual/range {v22 .. v24}, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->diagnose(Lcom/htc/android/htcime/HTCIMEService;I)Z

    move-result v22

    if-nez v22, :cond_2

    .line 2984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->smartCAP:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->begin()V

    .line 2985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->smartCAP:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->end()V

    .line 2992
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->bigram:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;->onTapChangeCursor()V

    goto/16 :goto_0

    .line 2989
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->smartCAP:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->cancel()V

    goto :goto_3

    .line 2995
    :pswitch_3
    const-string v22, "XT9IME"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[handleFNKeyDown] FN_SIPPAGENO received value="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    invoke-static {v10}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetKdbPage(I)V

    goto/16 :goto_0

    .line 3001
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 3003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v22, v0

    const-string v23, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3004
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3005
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 3007
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    goto/16 :goto_0

    .line 3011
    :pswitch_5
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v0, v10, :cond_4

    const/16 v22, 0x1

    :goto_4
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpellCorrect:Z

    .line 3012
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpellCorrect:Z

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeEnableSpellCheck(Z)V

    .line 3013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    move-object/from16 v23, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v0, v10, :cond_5

    const/16 v22, 0x1

    :goto_5
    move/from16 v0, v22

    move-object/from16 v1, v23

    iput v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSpellCheckState:I

    goto/16 :goto_0

    .line 3011
    :cond_4
    const/16 v22, 0x0

    goto :goto_4

    .line 3013
    :cond_5
    const/16 v22, 0x0

    goto :goto_5

    .line 3017
    :pswitch_6
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v0, v10, :cond_6

    const/16 v22, 0x1

    :goto_6
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNextWordPredict:Z

    .line 3018
    invoke-static {v10}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetWordPredict(I)V

    goto/16 :goto_0

    .line 3017
    :cond_6
    const/16 v22, 0x0

    goto :goto_6

    .line 3022
    :pswitch_7
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v0, v10, :cond_7

    const/16 v22, 0x1

    :goto_7
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAutoAppend:Z

    .line 3023
    invoke-static {v10}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetAutoAppend(I)V

    goto/16 :goto_0

    .line 3022
    :cond_7
    const/16 v22, 0x0

    goto :goto_7

    .line 3027
    :pswitch_8
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v0, v10, :cond_8

    const/16 v22, 0x1

    :goto_8
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAutoSubstitute:Z

    .line 3028
    const/16 v22, 0x11

    move/from16 v0, v22

    invoke-static {v10, v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetAutoSubstitute(II)I

    .line 3034
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeBuildCandList()I

    goto/16 :goto_0

    .line 3027
    :cond_8
    const/16 v22, 0x0

    goto :goto_8

    .line 3038
    :pswitch_9
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v0, v10, :cond_9

    const/16 v22, 0x1

    :goto_9
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWordComplete:Z

    .line 3039
    invoke-static {v10}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetWordComplete(I)V

    goto/16 :goto_0

    .line 3038
    :cond_9
    const/16 v22, 0x0

    goto :goto_9

    .line 3042
    :pswitch_a
    const-string v22, "XT9IME"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[handleFNKeyDown] FN_INPUTMODE received value="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSelLstMode:I

    .line 3047
    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetSelLstMode(I)V

    .line 3050
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMode:I

    .line 3053
    invoke-static {v10}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetInputMode(I)V

    goto/16 :goto_0

    .line 3056
    :pswitch_b
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/android/htcime/XT9IME/XT9IME;->lookupSortedAutoCompIdx(I)I

    move-result v10

    .line 3057
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_0

    .line 3062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 3063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->IMFcompletions:[Landroid/view/inputmethod/CompletionInfo;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    invoke-interface/range {v22 .. v23}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 3064
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL_GC()V

    goto/16 :goto_0

    .line 3067
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isReselectWCL:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 3068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v22, v0

    const/16 v23, 0x25c

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v10, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleErrorReselect(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Z

    goto/16 :goto_0

    .line 3071
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3076
    invoke-static {v10}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_f

    .line 3079
    invoke-static {v10}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->pureCandStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3080
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3083
    .local v6, customWord:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isLetter(C)Z

    move-result v22

    if-nez v22, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isDigit(C)Z

    move-result v22

    if-nez v22, :cond_c

    .line 3084
    const/16 v22, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 3086
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    move/from16 v22, v0

    if-nez v22, :cond_11

    .line 3089
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v10, v0, :cond_f

    .line 3090
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isKnowWord(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_f

    .line 3092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mUDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v23

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->addWord([CI)I

    move-result v12

    .line 3093
    .local v12, result:I
    if-nez v12, :cond_f

    .line 3094
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090009

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->showToast(Ljava/lang/String;)V

    .line 3095
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->check_remove_previous_PSC_words(Ljava/lang/String;)V

    .line 3113
    .end local v6           #customWord:Ljava/lang/String;
    .end local v12           #result:I
    :cond_f
    :goto_a
    sget-boolean v22, Lcom/htc/android/htcime/HTCIMMData;->mScoring:Z

    if-eqz v22, :cond_10

    .line 3114
    sget v22, Lcom/htc/android/htcime/util/ScoringUtil;->mNumWordsOnWCL:I

    add-int/lit8 v22, v22, 0x1

    sput v22, Lcom/htc/android/htcime/util/ScoringUtil;->mNumWordsOnWCL:I

    .line 3115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 3116
    .local v15, sel_idx:I
    invoke-static {v15}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v15, v0}, Lcom/htc/android/htcime/util/ScoringUtil;->submitWord(ILjava/lang/String;)V

    .line 3119
    .end local v15           #sel_idx:I
    :cond_10
    :try_start_0
    const-string v22, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3126
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->NotifyWordCommitFirm(Ljava/lang/String;I)V

    .line 3127
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 3128
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/htcime/ezsip/trace/Trace;->onWCLCommit()V

    .line 3131
    sget-boolean v22, Lcom/htc/android/htcime/HTCIMMData;->sFeature_UserProfilingLog:Z

    if-eqz v22, :cond_0

    .line 3132
    new-instance v18, Lcom/htc/android/htcime/util/ULogUtil;

    invoke-direct/range {v18 .. v18}, Lcom/htc/android/htcime/util/ULogUtil;-><init>()V

    .line 3133
    .local v18, ulogUtil:Lcom/htc/android/htcime/util/ULogUtil;
    const-string v22, "WCL_cnt"

    const-string v23, "WCL_clickcount"

    const-string v24, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/htcime/util/ULogUtil;->writeSinglePairULogData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3102
    .end local v18           #ulogUtil:Lcom/htc/android/htcime/util/ULogUtil;
    .restart local v6       #customWord:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isKnowWord(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_f

    .line 3104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mUDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v23

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->addWord([CI)I

    move-result v12

    .line 3105
    .restart local v12       #result:I
    if-nez v12, :cond_f

    .line 3106
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090009

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->showToast(Ljava/lang/String;)V

    .line 3107
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->check_remove_previous_PSC_words(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 3120
    .end local v6           #customWord:Ljava/lang/String;
    .end local v12           #result:I
    :catch_0
    move-exception v8

    .line 3122
    .local v8, e:Landroid/util/AndroidException;
    invoke-virtual {v8}, Landroid/util/AndroidException;->printStackTrace()V

    goto/16 :goto_b

    .line 3139
    .end local v8           #e:Landroid/util/AndroidException;
    :pswitch_c
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v0, v10, :cond_12

    const/16 v22, 0x1

    :goto_c
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultitapWordComplete:Z

    goto/16 :goto_0

    :cond_12
    const/16 v22, 0x0

    goto :goto_c

    .line 3144
    :pswitch_d
    if-nez v10, :cond_13

    .line 3146
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAddWord:Z

    .line 3148
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetWordComplete(I)V

    goto/16 :goto_0

    .line 3151
    :cond_13
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAddWord:Z

    .line 3153
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWordComplete:Z

    move/from16 v22, v0

    if-eqz v22, :cond_16

    .line 3154
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetWordComplete(I)V

    .line 3158
    :goto_d
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v10, v0, :cond_17

    .line 3161
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_14

    .line 3162
    const-string v22, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3163
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;
    :try_end_1
    .catch Landroid/util/AndroidException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3167
    :cond_14
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    move/from16 v22, v0

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    move/from16 v22, v0

    if-lez v22, :cond_15

    .line 3170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->pureCandStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toCharArray()[C

    move-result-object v21

    .line 3171
    .local v21, word:[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mUDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->addWord([CI)I

    .line 3172
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->check_remove_previous_PSC_words(Ljava/lang/String;)V

    .line 3188
    .end local v21           #word:[C
    :cond_15
    :goto_f
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    goto/16 :goto_0

    .line 3156
    :cond_16
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetWordComplete(I)V

    goto :goto_d

    .line 3165
    :catch_1
    move-exception v8

    .restart local v8       #e:Landroid/util/AndroidException;
    invoke-virtual {v8}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_e

    .line 3175
    .end local v8           #e:Landroid/util/AndroidException;
    :cond_17
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v10, v0, :cond_18

    .line 3178
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_15

    .line 3179
    const-string v22, ""

    const-string v23, ""

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3180
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;
    :try_end_2
    .catch Landroid/util/AndroidException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_f

    .line 3182
    :catch_2
    move-exception v8

    .restart local v8       #e:Landroid/util/AndroidException;
    invoke-virtual {v8}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_f

    .line 3185
    .end local v8           #e:Landroid/util/AndroidException;
    :cond_18
    const-string v22, "T9InputMethod_onKeyDown_set  add-word mode [Error case]"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_f

    .line 3194
    :pswitch_e
    const-string v22, "XT9IME"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[handleFNKeyDown] FN_SETLANG received value="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput v10, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mCurrLdbID:I

    .line 3197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->bilingual:Lcom/htc/android/htcime/util/BilingualTool;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/android/htcime/util/BilingualTool;->get2ndLangID()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mCurr2ndLdbID:I

    .line 3198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mCurrLdbID:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mCurr2ndLdbID:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetLanguage(II)V

    goto/16 :goto_0

    .line 3202
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_19

    .line 3203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v22, v0

    const-string v23, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3206
    :cond_19
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 3207
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 3208
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    goto/16 :goto_0

    .line 3212
    :pswitch_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleTerm(Landroid/view/inputmethod/InputConnection;I)V

    goto/16 :goto_0

    .line 3216
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput v10, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 3220
    const/16 v22, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1b

    .line 3221
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    .line 3227
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v22, v0

    const/16 v23, 0x25a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleErrorReselect(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1a

    .line 3228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->getCandString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3232
    :cond_1a
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSelChange:Z

    .line 3234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    move/from16 v24, v0

    aput v24, v22, v23

    .line 3235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I
    :try_end_3
    .catch Landroid/util/AndroidException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 3238
    :catch_3
    move-exception v8

    .line 3241
    .restart local v8       #e:Landroid/util/AndroidException;
    invoke-virtual {v8}, Landroid/util/AndroidException;->printStackTrace()V

    goto/16 :goto_0

    .line 3245
    .end local v8           #e:Landroid/util/AndroidException;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Lcom/htc/android/htcime/XT9IME/XT9IME;->moveWCLWord(Landroid/view/inputmethod/InputConnection;I)V

    goto/16 :goto_0

    .line 3258
    :pswitch_12
    const-string v22, "XT9IME"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[handleFNKeyDown] FN_XT9INPUTMODE received value="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSelLstMode:I

    .line 3263
    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetSelLstMode(I)V

    .line 3266
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMode:I

    .line 3268
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v0, v10, :cond_1d

    .line 3270
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetMultiTapMode()V

    .line 3272
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultitapWordComplete:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1c

    .line 3274
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetWordComplete(I)V

    .line 3279
    :cond_1c
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultiTapInputSequIndex:I

    goto/16 :goto_0

    .line 3284
    :cond_1d
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetAmbigiousMode()V

    .line 3285
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWordComplete:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1e

    const/16 v22, 0x1

    :goto_10
    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetWordComplete(I)V

    goto/16 :goto_0

    :cond_1e
    const/16 v22, 0x0

    goto :goto_10

    .line 3293
    :pswitch_13
    const-string v22, "XT9IME"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[handleFNKeyDown] FN_SETKBCODE received value="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    sput v10, Lcom/htc/android/htcime/XT9IME/XT9IME;->sCurrKbdID:I

    .line 3296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->bilingual:Lcom/htc/android/htcime/util/BilingualTool;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/htcime/util/BilingualTool;->get2ndKdbID()I

    move-result v22

    move/from16 v0, v22

    invoke-static {v10, v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetKdb(II)I

    .line 3297
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/android/htcime/XT9IME/XT9IME;->onKDBChange(I)V

    .line 3299
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isQWERTYKDBinner()Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 3300
    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetWordCompletePoint(I)V

    .line 3301
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeEnableWordStem(I)V

    goto/16 :goto_0

    .line 3303
    :cond_1f
    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetWordCompletePoint(I)V

    .line 3304
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeEnableWordStem(I)V

    goto/16 :goto_0

    .line 3309
    :pswitch_14
    const-string v22, "XT9IME"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[handleFNKeyDown] FN_XT9INIT received value="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    and-int/lit8 v17, v10, 0x1

    .line 3312
    .local v17, tmp:I
    if-eqz v17, :cond_22

    const/16 v22, 0x1

    :goto_11
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpellCorrect:Z

    .line 3313
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpellCorrect:Z

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeEnableSpellCheck(Z)V

    .line 3314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    move-object/from16 v23, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v17

    if-ne v0, v1, :cond_23

    const/16 v22, 0x1

    :goto_12
    move/from16 v0, v22

    move-object/from16 v1, v23

    iput v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSpellCheckState:I

    .line 3317
    and-int/lit8 v17, v10, 0x2

    .line 3318
    if-eqz v17, :cond_24

    const/16 v22, 0x1

    :goto_13
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNextWordPredict:Z

    .line 3319
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNextWordPredict:Z

    move/from16 v22, v0

    if-eqz v22, :cond_25

    const/16 v22, 0x1

    :goto_14
    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetWordPredict(I)V

    .line 3322
    and-int/lit8 v17, v10, 0x4

    .line 3323
    if-eqz v17, :cond_26

    const/16 v22, 0x1

    :goto_15
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAutoAppend:Z

    .line 3324
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAutoAppend:Z

    move/from16 v22, v0

    if-eqz v22, :cond_27

    const/16 v22, 0x1

    :goto_16
    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetAutoAppend(I)V

    .line 3327
    and-int/lit8 v17, v10, 0x8

    .line 3328
    if-eqz v17, :cond_28

    const/16 v22, 0x1

    :goto_17
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAutoSubstitute:Z

    .line 3329
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAutoSubstitute:Z

    move/from16 v22, v0

    if-eqz v22, :cond_29

    const/16 v22, 0x1

    :goto_18
    const/16 v23, 0x11

    invoke-static/range {v22 .. v23}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetAutoSubstitute(II)I

    .line 3332
    and-int/lit8 v17, v10, 0x10

    .line 3333
    if-eqz v17, :cond_2a

    const/16 v22, 0x1

    :goto_19
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWordComplete:Z

    .line 3334
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWordComplete:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2b

    const/16 v22, 0x1

    :goto_1a
    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetWordComplete(I)V

    .line 3337
    and-int/lit8 v17, v10, 0x20

    .line 3338
    if-eqz v17, :cond_2c

    const/16 v22, 0x1

    :goto_1b
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultitapWordComplete:Z

    .line 3341
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetBigramEnabled(Z)I

    .line 3343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_21

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    move/from16 v22, v0

    if-nez v22, :cond_2d

    .line 3345
    :cond_21
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetExactInList(I)V

    .line 3346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    .line 3363
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->hanldeDBContentSensitive()V

    .line 3365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    move/from16 v22, v0

    const/16 v23, 0x12

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2f

    .line 3366
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->enableOnFlyAddWord:Z

    goto/16 :goto_0

    .line 3312
    :cond_22
    const/16 v22, 0x0

    goto/16 :goto_11

    .line 3314
    :cond_23
    const/16 v22, 0x0

    goto/16 :goto_12

    .line 3318
    :cond_24
    const/16 v22, 0x0

    goto/16 :goto_13

    .line 3319
    :cond_25
    const/16 v22, 0x0

    goto/16 :goto_14

    .line 3323
    :cond_26
    const/16 v22, 0x0

    goto/16 :goto_15

    .line 3324
    :cond_27
    const/16 v22, 0x0

    goto/16 :goto_16

    .line 3328
    :cond_28
    const/16 v22, 0x0

    goto/16 :goto_17

    .line 3329
    :cond_29
    const/16 v22, 0x0

    goto/16 :goto_18

    .line 3333
    :cond_2a
    const/16 v22, 0x0

    goto/16 :goto_19

    .line 3334
    :cond_2b
    const/16 v22, 0x0

    goto/16 :goto_1a

    .line 3338
    :cond_2c
    const/16 v22, 0x0

    goto/16 :goto_1b

    .line 3348
    :cond_2d
    sget-boolean v22, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v22, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/htcime/HTCIMMData;->is12KeyAlphabet()Z

    move-result v22

    if-eqz v22, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sget v22, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    if-nez v22, :cond_2e

    .line 3349
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetExactInList(I)V

    .line 3350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    goto :goto_1c

    .line 3358
    :cond_2e
    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetExactInList(I)V

    .line 3359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    goto/16 :goto_1c

    .line 3368
    :cond_2f
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->enableOnFlyAddWord:Z

    goto/16 :goto_0

    .line 3374
    .end local v17           #tmp:I
    :pswitch_15
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetMultiTapDone()V

    .line 3376
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultitapWordComplete:Z

    move/from16 v22, v0

    if-nez v22, :cond_34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    move/from16 v22, v0

    if-nez v22, :cond_34

    .line 3378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_30

    .line 3379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->addWordToUDBBuffer(Ljava/lang/String;)V

    .line 3381
    :cond_30
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 3383
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_31

    .line 3384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v22, v0

    const-string v23, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_4
    .catch Landroid/util/AndroidException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3390
    :cond_31
    :goto_1d
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3402
    :cond_32
    :goto_1e
    const/16 v22, 0x13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 3404
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 3406
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_33

    .line 3407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v22, v0

    const-string v23, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/util/AndroidException; {:try_start_5 .. :try_end_5} :catch_5

    .line 3413
    :cond_33
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 3414
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    goto/16 :goto_0

    .line 3385
    :catch_4
    move-exception v8

    .line 3387
    .restart local v8       #e:Landroid/util/AndroidException;
    invoke-virtual {v8}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_1d

    .line 3394
    .end local v8           #e:Landroid/util/AndroidException;
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_32

    .line 3395
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nonWordNoSuggestionVibrate(ILjava/lang/String;)V

    .line 3396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    move/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    goto/16 :goto_1e

    .line 3408
    :catch_5
    move-exception v8

    .line 3410
    .restart local v8       #e:Landroid/util/AndroidException;
    invoke-virtual {v8}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_1f

    .line 3421
    .end local v8           #e:Landroid/util/AndroidException;
    :pswitch_16
    const v13, 0x7f02006e

    .line 3422
    .local v13, rsid:I
    packed-switch v10, :pswitch_data_1

    goto/16 :goto_0

    .line 3424
    :pswitch_17
    const v13, 0x7f02006e

    .line 3425
    goto/16 :goto_0

    .line 3427
    :pswitch_18
    const v13, 0x7f02006d

    .line 3428
    goto/16 :goto_0

    .line 3430
    :pswitch_19
    const v13, 0x7f02006a

    .line 3431
    goto/16 :goto_0

    .line 3433
    :pswitch_1a
    const v13, 0x7f02006b

    .line 3434
    goto/16 :goto_0

    .line 3436
    :pswitch_1b
    const v13, 0x7f02006c

    goto/16 :goto_0

    .line 3446
    .end local v13           #rsid:I
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v22, v0

    const-string v23, ""

    const-string v24, ""

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3448
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 3449
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 3450
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    goto/16 :goto_0

    .line 3453
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_35

    .line 3455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3458
    :try_start_6
    const-string v22, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/util/AndroidException; {:try_start_6 .. :try_end_6} :catch_6

    .line 3464
    :cond_35
    :goto_20
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 3465
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 3466
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    goto/16 :goto_0

    .line 3459
    :catch_6
    move-exception v8

    .line 3460
    .restart local v8       #e:Landroid/util/AndroidException;
    invoke-virtual {v8}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_20

    .line 3469
    .end local v8           #e:Landroid/util/AndroidException;
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isQWERTY()Z

    move-result v22

    if-eqz v22, :cond_36

    .line 3472
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isSuggestionRejected()Z

    move-result v22

    if-nez v22, :cond_36

    .line 3473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 3474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->lookupSortedAutoCompIdx(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_36

    .line 3476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->lookupSortedAutoCompIdx(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3482
    :cond_36
    sget-boolean v22, Lcom/htc/android/htcime/HTCIMMData;->mScoring:Z

    if-eqz v22, :cond_37

    .line 3483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    .line 3484
    .restart local v15       #sel_idx:I
    invoke-static {v15}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v15, v0}, Lcom/htc/android/htcime/util/ScoringUtil;->submitWord(ILjava/lang/String;)V

    .line 3486
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isFstCandRC()Z

    move-result v22

    if-eqz v22, :cond_37

    .line 3487
    sget v22, Lcom/htc/android/htcime/util/ScoringUtil;->mNumRegCorrectedWords:I

    add-int/lit8 v22, v22, 0x1

    sput v22, Lcom/htc/android/htcime/util/ScoringUtil;->mNumRegCorrectedWords:I

    .line 3489
    .end local v15           #sel_idx:I
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->NotifyWordCommit(Ljava/lang/String;)V

    .line 3492
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3493
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 3494
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    goto/16 :goto_0

    .line 3498
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3512
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->finishComposingText()V

    .line 3514
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3515
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 3516
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    goto/16 :goto_0

    .line 3520
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->delimiterRule:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;->changeMode(I)V

    goto/16 :goto_0

    .line 3523
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3524
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->finishComposingText()V

    .line 3525
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    goto/16 :goto_0

    .line 3531
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    move/from16 v22, v0

    if-nez v22, :cond_38

    .line 3532
    const-string v22, "Eric_J"

    const-string v23, "FN_SMART_SPACE - only support hardware keyboard"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 3541
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isQWERTYKDBinner()Z

    move-result v22

    if-nez v22, :cond_39

    .line 3542
    const-string v22, "Eric_J"

    const-string v23, "FN_SMART_SPACE - KDB is not Qwerty type."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 3546
    :cond_39
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleSmartSpace(I)Z

    move-result v22

    goto/16 :goto_1

    .line 3570
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sget v14, Lcom/htc/android/htcime/HTCIMMData;->mReselectCursorStart:I

    .line 3571
    .local v14, s:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sget-object v22, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v11

    .line 3572
    .local v11, l:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sget-object v22, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int v8, v14, v22

    .line 3574
    .local v8, e:I
    const-string v22, "OVT9LOG"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "IME_APP_Command (content,start,end,tap,err_wcl_showing)=("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v24, v0

    sget-object v24, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v24, v0

    sget-boolean v24, Lcom/htc/android/htcime/HTCIMMData;->mReselectFromTap:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isReselectWCL:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sget-boolean v22, Lcom/htc/android/htcime/HTCIMMData;->mReselectFromTap:Z

    if-eqz v22, :cond_42

    .line 3578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isReselectWCL:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3c

    .line 3581
    invoke-static/range {p1 .. p1}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->getSelectionStart(Landroid/view/inputmethod/InputConnection;)I

    move-result v5

    .line 3583
    .local v5, cursor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sget v20, Lcom/htc/android/htcime/HTCIMMData;->mReselectWCLCursorStart:I

    .line 3584
    .local v20, wcl_start:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sget v22, Lcom/htc/android/htcime/HTCIMMData;->mReselectWCLCursorStart:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v23, v0

    sget-object v23, Lcom/htc/android/htcime/HTCIMMData;->mReselectWCLWord:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v19, v22, v23

    .line 3586
    .local v19, wcl_end:I
    const-string v22, "OVT9LOG"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "IME_APP_Command Close reselect WCL VIA TAPPING.......... cursor="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3588
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 3589
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 3591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v23, v0

    sget-object v23, Lcom/htc/android/htcime/HTCIMMData;->mReselectWCLWord:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Lcom/htc/android/htcime/XT9IME/XT9IME;->pureCandStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sget-object v22, Lcom/htc/android/htcime/HTCIMMData;->mReselectWCLWord:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isPSCKnownWord(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_3a

    .line 3594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v22, v0

    sget-object v23, Lcom/htc/android/htcime/util/PostSpellingUtil;->sDotUnderlineSpan:Ljava/lang/Object;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v25

    const/16 v26, 0x21

    invoke-virtual/range {v22 .. v26}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3596
    :cond_3a
    const/4 v7, 0x1

    .line 3598
    .local v7, dist:I
    move/from16 v0, v20

    if-lt v5, v0, :cond_3b

    move/from16 v0, v19

    if-gt v5, v0, :cond_3b

    .line 3599
    const-string v22, "OVT9LOG"

    const-string v23, "IME_APP_Command in the same word, ignore it!...................."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3600
    invoke-interface/range {p1 .. p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 3602
    move-object/from16 v0, p1

    invoke-interface {v0, v5, v5}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 3603
    invoke-interface/range {p1 .. p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 3604
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 3605
    :cond_3b
    move/from16 v0, v19

    if-le v5, v0, :cond_3e

    .line 3606
    sub-int v22, v5, v19

    add-int/lit8 v7, v22, 0x1

    .line 3607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 3614
    .end local v5           #cursor:I
    .end local v7           #dist:I
    .end local v19           #wcl_end:I
    .end local v20           #wcl_start:I
    :cond_3c
    :goto_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sget-object v22, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    if-eqz v22, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sget-object v22, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_3f

    .line 3615
    :cond_3d
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 3609
    .restart local v5       #cursor:I
    .restart local v7       #dist:I
    .restart local v19       #wcl_end:I
    .restart local v20       #wcl_start:I
    :cond_3e
    sub-int v7, v5, v20

    .line 3610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_21

    .line 3618
    .end local v5           #cursor:I
    .end local v7           #dist:I
    .end local v19           #wcl_end:I
    .end local v20           #wcl_start:I
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPSUtil:Lcom/htc/android/htcime/util/PostSpellingUtil;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v8}, Lcom/htc/android/htcime/util/PostSpellingUtil;->getErrorSpanCount(II)I

    move-result v16

    .line 3619
    .local v16, span_count:I
    const-string v22, "OVT9LOG"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "IME_APP_Command Error_Span count ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]= "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    if-nez v16, :cond_40

    .line 3622
    const-string v22, "OVT9LOG"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "IME_APP_Command Add error span from "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " VIA TAPPING.........."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sget-object v22, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isPSCKnownWord(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 3624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPSUtil:Lcom/htc/android/htcime/util/PostSpellingUtil;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v8}, Lcom/htc/android/htcime/util/PostSpellingUtil;->addErrorSpan(II)Z

    goto/16 :goto_0

    .line 3626
    :cond_40
    const-string v22, "OVT9LOG"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "IME_APP_Command show WCL from "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " VIA TAPPING.........."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    invoke-interface/range {p1 .. p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v23, v0

    sget-object v23, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Lcom/htc/android/htcime/XT9IME/XT9IME;->pureCandStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->getSapnBGColor()Landroid/text/style/BackgroundColorSpan;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v25

    const/16 v26, 0x21

    invoke-virtual/range {v22 .. v26}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v22, v0

    sget-object v23, Lcom/htc/android/htcime/util/PostSpellingUtil;->sDotUnderlineSpan:Ljava/lang/Object;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v25

    const/16 v26, 0x21

    invoke-virtual/range {v22 .. v26}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3634
    move-object/from16 v0, p1

    invoke-interface {v0, v14, v8}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 3635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    .line 3639
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 3640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->postReselect:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->begin()V

    .line 3641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sget-object v22, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toCharArray()[C

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v23, v0

    sget-object v23, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    invoke-static/range {v22 .. v23}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeReselectWord([CI)I

    .line 3642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL_Reselect(Landroid/view/inputmethod/InputConnection;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    .line 3643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isReselectWCL:Z

    .line 3645
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    move/from16 v22, v0

    if-nez v22, :cond_41

    .line 3646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->postReselect:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->end()V

    .line 3651
    :goto_22
    invoke-interface/range {p1 .. p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 3648
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sget-object v22, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    sput-object v22, Lcom/htc/android/htcime/HTCIMMData;->mReselectWCLWord:Ljava/lang/String;

    .line 3649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sput v14, Lcom/htc/android/htcime/HTCIMMData;->mReselectWCLCursorStart:I

    goto :goto_22

    .line 3654
    .end local v16           #span_count:I
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sget-object v22, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    if-eqz v22, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sget-object v22, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_44

    .line 3655
    :cond_43
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 3660
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sget-object v22, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isPSCKnownWord(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_46

    .line 3661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPSUtil:Lcom/htc/android/htcime/util/PostSpellingUtil;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v8}, Lcom/htc/android/htcime/util/PostSpellingUtil;->getErrorSpanCount(II)I

    move-result v16

    .line 3663
    .restart local v16       #span_count:I
    if-nez v16, :cond_45

    .line 3664
    const-string v22, "OVT9LOG"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "IME_APP_Command Add error span from ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "] WITHOUT TAPPING ###########"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPSUtil:Lcom/htc/android/htcime/util/PostSpellingUtil;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v8}, Lcom/htc/android/htcime/util/PostSpellingUtil;->addErrorSpan(II)Z

    .line 3672
    .end local v16           #span_count:I
    :cond_45
    :goto_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isReselectWCL:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3673
    const-string v22, "OVT9LOG"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "IME_APP_Command restore to previous word (content,start)="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v24, v0

    sget-object v24, Lcom/htc/android/htcime/HTCIMMData;->mReselectWCLWord:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v24, v0

    sget v24, Lcom/htc/android/htcime/HTCIMMData;->mReselectWCLCursorStart:I

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sget-object v22, Lcom/htc/android/htcime/HTCIMMData;->mReselectWCLWord:Ljava/lang/String;

    sput-object v22, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    .line 3675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v22, v0

    sget v22, Lcom/htc/android/htcime/HTCIMMData;->mReselectWCLCursorStart:I

    sput v22, Lcom/htc/android/htcime/HTCIMMData;->mReselectCursorStart:I

    goto/16 :goto_0

    .line 3668
    :cond_46
    const-string v22, "OVT9LOG"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "IME_APP_Command remove error span from ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "] WITHOUT TAPPING ###########"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPSUtil:Lcom/htc/android/htcime/util/PostSpellingUtil;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v8}, Lcom/htc/android/htcime/util/PostSpellingUtil;->removeErrorSpan(II)Z

    goto/16 :goto_23

    .line 2973
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_23
    .end packed-switch

    .line 3422
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1a
        :pswitch_1b
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method

.method public handleMultitapKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;I)Z
    .locals 10
    .parameter "InputConnection"
    .parameter "keyIndex"
    .parameter "event"
    .parameter "sip_state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2502
    const/4 v1, 0x1

    .line 2505
    .local v1, bRet:Z
    invoke-virtual {p0, p4, p2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->mapXT9KeyIndexToKeyCode(II)I

    move-result v0

    .line 2507
    .local v0, RealKey:I
    const/4 v4, -0x1

    if-ne v4, v0, :cond_1

    .line 2708
    :cond_0
    :goto_0
    return v7

    .line 2512
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 2675
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v7, v4, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_doLagAlert:Z

    .line 2677
    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeProcessKey(I)I

    .line 2692
    iget-boolean v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultitapWordComplete:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAddWord:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    if-eqz v4, :cond_10

    .line 2694
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL(Landroid/view/inputmethod/InputConnection;)I

    move-result v4

    iput v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    goto :goto_0

    .line 2515
    :sswitch_0
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v7, v4, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_doLagAlert:Z

    .line 2517
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 2521
    iput v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultiTapInputSequIndex:I

    .line 2522
    const/16 v4, 0x43

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->doNormalKey(I)V

    .line 2523
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->bigram:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;

    invoke-virtual {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;->onDelKey()V

    goto :goto_0

    .line 2529
    :cond_3
    iget-boolean v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultitapWordComplete:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    if-eqz v4, :cond_5

    .line 2536
    :cond_4
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetMultiTapDone()V

    .line 2537
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearOneSymb()V

    .line 2538
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->TYPED_SPAN:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanBGColor(Landroid/text/style/BackgroundColorSpan;)V

    .line 2539
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->FG_TYPED_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanFGColor(Landroid/text/style/ForegroundColorSpan;)V

    .line 2545
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL(Landroid/view/inputmethod/InputConnection;)I

    move-result v4

    iput v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    .line 2548
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2549
    iput-boolean v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNonwordDelFlag:Z

    .line 2550
    iget v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nonWordNoSuggestionVibrate(ILjava/lang/String;)V

    .line 2551
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v5, v7}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2552
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    invoke-virtual {v4, v5, v6, v8}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    goto :goto_0

    .line 2557
    :cond_5
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 2559
    .local v2, len:I
    if-lez v2, :cond_6

    .line 2561
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2563
    .local v3, sTemp:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {p0, p1, v4, v3, v8}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2567
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->addWordToUDBBuffer(Ljava/lang/String;)V

    .line 2570
    .end local v3           #sTemp:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 2571
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 2573
    iput-object v9, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    goto/16 :goto_0

    .line 2580
    .end local v2           #len:I
    :sswitch_1
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 2583
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->getWCLSelectionAtButton()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventUp(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2587
    :cond_7
    iget-boolean v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultitapWordComplete:Z

    if-eqz v4, :cond_8

    .line 2588
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->NotifyWordCommitFirm(Ljava/lang/String;I)V

    .line 2597
    :goto_1
    const-string v4, ""

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v5, v8}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2598
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput-boolean v7, v4, Lcom/htc/android/htcime/Intf/HTCIMData;->passUpdateSelection:Z

    .line 2599
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 2600
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 2601
    iput-object v9, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    goto/16 :goto_0

    .line 2593
    :cond_8
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->addWordToUDBBuffer(Ljava/lang/String;)V

    .line 2594
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->updateUDB()V

    goto :goto_1

    .line 2605
    :cond_9
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendKeyChar(C)V

    .line 2609
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->updateUDB()V

    goto/16 :goto_0

    .line 2614
    :sswitch_2
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v7, v4, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_doLagAlert:Z

    .line 2616
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 2618
    iget-boolean v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultitapWordComplete:Z

    if-eqz v4, :cond_b

    .line 2619
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->NotifyWordCommitFirm(Ljava/lang/String;I)V

    .line 2628
    :goto_2
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v4, v5, v8}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2629
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput-boolean v7, v4, Lcom/htc/android/htcime/Intf/HTCIMData;->passUpdateSelection:Z

    .line 2630
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 2631
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 2632
    iput-object v9, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 2654
    :cond_a
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/htc/android/htcime/XT9IME/XT9IME;->mLastSpaceTime:J

    goto/16 :goto_0

    .line 2624
    :cond_b
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->addWordToUDBBuffer(Ljava/lang/String;)V

    .line 2625
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->updateUDB()V

    goto :goto_2

    .line 2639
    :cond_c
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->updateUDB()V

    .line 2641
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v4, :cond_a

    .line 2642
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2644
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->doubleSpaceForPreiod(Landroid/view/inputmethod/InputConnection;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2645
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4, v7, v8}, Lcom/htc/android/htcime/HTCIMEService;->deleteSurroundingText(II)Z

    .line 2646
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string v5, ""

    const-string v6, ". "

    invoke-virtual {p0, v4, v5, v6, v8}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2651
    :goto_4
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_3

    .line 2650
    :cond_d
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string v5, ""

    const-string v6, " "

    invoke-virtual {p0, v4, v5, v6, v8}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    .line 2658
    :sswitch_3
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetMultiTapDone()V

    .line 2659
    const/16 v4, 0x30

    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeAddSymbol(I)V

    .line 2661
    iget-boolean v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultitapWordComplete:Z

    if-nez v4, :cond_e

    iget-boolean v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAddWord:Z

    if-nez v4, :cond_e

    iget-boolean v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    if-eqz v4, :cond_f

    .line 2663
    :cond_e
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL(Landroid/view/inputmethod/InputConnection;)I

    move-result v4

    iput v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    goto/16 :goto_0

    .line 2668
    :cond_f
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetActiveWordIndex()I

    move-result v5

    iput v5, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 2669
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 2670
    const-string v4, ""

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v5, v7}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2699
    :cond_10
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetActiveWordIndex()I

    move-result v5

    iput v5, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 2700
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 2701
    const-string v4, ""

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v5, v7}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2512
    nop

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_0
        0x68 -> :sswitch_2
        0x69 -> :sswitch_1
        0x200 -> :sswitch_3
    .end sparse-switch
.end method

.method public handleQWERTYKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z
    .locals 4
    .parameter "InputConnection"
    .parameter "unicode"
    .parameter "pos"
    .parameter "event"
    .parameter "landScape"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 3999
    const/4 v0, 0x0

    .line 4001
    .local v0, bHandle:Z
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMode:I

    if-ne v1, v2, :cond_2

    .line 4003
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->mPDSwitch:Lcom/htc/android/htcime/XT9IME/util/PDSwitch;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x65

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->diagnose(Lcom/htc/android/htcime/HTCIMEService;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4004
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKey_Regn(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v0

    .line 4021
    :goto_0
    return v0

    .line 4010
    :cond_1
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKey_Dscr(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_0

    .line 4018
    :cond_2
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKey_Dscr(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public handleQWERTYKeyAC(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z
    .locals 4
    .parameter "InputConnection"
    .parameter "ucode"
    .parameter "pos"
    .parameter "event"
    .parameter "landScape"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 1022
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMode:I

    if-ne v1, v2, :cond_2

    .line 1024
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->mPDSwitch:Lcom/htc/android/htcime/XT9IME/util/PDSwitch;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x65

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->diagnose(Lcom/htc/android/htcime/HTCIMEService;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1025
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKeyAC_Regn(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v0

    .line 1037
    :goto_0
    return v0

    .line 1030
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKeyAC_Dscr(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v0

    .line 1032
    .local v0, bHandle:Z
    goto :goto_0

    .line 1037
    .end local v0           #bHandle:Z
    :cond_2
    invoke-virtual/range {p0 .. p5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKeyAC_Dscr(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public handleQWERTYKeyAC_Dscr(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z
    .locals 6
    .parameter "InputConnection"
    .parameter "ucode"
    .parameter "pos"
    .parameter "event"
    .parameter "landScape"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1127
    shr-int/lit8 v1, p2, 0x17

    .line 1128
    .local v1, leftest_bit:I
    const v2, 0x7fffff

    and-int/2addr p2, v2

    .line 1132
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1134
    if-ne v1, v4, :cond_0

    .line 1135
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    if-ne v2, v3, :cond_1

    .line 1137
    const/16 v2, 0x43

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->doNormalKey(I)V

    .line 1142
    :cond_0
    :goto_0
    iget v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    if-ne v2, v4, :cond_2

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v2

    :goto_1
    int-to-char v0, v2

    .line 1143
    .local v0, ch:C
    const-string v2, ""

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1145
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1146
    return v4

    .line 1139
    .end local v0           #ch:C
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->deleteSurroundingText(II)Z

    goto :goto_0

    .line 1142
    :cond_2
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v2

    goto :goto_1
.end method

.method public handleQWERTYKeyAC_Regn(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z
    .locals 6
    .parameter "InputConnection"
    .parameter "ucode"
    .parameter "pos"
    .parameter "event"
    .parameter "landScape"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1044
    const/4 v0, 0x0

    .line 1045
    .local v0, deleteBefortInsert:Z
    shr-int/lit8 v1, p2, 0x17

    .line 1046
    .local v1, leftest_bit:I
    const v2, 0x7fffff

    and-int/2addr p2, v2

    .line 1050
    if-ne v1, v5, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1052
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1054
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    invoke-virtual {v2, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->tuneCoreCheckPoint(Z)V

    .line 1055
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearOneSymb()V

    .line 1056
    const/4 v0, 0x1

    .line 1063
    :cond_0
    iget v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    if-ne v2, v5, :cond_1

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v2

    :goto_0
    int-to-char p2, v2

    .line 1064
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1065
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    int-to-char v3, p2

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1069
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1073
    invoke-static {p2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeAddSymbol(I)V

    .line 1074
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL_QW(Landroid/view/inputmethod/InputConnection;)I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    .line 1121
    return v5

    .line 1063
    :cond_1
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v2

    goto :goto_0

    .line 1067
    :cond_2
    int-to-char v2, p2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    goto :goto_1
.end method

.method public handleQWERTYKeyMT(ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z
    .locals 5
    .parameter "ucode"
    .parameter "pos"
    .parameter "event"
    .parameter "landScape"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1151
    iget v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v1

    :goto_0
    int-to-char v0, v1

    .line 1152
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1153
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1155
    return v4

    .line 1151
    .end local v0           #ch:C
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v1

    goto :goto_0
.end method

.method public handleQWERTYKeyUP(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z
    .locals 6
    .parameter "InputConnection"
    .parameter "unicode"
    .parameter "pos"
    .parameter "event"
    .parameter "landScape"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1176
    const/4 v0, 0x0

    .line 1178
    .local v0, bHandle:Z
    iget v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMode:I

    if-ne v5, v1, :cond_3

    .line 1180
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->mPDSwitch:Lcom/htc/android/htcime/XT9IME/util/PDSwitch;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x65

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->diagnose(Lcom/htc/android/htcime/HTCIMEService;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1183
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->autoSubstitute:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;->rollBack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1184
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1185
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1186
    :cond_1
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearOneSymb()V

    .line 1188
    invoke-virtual/range {p0 .. p5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKey_Regn(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v0

    .line 1206
    :goto_0
    return v0

    .line 1192
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v5, v4}, Lcom/htc/android/htcime/HTCIMEService;->deleteSurroundingText(II)Z

    .line 1195
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKey_Dscr(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_0

    .line 1201
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v5, v4}, Lcom/htc/android/htcime/HTCIMEService;->deleteSurroundingText(II)Z

    .line 1203
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKey_Dscr(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public handleQWERTYKey_Dscr(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;Z)Z
    .locals 8
    .parameter "InputConnection"
    .parameter "unicode"
    .parameter "event"
    .parameter "landScape"

    .prologue
    const/4 v7, 0x1

    .line 4040
    const v0, 0xffff

    .line 4042
    .local v0, ch:C
    invoke-virtual {p0, p2, p4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->getKeyType_QW(IZ)I

    move-result v2

    .line 4045
    .local v2, real_handle_key:I
    packed-switch v2, :pswitch_data_0

    .line 4148
    :cond_0
    :goto_0
    :pswitch_0
    return v7

    .line 4049
    :pswitch_1
    const/16 v3, 0x43

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleErrorReselect(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4054
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_doLagAlert:Z

    .line 4055
    const/16 v3, 0x43

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->doNormalKey(I)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4143
    :catch_0
    move-exception v1

    .line 4145
    .local v1, e:Landroid/util/AndroidException;
    invoke-virtual {v1}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0

    .line 4060
    .end local v1           #e:Landroid/util/AndroidException;
    :pswitch_2
    const/16 v3, 0x3e

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleErrorReselect(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4065
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_doLagAlert:Z
    :try_end_1
    .catch Landroid/util/AndroidException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4070
    :try_start_2
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_1

    .line 4071
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4074
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->doubleSpaceForPreiod(Landroid/view/inputmethod/InputConnection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4075
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->deleteSurroundingText(II)Z

    .line 4076
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string v4, ""

    const-string v5, ". "

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4081
    :goto_1
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4083
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/htc/android/htcime/XT9IME/XT9IME;->mLastSpaceTime:J

    goto :goto_0

    .line 4086
    :catch_1
    move-exception v3

    goto :goto_0

    .line 4079
    :cond_2
    const-string v3, ""

    const-string v4, " "

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/util/AndroidException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 4089
    :catch_2
    move-exception v3

    goto :goto_0

    .line 4095
    :pswitch_3
    const/16 v3, 0x42

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_3
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleErrorReselect(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4100
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-boolean v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    if-eqz v3, :cond_3

    .line 4104
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendKeyChar(C)V

    .line 4106
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL_GC()V

    goto :goto_0

    .line 4108
    :cond_3
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendKeyChar(C)V

    goto/16 :goto_0

    .line 4113
    :pswitch_4
    const/16 v3, 0x259

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleErrorReselect(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4118
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_doLagAlert:Z

    .line 4119
    iget v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    if-ne v3, v7, :cond_4

    .line 4120
    int-to-char v3, p2

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 4124
    :goto_2
    const-string v3, ""

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4127
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    goto/16 :goto_0

    .line 4122
    :cond_4
    int-to-char v3, p2

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    goto :goto_2

    .line 4136
    :pswitch_5
    int-to-char v0, p2

    .line 4137
    const-string v3, ""

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Landroid/util/AndroidException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 4045
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleQWERTYKey_Regn(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z
    .locals 18
    .parameter "InputConnection"
    .parameter "unicode"
    .parameter "pos"
    .parameter "event"
    .parameter "landScape"

    .prologue
    .line 4173
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->mapQWERTYKdbIndex(IZ)I

    move-result v7

    .line 4175
    .local v7, real_handle_key:I
    packed-switch v7, :pswitch_data_0

    .line 4427
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_doLagAlert:Z

    .line 4429
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v15, v15, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->TYPED_SPAN:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v14, v15}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanBGColor(Landroid/text/style/BackgroundColorSpan;)V

    .line 4430
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v15, v15, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->FG_TYPED_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v14, v15}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanFGColor(Landroid/text/style/ForegroundColorSpan;)V

    .line 4434
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v14, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_PostPrediction:Z

    if-nez v14, :cond_19

    .line 4438
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_15

    .line 4439
    move/from16 v0, p2

    int-to-char v14, v0

    invoke-static {v14}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    .line 4443
    .local v6, keyText:C
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    invoke-static {v14}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4444
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v14, :cond_16

    .line 4445
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4449
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v14}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4452
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->tuneCoreCheckPoint(Z)V

    .line 4454
    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 4455
    invoke-static {v7}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeProcessKey(I)I

    .line 4459
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-lt v14, v15, :cond_18

    .line 4460
    invoke-virtual/range {p0 .. p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL_QW(Landroid/view/inputmethod/InputConnection;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    .line 4552
    .end local v6           #keyText:C
    .end local v7           #real_handle_key:I
    :cond_0
    :goto_3
    :pswitch_0
    const/4 v14, 0x1

    :goto_4
    return v14

    .line 4178
    .restart local v7       #real_handle_key:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_doLagAlert:Z

    .line 4180
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->disableKeyEnlarge:Z

    .line 4181
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNonwordDelFlag:Z

    .line 4183
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v14, :cond_4

    .line 4185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v14}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v8

    .line 4187
    .local v8, sTemp:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 4189
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->autoSubstitute:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;

    invoke-virtual {v14}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;->clear()V

    .line 4190
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4191
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v14}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeDisableSubstituteString(I)V

    .line 4192
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v14}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4193
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v14, v15}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4236
    :goto_5
    sget-boolean v14, Lcom/htc/android/htcime/HTCIMMData;->mScoring:Z

    if-eqz v14, :cond_0

    .line 4237
    const/4 v14, 0x1

    sput-boolean v14, Lcom/htc/android/htcime/util/ScoringUtil;->mIsWordWithBS:Z

    goto :goto_3

    .line 4543
    .end local v7           #real_handle_key:I
    .end local v8           #sTemp:Ljava/lang/String;
    :catch_0
    move-exception v14

    goto :goto_3

    .line 4198
    .restart local v7       #real_handle_key:I
    .restart local v8       #sTemp:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->tuneCoreCheckPoint(Z)V

    .line 4200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v15, v15, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->TYPED_SPAN:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v14, v15}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanBGColor(Landroid/text/style/BackgroundColorSpan;)V

    .line 4201
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v15, v15, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->FG_TYPED_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v14, v15}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanFGColor(Landroid/text/style/ForegroundColorSpan;)V

    .line 4203
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x1

    if-lt v14, v15, :cond_2

    .line 4205
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearOneSymb()V

    .line 4206
    invoke-virtual/range {p0 .. p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL_QW(Landroid/view/inputmethod/InputConnection;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    .line 4207
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v15, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    .line 4547
    .end local v7           #real_handle_key:I
    .end local v8           #sTemp:Ljava/lang/String;
    :catch_1
    move-exception v14

    goto/16 :goto_3

    .line 4212
    .restart local v7       #real_handle_key:I
    .restart local v8       #sTemp:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearOneSymb()V

    .line 4213
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandCount()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    .line 4215
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    if-lez v14, :cond_3

    .line 4217
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetActiveWordIndex()I

    move-result v15

    iput v15, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    .line 4218
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v15, v15, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    iput v15, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    .line 4219
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    const/4 v15, -0x1

    iput v15, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 4220
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v15, v15, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    iput v15, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 4223
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4224
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v15, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4231
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    goto/16 :goto_5

    .line 4228
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    const-string v15, ""

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v15, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4229
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    goto :goto_6

    .line 4243
    .end local v8           #sTemp:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    invoke-virtual {v14}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->rollBack()[Ljava/lang/String;

    move-result-object v9

    .local v9, saved_words:[Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 4245
    const/4 v14, 0x0

    aget-object v4, v9, v14

    .line 4246
    .local v4, exactedWord:Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v11, v9, v14

    .line 4247
    .local v11, suggestWord:Ljava/lang/String;
    const/4 v14, 0x2

    aget-object v3, v9, v14

    .line 4248
    .local v3, appendedSym:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v14}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 4249
    .local v5, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v5, :cond_5

    .line 4251
    const-string v14, "Eric_J"

    const-string v15, "[handleQWERTYKey_Regn] InputConnection is null!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4252
    const/4 v14, 0x1

    goto/16 :goto_4

    .line 4254
    :cond_5
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4256
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-interface {v5, v14, v15}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 4257
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4258
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v15, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4260
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4262
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v14, v15}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeReselectWord([CI)I

    .line 4263
    invoke-virtual/range {p0 .. p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL_QW(Landroid/view/inputmethod/InputConnection;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    .line 4266
    sget-boolean v14, Lcom/htc/android/htcime/HTCIMMData;->sFeature_UserProfilingLog:Z

    if-eqz v14, :cond_0

    .line 4267
    new-instance v13, Lcom/htc/android/htcime/util/ULogUtil;

    invoke-direct {v13}, Lcom/htc/android/htcime/util/ULogUtil;-><init>()V

    .line 4268
    .local v13, ulogUtil:Lcom/htc/android/htcime/util/ULogUtil;
    const-string v14, "special_correction"

    const-string v15, "special_correction"

    const-string v16, "1"

    invoke-virtual/range {v13 .. v16}, Lcom/htc/android/htcime/util/ULogUtil;->writeSinglePairULogData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4272
    .end local v3           #appendedSym:Ljava/lang/String;
    .end local v4           #exactedWord:Ljava/lang/String;
    .end local v5           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v11           #suggestWord:Ljava/lang/String;
    .end local v13           #ulogUtil:Lcom/htc/android/htcime/util/ULogUtil;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-boolean v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isReselectWCL:Z

    if-eqz v14, :cond_7

    .line 4273
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    goto/16 :goto_3

    .line 4278
    :cond_7
    const/16 v14, 0x43

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/htcime/XT9IME/XT9IME;->doNormalKey(I)V

    .line 4279
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->bigram:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;

    invoke-virtual {v14}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;->onDelKey()V

    goto/16 :goto_3

    .line 4285
    .end local v9           #saved_words:[Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_doLagAlert:Z

    .line 4287
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v14, :cond_d

    .line 4290
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v15, v15, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    if-ne v14, v15, :cond_8

    .line 4292
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v15, v15, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    if-eq v14, v15, :cond_c

    .line 4294
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v15, v15, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    invoke-static {v15}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->lookupSortedAutoCompIdx(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v14 .. v17}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4299
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-lt v14, v15, :cond_9

    .line 4300
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isSuggestionRejected()Z

    move-result v14

    if-nez v14, :cond_9

    .line 4301
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v15, v15, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    iput v15, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 4303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/android/htcime/XT9IME/XT9IME;->lookupSortedAutoCompIdx(I)I

    move-result v14

    invoke-static {v14}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4304
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v14, :cond_9

    .line 4306
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/android/htcime/XT9IME/XT9IME;->lookupSortedAutoCompIdx(I)I

    move-result v14

    invoke-static {v14}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4312
    :cond_9
    sget-boolean v14, Lcom/htc/android/htcime/HTCIMMData;->mScoring:Z

    if-eqz v14, :cond_a

    .line 4313
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v10, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    .line 4314
    .local v10, sel_idx:I
    invoke-static {v10}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/htc/android/htcime/util/ScoringUtil;->submitWord(ILjava/lang/String;)V

    .line 4316
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isFstCandRC()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 4317
    sget v14, Lcom/htc/android/htcime/util/ScoringUtil;->mNumRegCorrectedWords:I

    add-int/lit8 v14, v14, 0x1

    sput v14, Lcom/htc/android/htcime/util/ScoringUtil;->mNumRegCorrectedWords:I

    .line 4320
    .end local v10           #sel_idx:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4322
    .local v12, tmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->NotifyWordCommit(Ljava/lang/String;)V

    .line 4323
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/htc/android/htcime/Intf/HTCIMData;->passUpdateSelection:Z

    .line 4325
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4326
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 4328
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v15, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4329
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 4330
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9GCHandler;->requestGC()V

    .line 4347
    .end local v12           #tmp:Ljava/lang/String;
    :cond_b
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sput-wide v14, Lcom/htc/android/htcime/XT9IME/XT9IME;->mLastSpaceTime:J

    goto/16 :goto_3

    .line 4296
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    invoke-virtual {v14}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->AutoAddExactedWord()V

    goto/16 :goto_7

    .line 4336
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v14, :cond_b

    .line 4337
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v14}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/htcime/XT9IME/XT9IME;->doubleSpaceForPreiod(Landroid/view/inputmethod/InputConnection;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 4339
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/htc/android/htcime/HTCIMEService;->deleteSurroundingText(II)Z

    .line 4340
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string v15, ""

    const-string v16, ". "

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4344
    :goto_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v14}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_8

    .line 4343
    :cond_e
    const-string v14, ""

    const-string v15, " "

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v15, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    .line 4350
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v14, :cond_12

    .line 4353
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v14, v14, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v14}, Lcom/htc/android/htcime/HTCIMMView;->getWCLSelectionAtButton()Z

    move-result v14

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v14, v14, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/16 v15, 0x17

    invoke-virtual {v14, v15}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventUp(I)Z

    move-result v14

    if-nez v14, :cond_0

    .line 4357
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-lt v14, v15, :cond_10

    .line 4358
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isSuggestionRejected()Z

    move-result v14

    if-nez v14, :cond_10

    .line 4359
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v15, v15, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    iput v15, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 4361
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/android/htcime/XT9IME/XT9IME;->lookupSortedAutoCompIdx(I)I

    move-result v14

    invoke-static {v14}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4362
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v14, :cond_10

    .line 4364
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/android/htcime/XT9IME/XT9IME;->lookupSortedAutoCompIdx(I)I

    move-result v14

    invoke-static {v14}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4370
    :cond_10
    sget-boolean v14, Lcom/htc/android/htcime/HTCIMMData;->mScoring:Z

    if-eqz v14, :cond_11

    .line 4371
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v10, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    .line 4372
    .restart local v10       #sel_idx:I
    invoke-static {v10}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/htc/android/htcime/util/ScoringUtil;->submitWord(ILjava/lang/String;)V

    .line 4374
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isFstCandRC()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 4375
    sget v14, Lcom/htc/android/htcime/util/ScoringUtil;->mNumRegCorrectedWords:I

    add-int/lit8 v14, v14, 0x1

    sput v14, Lcom/htc/android/htcime/util/ScoringUtil;->mNumRegCorrectedWords:I

    .line 4377
    .end local v10           #sel_idx:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v15, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4378
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->NotifyWordCommit(Ljava/lang/String;)V

    .line 4379
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/htc/android/htcime/Intf/HTCIMData;->passUpdateSelection:Z

    .line 4381
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4382
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 4383
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 4384
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9GCHandler;->requestGC()V

    goto/16 :goto_3

    .line 4388
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Lcom/htc/android/htcime/HTCIMEService;->sendKeyChar(C)V

    goto/16 :goto_3

    .line 4394
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v14, :cond_14

    .line 4396
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-lt v14, v15, :cond_13

    .line 4397
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isSuggestionRejected()Z

    move-result v14

    if-nez v14, :cond_13

    .line 4398
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v15, v15, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    iput v15, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 4400
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/android/htcime/XT9IME/XT9IME;->lookupSortedAutoCompIdx(I)I

    move-result v14

    invoke-static {v14}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4401
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v14, :cond_13

    .line 4403
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/android/htcime/XT9IME/XT9IME;->lookupSortedAutoCompIdx(I)I

    move-result v14

    invoke-static {v14}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4408
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v15, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4410
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4411
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 4412
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    goto/16 :goto_3

    .line 4416
    :cond_14
    const-string v14, ""

    move/from16 v0, p2

    int-to-char v15, v0

    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v15, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 4441
    :cond_15
    move/from16 v0, p2

    int-to-char v14, v0

    invoke-static {v14}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .restart local v6       #keyText:C
    goto/16 :goto_0

    .line 4447
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->autoSubstitute:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;->rollBack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    goto/16 :goto_1

    .line 4457
    :cond_17
    move-object/from16 v0, p3

    iget v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;->x:I

    move-object/from16 v0, p3

    iget v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;->y:I

    invoke-static {v7, v14, v15}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeProcessTap(III)I

    goto/16 :goto_2

    .line 4463
    :cond_18
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    .line 4464
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetActiveWordIndex()I

    move-result v15

    iput v15, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    .line 4465
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v15, v15, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    iput v15, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    .line 4466
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    const/4 v15, -0x1

    iput v15, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 4467
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v15, v15, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    iput v15, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    goto/16 :goto_3

    .line 4473
    .end local v6           #keyText:C
    :cond_19
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1a

    .line 4474
    move/from16 v0, p2

    int-to-char v14, v0

    invoke-static {v14}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    .line 4479
    .restart local v6       #keyText:C
    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v14, :cond_1b

    .line 4481
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4485
    :goto_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v14}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4488
    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 4489
    invoke-static {v7}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeProcessKeyOnly(I)I

    goto/16 :goto_3

    .line 4476
    .end local v6           #keyText:C
    :cond_1a
    move/from16 v0, p2

    int-to-char v14, v0

    invoke-static {v14}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .restart local v6       #keyText:C
    goto :goto_a

    .line 4483
    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v14, v14, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->autoSubstitute:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;->rollBack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    goto :goto_b

    .line 4491
    :cond_1c
    move-object/from16 v0, p3

    iget v14, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;->x:I

    move-object/from16 v0, p3

    iget v15, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;->y:I

    invoke-static {v7, v14, v15}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeProcessTapOnly(III)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 4175
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleQWERTYKey_RegnCorec(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Z)I
    .locals 9
    .parameter "InputConnection"
    .parameter "orgKeyIdx"
    .parameter "pos"
    .parameter "landScape"

    .prologue
    const/4 v7, 0x0

    .line 864
    invoke-virtual {p0, p2, p4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->mapQWERTYKdbIndex(IZ)I

    move-result v4

    .line 866
    .local v4, real_handle_key:I
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enlargeKeyCache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;

    invoke-virtual {v6}, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;->reset()V

    .line 867
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enlargeKeyCache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;

    iput p2, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;->SIP_key_orign:I

    .line 868
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enlargeKeyCache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;

    iput p2, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;->SIP_key_corec:I

    .line 870
    packed-switch v4, :pswitch_data_0

    .line 881
    iget-boolean v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->disableKeyEnlarge:Z

    if-nez v6, :cond_7

    .line 883
    const/4 v0, 0x0

    .line 884
    .local v0, cand_cnt:I
    const/4 v5, 0x0

    .line 889
    .local v5, user_word_idx:I
    invoke-static {p2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 890
    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeProcessKey(I)I

    .line 895
    :goto_0
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandCount()I

    move-result v0

    .line 897
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetActiveWordIndex()I

    move-result v1

    .line 908
    .local v1, engine_suggested_idx:I
    if-lez v0, :cond_6

    .line 925
    invoke-static {v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 926
    .local v3, exacted_word:Ljava/lang/String;
    if-ne v1, v5, :cond_1

    move-object v6, v3

    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 929
    .local v2, engine_suggested_word:Ljava/lang/String;
    if-ne v1, v5, :cond_2

    .line 936
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enlargeKeyCache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;

    iput p2, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;->SIP_key_corec:I

    .line 937
    iput-boolean v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->isKeyEnlarge:Z

    .line 982
    :goto_2
    iget-boolean v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->isKeyEnlarge:Z

    if-eqz v6, :cond_5

    .line 983
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearOneSymb()V

    .line 1001
    .end local v0           #cand_cnt:I
    .end local v1           #engine_suggested_idx:I
    .end local v2           #engine_suggested_word:Ljava/lang/String;
    .end local v3           #exacted_word:Ljava/lang/String;
    .end local v5           #user_word_idx:I
    :goto_3
    :pswitch_0
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enlargeKeyCache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;->SIP_key_corec:I

    return v6

    .line 892
    .restart local v0       #cand_cnt:I
    .restart local v5       #user_word_idx:I
    :cond_0
    iget v6, p3, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;->x:I

    iget v8, p3, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;->y:I

    invoke-static {v4, v6, v8}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeProcessTap(III)I

    goto :goto_0

    .line 926
    .restart local v1       #engine_suggested_idx:I
    .restart local v3       #exacted_word:Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 942
    .restart local v2       #engine_suggested_word:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 949
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enlargeKeyCache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-direct {p0, v8, p2, p4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->findQwertySIPRegKey(CIZ)I

    move-result v8

    iput v8, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;->SIP_key_corec:I

    .line 950
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enlargeKeyCache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;->SIP_key_corec:I

    if-eq v6, p2, :cond_3

    const/4 v6, 0x1

    :goto_4
    iput-boolean v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->isKeyEnlarge:Z

    goto :goto_2

    :cond_3
    move v6, v7

    goto :goto_4

    .line 975
    :cond_4
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enlargeKeyCache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;

    iput p2, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;->SIP_key_corec:I

    .line 976
    iput-boolean v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->isKeyEnlarge:Z

    goto :goto_2

    .line 986
    :cond_5
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enlargeKeyCache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;->cache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo$EnlargeKeyCache;

    iput v0, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo$EnlargeKeyCache;->cand_cnt:I

    .line 987
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enlargeKeyCache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;->cache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo$EnlargeKeyCache;

    iput v1, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo$EnlargeKeyCache;->engSug_Idx:I

    goto :goto_3

    .line 992
    .end local v2           #engine_suggested_word:Ljava/lang/String;
    .end local v3           #exacted_word:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enlargeKeyCache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;

    iput p2, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;->SIP_key_corec:I

    goto :goto_3

    .line 997
    .end local v0           #cand_cnt:I
    .end local v1           #engine_suggested_idx:I
    .end local v5           #user_word_idx:I
    :cond_7
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enlargeKeyCache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;

    iput p2, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;->SIP_key_corec:I

    goto :goto_3

    .line 870
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handleQWERTYKey_RegnPD(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z
    .locals 3
    .parameter "InputConnection"
    .parameter "unicode"
    .parameter "pos"
    .parameter "event"
    .parameter "landScape"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 4561
    invoke-virtual {p0, p2, p5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->getKeyType_QW(IZ)I

    move-result v0

    .line 4563
    .local v0, key_type:I
    packed-switch v0, :pswitch_data_0

    .line 4584
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 4567
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->tuneCoreCheckPoint(Z)V

    .line 4569
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeBuildCandList()I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    .line 4572
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL_QW(Landroid/view/inputmethod/InputConnection;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    goto :goto_0

    .line 4563
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handleSIPKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;I)Z
    .locals 3
    .parameter "InputConnection"
    .parameter "keyIndex"
    .parameter "event"
    .parameter "sip_state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 2932
    const/4 v0, 0x0

    .line 2943
    .local v0, bHandle:Z
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMode:I

    if-ne v1, v2, :cond_0

    .line 2946
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->HandleXT9Key(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 2954
    :goto_0
    return v0

    .line 2951
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleMultitapKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method public handleSIPKeyLongPress(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;I)Z
    .locals 9
    .parameter "InputConnection"
    .parameter "keyIndex"
    .parameter "event"
    .parameter "sip_state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 2730
    const/4 v1, 0x1

    .line 2733
    .local v1, bHandle:Z
    invoke-virtual {p0, p4, p2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->mapXT9KeyIndexToKeyCode(II)I

    move-result v0

    .line 2738
    .local v0, RealKey:I
    const/16 v4, 0x69

    if-ne v4, v0, :cond_0

    .line 2740
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->HandleXT9Key(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;I)Z

    .line 2819
    :goto_0
    return v1

    .line 2742
    :cond_0
    const/16 v4, 0x67

    if-ne v4, v0, :cond_5

    .line 2744
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 2746
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v3

    .line 2748
    .local v3, sTemp:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 2750
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 2751
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeDisableSubstituteString(I)V

    .line 2752
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 2753
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v4, v8}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2757
    :cond_1
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearOneSymb()V

    .line 2759
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandCount()I

    move-result v4

    iput v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    .line 2760
    iget v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    if-lez v4, :cond_3

    .line 2763
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetActiveWordIndex()I

    move-result v5

    iput v5, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    .line 2764
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    iput v5, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    .line 2765
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    iput v5, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 2766
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput v6, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 2768
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 2769
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 2770
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 2772
    :cond_2
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v5, v8}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2786
    :goto_1
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v5, ""

    invoke-virtual {v4, v5, v7, v7}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    .line 2787
    iput-boolean v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    goto :goto_0

    .line 2777
    :cond_3
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {p0, p1, v4, v5, v8}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2778
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 2779
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput v6, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    .line 2780
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput v6, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    .line 2781
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput v6, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 2782
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput v6, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    goto :goto_1

    .line 2792
    .end local v3           #sTemp:Ljava/lang/String;
    :cond_4
    invoke-interface {p1, v8, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 2798
    :cond_5
    packed-switch p4, :pswitch_data_0

    goto/16 :goto_0

    .line 2801
    :pswitch_0
    sget-object v4, Lcom/htc/android/htcime/XT9IME/XT9IME;->Xt9P20L1Text:[Ljava/lang/CharSequence;

    aget-object v2, v4, p2

    .line 2802
    .local v2, longPressChar:Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 2803
    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeAddSymbol(I)V

    .line 2805
    :cond_6
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->buildWCL(Landroid/view/inputmethod/InputConnection;)I

    move-result v4

    iput v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    goto/16 :goto_0

    .line 2798
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method handleSmartSpace(I)Z
    .locals 12
    .parameter "ucode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 4730
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4733
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->getTextBeforeCursor(III)Ljava/lang/CharSequence;

    move-result-object v10

    .line 4734
    .local v10, target:Ljava/lang/CharSequence;
    if-nez v10, :cond_1

    .line 4735
    const-string v0, "XT9IME"

    const-string v3, "[handleSmartAccent] error occur in HTCIMMService.getTextBeforeCursor() , cs is null."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4737
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4738
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->acceptSuggestion()V

    .line 4739
    const-string v0, ""

    const-string v3, " "

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4740
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4741
    const/4 v7, 0x1

    .line 4797
    :cond_0
    :goto_0
    return v7

    .line 4743
    :cond_1
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 4744
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4745
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->acceptSuggestion()V

    .line 4746
    const-string v0, ""

    const-string v3, " "

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4747
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4748
    const/4 v7, 0x1

    goto :goto_0

    .line 4751
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    .line 4752
    .local v11, targetChar:Ljava/lang/Character;
    invoke-virtual {v11}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    .line 4753
    .local v8, isUpperCase:Z
    if-eqz v8, :cond_3

    .line 4754
    invoke-virtual {v11}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    .line 4756
    :cond_3
    sget-object v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->sSmartSpaceMAP:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Character;

    .line 4757
    .local v6, appliedChar:Ljava/lang/Character;
    if-nez v6, :cond_4

    .line 4758
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4759
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->acceptSuggestion()V

    .line 4760
    const-string v0, ""

    const-string v3, " "

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4761
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4762
    const/4 v7, 0x1

    goto :goto_0

    .line 4766
    :cond_4
    if-eqz v8, :cond_6

    .line 4767
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 4771
    .local v2, applied_ucode:I
    :goto_1
    const/high16 v0, 0x80

    or-int/2addr v2, v0

    .line 4774
    const/4 v9, 0x4

    .line 4775
    .local v9, shiftBakup:I
    if-eqz v8, :cond_7

    .line 4776
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 4777
    iget v9, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    .line 4778
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    .line 4779
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetShiftMode(I)V

    .line 4789
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->DummyPos:Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKeyAC(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v7

    .line 4791
    .local v7, handled:Z
    const/4 v0, 0x4

    if-eq v9, v0, :cond_0

    .line 4792
    iput v9, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    .line 4793
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    const/4 v0, 0x3

    :goto_3
    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetShiftMode(I)V

    goto/16 :goto_0

    .line 4769
    .end local v2           #applied_ucode:I
    .end local v7           #handled:Z
    .end local v9           #shiftBakup:I
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v2

    .restart local v2       #applied_ucode:I
    goto :goto_1

    .line 4782
    .restart local v9       #shiftBakup:I
    :cond_7
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 4783
    :cond_8
    iget v9, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    .line 4784
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    .line 4785
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetShiftMode(I)V

    goto :goto_2

    .line 4793
    .restart local v7       #handled:Z
    :cond_9
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    goto :goto_3
.end method

.method public handleSystemKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "InputConnection"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3722
    const/4 v0, 0x1

    .line 3728
    .local v0, bRet:Z
    sparse-switch p2, :sswitch_data_0

    .line 3854
    const/4 v0, 0x0

    .line 3861
    :cond_0
    :goto_0
    return v0

    .line 3731
    :sswitch_0
    const/4 v0, 0x0

    .line 3732
    goto :goto_0

    .line 3735
    :sswitch_1
    :try_start_0
    iget v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    if-eqz v2, :cond_1

    .line 3736
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2, p2}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventDown(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3737
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->moveWCLWord(Landroid/view/inputmethod/InputConnection;Z)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3856
    :catch_0
    move-exception v1

    .line 3858
    .local v1, e:Landroid/util/AndroidException;
    invoke-virtual {v1}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0

    .line 3740
    .end local v1           #e:Landroid/util/AndroidException;
    :cond_1
    const/4 v0, 0x0

    .line 3741
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->bigram:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;

    invoke-virtual {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;->onDpadChangeCursor()V

    goto :goto_0

    .line 3746
    :sswitch_2
    iget v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    if-lez v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    if-eqz v2, :cond_2

    .line 3747
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2, p2}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventDown(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3748
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->moveWCLWord(Landroid/view/inputmethod/InputConnection;Z)V

    goto :goto_0

    .line 3751
    :cond_2
    const/4 v0, 0x0

    .line 3752
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->bigram:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;

    invoke-virtual {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;->onDpadChangeCursor()V

    goto :goto_0

    .line 3757
    :sswitch_3
    iget v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    if-lez v2, :cond_3

    .line 3760
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->moveLineWCLWord(Landroid/view/inputmethod/InputConnection;Z)V

    goto :goto_0

    .line 3764
    :cond_3
    const/4 v0, 0x0

    .line 3765
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->bigram:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;

    invoke-virtual {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;->onDpadChangeCursor()V

    goto :goto_0

    .line 3769
    :sswitch_4
    iget v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    if-lez v2, :cond_4

    .line 3772
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->moveLineWCLWord(Landroid/view/inputmethod/InputConnection;Z)V

    goto :goto_0

    .line 3776
    :cond_4
    const/4 v0, 0x0

    .line 3777
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->bigram:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;

    invoke-virtual {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;->onDpadChangeCursor()V

    goto :goto_0

    .line 3782
    :sswitch_5
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2, p2}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventDown(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3784
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 3785
    iget v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    if-eqz v2, :cond_0

    .line 3786
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/HTCIMMView;->dispatchTrackballevent(Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;I)V

    goto/16 :goto_0

    .line 3789
    :cond_5
    const/4 v0, 0x0

    .line 3790
    goto/16 :goto_0

    .line 3794
    :sswitch_6
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 3798
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v2, :cond_7

    .line 3799
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3801
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->doubleSpaceForPreiod(Landroid/view/inputmethod/InputConnection;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3802
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->deleteSurroundingText(II)Z

    .line 3803
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string v3, ""

    const-string v4, ". "

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3807
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 3835
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mLastSpaceTime:J

    goto/16 :goto_0

    .line 3806
    :cond_6
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    const-string v3, " "

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 3810
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 3815
    :cond_8
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v2, v4, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-nez v2, :cond_b

    .line 3817
    :cond_a
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_b

    .line 3818
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isSuggestionRejected()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3819
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 3820
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3821
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 3822
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3828
    :cond_b
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3829
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->NotifyWordCommit(Ljava/lang/String;)V

    .line 3831
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3832
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 3833
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    goto/16 :goto_2

    .line 3839
    :sswitch_7
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 3840
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 3841
    const/4 v0, 0x0

    .line 3842
    goto/16 :goto_0

    .line 3846
    :sswitch_8
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;
    :try_end_1
    .catch Landroid/util/AndroidException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_c

    .line 3847
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3849
    :cond_c
    const/4 v0, 0x0

    .line 3850
    goto/16 :goto_0

    .line 3728
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_7
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_8
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleSystemKeyUp(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "InputConnection"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 3877
    const/4 v0, 0x1

    .line 3880
    .local v0, bRet:Z
    sparse-switch p2, :sswitch_data_0

    .line 3956
    const/4 v0, 0x0

    .line 3963
    :cond_0
    :goto_0
    return v0

    .line 3882
    :sswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2, p2}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventUp(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3886
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 3888
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    sget-object v3, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    if-ne v2, v3, :cond_4

    .line 3890
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v2, v4, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-nez v2, :cond_3

    .line 3892
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isSuggestionRejected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3893
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 3894
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3895
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 3896
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3901
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3903
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->NotifyWordCommitFirm(Ljava/lang/String;I)V

    .line 3904
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 3905
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3958
    :catch_0
    move-exception v1

    .line 3960
    .local v1, e:Landroid/util/AndroidException;
    invoke-virtual {v1}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0

    .line 3908
    .end local v1           #e:Landroid/util/AndroidException;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/HTCIMMView;->dispatchTrackballevent(Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;I)V

    goto/16 :goto_0

    .line 3911
    :cond_5
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-boolean v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    if-eqz v2, :cond_6

    .line 3912
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->IMFcompletions:[Landroid/view/inputmethod/CompletionInfo;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    aget-object v3, v3, v4

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 3913
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL_GC()V

    goto/16 :goto_0

    .line 3917
    :cond_6
    const/4 v0, 0x0

    .line 3919
    goto/16 :goto_0

    .line 3923
    :sswitch_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 3925
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v2, v5, :cond_7

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v2, v4, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v2, v4, :cond_9

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-nez v2, :cond_9

    .line 3927
    :cond_8
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isSuggestionRejected()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3928
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 3929
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3930
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 3931
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3936
    :cond_9
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3937
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->NotifyWordCommit(Ljava/lang/String;)V

    .line 3939
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 3940
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 3941
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    goto/16 :goto_0

    .line 3943
    :cond_a
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-boolean v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    if-eqz v2, :cond_b

    .line 3947
    const/16 v2, 0x42

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->doNormalKey(I)V

    .line 3948
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL_GC()V
    :try_end_1
    .catch Landroid/util/AndroidException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 3952
    :cond_b
    const/4 v0, 0x0

    .line 3954
    goto/16 :goto_0

    .line 3880
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method handleTerm(Landroid/view/inputmethod/InputConnection;I)V
    .locals 7
    .parameter "InputConnection"
    .parameter "idx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 4672
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpecTerms:[Ljava/lang/String;

    aget-object v0, v2, p2

    .line 4676
    .local v0, term:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v4}, Lcom/htc/android/htcime/HTCIMEService;->getTextBeforeCursor(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4677
    .local v1, textBeforCursor:Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 4678
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    .line 4679
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4685
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 4686
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v2, v5, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-nez v2, :cond_3

    .line 4688
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_3

    .line 4689
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isSuggestionRejected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4690
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 4691
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4692
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 4693
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4699
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4701
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4702
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 4703
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 4707
    :goto_1
    return-void

    .line 4682
    :cond_4
    const-string v2, "XT9IME"

    const-string v3, "Can\'t get text before cursor!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4705
    :cond_5
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method handleUnicodeChar(Landroid/view/inputmethod/InputConnection;CLandroid/view/KeyEvent;)V
    .locals 7
    .parameter "InputConnection"
    .parameter "uni_char"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 4617
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 4618
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isQWERTY()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4620
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    if-ne v2, v3, :cond_0

    .line 4622
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    if-eq v2, v3, :cond_3

    .line 4623
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    invoke-direct {p0, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->lookupSortedAutoCompIdx(I)I

    move-result v4

    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4628
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_1

    .line 4629
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isSuggestionRejected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4630
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 4631
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-direct {p0, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->lookupSortedAutoCompIdx(I)I

    move-result v2

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetSubstituteString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4632
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 4633
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-direct {p0, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->lookupSortedAutoCompIdx(I)I

    move-result v2

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4640
    :cond_1
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mScoring:Z

    if-eqz v2, :cond_2

    .line 4641
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v1, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    .line 4642
    .local v1, sel_idx:I
    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/htcime/util/ScoringUtil;->submitWord(ILjava/lang/String;)V

    .line 4644
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isFstCandRC()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4645
    sget v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumRegCorrectedWords:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumRegCorrectedWords:I

    .line 4647
    .end local v1           #sel_idx:I
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->delimiterRule:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;->apply(Ljava/lang/StringBuilder;CZ)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4650
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->passUpdateSelection:Z

    .line 4652
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 4653
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 4654
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 4665
    :goto_1
    return-void

    .line 4625
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    invoke-virtual {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->AutoAddExactedWord()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4662
    :catch_0
    move-exception v0

    .line 4663
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "XT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Catch NullPointerExcetpion @ [handleUnicodeChar] mHTCIMM.getCurrentInputConnection() = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v2, :cond_5

    const-string v2, "[mHTCIMM is null!]"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4656
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4657
    invoke-virtual {p0, p2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->doublePeriodPreprocess(C)V

    .line 4658
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4659
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4663
    .restart local v0       #e:Ljava/lang/NullPointerException;
    :cond_5
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    goto :goto_2
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 6
    .parameter "htcIMM"

    .prologue
    const/4 v5, 0x0

    .line 241
    invoke-super {p0, p1}, Lcom/htc/android/htcime/XT9IME/LatinIM;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 244
    const-string v2, "XT9IME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[init]: htcIMM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->loadConstant(Landroid/content/Context;)V

    .line 247
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->COMPACTQWERTSTYLEMAP:[[I

    sget v3, Lcom/htc/android/htcime/XT9IME/XT9IME;->sFeature_CompactQWERTYStyle:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->CMQW_KDBMAP:[I

    .line 250
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 252
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeInitial(Landroid/content/res/AssetManager;)I

    .line 253
    new-instance v2, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mUDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    .line 254
    new-instance v2, Lcom/htc/android/htcime/util/PostSpellingUtil;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-direct {v2, v3}, Lcom/htc/android/htcime/util/PostSpellingUtil;-><init>(Lcom/htc/android/htcime/HTCIMEService;)V

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPSUtil:Lcom/htc/android/htcime/util/PostSpellingUtil;

    .line 256
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 259
    const/4 v1, 0x1

    .line 260
    .local v1, doNotRun:Z
    if-nez v1, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->dummyRunForFroyo()V

    .line 263
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 264
    iput-boolean v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAddWord:Z

    .line 268
    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enableOnFlyAddWord:Z

    if-eqz v2, :cond_1

    .line 270
    const/16 v2, 0x80

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultiTapInputSequ:[C

    .line 271
    iput v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultiTapInputSequIndex:I

    .line 275
    :cond_1
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    .line 277
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->scanArticleForCustomWord_ReceiverReg()V

    .line 280
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget-object v2, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imName:Ljava/lang/String;

    const-string v3, "XT9IME"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget-object v2, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imName:Ljava/lang/String;

    const-string v3, "XT9IMETutorial"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 281
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    new-instance v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;)V

    iput-object v3, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->famousWordRule:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;

    .line 282
    :cond_3
    return-void
.end method

.method public isAC_Start_With_A()Z
    .locals 1

    .prologue
    .line 7308
    iget-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAC_Start_with_A:Z

    return v0
.end method

.method public isAC_Start_With_CVB()Z
    .locals 1

    .prologue
    .line 7304
    iget-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mAC_Start_with_CVB:Z

    return v0
.end method

.method public isActiveRAD()Z
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->isActive()Z

    move-result v0

    return v0
.end method

.method protected isAutoCompleted(Ljava/lang/String;)Z
    .locals 5
    .parameter "word"

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 804
    if-nez p1, :cond_1

    .line 811
    :cond_0
    :goto_0
    return v2

    .line 805
    :cond_1
    const/16 v3, 0x3c

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 806
    .local v1, autoCmp_Start:I
    const/16 v3, 0x3e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 807
    .local v0, autoCmp_End:I
    if-eq v1, v4, :cond_0

    if-eq v0, v4, :cond_0

    if-ge v1, v0, :cond_0

    .line 808
    const/4 v2, 0x1

    goto :goto_0
.end method

.method isHandledInKeyDown(I)Z
    .locals 3
    .parameter "codePoint"

    .prologue
    const/4 v0, 0x0

    .line 5366
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMData;->isQwertyAlphabet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5380
    :cond_0
    :goto_0
    return v0

    .line 5369
    :cond_1
    invoke-static {p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isWordComponent(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    .line 5373
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mCurrLdbID:I

    const/16 v2, 0x408

    if-ne v1, v2, :cond_3

    const/16 v1, 0x3c2

    if-ne p1, v1, :cond_3

    iget v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mShiftState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 5380
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPredictionMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5071
    iget v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMode:I

    if-ne v1, v0, :cond_1

    .line 5078
    :cond_0
    :goto_0
    return v0

    .line 5074
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMData;->is12KeyAlphabet()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMData;->is20KeyAlphabet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5075
    :cond_2
    iget-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultitapWordComplete:Z

    if-nez v1, :cond_0

    .line 5078
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isQWERTYKDBinner()Z
    .locals 3

    .prologue
    .line 724
    sget v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sCurrKbdID:I

    const v2, 0xff00

    and-int v0, v1, v2

    .line 725
    .local v0, kbdTypeID:I
    const/16 v1, 0xd00

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc00

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1c00

    if-eq v0, v1, :cond_0

    const v1, 0x8d00

    if-eq v0, v1, :cond_0

    const v1, 0x8c00

    if-eq v0, v1, :cond_0

    const v1, 0x9d00

    if-eq v0, v1, :cond_0

    const v1, 0x9c00

    if-ne v0, v1, :cond_1

    .line 729
    :cond_0
    const/4 v1, 0x1

    .line 731
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isSuggestionRejected()Z
    .locals 2

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWantedWord(Ljava/lang/String;)Z
    .locals 6
    .parameter "word"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2081
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    :cond_0
    move v2, v3

    .line 2090
    :cond_1
    :goto_0
    return v2

    .line 2085
    :cond_2
    const/16 v4, 0x3c

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2086
    .local v1, autoCmp_Start:I
    const/16 v4, 0x3e

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2087
    .local v0, autoCmp_End:I
    sub-int v4, v0, v1

    if-le v4, v2, :cond_1

    move v2, v3

    .line 2090
    goto :goto_0
.end method

.method public keyRegionCorrect(III)I
    .locals 12
    .parameter "keyCode"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 742
    const/16 v3, -0x62

    .line 748
    .local v3, newKeyCode:I
    const/high16 v6, -0x100

    and-int v1, p1, v6

    .line 749
    .local v1, hiKeyCode:I
    const v6, 0xffffff

    and-int v2, p1, v6

    .line 751
    .local v2, loKeyCode:I
    iget v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMode:I

    if-eq v6, v11, :cond_1

    .line 799
    .end local v2           #loKeyCode:I
    :cond_0
    :goto_0
    return v2

    .line 758
    .restart local v2       #loKeyCode:I
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 761
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/android/htcime/HTCIMEService;->getTextBeforeCursor(III)Ljava/lang/CharSequence;

    move-result-object v5

    .line 762
    .local v5, textBeforCursor:Ljava/lang/CharSequence;
    if-nez v5, :cond_2

    .line 764
    :cond_2
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 772
    :cond_3
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/android/htcime/HTCIMEService;->getTextAfterCursor(III)Ljava/lang/CharSequence;

    move-result-object v4

    .line 773
    .local v4, textAfterCursor:Ljava/lang/CharSequence;
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    .line 783
    .end local v4           #textAfterCursor:Ljava/lang/CharSequence;
    .end local v5           #textBeforCursor:Ljava/lang/CharSequence;
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_6

    .line 784
    :cond_5
    iput-boolean v11, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->disableKeyEnlarge:Z

    .line 787
    :cond_6
    sparse-switch v1, :sswitch_data_0

    :goto_2
    move v2, v3

    .line 799
    goto :goto_0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, ex:Ljava/lang/Exception;
    const-string v6, "XT9IME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[keyRegionCorrect]: IMF\'s mInputConnection.getTextBeforeCursor failed, ex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 790
    .end local v0           #ex:Ljava/lang/Exception;
    :sswitch_0
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v7, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    invoke-direct {v7, p0, p2, p3}, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;II)V

    invoke-virtual {p0, v6, v2, v7, v10}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKey_RegnCorec(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Z)I

    move-result v3

    .line 791
    goto :goto_2

    .line 793
    :sswitch_1
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v7, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    invoke-direct {v7, p0, p2, p3}, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;II)V

    invoke-virtual {p0, v6, v2, v7, v11}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKey_RegnCorec(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Z)I

    move-result v3

    .line 794
    goto :goto_2

    .line 787
    :sswitch_data_0
    .sparse-switch
        0x3000000 -> :sswitch_0
        0x8000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public loadCommonCtrlValue()V
    .locals 0

    .prologue
    .line 7592
    return-void
.end method

.method protected loadConstant(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 286
    invoke-super {p0, p1}, Lcom/htc/android/htcime/XT9IME/LatinIM;->loadConstant(Landroid/content/Context;)V

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 289
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 290
    .local v2, sp:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    const v4, 0x7f09030c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0a0068

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, strFeature_CompactQWERTYStyle:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/htc/android/htcime/XT9IME/XT9IME;->sFeature_CompactQWERTYStyle:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_1
    const v4, 0x7f090316

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0b000b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/android/htcime/XT9IME/XT9IME;->sFeature_QwertyKdbReady:Z

    .line 307
    const v4, 0x7f08000e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/htc/android/htcime/XT9IME/XT9IME;->SELECTED_HILITE_COLOR:I

    .line 309
    invoke-direct {p0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->build_PHKD_KDBMAP(Landroid/content/res/Resources;)V

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "Eric_J"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " can not resolve value of Feature_CompactQWERTYStyle, Feature_CompactQWERTYStyle =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v4, "Eric_J"

    const-string v5, " set sFeature_CompactQWERTYStyle = 1"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v4, 0x1

    sput v4, Lcom/htc/android/htcime/XT9IME/XT9IME;->sFeature_CompactQWERTYStyle:I

    goto :goto_1
.end method

.method mapXT9KeyIndexToKeyCode(II)I
    .locals 4
    .parameter "sip_state"
    .parameter "key_index"

    .prologue
    .line 2229
    const/4 v1, -0x1

    .line 2231
    .local v1, ret:I
    if-nez p1, :cond_0

    .line 2232
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->CMQW_KDBMAP:[I

    aget v1, v2, p2

    .line 2238
    :goto_0
    return v1

    .line 2234
    :cond_0
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->sPHKD_KDBMAP:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2235
    .local v0, idx:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method moveLineWCLWord(Landroid/view/inputmethod/InputConnection;Z)V
    .locals 7
    .parameter "InputConnection"
    .parameter "bMoveUp"

    .prologue
    const/4 v3, 0x1

    .line 1933
    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    if-gt v2, v3, :cond_1

    .line 2000
    :cond_0
    :goto_0
    return-void

    .line 1937
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v2, :cond_0

    .line 1941
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/HTCIMMView;->dispatchTrackballevent(Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;I)V

    .line 1942
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    sget-object v3, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->DROP_DOWN_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    if-ne v2, v3, :cond_3

    .line 1943
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 1948
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    sget-object v3, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    if-ne v2, v3, :cond_7

    .line 1951
    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getUpperLineIndex()I

    move-result v1

    .line 1952
    .local v1, tmp:I
    :goto_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 1953
    const-string v2, "XT9IME"

    const-string v3, "line index error!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1996
    .end local v1           #tmp:I
    :catch_0
    move-exception v0

    .line 1998
    .local v0, e:Landroid/util/AndroidException;
    invoke-virtual {v0}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0

    .line 1951
    .end local v0           #e:Landroid/util/AndroidException;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getLowerLineIndex()I

    move-result v1

    goto :goto_1

    .line 1956
    .restart local v1       #tmp:I
    :cond_5
    const/4 v2, -0x2

    if-ne v1, v2, :cond_6

    .line 1957
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1958
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->ADD_WORD_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 1959
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto :goto_0

    .line 1966
    :cond_6
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput v1, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 1967
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput v1, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 1970
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(I)V

    .line 1972
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->getCandString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1973
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->SELECTION_SPAN:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanBGColor(Landroid/text/style/BackgroundColorSpan;)V

    .line 1974
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->FG_SELECTION_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanFGColor(Landroid/text/style/ForegroundColorSpan;)V

    .line 1975
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1976
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSelChange:Z

    goto/16 :goto_0

    .line 1979
    .end local v1           #tmp:I
    :cond_7
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    sget-object v3, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->ADD_WORD_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    if-ne v2, v3, :cond_9

    .line 1980
    if-eqz p2, :cond_8

    .line 1981
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 1982
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto/16 :goto_0

    .line 1985
    :cond_8
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->CLOSE_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 1986
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto/16 :goto_0

    .line 1989
    :cond_9
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    sget-object v3, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->CLOSE_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    if-ne v2, v3, :cond_0

    .line 1990
    if-eqz p2, :cond_0

    .line 1991
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 1992
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V
    :try_end_1
    .catch Landroid/util/AndroidException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method moveWCLWord(Landroid/view/inputmethod/InputConnection;I)V
    .locals 6
    .parameter "InputConnection"
    .parameter "idx"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1893
    iget-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    if-gt v1, v5, :cond_1

    .line 1922
    :cond_0
    :goto_0
    return-void

    .line 1896
    :cond_1
    if-ltz p2, :cond_0

    iget v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->candidate_count:I

    if-gt p2, v1, :cond_0

    .line 1899
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput p2, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 1900
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput p2, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 1902
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(I)V

    .line 1903
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 1904
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    .line 1907
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const/16 v2, 0x25a

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleErrorReselect(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1908
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->getCandString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1909
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->SELECTION_SPAN:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanBGColor(Landroid/text/style/BackgroundColorSpan;)V

    .line 1910
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->FG_SELECTION_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanFGColor(Landroid/text/style/ForegroundColorSpan;)V

    .line 1912
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1920
    :cond_2
    :goto_1
    iput-boolean v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSelChange:Z

    goto :goto_0

    .line 1913
    :catch_0
    move-exception v0

    .line 1916
    .local v0, e:Landroid/util/AndroidException;
    invoke-virtual {v0}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_1
.end method

.method moveWCLWord(Landroid/view/inputmethod/InputConnection;Z)V
    .locals 10
    .parameter "InputConnection"
    .parameter "bMovePrevWord"

    .prologue
    const/4 v8, 0x1

    .line 1748
    iget-boolean v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLDisplay:Z

    if-nez v5, :cond_0

    .line 1878
    :goto_0
    return-void

    .line 1755
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v2, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 1758
    .local v2, index:I
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/htcime/HTCIMMView;->dispatchTrackballevent(Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;I)V

    .line 1759
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v3

    .line 1760
    .local v3, mWCLMode:I
    packed-switch v3, :pswitch_data_0

    .line 1777
    :cond_1
    :goto_1
    :pswitch_0
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME$2;->$SwitchMap$com$htc$android$htcime$XT9IME$XT9IME$WCLSELECTION:[I

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    invoke-virtual {v6}, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 1849
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput v2, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 1850
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput v2, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 1853
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(I)V

    .line 1856
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-boolean v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isReselectWCL:Z

    if-eqz v5, :cond_9

    .line 1857
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->getCandString(I)Ljava/lang/String;

    move-result-object v1

    .line 1859
    .local v1, err_s:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mReselectCursorStart:I

    .line 1860
    .local v4, s:I
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v5, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v4, v5

    .line 1862
    .local v0, e:I
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput-object v1, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    .line 1871
    .end local v0           #e:I
    .end local v1           #err_s:Ljava/lang/String;
    .end local v4           #s:I
    :goto_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSelChange:Z
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1873
    .end local v2           #index:I
    .end local v3           #mWCLMode:I
    :catch_0
    move-exception v0

    .line 1876
    .local v0, e:Landroid/util/AndroidException;
    invoke-virtual {v0}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0

    .line 1762
    .end local v0           #e:Landroid/util/AndroidException;
    .restart local v2       #index:I
    .restart local v3       #mWCLMode:I
    :pswitch_1
    :try_start_1
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    sget-object v6, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->CLOSE_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    sget-object v6, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->ADD_WORD_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    if-ne v5, v6, :cond_1

    .line 1763
    :cond_3
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    goto :goto_1

    .line 1766
    :pswitch_2
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    sget-object v6, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->DROP_DOWN_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    if-ne v5, v6, :cond_1

    .line 1767
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    goto :goto_1

    .line 1770
    :pswitch_3
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    goto :goto_1

    .line 1773
    :pswitch_4
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    goto/16 :goto_0

    .line 1779
    :pswitch_5
    if-eqz p2, :cond_5

    .line 1780
    if-lez v2, :cond_4

    add-int/lit8 v2, v2, -0x1

    :cond_4
    goto :goto_2

    .line 1783
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 1786
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget v5, v5, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectIdxLimit:I

    if-lt v2, v5, :cond_2

    .line 1787
    add-int/lit8 v2, v2, -0x1

    .line 1789
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v5

    if-ne v5, v8, :cond_7

    .line 1790
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isNonWordNoSuggestion()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1791
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WCL_ADDWORD_BTN:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 1792
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto/16 :goto_2

    .line 1795
    :cond_6
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->DROP_DOWN_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 1796
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto/16 :goto_2

    .line 1799
    :cond_7
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 1800
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1801
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->ADD_WORD_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 1802
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto/16 :goto_2

    .line 1812
    :pswitch_6
    if-eqz p2, :cond_2

    .line 1813
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 1814
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto/16 :goto_2

    .line 1818
    :pswitch_7
    if-eqz p2, :cond_8

    .line 1819
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 1820
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto/16 :goto_2

    .line 1823
    :cond_8
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->CLOSE_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 1824
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto/16 :goto_2

    .line 1828
    :pswitch_8
    if-eqz p2, :cond_2

    .line 1829
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1830
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->ADD_WORD_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 1831
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto/16 :goto_2

    .line 1841
    :pswitch_9
    if-eqz p2, :cond_2

    .line 1842
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 1843
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto/16 :goto_2

    .line 1864
    :cond_9
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->getCandString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 1865
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->SELECTION_SPAN:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanBGColor(Landroid/text/style/BackgroundColorSpan;)V

    .line 1866
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->FG_SELECTION_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanFGColor(Landroid/text/style/ForegroundColorSpan;)V

    .line 1867
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/util/AndroidException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 1760
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1777
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public needReset_onUpdateSelection()Z
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->needReset_onUpdateSelection()Z

    move-result v0

    return v0
.end method

.method protected nonWordNoSuggestionVibrate(ILjava/lang/String;)V
    .locals 5
    .parameter "candidate_num"
    .parameter "newStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5089
    if-ne p1, v1, :cond_7

    .line 5091
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isNonWordNoSuggestion()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5092
    invoke-direct {p0, p2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isKnowWord(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->isValidWord([C)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->setNonWordNoSuggestionStatus(Z)V

    .line 5093
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isNonWordNoSuggestion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5094
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->NONWORD_SELECTION_SPAN:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanBGColorForce(Landroid/text/style/BackgroundColorSpan;)V

    .line 5095
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->FG_NONWORD_SELECTION_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanFGColorForce(Landroid/text/style/ForegroundColorSpan;)V

    .line 5096
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5111
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isNonWordNoSuggestion()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 5112
    iget-byte v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mVibrateCount:B

    sget-byte v1, Lcom/htc/android/htcime/HTCIMMData;->nonwordVibrateTimes:B

    if-ge v0, v1, :cond_2

    .line 5113
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->nonwordVibrateEnable:Z

    if-eqz v0, :cond_1

    .line 5114
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mVibratorPattern:[[J

    sget-byte v3, Lcom/htc/android/htcime/HTCIMMData;->nonwordVibratePeriod:B

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/htc/android/htcime/util/VibrationUtil;->playVibrationEffectPattern(Landroid/os/Vibrator;[J)V

    .line 5115
    :cond_1
    iget-byte v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mVibrateCount:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mVibrateCount:B

    .line 5118
    :cond_2
    iput-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNonwordDelFlag:Z

    .line 5129
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 5092
    goto :goto_0

    .line 5100
    :cond_4
    iget-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNonwordDelFlag:Z

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isNonWordNoSuggestion()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 5101
    invoke-direct {p0, p2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isKnowWord(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->isValidWord([C)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->setNonWordNoSuggestionStatus(Z)V

    .line 5102
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isNonWordNoSuggestion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5103
    sget-byte v0, Lcom/htc/android/htcime/HTCIMMData;->nonwordVibrateTimes:B

    iput-byte v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mVibrateCount:B

    goto :goto_1

    :cond_5
    move v0, v2

    .line 5101
    goto :goto_3

    .line 5105
    :cond_6
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->TYPED_SPAN:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanBGColorForce(Landroid/text/style/BackgroundColorSpan;)V

    .line 5106
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->FG_TYPED_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanFGColorForce(Landroid/text/style/ForegroundColorSpan;)V

    goto :goto_1

    .line 5122
    :cond_7
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isNonWordNoSuggestion()Z

    move-result v0

    if-ne v0, v1, :cond_8

    .line 5123
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->TYPED_SPAN:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanBGColorForce(Landroid/text/style/BackgroundColorSpan;)V

    .line 5124
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->FG_TYPED_SPAN:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->setSpanFGColorForce(Landroid/text/style/ForegroundColorSpan;)V

    .line 5125
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mDummyString:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5127
    :cond_8
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearNonWordVibrateCount()V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 662
    const-string v0, "XT9IME"

    const-string v1, "[onDestroy]: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->scanArticleForCustomWord_ReceiverUnReg()V

    .line 664
    return-void
.end method

.method public onInterrupt()V
    .locals 4

    .prologue
    .line 426
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sXT9CoreMutex:Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;

    const-string v2, "XT9IME"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;->hold(Ljava/lang/String;)V

    .line 429
    :try_start_0
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->acceptSuggestion()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_0
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sXT9CoreMutex:Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;

    const-string v2, "XT9IME"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;->release(Ljava/lang/String;)V

    .line 435
    return-void

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "XT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onInterrupt] Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 440
    const/4 v7, 0x0

    .line 443
    .local v7, bHandle:Z
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->checkPoint(Landroid/view/KeyEvent;)V

    .line 446
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 447
    .local v9, keyCode:I
    const/high16 v0, -0x100

    and-int v6, v9, v0

    .line 448
    .local v6, HiKeyCode:I
    const v0, 0xffffff

    and-int v2, v9, v0

    .line 454
    .local v2, LoKeyCode:I
    if-eqz v6, :cond_0

    .line 456
    sparse-switch v6, :sswitch_data_0

    .line 509
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v10

    :goto_1
    iput-boolean v0, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imHasCandidate:Z

    .line 510
    return v7

    .line 459
    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleSIPKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;I)Z

    move-result v7

    .line 460
    goto :goto_0

    .line 462
    :sswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleSIPKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;I)Z

    move-result v7

    .line 463
    goto :goto_0

    .line 465
    :sswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleSIPKeyLongPress(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;I)Z

    move-result v7

    .line 466
    goto :goto_0

    .line 468
    :sswitch_3
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleSIPKeyLongPress(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;I)Z

    move-result v7

    .line 469
    goto :goto_0

    .line 471
    :sswitch_4
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->DummyPos:Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v7

    .line 472
    goto :goto_0

    .line 474
    :sswitch_5
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->DummyPos:Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKeyAC(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v7

    .line 475
    goto :goto_0

    .line 477
    :sswitch_6
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->DummyPos:Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKeyMT(ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v7

    .line 478
    goto :goto_0

    .line 480
    :sswitch_7
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->DummyPos:Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v7

    .line 481
    goto :goto_0

    .line 483
    :sswitch_8
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->DummyPos:Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKeyAC(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v7

    .line 484
    goto :goto_0

    .line 486
    :sswitch_9
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->DummyPos:Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKeyMT(ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v7

    .line 487
    goto :goto_0

    .line 489
    :sswitch_a
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v0, v2, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleFNKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    move-result v7

    .line 490
    goto :goto_0

    .line 492
    :sswitch_b
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    int-to-char v1, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleUnicodeChar(Landroid/view/inputmethod/InputConnection;CLandroid/view/KeyEvent;)V

    .line 493
    const/4 v7, 0x1

    goto :goto_0

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v0, v2, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleSystemKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 501
    :catch_0
    move-exception v8

    .line 503
    .local v8, e:Landroid/util/AndroidException;
    invoke-virtual {v8}, Landroid/util/AndroidException;->printStackTrace()V

    goto/16 :goto_0

    .end local v8           #e:Landroid/util/AndroidException;
    :cond_1
    move v0, v11

    .line 509
    goto :goto_1

    .line 456
    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_1
        0x3000000 -> :sswitch_4
        0x4000000 -> :sswitch_2
        0x5000000 -> :sswitch_3
        0x7000000 -> :sswitch_a
        0x8000000 -> :sswitch_7
        0xf000000 -> :sswitch_b
        0x23000000 -> :sswitch_5
        0x28000000 -> :sswitch_8
        0x43000000 -> :sswitch_6
        0x48000000 -> :sswitch_9
    .end sparse-switch
.end method

.method public onKeyDown(Landroid/view/KeyEvent;II)Z
    .locals 12
    .parameter "event"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 540
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xff0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const-string v0, "XT9IME"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const-string v0, "XT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onKeyDown]: keyCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pos_x="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pos_y="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_0
    const/4 v7, 0x0

    .line 550
    .local v7, bHandle:Z
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->checkPoint(Landroid/view/KeyEvent;)V

    .line 553
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 554
    .local v9, keyCode:I
    const/high16 v0, -0x100

    and-int v6, v9, v0

    .line 555
    .local v6, HiKeyCode:I
    const v0, 0xffffff

    and-int v2, v9, v0

    .line 561
    .local v2, LoKeyCode:I
    if-eqz v6, :cond_1

    .line 563
    sparse-switch v6, :sswitch_data_0

    .line 604
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v10

    :goto_1
    iput-boolean v0, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imHasCandidate:Z

    .line 605
    return v7

    .line 566
    :sswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v3, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    invoke-direct {v3, p0, p2, p3}, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;II)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v7

    .line 567
    goto :goto_0

    .line 569
    :sswitch_1
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v3, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    invoke-direct {v3, p0, p2, p3}, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;II)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKey_RegnPD(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v7

    .line 570
    goto :goto_0

    .line 572
    :sswitch_2
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v3, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    invoke-direct {v3, p0, p2, p3}, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;II)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKeyAC(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v7

    .line 573
    goto :goto_0

    .line 575
    :sswitch_3
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v3, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    invoke-direct {v3, p0, p2, p3}, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;II)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v7

    .line 576
    goto :goto_0

    .line 578
    :sswitch_4
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v3, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    invoke-direct {v3, p0, p2, p3}, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;II)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKey_RegnPD(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v7

    .line 579
    goto :goto_0

    .line 581
    :sswitch_5
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v3, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    invoke-direct {v3, p0, p2, p3}, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;II)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKeyAC(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v7

    .line 582
    goto :goto_0

    .line 585
    :sswitch_6
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v1, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    invoke-direct {v1, p0, p2, p3}, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;II)V

    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleCMPQWKeyPB(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 586
    goto :goto_0

    .line 596
    :catch_0
    move-exception v8

    .line 598
    .local v8, e:Landroid/util/AndroidException;
    invoke-virtual {v8}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0

    .end local v8           #e:Landroid/util/AndroidException;
    :cond_2
    move v0, v11

    .line 604
    goto :goto_1

    .line 563
    :sswitch_data_0
    .sparse-switch
        0x3000000 -> :sswitch_0
        0x4000000 -> :sswitch_6
        0x5000000 -> :sswitch_6
        0x8000000 -> :sswitch_3
        0x13000000 -> :sswitch_1
        0x18000000 -> :sswitch_4
        0x23000000 -> :sswitch_2
        0x28000000 -> :sswitch_5
    .end sparse-switch
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 517
    const/4 v2, 0x0

    .line 521
    .local v2, bHandle:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 522
    .local v3, keyCode:I
    const/high16 v4, -0x100

    and-int v0, v3, v4

    .line 523
    .local v0, HiKeyCode:I
    const v4, 0xffffff

    and-int v1, v3, v4

    .line 527
    .local v1, LoKeyCode:I
    if-nez v0, :cond_0

    .line 529
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v4, v1, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleSystemKeyUp(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 533
    :cond_0
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v5, Lcom/htc/android/htcime/Intf/HTCIMData;->imHasCandidate:Z

    .line 534
    return v2

    .line 533
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public onKeyUp(Landroid/view/KeyEvent;II)Z
    .locals 12
    .parameter "event"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 610
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xff0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const-string v0, "XT9IME"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    const-string v0, "XT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onKeyUp]: keyCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pos_x="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pos_y="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    const/4 v7, 0x0

    .line 622
    .local v7, bHandle:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 623
    .local v9, keyCode:I
    const/high16 v0, -0x100

    and-int v6, v9, v0

    .line 624
    .local v6, HiKeyCode:I
    const v0, 0xffffff

    and-int v2, v9, v0

    .line 629
    .local v2, LoKeyCode:I
    if-eqz v6, :cond_1

    .line 631
    sparse-switch v6, :sswitch_data_0

    .line 655
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v10

    :goto_1
    iput-boolean v0, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imHasCandidate:Z

    .line 656
    return v10

    .line 634
    :sswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v3, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    invoke-direct {v3, p0, p2, p3}, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;II)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKeyUP(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v7

    .line 635
    goto :goto_0

    .line 637
    :sswitch_1
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v3, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;

    invoke-direct {v3, p0, p2, p3}, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;II)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleQWERTYKeyUP(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 638
    goto :goto_0

    .line 648
    :catch_0
    move-exception v8

    .line 650
    .local v8, e:Landroid/util/AndroidException;
    invoke-virtual {v8}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0

    .end local v8           #e:Landroid/util/AndroidException;
    :cond_2
    move v0, v11

    .line 655
    goto :goto_1

    .line 631
    nop

    :sswitch_data_0
    .sparse-switch
        0x33000000 -> :sswitch_0
        0x38000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onUpdateSelection(IIIIIII)I
    .locals 2
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "editWordLen"

    .prologue
    .line 7263
    const/4 v0, -0x1

    .line 7264
    .local v0, retVal:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    if-lez v1, :cond_4

    if-ne p1, p4, :cond_0

    if-eq p2, p4, :cond_4

    .line 7270
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->resetRAD()V

    .line 7272
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->passUpdateSelection:Z

    if-nez v1, :cond_1

    .line 7273
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mForceAutoCapCheck:Z

    .line 7274
    const/high16 v0, 0x71d

    .line 7286
    :cond_1
    :goto_0
    if-eq p1, p2, :cond_2

    .line 7287
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->bigram:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;

    invoke-virtual {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;->onTextSelection()V

    .line 7289
    :cond_2
    if-eq p1, p2, :cond_3

    .line 7290
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->smartCAP:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;

    invoke-virtual {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;->cancel()V

    .line 7292
    :cond_3
    return v0

    .line 7277
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->needReset_onUpdateSelection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7281
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isActiveRAD()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7282
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->resetRAD()V

    goto :goto_0
.end method

.method public preProcess()V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "InputConnection"
    .parameter "old_str"
    .parameter "str"
    .parameter "setHilite"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x21

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 4919
    if-nez p3, :cond_0

    .line 4955
    :goto_0
    return-void

    .line 4922
    :cond_0
    const/16 v2, 0x3c

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 4923
    .local v1, autoCmp_Start:I
    const/16 v2, 0x3e

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 4924
    .local v0, autoCmp_End:I
    if-eq v4, v1, :cond_1

    if-eq v4, v0, :cond_1

    if-ge v1, v0, :cond_1

    .line 4925
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    if-ne v2, v3, :cond_3

    .line 4926
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4931
    :cond_1
    :goto_1
    if-eqz p4, :cond_4

    .line 4934
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4935
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4938
    if-eq v4, v1, :cond_2

    if-eq v4, v0, :cond_2

    if-ge v1, v0, :cond_2

    .line 4939
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->UNDERLINE_SPAN:Landroid/text/style/UnderlineSpan;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v3, v1, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4941
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->getSapnBGColor()Landroid/text/style/BackgroundColorSpan;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4942
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->getSapnFGColor()Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4943
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->setComposingText(Landroid/text/Spanned;I)V

    .line 4945
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    goto/16 :goto_0

    .line 4928
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 4949
    :cond_4
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, p3, v3}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 4950
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4952
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput v5, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    goto/16 :goto_0
.end method

.method public resetRAD()V
    .locals 2

    .prologue
    .line 678
    const-string v0, "XT9IME"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    const-string v0, "XT9IME"

    const-string v1, "[resetRAD]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->clear()V

    .line 681
    return-void
.end method

.method public setInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 3
    .parameter "inputContext"

    .prologue
    .line 334
    const-string v0, "XT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setInputConnection]: inputContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 337
    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 3
    .parameter "word"

    .prologue
    .line 5082
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 5083
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5084
    return-void
.end method

.method public startInput()V
    .locals 4

    .prologue
    .line 382
    const-string v1, "XT9IME"

    const-string v2, "[startInput]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sXT9CoreMutex:Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;

    const-string v2, "XT9IME"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;->hold(Ljava/lang/String;)V

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrPriIMID:I

    .line 390
    iget-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enableOnFlyAddWord:Z

    if-eqz v1, :cond_0

    .line 391
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultiTapInputSequIndex:I

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 397
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 399
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    invoke-virtual {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    invoke-virtual {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->clear()V

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 406
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mPasteCandString:Ljava/lang/String;

    .line 408
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->clearWCL()V

    .line 411
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    new-instance v2, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$XT9ForTrace;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;Lcom/htc/android/htcime/XT9IME/XT9IME$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/trace/Trace;->setOnTraceListener(Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sXT9CoreMutex:Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;

    const-string v2, "XT9IME"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;->release(Ljava/lang/String;)V

    .line 418
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "XT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[startInput] Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unsetInputConnection()V
    .locals 2

    .prologue
    .line 342
    const-string v0, "XT9IME"

    const-string v1, "[unsetInputConnection]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 345
    return-void
.end method

.method public updateUDB()V
    .locals 3

    .prologue
    .line 2066
    iget-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->enableOnFlyAddWord:Z

    if-eqz v0, :cond_0

    .line 2068
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultiTapInputSequIndex:I

    if-nez v0, :cond_1

    .line 2074
    :cond_0
    :goto_0
    return-void

    .line 2071
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mUDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultiTapInputSequ:[C

    iget v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultiTapInputSequIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->addWord([CI)I

    .line 2072
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMultiTapInputSequIndex:I

    goto :goto_0
.end method
