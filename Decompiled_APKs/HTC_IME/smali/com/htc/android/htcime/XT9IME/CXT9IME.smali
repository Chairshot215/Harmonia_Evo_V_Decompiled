.class public Lcom/htc/android/htcime/XT9IME/CXT9IME;
.super Ljava/lang/Object;
.source "CXT9IME.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCIM;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/XT9IME/CXT9IME$1;,
        Lcom/htc/android/htcime/XT9IME/CXT9IME$KeyType;,
        Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;,
        Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;,
        Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;
    }
.end annotation


# static fields
.field protected static final CAND_TYPE_COMPACT_PHRASE:I = 0x3

.field protected static final CAND_TYPE_COMPACT_SPELL:I = 0x2

.field protected static final CAND_TYPE_PHRASE:I = 0x1

.field protected static final CAND_TYPE_PREFIX:I = 0x4

.field protected static final CAND_TYPE_PREFIX_TONE:I = 0x5

.field protected static final CAND_TYPE_SPELL:I = 0x0

.field protected static final DEBUG_DUMP:Z = true

.field protected static final DEBUG_TAG:Ljava/lang/String; = "XT9_CIME_J"

.field protected static final DEFAULT_WCL:I = 0x0

.field protected static final IMFAC_WCL:I = 0x1

.field private static final IM_LABEL:Ljava/lang/String; = ""

.field private static final INVALID_POS:I = -0x1

.field protected static final KDB_NUM_12KEY_BPMF:I = 0xb04

.field protected static final KDB_NUM_12KEY_CANGJIE:I = 0x1104

.field protected static final KDB_NUM_12KEY_PINYIN:I = 0xa04

.field protected static final KDB_NUM_12KEY_STROKE:I = 0xc04

.field protected static final KDB_NUM_HWQWE_BPMF:I = 0x1204

.field protected static final KDB_NUM_QWE_BPMF:I = 0xe04

.field protected static final KDB_NUM_QWE_CANGJIE:I = 0xf04

.field protected static final KDB_NUM_QWE_PINYIN:I = 0xd04

.field protected static final KDB_NUM_QWE_STROKE:I = 0x1004

.field public static final L_QW_KDBMAP_ST:[I = null

.field protected static final MAX_CAND_COUNT:I = 0xff

.field protected static final MAX_DEFAULT_WCL_COUNT:I = 0xa

.field protected static final MAX_PHRASE_COUNT:I = 0x96

.field protected static final MAX_SPELLING_COUNT:I = 0x1e

.field protected static final MODE_ABC:I = 0x2

.field protected static final MODE_XT9:I = 0x1

.field public static final P12_KDBMAP_BPMF:[I = null

.field public static final P12_KDBMAP_CANGJIE:[I = null

.field public static final P12_KDBMAP_PINYIN:[I = null

.field public static final P12_KDBMAP_STROKE:[I = null

.field public static final QW_KDBMAP_BPMF:[I = null

.field public static final QW_KDBMAP_CJ:[I = null

.field public static final QW_KDBMAP_ST:[I = null

.field public static final QW_KDBMAP_WWE:[I = null

.field public static final QW_KEYMAP_WWE:[I = null

#the value of this static final field might be set in the static constructor
.field protected static final SELECTED_HILITE_COLOR:I = 0x0

.field protected static final SPELL_SEG_DEMILITER:C = '|'

.field protected static final TWO_LINES_WCL:I = 0x2

.field protected static final TYPED_HILITE_COLOR:I = -0x194f4f50

.field protected static final mCompactSpelling:Z = true


# instance fields
.field protected QW_KDBMAP:[I

.field protected QW_KEYMAP:[I

.field private TONE_START_KEY_INDEX:I

.field XT9_Active_index:I

.field XT9_Phrase_Length:I

.field XT9_Phrase_String:Ljava/lang/String;

.field XT9_Spell_Length:I

.field XT9_Spell_String:Ljava/lang/String;

.field XT9_Tone_Option:C

.field XT9_UDB_Count:I

.field public ZY_TOMB:[C

.field protected candidate_count:I

.field mAppName:Ljava/lang/String;

.field mAppToken:Landroid/os/IBinder;

.field private mAutoAddSyllableSip:Z

.field private mEnableNextPrediction:Z

.field protected mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

.field mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

.field private mHardwareBPMF:Z

.field mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

.field mInputConnection:Landroid/view/inputmethod/InputConnection;

.field mLastTone:I

.field mNewZYInputBuff:[I

.field private mShowRawSpellIfInvalid:Z

.field private mShowSpellingOnWCL:Z

.field protected mSpanSB:Landroid/text/SpannableStringBuilder;

.field protected mWCLDisplay:Z

.field protected mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

.field mapBPMF:[C

.field mapCompactToRealSpellIndex:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mbEnableAW:Z

.field private mbMultitapDone:Z

.field private mbPrevMultitap:Z

.field private mbPrevXT9status:I

.field final strBypassWordList:Ljava/lang/String;

.field final strFullPunctuationList:Ljava/lang/String;

.field final strHalfPunctuationList:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x26

    const/16 v4, 0x14

    const/16 v3, 0x13

    .line 63
    sget v1, Lcom/htc/android/htcime/HTCIMMData;->IMM_COLOR_SELECTION:I

    sput v1, Lcom/htc/android/htcime/XT9IME/CXT9IME;->SELECTED_HILITE_COLOR:I

    .line 4464
    :try_start_0
    const-string v1, "XT9_CIME_J"

    const-string v2, "<<<<<<<<<<< Loading share library"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4465
    const-string v1, "cpt9"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5285
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const/16 v1, 0x27

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/htc/android/htcime/XT9IME/CXT9IME;->QW_KEYMAP_WWE:[I

    .line 5297
    new-array v1, v5, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/htc/android/htcime/XT9IME/CXT9IME;->QW_KDBMAP_WWE:[I

    .line 5305
    const/16 v1, 0x2f

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/htc/android/htcime/XT9IME/CXT9IME;->QW_KDBMAP_BPMF:[I

    .line 5313
    new-array v1, v5, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/htc/android/htcime/XT9IME/CXT9IME;->QW_KDBMAP_CJ:[I

    .line 5321
    const/16 v1, 0x19

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/htc/android/htcime/XT9IME/CXT9IME;->QW_KDBMAP_ST:[I

    .line 5330
    const/16 v1, 0x16

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    sput-object v1, Lcom/htc/android/htcime/XT9IME/CXT9IME;->L_QW_KDBMAP_ST:[I

    .line 5337
    new-array v1, v4, [I

    fill-array-data v1, :array_6

    sput-object v1, Lcom/htc/android/htcime/XT9IME/CXT9IME;->P12_KDBMAP_BPMF:[I

    .line 5344
    new-array v1, v3, [I

    fill-array-data v1, :array_7

    sput-object v1, Lcom/htc/android/htcime/XT9IME/CXT9IME;->P12_KDBMAP_PINYIN:[I

    .line 5351
    new-array v1, v3, [I

    fill-array-data v1, :array_8

    sput-object v1, Lcom/htc/android/htcime/XT9IME/CXT9IME;->P12_KDBMAP_CANGJIE:[I

    .line 5358
    new-array v1, v4, [I

    fill-array-data v1, :array_9

    sput-object v1, Lcom/htc/android/htcime/XT9IME/CXT9IME;->P12_KDBMAP_STROKE:[I

    return-void

    .line 4466
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 4468
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load libcpt9.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 5285
    :array_0
    .array-data 0x4
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
    .end array-data

    .line 5297
    :array_1
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
        0xfft 0xfft 0xfft 0xfft
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x68t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x69t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 5305
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x10t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x1ct 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x66t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x67t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
    .end array-data

    .line 5313
    :array_3
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
        0x66t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x66t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x69t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 5321
    :array_4
    .array-data 0x4
        0x66t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x67t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x66t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x69t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 5330
    :array_5
    .array-data 0x4
        0x66t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x67t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x66t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x69t 0x0t 0x0t 0x0t
    .end array-data

    .line 5337
    :array_6
    .array-data 0x4
        0x66t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x9t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
    .end array-data

    .line 5344
    :array_7
    .array-data 0x4
        0x66t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x69t 0x0t 0x0t 0x0t
    .end array-data

    .line 5351
    :array_8
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x66t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
    .end array-data

    .line 5358
    :array_9
    .array-data 0x4
        0x66t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x66t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x67t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x69t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCIMData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCIMData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    .line 48
    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 50
    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 52
    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 53
    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mAppName:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mAppToken:Landroid/os/IBinder;

    .line 71
    new-instance v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;-><init>(Lcom/htc/android/htcime/XT9IME/CXT9IME;)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    .line 90
    iput-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLDisplay:Z

    .line 91
    iput v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->candidate_count:I

    .line 96
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mapCompactToRealSpellIndex:Ljava/util/LinkedHashMap;

    .line 115
    iput-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mAutoAddSyllableSip:Z

    .line 123
    sget-object v0, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 125
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->ZY_TOMB:[C

    .line 127
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mEnableNextPrediction:Z

    .line 128
    iput-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mShowSpellingOnWCL:Z

    .line 129
    iput-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHardwareBPMF:Z

    .line 130
    iput-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mShowRawSpellIfInvalid:Z

    .line 133
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mbMultitapDone:Z

    .line 134
    iput-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mbPrevMultitap:Z

    .line 135
    iput v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mbPrevXT9status:I

    .line 138
    iput-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mbEnableAW:Z

    .line 4716
    const-string v0, ",?!:;"

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->strHalfPunctuationList:Ljava/lang/String;

    .line 4717
    const-string v0, "\uff0c\uff1f\uff01\uff1a\uff1b"

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->strFullPunctuationList:Ljava/lang/String;

    .line 4732
    const-string v0, "\uf5ce\uf7ed"

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->strBypassWordList:Ljava/lang/String;

    .line 4867
    const/16 v0, 0x29

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mapBPMF:[C

    .line 4900
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->TONE_START_KEY_INDEX:I

    .line 5294
    sget-object v0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->QW_KEYMAP_WWE:[I

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->QW_KEYMAP:[I

    .line 5365
    sget-object v0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->QW_KDBMAP_WWE:[I

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->QW_KDBMAP:[I

    .line 142
    const-string v0, "XT9_CIME_J"

    const-string v1, "Do constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    const-string v1, "CXT9"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imName:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    const/16 v1, 0x8

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 146
    return-void

    .line 125
    :array_0
    .array-data 0x2
        0x20t 0x0t
        0xcat 0x2t
        0xc7t 0x2t
        0xcbt 0x2t
        0xd9t 0x2t
    .end array-data

    .line 4867
    nop

    :array_1
    .array-data 0x2
        0x5t 0x31t
        0x6t 0x31t
        0x7t 0x31t
        0x8t 0x31t
        0x9t 0x31t
        0xat 0x31t
        0xbt 0x31t
        0xct 0x31t
        0xfft 0xfft
        0xdt 0x31t
        0xet 0x31t
        0xft 0x31t
        0xfft 0xfft
        0x10t 0x31t
        0x11t 0x31t
        0x12t 0x31t
        0x13t 0x31t
        0x14t 0x31t
        0x15t 0x31t
        0x16t 0x31t
        0xfft 0xfft
        0x17t 0x31t
        0x18t 0x31t
        0x19t 0x31t
        0xfft 0xfft
        0x27t 0x31t
        0x28t 0x31t
        0x29t 0x31t
        0x1at 0x31t
        0x1bt 0x31t
        0x1ct 0x31t
        0x1dt 0x31t
        0x1et 0x31t
        0x1ft 0x31t
        0x20t 0x31t
        0x21t 0x31t
        0x22t 0x31t
        0x23t 0x31t
        0x24t 0x31t
        0x25t 0x31t
        0x26t 0x31t
    .end array-data
.end method

.method private LoadContactDBToUDB(Ljava/lang/String;)Z
    .locals 8
    .parameter "path"

    .prologue
    .line 4271
    const/4 v0, 0x1

    .line 4273
    .local v0, bRet:Z
    const-string v5, "XT9_CIME_J"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoadContactDBToUDB load file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to UDB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4275
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPUdbReset()I

    .line 4279
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4282
    .local v3, file:Ljava/io/File;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v7, "utf-16le"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4284
    .local v1, buf:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, s:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 4285
    const-string v5, "XT9_CIME_J"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoadContactDBToUDB content:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4286
    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPUdbAddPhrase(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4290
    .end local v1           #buf:Ljava/io/BufferedReader;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 4292
    .local v2, e:Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4295
    .end local v2           #e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPCommitUDBBuffer()I

    .line 4297
    return v0

    .line 4288
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #s:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private LoadDictionary(II)Z
    .locals 10
    .parameter "res_id"
    .parameter "db_type"

    .prologue
    const/4 v9, 0x0

    .line 4305
    const/4 v6, 0x0

    .line 4308
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 4313
    :goto_0
    if-nez v6, :cond_0

    .line 4336
    :goto_1
    return v9

    .line 4309
    :catch_0
    move-exception v7

    .line 4310
    .local v7, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v0, "XT9_CIME_J"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadDictionary openRawResourceFd fail res_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4317
    .end local v7           #ex:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    const/4 v8, -0x1

    .line 4320
    .local v8, ret:I
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v3

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeLoadDictionary(Ljava/io/FileDescriptor;JJI)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v8

    .line 4330
    :goto_2
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 4336
    :goto_3
    if-gez v8, :cond_1

    move v0, v9

    :goto_4
    move v9, v0

    goto :goto_1

    .line 4321
    :catch_1
    move-exception v7

    .line 4322
    .local v7, ex:Ljava/io/IOException;
    const-string v0, "XT9_CIME_J"

    const-string v1, "nativeLoadDictionary failed:"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 4323
    .end local v7           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 4324
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "XT9_CIME_J"

    const-string v1, "nativeLoadDictionary failed:"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 4325
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v7

    .line 4326
    .local v7, ex:Ljava/lang/IllegalStateException;
    const-string v0, "XT9_CIME_J"

    const-string v1, "nativeLoadDictionary failed:"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 4336
    .end local v7           #ex:Ljava/lang/IllegalStateException;
    :cond_1
    const/4 v0, 0x1

    goto :goto_4

    .line 4332
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method private ResetZYInputBuffer()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 4861
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 4862
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    aput v2, v1, v0

    .line 4861
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4864
    :cond_0
    iput v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mLastTone:I

    .line 4865
    return-void
.end method

.method private buildZYSpelling()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, -0x1

    .line 4881
    const-string v2, ""

    .line 4883
    .local v2, spell:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v7, :cond_1

    .line 4884
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    aget v1, v4, v0

    .line 4886
    .local v1, index:I
    if-ne v6, v1, :cond_0

    .line 4883
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4886
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mapBPMF:[C

    aget-char v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 4890
    .end local v1           #index:I
    :cond_1
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    aget v3, v4, v7

    .line 4891
    .local v3, tone_value:I
    if-eq v6, v3, :cond_2

    .line 4892
    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 4893
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->ZY_TOMB:[C

    add-int/lit8 v6, v3, -0x1

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4897
    :cond_2
    return-object v2
.end method

.method public static native nativeLoadDictionary(Ljava/io/FileDescriptor;JJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private processZYBuffKeys(Landroid/view/inputmethod/InputConnection;)I
    .locals 12
    .parameter "InputConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xa

    const/4 v5, 0x4

    const/4 v10, -0x1

    const/4 v4, 0x3

    const/4 v9, 0x0

    .line 4903
    const/4 v3, 0x0

    .line 4905
    .local v3, status:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    .line 4907
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_3

    if-nez v3, :cond_3

    .line 4909
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    aget v6, v6, v2

    if-ne v10, v6, :cond_1

    .line 4907
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4912
    :cond_1
    if-ne v4, v2, :cond_2

    .line 4913
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    aget v6, v6, v2

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPProcessBPMFTone(I)I

    move-result v3

    .line 4915
    const/16 v6, 0x22

    if-ne v6, v3, :cond_0

    .line 4916
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    move-result v3

    .line 4918
    if-nez v3, :cond_0

    .line 4919
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    aget v6, v6, v2

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPProcessBPMFTone(I)I

    move-result v3

    goto :goto_1

    .line 4924
    :cond_2
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    aget v6, v6, v2

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ProcessKey(I)I

    move-result v3

    goto :goto_1

    .line 4928
    :cond_3
    const-string v6, "XT9_CIME_J"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleNonSmartZYQWERTYKey]: nativeXT9ProcessKey status ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4930
    if-nez v3, :cond_4

    .line 4931
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    move-result v3

    .line 4932
    const-string v6, "XT9_CIME_J"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleNonSmartZYQWERTYKey]: nativeXT9CPBuildSelectionList status ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4934
    if-eqz v3, :cond_4

    .line 4936
    iget v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mLastTone:I

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    aget v7, v7, v4

    if-eq v6, v7, :cond_4

    .line 4937
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearOneSymb()I

    .line 4939
    iget v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mLastTone:I

    if-ne v10, v6, :cond_6

    .line 4940
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    aput v10, v6, v4

    .line 4941
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    move-result v3

    .line 4954
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 4955
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildSpellingListV62(Landroid/view/inputmethod/InputConnection;)I

    move-result v3

    .line 4958
    :cond_5
    const/4 v0, 0x1

    .line 4959
    .local v0, bSpellValid:Z
    if-nez v3, :cond_9

    .line 4960
    invoke-virtual {p0, v11}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    move-result v3

    .line 4962
    if-nez v3, :cond_8

    .line 4963
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPSelectPhrase(I)I

    move-result v3

    .line 4964
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v6, v6, v9

    iget-object v1, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    .line 4966
    .local v1, firstCand:Ljava/lang/String;
    const/16 v6, 0x65

    if-ne v6, v3, :cond_7

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_7

    .line 4967
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPUnselectAll()I

    .line 4979
    .end local v1           #firstCand:Ljava/lang/String;
    :goto_3
    if-nez v0, :cond_a

    .line 4980
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v6, v6, v9

    iput v9, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mType:I

    .line 4981
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v6, v6, v9

    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildZYSpelling()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    .line 4982
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v6, v6, v9

    iput v9, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mIndex:I

    .line 4984
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v6, v6, v9

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v7, v7, v9

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, p1, v6, v9, v7}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;II)V

    .line 4986
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v9, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    .line 4998
    :goto_4
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mShowSpellingOnWCL:Z

    if-eqz v7, :cond_b

    :goto_5
    iput v4, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 4999
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildWCL(Landroid/view/inputmethod/InputConnection;)I

    .line 5103
    return v3

    .line 4943
    .end local v0           #bSpellValid:Z
    :cond_6
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    iget v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mLastTone:I

    aput v7, v6, v4

    .line 4944
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    move-result v3

    .line 4946
    if-nez v3, :cond_4

    .line 4947
    iget v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mLastTone:I

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPProcessBPMFTone(I)I

    move-result v3

    goto :goto_2

    .line 4969
    .restart local v0       #bSpellValid:Z
    .restart local v1       #firstCand:Ljava/lang/String;
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 4972
    .end local v1           #firstCand:Ljava/lang/String;
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 4975
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    .line 4988
    :cond_a
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    move-result v3

    .line 4989
    const-string v6, "XT9_CIME_J"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleNonSmartZYQWERTYKey]: RESTORE  nativeXT9CPBuildSelectionList status ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4991
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildSpellingListV62(Landroid/view/inputmethod/InputConnection;)I

    move-result v3

    .line 4992
    const-string v6, "XT9_CIME_J"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleNonSmartZYQWERTYKey]: RESTORE  buildSpellingList status ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4994
    invoke-virtual {p0, v11}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    move-result v3

    .line 4995
    const-string v6, "XT9_CIME_J"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleNonSmartZYQWERTYKey]: RESTORE  buildPhraseList status ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    move v4, v5

    .line 4998
    goto :goto_5
.end method

.method public static removeChar(Ljava/lang/String;C)Ljava/lang/String;
    .locals 4
    .parameter "s"
    .parameter "c"

    .prologue
    .line 4354
    const-string v1, ""

    .line 4355
    .local v1, r:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4356
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4355
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4358
    :cond_1
    return-object v1
.end method

.method public static replaceChar(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 4
    .parameter "s"
    .parameter "source_char"
    .parameter "target_char"

    .prologue
    .line 4362
    const-string v2, ""

    .line 4363
    .local v2, r:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 4365
    .local v0, data:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 4366
    aget-char v3, v0, v1

    if-ne p1, v3, :cond_0

    .line 4367
    aput-char p2, v0, v1

    .line 4365
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4370
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public RemovPreInputForMultitap(Landroid/view/inputmethod/InputConnection;)Z
    .locals 3
    .parameter "InputConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 1930
    const/4 v0, 0x0

    .line 1932
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    packed-switch v1, :pswitch_data_0

    .line 1954
    :cond_0
    :goto_0
    return v0

    .line 1938
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9MultiTapWordDone()V

    .line 1941
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearOneSymb()I

    .line 1945
    const/16 v1, 0xe04

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mKBDNum:I

    if-ne v1, v2, :cond_0

    .line 1946
    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearSpecSymb(C)I

    goto :goto_0

    .line 1932
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public addUserWord(Ljava/lang/String;)V
    .locals 0
    .parameter "addUserWord"

    .prologue
    .line 280
    return-void
.end method

.method buildPhraseListV62(I)I
    .locals 11
    .parameter "count"

    .prologue
    const/4 v6, 0x0

    .line 4658
    const/4 v5, 0x0

    .line 4659
    .local v5, status:I
    const/4 v4, 0x0

    .line 4663
    .local v4, index:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4665
    .local v0, fstart:J
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetPhrase(I)I

    move-result v5

    .line 4668
    const-string v7, "XT9_CIME_J"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+++++++++++++++++++[buildPhraseListV62] nativeXT9CPGetPhrase status="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4670
    const/16 v7, 0x22

    if-ne v7, v5, :cond_0

    .line 4671
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    move-result v5

    .line 4673
    const-string v7, "XT9_CIME_J"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+++++++++++++++++++[buildPhraseListV62] nativeXT9CPBuildSelectionList status="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4675
    if-eqz v5, :cond_0

    move v6, v5

    .line 4710
    :goto_0
    return v6

    .line 4679
    :cond_0
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v6, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    .line 4681
    :goto_1
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    if-ge v7, p1, :cond_1

    .line 4682
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    const/16 v8, 0x96

    if-lt v7, v8, :cond_2

    .line 4706
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 4707
    .local v2, fstop:J
    const-string v7, "XT9_CIME_J"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+++++++++++++++++++[buildPhraseList] Duration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v2, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4685
    .end local v2           #fstop:J
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetPhrase(I)I

    move-result v5

    .line 4687
    if-nez v5, :cond_1

    .line 4690
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->bypassWord()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4692
    add-int/lit8 v4, v4, 0x1

    .line 4693
    goto :goto_1

    .line 4696
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->convertPunctuationForNecessary()V

    .line 4698
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Phrase_String:Ljava/lang/String;

    iput-object v8, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    .line 4699
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    aget-object v7, v7, v8

    const/4 v8, 0x1

    iput v8, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mType:I

    .line 4700
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    aget-object v7, v7, v8

    iput v4, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mIndex:I

    .line 4701
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v8, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    .line 4702
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method buildSpellingListV62(Landroid/view/inputmethod/InputConnection;)I
    .locals 13
    .parameter "InputConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 4476
    const/4 v8, 0x0

    .line 4477
    .local v8, status:I
    const/4 v7, 0x0

    .line 4484
    .local v7, index:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 4486
    .local v2, fstart:J
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetSpellV62()I

    move-result v8

    .line 4488
    if-eqz v8, :cond_2

    .line 4490
    const-string v9, "XT9_CIME_J"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[buildSpellingListV62] nativeXT9CPGetSpellV62 fail, status="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    iget-boolean v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mShowRawSpellIfInvalid:Z

    if-eqz v9, :cond_3

    .line 4493
    const/4 v9, 0x6

    if-eq v9, v8, :cond_0

    const/16 v9, 0x65

    if-ne v9, v8, :cond_1

    :cond_0
    move v9, v8

    .line 4653
    :goto_0
    return v9

    .line 4496
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 4497
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetRawSpell()I

    .line 4498
    const/4 v8, 0x0

    .line 4504
    :cond_2
    iget v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_Length:I

    if-nez v9, :cond_4

    .line 4505
    const/4 v9, 0x6

    goto :goto_0

    :cond_3
    move v9, v8

    .line 4500
    goto :goto_0

    .line 4507
    :cond_4
    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_String:Ljava/lang/String;

    const/16 v10, 0x7c

    invoke-static {v9, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->removeChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 4510
    .local v0, act_spell:Ljava/lang/String;
    const-string v9, "XT9_CIME_J"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[buildSpellingListV62] nativeXT9CPGetSpellV62 SPELL="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_String:Ljava/lang/String;

    const/16 v12, 0x7c

    invoke-static {v11, v12}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->removeChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4514
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->isCompactSpellSupport()Z

    move-result v9

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHardwareBPMF:Z

    if-eqz v9, :cond_a

    .line 4515
    :cond_5
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetPrefixCount()I

    move-result v1

    .line 4517
    .local v1, count:I
    const-string v9, "XT9_CIME_J"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[buildSpellingListV62] Prefix count="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4519
    if-lez v1, :cond_8

    .line 4521
    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v10, 0x0

    iput v10, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    .line 4523
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v1, :cond_7

    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    const/16 v10, 0x1e

    if-ge v9, v10, :cond_7

    .line 4524
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetPrefix(I)I

    move-result v8

    .line 4525
    if-nez v8, :cond_6

    .line 4527
    const-string v9, "XT9_CIME_J"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[buildSpellingListV62] Prefix["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_String:Ljava/lang/String;

    const/16 v12, 0x7c

    invoke-static {v11, v12}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->removeChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4529
    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_String:Ljava/lang/String;

    const/16 v11, 0x7c

    invoke-static {v10, v11}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->removeChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    .line 4530
    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    aget-object v9, v9, v10

    iput v6, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mIndex:I

    .line 4531
    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    aget-object v9, v9, v10

    const/4 v10, 0x4

    iput v10, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mType:I

    .line 4532
    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    .line 4523
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4536
    :cond_7
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetActivePrefixIndex()I

    move-result v8

    .line 4538
    if-nez v8, :cond_8

    .line 4539
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetSpellV62()I

    .line 4540
    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_String:Ljava/lang/String;

    const/16 v10, 0x7c

    invoke-static {v9, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->removeChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 4543
    const-string v9, "XT9_CIME_J"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[buildSpellingListV62] Active Prefix="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Active_index:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Spell="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_String:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4549
    .end local v6           #i:I
    :cond_8
    const/16 v9, 0xff

    iget v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Active_index:I

    if-ne v9, v10, :cond_9

    .line 4550
    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p0, p1, v0, v9, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;II)V

    .line 4648
    .end local v1           #count:I
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4649
    .local v4, fstop:J
    const-string v9, "XT9_CIME_J"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "++++++++++++++++++++[buildSpellingListV62] Duration="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v11, v4, v2

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 4653
    goto/16 :goto_0

    .line 4552
    .end local v4           #fstop:J
    .restart local v1       #count:I
    :cond_9
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Active_index:I

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p0, p1, v0, v9, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;II)V

    goto :goto_2

    .line 4555
    .end local v1           #count:I
    :cond_a
    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iput v10, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mType:I

    .line 4556
    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_String:Ljava/lang/String;

    const/16 v11, 0x7c

    invoke-static {v10, v11}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->removeChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    .line 4557
    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iput v10, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mIndex:I

    .line 4558
    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v10, 0x1

    iput v10, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    .line 4560
    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mMultitapModeOn:Z

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mMultitapDone:Z

    if-nez v9, :cond_c

    .line 4562
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_b

    .line 4564
    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, p1, v9, v10, v11}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;II)V

    goto/16 :goto_2

    .line 4566
    :cond_b
    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, p1, v9, v10, v11}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;II)V

    goto/16 :goto_2

    .line 4569
    :cond_c
    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p0, p1, v9, v10, v11}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;II)V

    goto/16 :goto_2
.end method

.method buildWCL(Landroid/view/inputmethod/InputConnection;)I
    .locals 11
    .parameter "InputConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 3559
    const/4 v6, 0x0

    .line 3561
    .local v6, status:I
    const/4 v5, 0x0

    .line 3562
    .local v5, spell_count:I
    const/4 v1, 0x0

    .line 3565
    .local v1, cand_count:I
    iget-boolean v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHardwareBPMF:Z

    if-eqz v7, :cond_0

    .line 3566
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildWCL_HWZY(Landroid/view/inputmethod/InputConnection;)I

    .line 3567
    const/4 v7, 0x0

    .line 3729
    :goto_0
    return v7

    .line 3571
    :cond_0
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    packed-switch v7, :pswitch_data_0

    .line 3699
    :pswitch_0
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v8, 0x0

    iput v8, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    .line 3702
    :goto_1
    :pswitch_1
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    if-lez v7, :cond_e

    .line 3703
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    const/16 v8, 0xa

    if-le v7, v8, :cond_c

    const/16 v2, 0xa

    .line 3705
    .local v2, def_wcl_count:I
    :goto_2
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    iput-object v8, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLString:Ljava/lang/String;

    .line 3707
    const/4 v4, 0x1

    .local v4, i:I
    :goto_3
    if-ge v4, v2, :cond_d

    .line 3708
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v9, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLString:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "|"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v9, v9, v4

    iget-object v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLString:Ljava/lang/String;

    .line 3707
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3641
    .end local v2           #def_wcl_count:I
    .end local v4           #i:I
    :pswitch_2
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v8, 0x0

    iput v8, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    .line 3644
    iget-boolean v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mShowSpellingOnWCL:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v7, v8, :cond_1

    .line 3645
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v9, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v10, 0x0

    aget-object v8, v8, v10

    aput-object v8, v7, v9

    .line 3649
    :cond_1
    const/4 v0, 0x1

    .line 3651
    .local v0, bTravelPhrase:Z
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    if-ge v4, v7, :cond_2

    if-eqz v0, :cond_2

    .line 3653
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    const/16 v8, 0xff

    if-lt v7, v8, :cond_6

    .line 3683
    :cond_2
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    if-nez v7, :cond_3

    .line 3684
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v8, 0x1

    iput v8, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 3685
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    const-string v10, ""

    invoke-interface {v7, v8, v9, v10}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 3689
    :cond_3
    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v7, :cond_a

    const/4 v3, 0x0

    .line 3691
    .local v3, defaultNextWordidx:I
    :goto_5
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-eq v8, v9, :cond_4

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    if-lez v8, :cond_5

    :cond_4
    iget-boolean v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mShowSpellingOnWCL:Z

    if-eqz v8, :cond_b

    const/4 v3, 0x1

    .end local v3           #defaultNextWordidx:I
    :cond_5
    :goto_6
    iput v3, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    goto/16 :goto_1

    .line 3658
    :cond_6
    const/4 v7, 0x5

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v7, v8, :cond_8

    .line 3659
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mCPNoXT9DeftPredict:Z

    if-eqz v7, :cond_8

    .line 3661
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    const v7, 0xff0c

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_7

    .line 3663
    const/4 v0, 0x0

    .line 3668
    :cond_7
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    const/16 v7, 0x6211

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_8

    .line 3670
    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    if-ge v7, v8, :cond_8

    .line 3671
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    add-int/lit8 v8, v4, 0x1

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    const/16 v7, 0x4f60

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    add-int/lit8 v9, v4, 0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_8

    .line 3673
    const/4 v0, 0x0

    .line 3679
    :cond_8
    if-eqz v0, :cond_9

    .line 3680
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v9, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v8, v8, v4

    aput-object v8, v7, v9

    .line 3651
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 3689
    :cond_a
    const/4 v3, -0x1

    goto/16 :goto_5

    .line 3691
    .restart local v3       #defaultNextWordidx:I
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 3703
    .end local v0           #bTravelPhrase:Z
    .end local v3           #defaultNextWordidx:I
    .end local v4           #i:I
    :cond_c
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    goto/16 :goto_2

    .line 3710
    .restart local v2       #def_wcl_count:I
    .restart local v4       #i:I
    :cond_d
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLString:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    .line 3712
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLDisplay:Z

    .line 3715
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mType:I

    if-ne v7, v8, :cond_e

    .line 3717
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_f

    .line 3718
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v8, 0x4

    const/4 v9, 0x1

    const-string v10, ""

    invoke-interface {v7, v8, v9, v10}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 3727
    .end local v2           #def_wcl_count:I
    .end local v4           #i:I
    :cond_e
    :goto_7
    sget-object v7, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 3729
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    goto/16 :goto_0

    .line 3720
    .restart local v2       #def_wcl_count:I
    .restart local v4       #i:I
    :cond_f
    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v10, ""

    invoke-interface {v7, v8, v9, v10}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    goto :goto_7

    .line 3571
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public buildWCL_AutoCompleteText([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 10
    .parameter "completions"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 421
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-nez v5, :cond_0

    .line 422
    const-string v5, "XT9_CIME_J"

    const-string v6, "[buildWCL_AutoCompleteText] Received IMF AutoCompletion message, but not allowed in current scenario!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_0
    return-void

    .line 426
    :cond_0
    if-nez p1, :cond_1

    .line 427
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v6, ""

    invoke-virtual {v5, v6, v9, v8}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    .line 429
    const-string v5, "XT9_CIME_J"

    const-string v6, "[buildWCL_AutoCompleteText] completions array received from IMF is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 433
    :cond_1
    const/4 v4, 0x0

    .line 434
    .local v4, valid_completions_count:I
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 435
    .local v3, stringWCL:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_4

    .line 436
    aget-object v0, p1, v1

    .line 437
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 438
    if-eqz v4, :cond_2

    .line 439
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 441
    :cond_2
    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 442
    add-int/lit8 v4, v4, 0x1

    .line 445
    const-string v5, "XT9_CIME_J"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    invoke-virtual {v7}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 447
    :cond_3
    const-string v5, "XT9_CIME_J"

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

    .line 450
    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_4
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput-object v3, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    .line 452
    if-nez v4, :cond_5

    .line 453
    const-string v5, "XT9_CIME_J"

    const-string v6, "[buildWCL_AutoCompleteText] There is no and valid completions received from IMF, do nothing!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v6, ""

    invoke-virtual {v5, v6, v9, v8}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 458
    :cond_5
    iput v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->candidate_count:I

    .line 461
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->candidate_count:I

    new-array v6, v6, [Landroid/view/inputmethod/CompletionInfo;

    iput-object v6, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->IMFcompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 462
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    array-length v5, p1

    if-ge v1, v5, :cond_7

    .line 463
    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 464
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v5, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->IMFcompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v6, p1, v1

    aput-object v6, v5, v2

    .line 465
    add-int/lit8 v2, v2, 0x1

    .line 462
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 469
    :cond_7
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v5, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    if-nez v5, :cond_8

    .line 470
    const-string v5, "XT9_CIME_J"

    const-string v6, "[buildWCL_AutoCompleteText] IMF\'s Auto-Completion coming, set isIMFAutoCompletion flage!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_8
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput-boolean v8, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    .line 473
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    .line 474
    iput-boolean v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLDisplay:Z

    .line 477
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    goto/16 :goto_0
.end method

.method buildWCL_HWZY(Landroid/view/inputmethod/InputConnection;)I
    .locals 14
    .parameter "InputConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 3736
    const/4 v8, 0x0

    .line 3738
    .local v8, status:I
    const/4 v7, 0x0

    .line 3739
    .local v7, spell_count:I
    const/4 v2, 0x0

    .line 3740
    .local v2, cand_count:I
    const-string v0, "[buildWCL_HWZY]"

    .line 3743
    .local v0, DBG_FUN_TAG:Ljava/lang/String;
    const-string v10, "XT9_CIME_J"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[buildWCL_HWZY] (mSpellCount,mPhraseCount)=("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v12, v12, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v12, v12, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v11, 0x0

    iput v11, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    .line 3748
    const/4 v1, 0x1

    .line 3750
    .local v1, bTravelPhrase:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    if-ge v5, v10, :cond_0

    if-eqz v1, :cond_0

    .line 3752
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    const/16 v11, 0xff

    if-lt v10, v11, :cond_3

    .line 3779
    :cond_0
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    if-nez v10, :cond_1

    .line 3780
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v11, 0x1

    iput v11, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 3781
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v10, v10, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v12, v12, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    const-string v13, ""

    invoke-interface {v10, v11, v12, v13}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 3785
    :cond_1
    sget-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v10, :cond_7

    const/4 v4, 0x0

    .line 3787
    .local v4, defaultNextWordidx:I
    :goto_1
    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v10, 0x4

    iget-object v12, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v12, v12, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-eq v10, v12, :cond_2

    const/4 v10, 0x3

    iget-object v12, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v12, v12, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v10, v12, :cond_9

    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    if-lez v10, :cond_9

    :cond_2
    iget-boolean v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mShowSpellingOnWCL:Z

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    :goto_2
    iput v10, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    .line 3792
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    if-lez v10, :cond_c

    .line 3793
    const-string v9, ""

    .line 3794
    .local v9, wcl_str:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9GetInputSymbCount()I

    move-result v6

    .line 3797
    .local v6, input_char_count:I
    const-string v10, "XT9_CIME_J"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[buildWCL_HWZY] SYMBOL COUNT="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3799
    const/4 v5, 0x0

    :goto_3
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    if-ge v5, v10, :cond_b

    .line 3801
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 3802
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v11, v11, v5

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3799
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3757
    .end local v4           #defaultNextWordidx:I
    .end local v6           #input_char_count:I
    .end local v9           #wcl_str:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x5

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v10, v11, :cond_5

    .line 3758
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->mCPNoXT9DeftPredict:Z

    if-eqz v10, :cond_5

    .line 3760
    const v10, 0xff0c

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v11, v11, v5

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v10, v11, :cond_4

    .line 3761
    const/4 v1, 0x0

    .line 3766
    :cond_4
    const/16 v10, 0x6211

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v11, v11, v5

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v10, v11, :cond_5

    .line 3767
    add-int/lit8 v10, v5, 0x1

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    if-ge v10, v11, :cond_5

    .line 3768
    const/16 v10, 0x4f60

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    add-int/lit8 v12, v5, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v10, v11, :cond_5

    .line 3769
    const/4 v1, 0x0

    .line 3775
    :cond_5
    if-eqz v1, :cond_6

    .line 3776
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v12, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v11, v11, v5

    aput-object v11, v10, v12

    .line 3750
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 3785
    :cond_7
    const/4 v4, -0x1

    goto/16 :goto_1

    .line 3787
    .restart local v4       #defaultNextWordidx:I
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_9
    move v10, v4

    goto/16 :goto_2

    .line 3804
    .restart local v6       #input_char_count:I
    .restart local v9       #wcl_str:Ljava/lang/String;
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v11, v11, v5

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4

    .line 3809
    :cond_b
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_e

    .line 3812
    const-string v10, "XT9_CIME_J"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[buildWCL_HWZY] Active prefix="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Active_index:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3815
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v10, :cond_d

    .line 3816
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v11, -0x1

    iput v11, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellIdx:I

    .line 3817
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Active_index:I

    invoke-virtual {v10, v9, v11}, Lcom/htc/android/htcime/HTCIMEService;->setTwoLinesWCLText(Ljava/lang/String;I)V

    .line 3831
    .end local v6           #input_char_count:I
    .end local v9           #wcl_str:Ljava/lang/String;
    :cond_c
    :goto_5
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    if-lez v10, :cond_12

    .line 3832
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    const/16 v11, 0xa

    if-le v10, v11, :cond_10

    const/16 v3, 0xa

    .line 3834
    .local v3, def_wcl_count:I
    :goto_6
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    iput-object v11, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLString:Ljava/lang/String;

    .line 3836
    const/4 v5, 0x1

    :goto_7
    if-ge v5, v3, :cond_11

    .line 3837
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v12, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLString:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "|"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v12, v12, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v12, v12, v5

    iget-object v12, v12, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLString:Ljava/lang/String;

    .line 3836
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 3820
    .end local v3           #def_wcl_count:I
    .restart local v6       #input_char_count:I
    .restart local v9       #wcl_str:Ljava/lang/String;
    :cond_d
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v11, 0x1

    iget v12, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Active_index:I

    invoke-virtual {v10, v11, v9, v12}, Lcom/htc/android/htcime/HTCIMEService;->setWCLText(ILjava/lang/String;I)V

    goto :goto_5

    .line 3822
    :cond_e
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v10, :cond_f

    .line 3823
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v11, ""

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/htc/android/htcime/HTCIMEService;->setTwoLinesWCLText(Ljava/lang/String;I)V

    goto :goto_5

    .line 3825
    :cond_f
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v11, 0x1

    const-string v12, ""

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/android/htcime/HTCIMEService;->setWCLText(ILjava/lang/String;I)V

    goto :goto_5

    .line 3832
    .end local v6           #input_char_count:I
    .end local v9           #wcl_str:Ljava/lang/String;
    :cond_10
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v3, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    goto :goto_6

    .line 3840
    .restart local v3       #def_wcl_count:I
    :cond_11
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v10, :cond_14

    .line 3841
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    if-lez v10, :cond_13

    .line 3842
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v12, v12, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLString:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/android/htcime/HTCIMEService;->setWCLText(ILjava/lang/String;I)V

    .line 3851
    :goto_8
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLDisplay:Z

    .line 3854
    const/4 v10, 0x1

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mType:I

    if-ne v10, v11, :cond_12

    .line 3856
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_15

    .line 3857
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v10, v10, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v11, 0x4

    const/4 v12, 0x1

    const-string v13, ""

    invoke-interface {v10, v11, v12, v13}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 3866
    .end local v3           #def_wcl_count:I
    :cond_12
    :goto_9
    sget-object v10, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 3868
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    return v10

    .line 3844
    .restart local v3       #def_wcl_count:I
    :cond_13
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v12, v12, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLString:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v4}, Lcom/htc/android/htcime/HTCIMEService;->setWCLText(ILjava/lang/String;I)V

    goto :goto_8

    .line 3848
    :cond_14
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v12, v12, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLString:Ljava/lang/String;

    const/4 v13, -0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/android/htcime/HTCIMEService;->setWCLText(ILjava/lang/String;I)V

    goto :goto_8

    .line 3859
    :cond_15
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v10, v10, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v13, ""

    invoke-interface {v10, v11, v12, v13}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    goto :goto_9
.end method

.method bypassWord()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 4735
    iget v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Phrase_Length:I

    if-ne v1, v2, :cond_0

    .line 4736
    const-string v2, "\uf5ce\uf7ed"

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Phrase_String:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 4738
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 4741
    .end local v0           #index:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method chooseCandidate(Landroid/view/inputmethod/InputConnection;I)I
    .locals 10
    .parameter "InputConnection"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x65

    const/16 v8, 0xa

    const/4 v7, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2991
    const/4 v1, 0x0

    .line 2993
    .local v1, status:I
    const-string v0, "[chooseCandidate]"

    .line 2995
    .local v0, sFunTag:Ljava/lang/String;
    const-string v4, "XT9_CIME_J"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[chooseCandidate]:  IME status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mHTCIMEInfo.mCandsCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v2, v4, :cond_1

    .line 3435
    :cond_0
    :goto_0
    return v2

    .line 3000
    :cond_1
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    if-ge p2, v4, :cond_0

    .line 3003
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 3005
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v4, v4, p2

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mType:I

    packed-switch v4, :pswitch_data_0

    :goto_1
    move v2, v1

    .line 3435
    goto :goto_0

    .line 3008
    :pswitch_0
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    packed-switch v4, :pswitch_data_1

    goto :goto_1

    .line 3043
    :pswitch_1
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v2, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 3044
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    const-string v6, ""

    invoke-interface {v4, v2, v5, v6}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 3045
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    .line 3046
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 3047
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    goto :goto_1

    .line 3108
    :pswitch_2
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    packed-switch v4, :pswitch_data_2

    goto :goto_1

    .line 3113
    :pswitch_3
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    .line 3115
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v4, v4, p2

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPSelectPhrase(I)I

    move-result v1

    .line 3116
    const-string v4, "XT9_CIME_J"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[chooseCandidate]: nativeXT9CPSelectPhrase index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v6, v6, p2

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    if-eqz v1, :cond_2

    if-ne v9, v1, :cond_6

    .line 3120
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetSelection()I

    move-result v1

    .line 3122
    if-ne v9, v1, :cond_4

    .line 3123
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPCommitSelection()I

    .line 3124
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    .line 3127
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Phrase_String:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPUdbAddPhrase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 3128
    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mCPUDBNum:I

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->updateUDBTimestamp(I)V

    .line 3131
    :cond_3
    iget-boolean v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mEnableNextPrediction:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableContNxtPredict:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v7, v4, :cond_4

    .line 3132
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 3133
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v2, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 3134
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    const-string v6, ""

    invoke-interface {v4, v2, v5, v6}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    move v2, v3

    .line 3135
    goto/16 :goto_0

    .line 3139
    :cond_4
    const-string v4, "XT9_CIME_J"

    const-string v5, "[chooseCandidate]: CHK1"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildSpellingListV62(Landroid/view/inputmethod/InputConnection;)I

    move-result v1

    .line 3142
    const/4 v4, 0x6

    if-ne v4, v1, :cond_8

    .line 3143
    const-string v4, "XT9_CIME_J"

    const-string v5, "[chooseCandidate]: CHK2"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    iget-boolean v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mEnableNextPrediction:Z

    if-eqz v4, :cond_7

    .line 3145
    const-string v4, "XT9_CIME_J"

    const-string v5, "[chooseCandidate]: CHK3"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v7, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 3147
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const-string v5, ""

    invoke-interface {v4, v2, v7, v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 3148
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    .line 3150
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9GetInputSymbCount()I

    move-result v4

    if-nez v4, :cond_5

    .line 3151
    iput v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_Length:I

    .line 3152
    const-string v3, ""

    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_String:Ljava/lang/String;

    .line 3174
    :cond_5
    :goto_2
    const-string v3, "XT9_CIME_J"

    const-string v4, "[chooseCandidate]: CHK6"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildWCL(Landroid/view/inputmethod/InputConnection;)I

    .line 3301
    :cond_6
    iput-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mEnableNextPrediction:Z

    goto/16 :goto_1

    .line 3156
    :cond_7
    const-string v3, "XT9_CIME_J"

    const-string v4, "[chooseCandidate]: CHK4"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 3158
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v2, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 3159
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    const-string v5, ""

    invoke-interface {v3, v2, v4, v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    goto :goto_2

    .line 3162
    :cond_8
    if-nez v1, :cond_5

    .line 3163
    const-string v3, "XT9_CIME_J"

    const-string v4, "[chooseCandidate]: CHK5"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->isCompactSpellSupport()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3166
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetActivePrefixIndex()I

    .line 3167
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v4, 0x2

    iget v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Active_index:I

    const-string v6, ""

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 3170
    :cond_9
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    move-result v1

    goto :goto_2

    .line 3005
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 3008
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch

    .line 3108
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method chooseHWKeyboardToneSymb(Landroid/view/inputmethod/InputConnection;I)Z
    .locals 8
    .parameter "InputConnection"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x7c

    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 3441
    const/4 v1, 0x0

    .line 3442
    .local v1, ret:I
    const/4 v0, 0x0

    .line 3444
    .local v0, bRet:Z
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v3, v3, p2

    iget v2, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mType:I

    .line 3446
    .local v2, type:I
    const/4 v3, 0x4

    if-ne v3, v2, :cond_1

    .line 3447
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v3, v3, p2

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mIndex:I

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPSetActivePrefix(I)I

    move-result v1

    .line 3449
    if-nez v1, :cond_1

    .line 3450
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetSpellV62()I

    move-result v1

    .line 3452
    if-eqz v1, :cond_0

    .line 3453
    const/4 v3, 0x1

    .line 3486
    :goto_0
    return v3

    .line 3455
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_String:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->removeChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, p1, v3, v5, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;II)V

    .line 3456
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    .line 3458
    iput p2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Active_index:I

    .line 3459
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildWCL_HWZY(Landroid/view/inputmethod/InputConnection;)I

    .line 3463
    :cond_1
    const/4 v3, 0x5

    if-ne v3, v2, :cond_3

    .line 3465
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearOneSymb()I

    .line 3466
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    .line 3468
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v3, v3, p2

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mIndex:I

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPSetActivePrefix(I)I

    move-result v1

    .line 3469
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v3, v3, p2

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mTone:I

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPProcessBPMFTone(I)I

    move-result v1

    .line 3471
    if-nez v1, :cond_3

    .line 3473
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetSpellV62()I

    move-result v1

    .line 3475
    if-eqz v1, :cond_2

    .line 3476
    const/4 v0, 0x1

    .line 3478
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_String:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->removeChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, p1, v3, v5, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;II)V

    .line 3479
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    .line 3481
    iput p2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Active_index:I

    .line 3482
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildWCL_HWZY(Landroid/view/inputmethod/InputConnection;)I

    :cond_3
    move v3, v0

    .line 3486
    goto :goto_0
.end method

.method clearWCL()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3873
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v1, ""

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/htcime/HTCIMEService;->setDefaultWCLText(Ljava/lang/String;I)V

    .line 3874
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setWCLText(ILjava/lang/String;I)V

    .line 3875
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v1, 0x2

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setWCLText(ILjava/lang/String;I)V

    .line 3877
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v3, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    .line 3878
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v3, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    .line 3879
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v3, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    .line 3880
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput-boolean v3, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLDisplay:Z

    .line 3883
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-interface {v0, v1, v3, v2}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 3884
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->ResetZYInputBuffer()V

    .line 3887
    return-void
.end method

.method clearWCL_GC()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3895
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->reset()V

    .line 3896
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v1, ""

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/htcime/HTCIMEService;->setDefaultWCLText(Ljava/lang/String;I)V

    .line 3897
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    .line 3898
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v1, ""

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    .line 3899
    iput v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->candidate_count:I

    .line 3900
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLDisplay:Z

    .line 3902
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3903
    return-void
.end method

.method convertPunctuationForNecessary()V
    .locals 3

    .prologue
    .line 4720
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Phrase_Length:I

    if-ne v1, v2, :cond_0

    .line 4721
    const-string v1, ",?!:;"

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Phrase_String:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 4723
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 4724
    const-string v1, "\uff0c\uff1f\uff01\uff1a\uff1b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Phrase_String:Ljava/lang/String;

    .line 4727
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method doNormalKey(I)V
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 2147
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    .line 2148
    return-void
.end method

.method dumpCandidates()V
    .locals 0

    .prologue
    .line 4265
    return-void
.end method

.method public expandFullWCL()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 539
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[expandFullWCL]: mStatus ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[expandFullWCL]: Phrase list Count ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 546
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    .line 562
    :cond_0
    return v1

    .line 548
    :cond_1
    const/16 v2, 0x96

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    .line 549
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[expandFullWCL]: New Phrase list, Count ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v1, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    .line 554
    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mShowSpellingOnWCL:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v2, v3, :cond_2

    .line 555
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v3, v3, v1

    aput-object v3, v2, v4

    .line 558
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    if-ge v0, v2, :cond_0

    .line 559
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v3, v3, v0

    aput-object v3, v2, v4

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public finishInput()V
    .locals 3

    .prologue
    .line 250
    const-string v1, "XT9_CIME_J"

    const-string v2, "[finishInput]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    .line 253
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPCommitUDBBuffer()I

    .line 256
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processFinishJob(Z)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Landroid/util/AndroidException;
    invoke-virtual {v0}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIMEStatus()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    return v0
.end method

.method public getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    return-object v0
.end method

.method public getSpellCount()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    return v0
.end method

.method public getSpellString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    if-lt p1, v0, :cond_0

    .line 573
    const/4 v0, 0x0

    .line 575
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSpellType(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    if-lt p1, v0, :cond_0

    .line 581
    const/4 v0, 0x0

    .line 583
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mSpellType:I

    goto :goto_0
.end method

.method public getWCLCand(IIZ)Ljava/lang/String;
    .locals 4
    .parameter "i"
    .parameter "idWCL"
    .parameter "bAtbottomBtn"

    .prologue
    const/4 v1, 0x0

    .line 482
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 484
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    if-eqz v2, :cond_2

    .line 485
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->IMFcompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v2, v2

    iget v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->candidate_count:I

    sub-int v0, v2, v3

    .line 487
    .local v0, startAutocompletionindx:I
    if-gez v0, :cond_1

    .line 515
    .end local v0           #startAutocompletionindx:I
    :cond_0
    :goto_0
    return-object v1

    .line 490
    .restart local v0       #startAutocompletionindx:I
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->IMFcompletions:[Landroid/view/inputmethod/CompletionInfo;

    add-int v2, p1, v0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 494
    .end local v0           #startAutocompletionindx:I
    :cond_2
    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHardwareBPMF:Z

    if-eqz v2, :cond_0

    .line 495
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    goto :goto_0

    .line 502
    :cond_3
    const/4 v2, 0x2

    if-ne p2, v2, :cond_5

    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHardwareBPMF:Z

    if-eqz v2, :cond_5

    .line 504
    if-eqz p3, :cond_4

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    goto :goto_0

    .line 509
    :cond_5
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    if-ge p1, v2, :cond_0

    .line 513
    const-string v1, "XT9_CIME_J"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getWCLCand]: Cand["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWCLCount(IZ)I
    .locals 4
    .parameter "idWCL"
    .parameter "bAtbottomBtn"

    .prologue
    const/4 v3, 0x1

    .line 521
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 523
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    .line 534
    :goto_0
    return v0

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    goto :goto_0

    .line 526
    :cond_1
    iget-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHardwareBPMF:Z

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_2

    .line 527
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    goto :goto_0

    .line 532
    :cond_2
    const-string v0, "XT9_CIME_J"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getWCLCount]: Count ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    if-eqz v0, :cond_3

    if-ne p1, v3, :cond_3

    iget v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->candidate_count:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    goto :goto_0
.end method

.method public handleCPFNKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "InputConnection"
    .parameter "FnInfo"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1019
    const/high16 v6, 0xff

    and-int/2addr v6, p2

    shr-int/lit8 v1, v6, 0x10

    .line 1020
    .local v1, fn_id:I
    const v6, 0xffff

    and-int v2, p2, v6

    .line 1025
    .local v2, fn_val:I
    const-string v6, "XT9_CIME_J"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleFNKeyDown]: FnInfo=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    move v4, v5

    .line 1095
    :cond_1
    :goto_1
    return v4

    .line 1031
    :pswitch_0
    const/4 v6, 0x4

    if-gt v2, v6, :cond_1

    .line 1034
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPSetInputMode(I)I

    move-result v3

    .line 1039
    .local v3, ret:I
    if-eqz v3, :cond_2

    .line 1042
    const-string v5, "XT9_CIME_J"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleFNKeyDown]: nativeXT9CPSetInputMode ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1047
    :cond_2
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v2, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mInputType:I

    goto :goto_0

    .line 1053
    .end local v3           #ret:I
    :pswitch_1
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 1055
    :pswitch_2
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mKBDResID:I

    invoke-direct {p0, v4, v5}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->LoadDictionary(II)Z

    move-result v0

    .line 1057
    .local v0, bRet:Z
    if-eqz v0, :cond_0

    .line 1058
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mKBDNum:I

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9KdbInit(I)I

    move-result v3

    .restart local v3       #ret:I
    goto :goto_0

    .line 1063
    .end local v0           #bRet:Z
    .end local v3           #ret:I
    :pswitch_3
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v6, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBResID:I

    const/4 v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->LoadDictionary(II)Z

    move-result v0

    .line 1064
    .restart local v0       #bRet:Z
    const-string v6, "XT9_CIME_J"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CP_DBTYPE_CHINESE_LANGUAGE]: mCPLDBNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v8, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ret="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    if-eqz v0, :cond_0

    .line 1067
    const/16 v6, 0xe0

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    if-ne v6, v7, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPLdbInit(I)I

    .line 1068
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPUdbInit(I)I

    goto/16 :goto_0

    .line 1072
    .end local v0           #bRet:Z
    :pswitch_4
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mLDBResID:I

    const/4 v6, 0x3

    invoke-direct {p0, v4, v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->LoadDictionary(II)Z

    move-result v0

    .line 1074
    .restart local v0       #bRet:Z
    if-eqz v0, :cond_0

    .line 1075
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPLdbInit(I)I

    .line 1076
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPUdbInit(I)I

    goto/16 :goto_0

    .line 1084
    .end local v0           #bRet:Z
    :pswitch_5
    invoke-virtual {p0, p1, v2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processToneSymb(Landroid/view/inputmethod/InputConnection;I)I

    goto/16 :goto_0

    .line 1090
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processSyllDelimiterSymb(Landroid/view/inputmethod/InputConnection;)I

    goto/16 :goto_0

    .line 1027
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1053
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public handleDPADCenterKeyDown(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "InputConnection"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1612
    const/4 v0, 0x0

    .line 1614
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-eq v4, v1, :cond_1

    .line 1615
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    if-ltz v1, :cond_2

    .line 1616
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventDown(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1617
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMMView;->dispatchTrackballevent(Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;I)V

    .line 1624
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 1627
    :cond_1
    return v0

    .line 1619
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 1620
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v4, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 1621
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    const-string v3, ""

    invoke-interface {v1, v4, v2, v3}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public handleDPADCenterKeyUp(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "InputConnection"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1632
    const/4 v0, 0x0

    .line 1636
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-eq v3, v1, :cond_1

    .line 1639
    sput-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mCPWCLCOMMIT:Z

    .line 1641
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventUp(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1642
    const/4 v0, 0x0

    .line 1654
    .end local v0           #bRet:Z
    :goto_0
    return v0

    .line 1644
    .restart local v0       #bRet:Z
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    if-ne v1, v2, :cond_2

    .line 1645
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    invoke-virtual {p0, p1, v1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->chooseCandidate(Landroid/view/inputmethod/InputConnection;I)I

    .line 1652
    :cond_1
    :goto_1
    const-string v1, "XT9_CIME_J"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleDPADCenterKeyUp]:  mWCLMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1648
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMMView;->dispatchTrackballevent(Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;I)V

    goto :goto_1
.end method

.method public handleDPADDownKey(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "InputConnection"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1601
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-eq v0, v2, :cond_0

    .line 1603
    invoke-virtual {p0, p1, v1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->moveLineWCLWord(Landroid/view/inputmethod/InputConnection;Z)V

    .line 1607
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public handleDPADUpKey(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "InputConnection"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1590
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-eq v0, v1, :cond_0

    .line 1592
    invoke-virtual {p0, p1, v0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->moveLineWCLWord(Landroid/view/inputmethod/InputConnection;Z)V

    .line 1596
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleDelKey(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "InputConnection"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1815
    const/4 v0, 0x0

    .line 1820
    .local v0, bRet:Z
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    move v2, v0

    .line 1925
    :cond_1
    :goto_1
    return v2

    .line 1828
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9GetInputSymbCount()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1831
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9MultiTapWordDone()V

    .line 1832
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput-boolean v3, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mMultitapDone:Z

    .line 1835
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearOneSymb()I

    .line 1837
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildSpellingListV62(Landroid/view/inputmethod/InputConnection;)I

    move-result v1

    .line 1840
    .local v1, status:I
    const-string v4, "XT9_CIME_J"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleDelKey] STATUS_SPELL,CANDIDATE buildSpellingListV62 status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    const/4 v4, 0x6

    if-eq v4, v1, :cond_2

    const/16 v4, 0x65

    if-ne v4, v1, :cond_3

    .line 1843
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 1844
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    .line 1845
    const-string v4, ""

    invoke-virtual {p0, p1, v4, v2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    .line 1846
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 1847
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    const-string v5, ""

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    move v2, v3

    .line 1848
    goto :goto_1

    .line 1851
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processCommonErrorHandling(Landroid/view/inputmethod/InputConnection;I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 1852
    goto :goto_1

    .line 1854
    :cond_4
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    .line 1856
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->isCompactSpellSupport()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1857
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetActivePrefixIndex()I

    .line 1858
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v4, 0x2

    iget v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Active_index:I

    const-string v6, ""

    invoke-interface {v2, v4, v5, v6}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 1863
    :cond_5
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v3, v2, :cond_6

    .line 1864
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    if-lez v2, :cond_6

    .line 1865
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mShowSpellingOnWCL:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    :goto_2
    iput v2, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 1869
    :cond_6
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildWCL(Landroid/view/inputmethod/InputConnection;)I

    .line 1872
    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHardwareBPMF:Z

    if-eqz v2, :cond_0

    .line 1873
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1865
    :cond_7
    const/4 v2, 0x4

    goto :goto_2

    .line 1915
    .end local v1           #status:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 1916
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    .line 1917
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 1918
    const/4 v0, 0x1

    .line 1919
    goto/16 :goto_0

    .line 1820
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleEnterKey(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "InputConnection"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x42

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1659
    const/4 v0, 0x1

    .line 1664
    .local v0, bRet:Z
    const-string v2, "XT9_CIME_J"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleEnterKey]:  IME status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mHTCIMEInfo.mPredictIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mShowRawSpellIfInvalid:Z

    if-eqz v2, :cond_0

    .line 1669
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    if-lez v2, :cond_0

    .line 1670
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1673
    .local v1, spell_str:Ljava/lang/String;
    sput-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mCPWCLCOMMIT:Z

    .line 1675
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v2, v1, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    .line 1677
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    .line 1678
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 1679
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    invoke-virtual {v2}, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->reset()V

    .line 1680
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->ResetZYInputBuffer()V

    .line 1681
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    const-string v5, ""

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 1740
    .end local v1           #spell_str:Ljava/lang/String;
    :goto_0
    return v3

    .line 1686
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    packed-switch v2, :pswitch_data_0

    .line 1737
    const/4 v0, 0x0

    :goto_1
    move v3, v0

    .line 1740
    goto :goto_0

    .line 1690
    :pswitch_0
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendKeyChar(C)V

    .line 1691
    const/4 v0, 0x1

    .line 1692
    goto :goto_1

    .line 1695
    :pswitch_1
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v2, :cond_1

    .line 1696
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 1697
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->doNormalKey(I)V

    .line 1699
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 1700
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    const-string v5, ""

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    goto :goto_1

    .line 1708
    :cond_1
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v7, v2, :cond_2

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mEnableNextPrediction:Z

    .line 1710
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    if-ltz v2, :cond_3

    .line 1711
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    invoke-virtual {p0, p1, v2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->chooseCandidate(Landroid/view/inputmethod/InputConnection;I)I

    .line 1713
    sput-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mCPWCLCOMMIT:Z

    goto :goto_1

    :cond_2
    move v2, v4

    .line 1708
    goto :goto_2

    .line 1717
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mInlineString:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1718
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v5, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mInlineString:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {p0, v2, v5, v6, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1719
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mEnableNextPrediction:Z

    .line 1722
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 1724
    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mEnableNextPrediction:Z

    if-nez v2, :cond_5

    .line 1725
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->doNormalKey(I)V

    .line 1730
    :goto_3
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 1731
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    const-string v5, ""

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 1732
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mEnableNextPrediction:Z

    goto :goto_1

    .line 1727
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 1686
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleFNKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z
    .locals 14
    .parameter "InputConnection"
    .parameter "FnInfo"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 617
    const/high16 v10, 0xff

    and-int v10, v10, p2

    shr-int/lit8 v2, v10, 0x10

    .line 618
    .local v2, fn_id:I
    const v10, 0xffff

    and-int v3, p2, v10

    .line 619
    .local v3, fn_val:I
    const/4 v4, 0x0

    .line 623
    .local v4, ret:I
    const-string v10, "XT9_CIME_J"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[handleFNKeyDown]: FnInfo=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,status="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v12, v12, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    sparse-switch v2, :sswitch_data_0

    .line 1010
    :cond_0
    :goto_0
    :sswitch_0
    const/4 v10, 0x1

    :goto_1
    return v10

    .line 629
    :sswitch_1
    const/4 v10, 0x1

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-eq v10, v11, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    .line 631
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 633
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v11, 0x1

    iput v11, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    goto :goto_0

    .line 641
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    .line 642
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processFinishJob(Z)V

    .line 647
    :sswitch_3
    invoke-virtual {p0, p1, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->moveWCLWord(Landroid/view/inputmethod/InputConnection;I)V

    .line 650
    const/4 v10, 0x2

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v10, v11, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->isPhoneticMode()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 652
    const/high16 v10, 0x746

    or-int/2addr v10, v3

    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v10, v0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleFNKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    move-result v10

    goto :goto_1

    .line 659
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    .line 660
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processFinishJob(Z)V

    goto :goto_0

    .line 667
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    .line 668
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processFinishJob2(Z)V

    .line 669
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v10}, Lcom/htc/android/htcime/HTCIMEService;->finishComposingText()V

    goto :goto_0

    .line 677
    :sswitch_6
    const/4 v10, 0x1

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v10, v11, :cond_1

    .line 678
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v10}, Lcom/htc/android/htcime/HTCIMEService;->finishComposingText()V

    .line 681
    :cond_1
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mbMultitapDone:Z

    .line 685
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    if-nez v10, :cond_2

    const/4 v10, 0x1

    if-eq v10, v3, :cond_2

    .line 686
    const/4 v10, 0x0

    invoke-virtual {p0, p1, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleDelKey(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 687
    :cond_2
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    if-eqz v10, :cond_0

    .line 688
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mInlineString:Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v12, v12, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mInlineString:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p0, p1, v10, v11, v12}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 695
    :sswitch_7
    const-string v10, "XT9_CIME_J"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[FN_SELCANDWORD] index ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " IMS status="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v12, v12, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v3, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    .line 699
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    invoke-virtual {p0, p1, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->chooseCandidate(Landroid/view/inputmethod/InputConnection;I)I

    goto/16 :goto_0

    .line 705
    :sswitch_8
    const/4 v10, 0x1

    if-lt v3, v10, :cond_3

    const/4 v10, 0x2

    if-le v3, v10, :cond_4

    .line 706
    :cond_3
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 709
    :cond_4
    const-string v11, "XT9_CIME_J"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^^^^^^^^^^^^^^^^^^^^^^[handleFNKeyDown]: Set "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v10, 0x1

    if-ne v10, v3, :cond_5

    const-string v10, "Ambigious mode"

    :goto_2
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/4 v10, 0x1

    if-ne v10, v3, :cond_6

    .line 712
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9SetAmbigiousMode()I

    .line 713
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mMultitapModeOn:Z

    goto/16 :goto_0

    .line 709
    :cond_5
    const-string v10, "Multitap mode"

    goto :goto_2

    .line 716
    :cond_6
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9SetMultiTapMode()I

    .line 717
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mMultitapModeOn:Z

    goto/16 :goto_0

    .line 724
    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9MultiTapWordDone()V

    .line 725
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mMultitapDone:Z

    .line 727
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    if-nez v10, :cond_7

    .line 728
    const/4 v10, 0x0

    invoke-virtual {p0, p1, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleDelKey(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 731
    :cond_7
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mInlineString:Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v12, v12, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mInlineString:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p0, p1, v10, v11, v12}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 738
    :sswitch_a
    const/4 v10, 0x4

    if-le v3, v10, :cond_8

    .line 739
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 741
    :cond_8
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPSetInputMode(I)I

    move-result v4

    .line 746
    if-eqz v4, :cond_9

    .line 749
    const-string v10, "XT9_CIME_J"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[handleFNKeyDown]: nativeXT9CPSetInputMode ret="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 754
    :cond_9
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v3, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mInputType:I

    .line 757
    const/4 v10, 0x2

    if-ne v10, v3, :cond_0

    .line 758
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPEnableComponent(Z)I

    goto/16 :goto_0

    .line 765
    :sswitch_b
    const/4 v10, 0x1

    if-ne v10, v3, :cond_0

    .line 766
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPCommitUDBBuffer()I

    goto/16 :goto_0

    .line 772
    :sswitch_c
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 774
    :pswitch_0
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v10, Lcom/htc/android/htcime/HTCIMMData;->mKBDResID:I

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->LoadDictionary(II)Z

    move-result v1

    .line 776
    .local v1, bRet:Z
    if-eqz v1, :cond_0

    .line 777
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v10, Lcom/htc/android/htcime/HTCIMMData;->mKBDNum:I

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9KdbInit(I)I

    move-result v4

    .line 779
    if-nez v4, :cond_0

    .line 781
    const/16 v10, 0xf04

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v11, Lcom/htc/android/htcime/HTCIMMData;->mKBDNum:I

    if-eq v10, v11, :cond_a

    const/16 v10, 0xe04

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v11, Lcom/htc/android/htcime/HTCIMMData;->mKBDNum:I

    if-ne v10, v11, :cond_b

    .line 782
    :cond_a
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mShowSpellingOnWCL:Z

    .line 787
    :goto_3
    const/16 v10, 0xd04

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v11, Lcom/htc/android/htcime/HTCIMMData;->mKBDNum:I

    if-ne v10, v11, :cond_c

    const/4 v10, 0x1

    :goto_4
    iput-boolean v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mShowRawSpellIfInvalid:Z

    .line 790
    const/16 v10, 0x1204

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v11, Lcom/htc/android/htcime/HTCIMMData;->mKBDNum:I

    if-ne v10, v11, :cond_d

    const/4 v10, 0x1

    :goto_5
    iput-boolean v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHardwareBPMF:Z

    goto/16 :goto_0

    .line 784
    :cond_b
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mShowSpellingOnWCL:Z

    goto :goto_3

    .line 787
    :cond_c
    const/4 v10, 0x0

    goto :goto_4

    .line 790
    :cond_d
    const/4 v10, 0x0

    goto :goto_5

    .line 796
    .end local v1           #bRet:Z
    :pswitch_1
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v10, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBResID:I

    const/4 v11, 0x2

    invoke-direct {p0, v10, v11}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->LoadDictionary(II)Z

    move-result v1

    .line 797
    .restart local v1       #bRet:Z
    const-string v10, "XT9_CIME_J"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CP_DBTYPE_CHINESE_LANGUAGE]: mCPLDBNum="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v12, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ret="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    if-eqz v1, :cond_0

    .line 800
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v10, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPLdbInit(I)I

    .line 801
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v10, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPUdbInit(I)I

    goto/16 :goto_0

    .line 805
    .end local v1           #bRet:Z
    :pswitch_2
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v10, Lcom/htc/android/htcime/HTCIMMData;->mLDBResID:I

    const/4 v11, 0x3

    invoke-direct {p0, v10, v11}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->LoadDictionary(II)Z

    move-result v1

    .line 807
    .restart local v1       #bRet:Z
    if-eqz v1, :cond_0

    .line 808
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v10, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPLdbInit(I)I

    .line 809
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v10, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPUdbInit(I)I

    goto/16 :goto_0

    .line 817
    .end local v1           #bRet:Z
    :sswitch_d
    invoke-virtual {p0, p1, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processToneSymb(Landroid/view/inputmethod/InputConnection;I)I

    goto/16 :goto_0

    .line 823
    :sswitch_e
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processSyllDelimiterSymb(Landroid/view/inputmethod/InputConnection;)I

    goto/16 :goto_0

    .line 836
    :sswitch_f
    const/4 v5, 0x0

    .line 838
    .local v5, spell_idx:I
    const-string v6, ""

    .line 840
    .local v6, spell_str:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v10, v10, v3

    iget v9, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mType:I

    .line 842
    .local v9, type:I
    const/4 v10, 0x4

    if-ne v10, v9, :cond_0

    .line 843
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v10, v10, v3

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mIndex:I

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPSetActivePrefix(I)I

    move-result v4

    .line 845
    if-nez v4, :cond_0

    .line 846
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetSpellV62()I

    move-result v4

    .line 848
    if-eqz v4, :cond_e

    .line 849
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 851
    :cond_e
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_String:Ljava/lang/String;

    const/16 v11, 0x7c

    invoke-static {v10, v11}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->removeChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v12, v12, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v12, v12, v3

    iget-object v12, v12, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p0, p1, v10, v11, v12}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;II)V

    .line 852
    const/16 v10, 0xa

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    .line 853
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildWCL(Landroid/view/inputmethod/InputConnection;)I

    goto/16 :goto_0

    .line 861
    .end local v5           #spell_idx:I
    .end local v6           #spell_str:Ljava/lang/String;
    .end local v9           #type:I
    :sswitch_10
    const-string v10, "XT9_CIME_J"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Set Mohu Pinyin value = 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9SetMohuPairs(I)I

    goto/16 :goto_0

    .line 875
    :sswitch_11
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v11, ""

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/htc/android/htcime/HTCIMEService;->setDefaultWCLText(Ljava/lang/String;I)V

    .line 879
    :sswitch_12
    iget-boolean v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHardwareBPMF:Z

    if-eqz v10, :cond_10

    .line 881
    invoke-virtual {p0, p1, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->chooseHWKeyboardToneSymb(Landroid/view/inputmethod/InputConnection;I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 882
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 884
    :cond_f
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    if-ge v3, v10, :cond_0

    .line 885
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v3, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellIdx:I

    goto/16 :goto_0

    .line 887
    :cond_10
    iget v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->candidate_count:I

    if-lt v3, v10, :cond_11

    .line 890
    const-string v10, "XT9_CIME_J"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "T9InputMethod_onKeyDown_set touch word index="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is bigger than candidate_count="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->candidate_count:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 892
    :cond_11
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    if-eqz v10, :cond_0

    .line 893
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v10}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v11, v11, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->IMFcompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v11, v11, v3

    invoke-interface {v10, v11}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 894
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL_GC()V

    goto/16 :goto_0

    .line 902
    :sswitch_13
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->mCPZYSmartInput:Z

    if-nez v10, :cond_14

    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->sFeature_ZY_Phrase_Input:Z

    if-eqz v10, :cond_14

    .line 903
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9GetInputSymbCount()I

    move-result v10

    if-nez v10, :cond_12

    .line 904
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v10, v10, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const-string v13, ""

    invoke-interface {v10, v11, v12, v13}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 905
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 908
    :cond_12
    const/4 v10, -0x1

    iget-object v11, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    if-ne v10, v11, :cond_13

    .line 909
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v10, v10, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v11, 0x3

    const/4 v12, 0x1

    const-string v13, ""

    invoke-interface {v10, v11, v12, v13}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 913
    :goto_6
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 911
    :cond_13
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v10, v10, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const-string v13, ""

    invoke-interface {v10, v11, v12, v13}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    goto :goto_6

    .line 916
    :cond_14
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9GetInputSymbCount()I

    move-result v10

    if-nez v10, :cond_15

    .line 917
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v10, v10, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const-string v13, ""

    invoke-interface {v10, v11, v12, v13}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 919
    :cond_15
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPProcessBPMFTone(I)I

    move-result v4

    .line 921
    if-eqz v4, :cond_16

    .line 922
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v10, v10, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const-string v13, ""

    invoke-interface {v10, v11, v12, v13}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 924
    :cond_16
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    move-result v4

    .line 926
    if-eqz v4, :cond_17

    .line 927
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v10, v10, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const-string v13, ""

    invoke-interface {v10, v11, v12, v13}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 931
    :goto_7
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearOneSymb()I

    .line 933
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    move-result v4

    .line 935
    if-nez v4, :cond_0

    .line 936
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildSpellingListV62(Landroid/view/inputmethod/InputConnection;)I

    move-result v4

    .line 938
    if-nez v4, :cond_0

    .line 939
    const/16 v10, 0xa

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    move-result v4

    goto/16 :goto_0

    .line 929
    :cond_17
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v10, v10, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v11, 0x3

    const/4 v12, 0x1

    const-string v13, ""

    invoke-interface {v10, v11, v12, v13}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    goto :goto_7

    .line 948
    :sswitch_14
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v10, Lcom/htc/android/htcime/HTCIMMData;->mCPUDBNum:I

    packed-switch v10, :pswitch_data_1

    .line 983
    sget v10, Lcom/htc/android/htcime/HTCIMMData;->mCPUDBNum:I

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPUdbInit(I)I

    .line 984
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v10, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPUdbRestore(IZ)I

    goto/16 :goto_0

    .line 950
    :pswitch_3
    sget v10, Lcom/htc/android/htcime/HTCIMMData;->mCPUDBNum:I

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPUdbInit(I)I

    .line 952
    sget-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->mCPTCUDBUpdated:Z

    if-nez v10, :cond_18

    .line 953
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 956
    :cond_18
    const/4 v10, 0x0

    sput-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->mCPTCUDBUpdated:Z

    .line 959
    new-instance v7, Ljava/io/File;

    const-string v10, "/data/data/com.htc.android.htcime/app_db/tc_mdb_contact_name_tmp"

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 960
    .local v7, tmp:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 961
    new-instance v10, Ljava/io/File;

    const-string v11, "/data/data/com.htc.android.htcime/app_db/tc_mdb_contact_name"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 963
    :cond_19
    const-string v10, "/data/data/com.htc.android.htcime/app_db/tc_mdb_contact_name"

    invoke-direct {p0, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->LoadContactDBToUDB(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 966
    .end local v7           #tmp:Ljava/io/File;
    :pswitch_4
    sget v10, Lcom/htc/android/htcime/HTCIMMData;->mCPUDBNum:I

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPUdbInit(I)I

    .line 968
    sget-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->mCPSCUDBUpdated:Z

    if-nez v10, :cond_1a

    .line 969
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 972
    :cond_1a
    const/4 v10, 0x0

    sput-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->mCPSCUDBUpdated:Z

    .line 975
    new-instance v8, Ljava/io/File;

    const-string v10, "/data/data/com.htc.android.htcime/app_db/sc_mdb_contact_name_tmp"

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 976
    .local v8, tmp1:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 977
    new-instance v10, Ljava/io/File;

    const-string v11, "/data/data/com.htc.android.htcime/app_db/sc_mdb_contact_name"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 980
    :cond_1b
    const-string v10, "/data/data/com.htc.android.htcime/app_db/sc_mdb_contact_name"

    invoke-direct {p0, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->LoadContactDBToUDB(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 991
    .end local v8           #tmp1:Ljava/io/File;
    :sswitch_15
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mMultitapModeOn:Z

    .line 992
    invoke-virtual {p0, p1, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processHWKeyboardToneSymb(Landroid/view/inputmethod/InputConnection;I)I

    goto/16 :goto_0

    .line 998
    :sswitch_16
    invoke-virtual {p0, p1, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processMutliToneSymb(Landroid/view/inputmethod/InputConnection;I)I

    goto/16 :goto_0

    .line 1003
    :sswitch_17
    const/4 v10, 0x1

    if-ne v10, v3, :cond_0

    .line 1004
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPDumpWordSymbInfo()V

    goto/16 :goto_0

    .line 625
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xb -> :sswitch_7
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
        0x15 -> :sswitch_8
        0x18 -> :sswitch_9
        0x1c -> :sswitch_4
        0x1d -> :sswitch_5
        0x27 -> :sswitch_6
        0x30 -> :sswitch_b
        0x40 -> :sswitch_a
        0x41 -> :sswitch_c
        0x42 -> :sswitch_d
        0x43 -> :sswitch_e
        0x44 -> :sswitch_0
        0x45 -> :sswitch_0
        0x46 -> :sswitch_f
        0x47 -> :sswitch_10
        0x48 -> :sswitch_0
        0x49 -> :sswitch_12
        0x4a -> :sswitch_13
        0x4b -> :sswitch_14
        0x4c -> :sswitch_15
        0x4f -> :sswitch_16
        0x50 -> :sswitch_11
        0x60 -> :sswitch_17
    .end sparse-switch

    .line 772
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 948
    :pswitch_data_1
    .packed-switch 0xe6
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public handleNonSmartZYQWERTYKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/CXT9IME$Position;Landroid/view/KeyEvent;ZZ)Z
    .locals 10
    .parameter "InputConnection"
    .parameter "keyIndex"
    .parameter "pos"
    .parameter "event"
    .parameter "landScape"
    .parameter "bMultitap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 5109
    const/4 v0, 0x0

    .line 5110
    .local v0, bHandle:Z
    const/4 v5, 0x0

    .line 5112
    .local v5, status:I
    iget v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->TONE_START_KEY_INDEX:I

    if-ge p2, v6, :cond_1

    .line 5113
    invoke-virtual {p0, p2, p5}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mapQWERTYKdbIndex(IZ)I

    move-result v4

    .line 5118
    .local v4, real_handle_key:I
    :goto_0
    if-gez v4, :cond_2

    .line 5119
    const/4 v0, 0x1

    .line 5237
    .end local v0           #bHandle:Z
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 5115
    .end local v4           #real_handle_key:I
    .restart local v0       #bHandle:Z
    :cond_1
    move v4, p2

    .restart local v4       #real_handle_key:I
    goto :goto_0

    .line 5122
    :cond_2
    packed-switch v4, :pswitch_data_0

    .line 5200
    const/4 v6, 0x5

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v6, v7, :cond_3

    .line 5201
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 5202
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v7, 0x1

    iput v7, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 5205
    :cond_3
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    iput v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mLastTone:I

    .line 5207
    iget v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->TONE_START_KEY_INDEX:I

    if-lt v4, v6, :cond_a

    .line 5208
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    const/4 v7, 0x3

    iget v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->TONE_START_KEY_INDEX:I

    sub-int v8, v4, v8

    aput v8, v6, v7

    .line 5234
    :goto_2
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processZYBuffKeys(Landroid/view/inputmethod/InputConnection;)I

    goto :goto_1

    .line 5127
    :pswitch_1
    const-string v6, "XT9_CIME_J"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleNonSmartZYQWERTYKey]: DELETE, mHTCIMEInfo.mStatus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5129
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    sparse-switch v6, :sswitch_data_0

    .line 5138
    const/4 v2, 0x0

    .line 5139
    .local v2, bUpdated:Z
    const/4 v1, 0x0

    .line 5141
    .local v1, bNoSymbs:Z
    const/4 v3, 0x3

    .local v3, i:I
    :goto_3
    if-ltz v3, :cond_6

    if-nez v2, :cond_6

    .line 5143
    const/4 v6, -0x1

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    aget v7, v7, v3

    if-ne v6, v7, :cond_4

    .line 5141
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 5131
    .end local v1           #bNoSymbs:Z
    .end local v2           #bUpdated:Z
    .end local v3           #i:I
    :sswitch_0
    const/16 v6, 0x43

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->doNormalKey(I)V

    goto :goto_1

    .line 5134
    :sswitch_1
    const/16 v6, 0x43

    invoke-virtual {p0, p1, v6, p4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleSystemKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 5146
    .restart local v1       #bNoSymbs:Z
    .restart local v2       #bUpdated:Z
    .restart local v3       #i:I
    :cond_4
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    const/4 v7, -0x1

    aput v7, v6, v3

    .line 5147
    const/4 v2, 0x1

    .line 5148
    if-nez v3, :cond_5

    const/4 v1, 0x1

    :goto_5
    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 5152
    :cond_6
    if-eqz v2, :cond_0

    .line 5153
    if-eqz v1, :cond_7

    .line 5155
    const-string v6, "XT9_CIME_J"

    const-string v7, "[handleNonSmartZYQWERTYKey]: DELETE no symbols"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5157
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 5158
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    .line 5159
    const-string v6, ""

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    .line 5160
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v7, 0x1

    iput v7, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 5161
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    const-string v9, ""

    invoke-interface {v6, v7, v8, v9}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 5163
    :cond_7
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processZYBuffKeys(Landroid/view/inputmethod/InputConnection;)I

    goto/16 :goto_1

    .line 5172
    .end local v1           #bNoSymbs:Z
    .end local v2           #bUpdated:Z
    .end local v3           #i:I
    :pswitch_2
    const-string v6, "XT9_CIME_J"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleNonSmartZYQWERTYKey]: SPACE, mHTCIMEInfo.mStatus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5174
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v6, v7, :cond_8

    .line 5175
    const/16 v6, 0x3e

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->doNormalKey(I)V

    goto/16 :goto_1

    .line 5177
    :cond_8
    const/16 v6, 0x3e

    invoke-virtual {p0, p1, v6, p4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleSystemKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    goto/16 :goto_1

    .line 5184
    :pswitch_3
    const-string v6, "XT9_CIME_J"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleNonSmartZYQWERTYKey]: ENTER, mHTCIMEInfo.mStatus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5186
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v6, v7, :cond_9

    .line 5187
    const/16 v6, 0x42

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->doNormalKey(I)V

    goto/16 :goto_1

    .line 5189
    :cond_9
    const/16 v6, 0x42

    invoke-virtual {p0, p1, v6, p4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleSystemKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    goto/16 :goto_1

    .line 5211
    :cond_a
    const/4 v6, -0x1

    iget v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mLastTone:I

    if-eq v6, v7, :cond_c

    .line 5212
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    if-ltz v6, :cond_b

    .line 5213
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    .line 5216
    :cond_b
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    .line 5217
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v7, 0x1

    iput v7, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 5219
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 5220
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->ResetZYInputBuffer()V

    .line 5223
    const/4 v6, 0x1

    sput-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->mCPWCLCOMMIT:Z

    .line 5226
    :cond_c
    if-ltz v4, :cond_d

    const/16 v6, 0x17

    if-gt v4, v6, :cond_d

    .line 5227
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    const/4 v7, 0x0

    aput v4, v6, v7

    goto/16 :goto_2

    .line 5228
    :cond_d
    const/16 v6, 0x18

    if-lt v4, v6, :cond_e

    const/16 v6, 0x1b

    if-gt v4, v6, :cond_e

    .line 5229
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    const/4 v7, 0x1

    aput v4, v6, v7

    goto/16 :goto_2

    .line 5231
    :cond_e
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    const/4 v7, 0x2

    aput v4, v6, v7

    goto/16 :goto_2

    .line 5122
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 5129
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public handleQWERTYKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/CXT9IME$Position;Landroid/view/KeyEvent;ZZ)Z
    .locals 6
    .parameter "InputConnection"
    .parameter "keyIndex"
    .parameter "pos"
    .parameter "event"
    .parameter "landScape"
    .parameter "bMultitap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 1397
    const-string v3, "XT9_CIME_J"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleQWERTYKey]: keyIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", landScape="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mHTCIMEInfo.mStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Memory_Optimize:Z

    if-eqz v3, :cond_0

    .line 1402
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mKBDNum:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    if-nez v3, :cond_0

    .line 1403
    const-string v3, "XT9_CIME_J"

    const-string v4, "[handleQWERTYKey]: Dictionaries been released, ignore the key"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    const/4 v0, 0x1

    .line 1585
    :goto_0
    :pswitch_0
    return v0

    .line 1410
    :cond_0
    const/4 v0, 0x0

    .line 1414
    .local v0, bHandle:Z
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mInputType:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mCPZYSmartInput:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_ZY_Phrase_Input:Z

    if-eqz v3, :cond_1

    .line 1418
    invoke-virtual/range {p0 .. p6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleNonSmartZYQWERTYKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/CXT9IME$Position;Landroid/view/KeyEvent;ZZ)Z

    move-result v0

    goto :goto_0

    .line 1422
    :cond_1
    invoke-virtual {p0, p2, p5}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mapQWERTYKdbIndex(IZ)I

    move-result v1

    .line 1424
    .local v1, real_handle_key:I
    if-gez v1, :cond_2

    .line 1425
    const/4 v0, 0x1

    goto :goto_0

    .line 1428
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 1473
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v3, v4, :cond_3

    .line 1474
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 1475
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v4, 0x1

    iput v4, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 1481
    :cond_3
    if-eqz p6, :cond_8

    iget-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mbMultitapDone:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mbPrevMultitap:Z

    if-eqz v3, :cond_8

    .line 1482
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1483
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->RemovPreInputForMultitap(Landroid/view/inputmethod/InputConnection;)Z

    .line 1484
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1489
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput-boolean p6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mbPrevMultitap:Z

    iput-boolean p6, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mMultitapModeOn:Z

    .line 1491
    new-instance v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, p0, v4, v5}, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/CXT9IME;II)V

    invoke-virtual {p0, p1, v1, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processInputKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/CXT9IME$Position;)I

    move-result v2

    .line 1493
    .local v2, status:I
    if-eqz v2, :cond_a

    .line 1495
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearOneSymb()I

    .line 1497
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    move-result v2

    .line 1498
    const-string v3, "XT9_CIME_J"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleQWERTYKey]: nativeXT9CPBuildSelectionList status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    if-nez v2, :cond_b

    .line 1501
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildSpellingListV62(Landroid/view/inputmethod/InputConnection;)I

    move-result v2

    .line 1503
    const-string v3, "XT9_CIME_J"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleQWERTYKey] buildSpellingList staus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    if-nez v2, :cond_b

    .line 1506
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    move-result v2

    .line 1507
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mShowSpellingOnWCL:Z

    if-eqz v3, :cond_9

    const/4 v3, 0x3

    :goto_2
    iput v3, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 1508
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1433
    .end local v2           #status:I
    :pswitch_1
    const-string v3, "XT9_CIME_J"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleQWERTYKey]: DELETE, mHTCIMEInfo.mStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v3, v4, :cond_5

    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9GetInputSymbCount()I

    move-result v3

    if-nez v3, :cond_5

    .line 1436
    const/16 v3, 0x43

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->doNormalKey(I)V

    goto/16 :goto_0

    .line 1438
    :cond_5
    const/16 v3, 0x43

    invoke-virtual {p0, p1, v3, p4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleSystemKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 1444
    :pswitch_2
    const-string v3, "XT9_CIME_J"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleQWERTYKey]: SPACE, mHTCIMEInfo.mStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v3, v4, :cond_6

    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9GetInputSymbCount()I

    move-result v3

    if-nez v3, :cond_6

    .line 1447
    const/16 v3, 0x3e

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->doNormalKey(I)V

    goto/16 :goto_0

    .line 1449
    :cond_6
    const/16 v3, 0x3e

    invoke-virtual {p0, p1, v3, p4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleSystemKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 1457
    :pswitch_3
    const-string v3, "XT9_CIME_J"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleQWERTYKey]: ENTER, mHTCIMEInfo.mStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v3, v4, :cond_7

    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9GetInputSymbCount()I

    move-result v3

    if-nez v3, :cond_7

    .line 1460
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendKeyChar(C)V

    goto/16 :goto_0

    .line 1462
    :cond_7
    const/16 v3, 0x42

    invoke-virtual {p0, p1, v3, p4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleSystemKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 1486
    :cond_8
    if-eqz p6, :cond_4

    .line 1487
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mbMultitapDone:Z

    goto/16 :goto_1

    .line 1507
    .restart local v2       #status:I
    :cond_9
    const/4 v3, 0x4

    goto/16 :goto_2

    .line 1513
    :cond_a
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    move-result v2

    .line 1514
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mShowSpellingOnWCL:Z

    if-eqz v3, :cond_d

    const/4 v3, 0x3

    :goto_3
    iput v3, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 1518
    :cond_b
    iget-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHardwareBPMF:Z

    if-eqz v3, :cond_c

    .line 1519
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetActivePrefixIndex()I

    .line 1522
    :cond_c
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildWCL(Landroid/view/inputmethod/InputConnection;)I

    goto/16 :goto_0

    .line 1514
    :cond_d
    const/4 v3, 0x4

    goto :goto_3

    .line 1428
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleSIPKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "InputConnection"
    .parameter "keyIndex"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 1171
    const-string v5, "XT9_CIME_J"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleSIPKeyDown]: inputContext="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", keyIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mHTCIMEInfo.mStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Memory_Optimize:Z

    if-eqz v5, :cond_0

    .line 1176
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v5, Lcom/htc/android/htcime/HTCIMMData;->mKBDNum:I

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v5, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    if-nez v5, :cond_0

    .line 1177
    const-string v5, "XT9_CIME_J"

    const-string v6, "[handleSIPKeyDown]: Dictionaries been released, ignore the key"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const/4 v1, 0x1

    .line 1310
    :goto_0
    :pswitch_0
    return v1

    .line 1184
    :cond_0
    const/4 v1, 0x0

    .line 1186
    .local v1, bHandle:Z
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 1189
    .local v2, curr_status:I
    invoke-virtual {p0, p2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mapP12KdbIndex(I)I

    move-result v3

    .line 1191
    .local v3, real_handle_key:I
    packed-switch v3, :pswitch_data_0

    .line 1244
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mInputType:I

    if-ne v5, v6, :cond_4

    .line 1245
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v5, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mMultitapDone:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9GetInputSymbCount()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 1246
    const/4 v1, 0x1

    goto :goto_0

    .line 1196
    :pswitch_1
    const-string v5, "XT9_CIME_J"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleSIPKeyDown]: DELETE, mHTCIMEInfo.mStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mMultitapDone:Z

    .line 1200
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v5, v6, :cond_1

    .line 1201
    const/16 v5, 0x43

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->doNormalKey(I)V

    goto :goto_0

    .line 1203
    :cond_1
    const/16 v5, 0x43

    invoke-virtual {p0, p1, v5, p3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleSystemKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 1210
    :pswitch_2
    const-string v5, "XT9_CIME_J"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleSIPKeyDown]: SPACE, mHTCIMEInfo.mStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mMultitapDone:Z

    .line 1214
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v5, v6, :cond_2

    .line 1215
    const/16 v5, 0x3e

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->doNormalKey(I)V

    goto/16 :goto_0

    .line 1217
    :cond_2
    const/16 v5, 0x3e

    invoke-virtual {p0, p1, v5, p3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleSystemKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 1224
    :pswitch_3
    const-string v5, "XT9_CIME_J"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleSIPKeyDown]: ENTER, mHTCIMEInfo.mStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mMultitapDone:Z

    .line 1228
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v5, v6, :cond_3

    .line 1229
    const/16 v5, 0x42

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->doNormalKey(I)V

    goto/16 :goto_0

    .line 1231
    :cond_3
    const/16 v5, 0x42

    invoke-virtual {p0, p1, v5, p3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleSystemKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 1249
    :cond_4
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mMultitapDone:Z

    .line 1250
    new-instance v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, p0, v6, v7}, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/CXT9IME;II)V

    invoke-virtual {p0, p1, v3, v5}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processInputKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/CXT9IME$Position;)I

    move-result v4

    .line 1252
    .local v4, status:I
    if-nez v4, :cond_b

    .line 1253
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mInputType:I

    packed-switch v5, :pswitch_data_1

    .line 1261
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v5, v7, :cond_7

    const/4 v5, 0x3

    :goto_1
    iput v5, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 1262
    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    move-result v4

    .line 1269
    :goto_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->isCompactSpellSupport()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1270
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetActivePrefixIndex()I

    move-result v0

    .line 1271
    .local v0, act_index:I
    if-nez v0, :cond_8

    iget v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Active_index:I

    .line 1276
    :goto_3
    const/4 v5, 0x1

    if-ne v5, v2, :cond_a

    .line 1277
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 1306
    .end local v0           #act_index:I
    :cond_5
    :goto_4
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildWCL(Landroid/view/inputmethod/InputConnection;)I

    goto/16 :goto_0

    .line 1257
    :pswitch_4
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v7, v7, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v5, v7, :cond_6

    const/4 v5, 0x4

    :goto_5
    iput v5, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 1258
    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    move-result v4

    .line 1259
    goto :goto_2

    .line 1257
    :cond_6
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    goto :goto_5

    .line 1261
    :cond_7
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    goto :goto_1

    .line 1271
    .restart local v0       #act_index:I
    :cond_8
    const/4 v0, -0x1

    goto :goto_3

    .line 1273
    .end local v0           #act_index:I
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #act_index:I
    goto :goto_3

    .line 1279
    :cond_a
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v6, 0x2

    const-string v7, ""

    invoke-interface {v5, v6, v0, v7}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    goto :goto_4

    .line 1283
    .end local v0           #act_index:I
    :cond_b
    invoke-virtual {p0, p1, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processCommonErrorHandling(Landroid/view/inputmethod/InputConnection;I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1284
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1287
    :cond_c
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearOneSymb()I

    .line 1289
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    move-result v4

    .line 1290
    const-string v5, "XT9_CIME_J"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleSIPKeyDown]: nativeXT9CPBuildSelectionList status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    if-nez v4, :cond_5

    .line 1293
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildSpellingListV62(Landroid/view/inputmethod/InputConnection;)I

    move-result v4

    .line 1296
    if-nez v4, :cond_5

    .line 1297
    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    move-result v4

    .line 1298
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mShowSpellingOnWCL:Z

    if-eqz v5, :cond_d

    const/4 v5, 0x3

    :goto_6
    iput v5, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 1299
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1298
    :cond_d
    const/4 v5, 0x4

    goto :goto_6

    .line 1191
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1253
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public handleSIPKeyLongPress(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/CXT9IME$Position;Landroid/view/KeyEvent;)Z
    .locals 5
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
    const/4 v4, 0x1

    .line 1327
    const-string v1, "XT9_CIME_J"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleSIPKeyLongPress]: inputContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ucode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    const/4 v0, 0x1

    .line 1331
    .local v0, bHandle:Z
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-eq v4, v1, :cond_0

    .line 1332
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    .line 1333
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 1335
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v4, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 1338
    :cond_0
    int-to-char v1, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    .line 1339
    return v0
.end method

.method public handleSpaceKey(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "InputConnection"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1745
    const/4 v0, 0x1

    .line 1749
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    packed-switch v1, :pswitch_data_0

    .line 1806
    const/4 v0, 0x0

    .line 1810
    :cond_0
    :goto_0
    return v0

    .line 1755
    :pswitch_0
    iget v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_Length:I

    if-lez v1, :cond_1

    .line 1756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_String:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_String:Ljava/lang/String;

    .line 1757
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_String:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    .line 1758
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    .line 1759
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processFinishJob2(Z)V

    .line 1760
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->finishComposingText()V

    .line 1761
    const/4 v0, 0x1

    goto :goto_0

    .line 1763
    :cond_1
    const/4 v0, 0x0

    .line 1766
    goto :goto_0

    .line 1769
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    if-ltz v1, :cond_0

    .line 1770
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    invoke-virtual {p0, p1, v1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->chooseCandidate(Landroid/view/inputmethod/InputConnection;I)I

    goto :goto_0

    .line 1776
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    if-ltz v1, :cond_2

    .line 1777
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    invoke-virtual {p0, p1, v1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->chooseCandidate(Landroid/view/inputmethod/InputConnection;I)I

    .line 1779
    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mCPWCLCOMMIT:Z

    goto :goto_0

    .line 1782
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 1783
    const/4 v0, 0x0

    .line 1784
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v4, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 1785
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    const-string v3, ""

    invoke-interface {v1, v4, v2, v3}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    goto :goto_0

    .line 1791
    :pswitch_3
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    if-ltz v1, :cond_3

    .line 1792
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    .line 1794
    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mCPWCLCOMMIT:Z

    .line 1799
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    .line 1800
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 1801
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v4, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 1802
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    const-string v3, ""

    invoke-interface {v1, v4, v2, v3}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1797
    :cond_3
    const-string v1, " "

    invoke-virtual {p0, p1, v1, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1749
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleSystemKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "InputConnection"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1969
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleSystemKeyDown]:  keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHTCIMEInfo.mStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHTCIMEInfo.mPredictIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    const/4 v0, 0x0

    .line 1974
    .local v0, bRet:Z
    sparse-switch p2, :sswitch_data_0

    .line 2055
    :try_start_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2056
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9GetInputSymbCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2057
    const/4 v0, 0x1

    .line 2068
    :cond_0
    :goto_0
    return v0

    .line 1978
    :sswitch_0
    invoke-virtual {p0, p1, p3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleDelKey(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1980
    goto :goto_0

    .line 1984
    :sswitch_1
    invoke-virtual {p0, p1, p3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleSpaceKey(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1986
    goto :goto_0

    .line 1990
    :sswitch_2
    const-string v2, "XT9_CIME_J"

    const-string v3, "[handleSystemKeyDown]: Enter key"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->getWCLSelectionAtButton()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1994
    invoke-virtual {p0, p1, p3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleDPADCenterKeyUp(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;)Z

    .line 1995
    const/4 v0, 0x1

    goto :goto_0

    .line 1997
    :cond_1
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mWCLId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mDropDownBottomWCL:Z

    if-nez v2, :cond_2

    .line 2001
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->setDefaultWCLText(Ljava/lang/String;I)V

    .line 2002
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellIdx:I

    invoke-virtual {p0, p1, v2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->chooseHWKeyboardToneSymb(Landroid/view/inputmethod/InputConnection;I)Z

    .line 2003
    const/4 v0, 0x1

    goto :goto_0

    .line 2006
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleEnterKey(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2008
    goto :goto_0

    .line 2012
    :sswitch_3
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleSystemKeyDown](KEYCODE_DPAD_RIGHT) mCandsCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWCLDisplay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLDisplay:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLDisplay:Z

    if-eqz v2, :cond_4

    .line 2014
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2, p2}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventDown(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2015
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->moveWCLWord(Landroid/view/inputmethod/InputConnection;Z)V

    .line 2016
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2019
    :cond_4
    const/4 v0, 0x0

    .line 2021
    goto/16 :goto_0

    .line 2025
    :sswitch_4
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleSystemKeyDown](KEYCODE_DPAD_LEFT) mCandsCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWCLDisplay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLDisplay:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLDisplay:Z

    if-eqz v2, :cond_6

    .line 2027
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2, p2}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventDown(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2028
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->moveWCLWord(Landroid/view/inputmethod/InputConnection;Z)V

    .line 2029
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2032
    :cond_6
    const/4 v0, 0x0

    .line 2034
    goto/16 :goto_0

    .line 2037
    :sswitch_5
    invoke-virtual {p0, p1, p3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleDPADUpKey(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2038
    goto/16 :goto_0

    .line 2041
    :sswitch_6
    invoke-virtual {p0, p1, p3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleDPADDownKey(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2042
    goto/16 :goto_0

    .line 2046
    :sswitch_7
    invoke-virtual {p0, p1, p3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleDPADCenterKeyDown(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2048
    goto/16 :goto_0

    .line 2062
    :catch_0
    move-exception v1

    .line 2064
    .local v1, e:Landroid/util/AndroidException;
    invoke-virtual {v1}, Landroid/util/AndroidException;->printStackTrace()V

    goto/16 :goto_0

    .line 1974
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_4
        0x16 -> :sswitch_3
        0x17 -> :sswitch_7
        0x3e -> :sswitch_1
        0x42 -> :sswitch_2
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleSystemKeyUp(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "InputConnection"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2082
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleSystemKeyUp]: inputContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", event"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    const/4 v0, 0x1

    .line 2087
    .local v0, bRet:Z
    packed-switch p2, :pswitch_data_0

    .line 2127
    const/4 v0, 0x0

    .line 2134
    :goto_0
    return v0

    .line 2089
    :pswitch_0
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleDPADCenterKeyUp(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2090
    goto :goto_0

    .line 2129
    :catch_0
    move-exception v1

    .line 2131
    .local v1, e:Landroid/util/AndroidException;
    invoke-virtual {v1}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0

    .line 2087
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method handleUnicodeChar(Landroid/view/inputmethod/InputConnection;CLandroid/view/KeyEvent;)V
    .locals 4
    .parameter "InputConnection"
    .parameter "uni_char"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1100
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-eq v3, v0, :cond_0

    .line 1101
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    .line 1102
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 1103
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v3, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 1104
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    const-string v2, ""

    invoke-interface {v0, v3, v1, v2}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string v1, ""

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1109
    return-void
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 7
    .parameter "htcIMM"

    .prologue
    const/16 v6, 0x96

    const/16 v5, 0x1e

    .line 155
    const-string v2, "XT9_CIME_J"

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

    .line 159
    sget v2, Lcom/htc/android/htcime/HTCIMMData;->IMM_CP_TC_LDB_RES_ID:I

    if-nez v2, :cond_0

    sget v2, Lcom/htc/android/htcime/HTCIMMData;->IMM_CP_SC_LDB_RES_ID:I

    if-nez v2, :cond_0

    .line 190
    :goto_0
    return-void

    .line 162
    :cond_0
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 163
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 165
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/16 v3, 0xff

    new-array v3, v3, [Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iput-object v3, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    .line 167
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    new-array v3, v5, [Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iput-object v3, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    .line 169
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_1

    .line 170
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    new-instance v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    invoke-direct {v3, p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;-><init>(Lcom/htc/android/htcime/XT9IME/CXT9IME;)V

    aput-object v3, v2, v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    new-array v3, v6, [Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iput-object v3, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    .line 174
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_2

    .line 175
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    new-instance v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    invoke-direct {v3, p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;-><init>(Lcom/htc/android/htcime/XT9IME/CXT9IME;)V

    aput-object v3, v2, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 177
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    iput-object v3, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLString:Ljava/lang/String;

    .line 178
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v3, 0x0

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    .line 180
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    .line 182
    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mNewZYInputBuff:[I

    .line 184
    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mbEnableAW:Z

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9InitialV62(Z)I

    move-result v1

    .line 185
    .local v1, status:I
    if-eqz v1, :cond_3

    .line 186
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[init] Initial engine status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPSetPartialSpell()I

    goto :goto_0
.end method

.method insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;II)V
    .locals 5
    .parameter "InputConnection"
    .parameter "str"
    .parameter "HiLiteStart"
    .parameter "HiLiteEnd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x21

    .line 4195
    if-nez p2, :cond_0

    .line 4215
    :goto_0
    return-void

    .line 4197
    :cond_0
    if-gez p3, :cond_1

    if-gez p4, :cond_1

    .line 4198
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 4201
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4202
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4204
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->UNDERLINE_SPAN:Landroid/text/style/UnderlineSpan;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4206
    if-eq p3, p4, :cond_2

    .line 4207
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->SELECTION_SPAN:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0, v1, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4209
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->setComposingText(Landroid/text/Spanned;I)V

    .line 4211
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput-object p2, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mInlineString:Ljava/lang/String;

    .line 4212
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput p3, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mHiliteStart:I

    .line 4213
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput p4, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mHiliteEnd:I

    goto :goto_0
.end method

.method insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V
    .locals 2
    .parameter "InputConnection"
    .parameter "str"
    .parameter "setHilite"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 4188
    if-nez p2, :cond_0

    .line 4191
    :goto_0
    return-void

    .line 4190
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public isCompactSpellSupport()Z
    .locals 2

    .prologue
    .line 4345
    const/16 v0, 0xa04

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v1, Lcom/htc/android/htcime/HTCIMMData;->mKBDNum:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0xb04

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v1, Lcom/htc/android/htcime/HTCIMMData;->mKBDNum:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnlyJianPinSpelling()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4340
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    if-ne v0, v2, :cond_0

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mSpellType:I

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isPhoneticMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4350
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mInputType:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mInputType:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyRegionCorrect(III)I
    .locals 1
    .parameter "keyCode"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public loadCommonCtrlValue()V
    .locals 0

    .prologue
    .line 5416
    return-void
.end method

.method protected mapP12KdbIndex(I)I
    .locals 2
    .parameter "keyIndex"

    .prologue
    .line 1127
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mInputType:I

    packed-switch v1, :pswitch_data_0

    .line 1139
    sget-object v1, Lcom/htc/android/htcime/XT9IME/CXT9IME;->P12_KDBMAP_PINYIN:[I

    aget v0, v1, p1

    .line 1165
    .local v0, ret:I
    :goto_0
    return v0

    .line 1130
    .end local v0           #ret:I
    :pswitch_0
    sget-object v1, Lcom/htc/android/htcime/XT9IME/CXT9IME;->P12_KDBMAP_BPMF:[I

    aget v0, v1, p1

    .line 1131
    .restart local v0       #ret:I
    goto :goto_0

    .line 1133
    .end local v0           #ret:I
    :pswitch_1
    sget-object v1, Lcom/htc/android/htcime/XT9IME/CXT9IME;->P12_KDBMAP_CANGJIE:[I

    aget v0, v1, p1

    .line 1134
    .restart local v0       #ret:I
    goto :goto_0

    .line 1136
    .end local v0           #ret:I
    :pswitch_2
    sget-object v1, Lcom/htc/android/htcime/XT9IME/CXT9IME;->P12_KDBMAP_STROKE:[I

    aget v0, v1, p1

    .line 1137
    .restart local v0       #ret:I
    goto :goto_0

    .line 1127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected mapQWERTYKdbIndex(IZ)I
    .locals 5
    .parameter "keyIndex"
    .parameter "landScape"

    .prologue
    .line 1351
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mapQWERTYKdbIndex]: keyIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", landScape="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/4 v1, -0x1

    .line 1356
    .local v1, ret:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mInputType:I

    packed-switch v2, :pswitch_data_0

    .line 1374
    sget-object v2, Lcom/htc/android/htcime/XT9IME/CXT9IME;->QW_KDBMAP_WWE:[I

    aget v1, v2, p1

    .line 1380
    :goto_0
    return v1

    .line 1360
    :pswitch_0
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v2, :cond_0

    .line 1361
    move v1, p1

    goto :goto_0

    .line 1364
    :cond_0
    sget-object v2, Lcom/htc/android/htcime/XT9IME/CXT9IME;->QW_KDBMAP_BPMF:[I

    aget v1, v2, p1

    .line 1365
    goto :goto_0

    .line 1368
    :pswitch_1
    sget-object v2, Lcom/htc/android/htcime/XT9IME/CXT9IME;->QW_KDBMAP_CJ:[I

    aget v1, v2, p1

    .line 1369
    goto :goto_0

    .line 1371
    :pswitch_2
    if-eqz p2, :cond_1

    sget-object v2, Lcom/htc/android/htcime/XT9IME/CXT9IME;->L_QW_KDBMAP_ST:[I

    aget v1, v2, p1

    .line 1372
    :goto_1
    goto :goto_0

    .line 1371
    :cond_1
    sget-object v2, Lcom/htc/android/htcime/XT9IME/CXT9IME;->QW_KDBMAP_ST:[I

    aget v1, v2, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mapQWERTYKdbIndex]: ArrayIndexOutOfBoundsException (index,landScape,inputtype)=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mInputType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method moveLineWCLWord(Landroid/view/inputmethod/InputConnection;Z)V
    .locals 6
    .parameter "InputConnection"
    .parameter "bMoveUp"

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4109
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLDisplay:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    if-gt v1, v4, :cond_1

    .line 4181
    :cond_0
    :goto_0
    return-void

    .line 4112
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHardwareBPMF:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 4114
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz p2, :cond_2

    const/16 v1, 0x13

    :goto_1
    invoke-virtual {v2, v1}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventDown(I)Z

    goto :goto_0

    :cond_2
    const/16 v1, 0x14

    goto :goto_1

    .line 4117
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 4121
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    invoke-virtual {v1, v2, v5}, Lcom/htc/android/htcime/HTCIMMView;->dispatchTrackballevent(Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;I)V

    .line 4122
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->DROP_DOWN_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    if-ne v1, v2, :cond_4

    .line 4123
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 4128
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    if-ne v1, v2, :cond_9

    .line 4131
    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getUpperLineIndex()I

    move-result v0

    .line 4132
    .local v0, tmp:I
    :goto_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 4133
    const-string v1, "XT9_CIME_J"

    const-string v2, "line index error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4131
    .end local v0           #tmp:I
    :cond_5
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getLowerLineIndex()I

    move-result v0

    goto :goto_2

    .line 4136
    .restart local v0       #tmp:I
    :cond_6
    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    .line 4140
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->CLOSE_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 4141
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v3, v3, v4, v3}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto :goto_0

    .line 4145
    :cond_7
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLId:I

    if-ne v5, v1, :cond_8

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mDropDownBottomWCL:Z

    if-nez v1, :cond_8

    .line 4147
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v0, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellIdx:I

    .line 4149
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellIdx:I

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(I)V

    goto/16 :goto_0

    .line 4152
    :cond_8
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v0, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    .line 4154
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(I)V

    goto/16 :goto_0

    .line 4168
    .end local v0           #tmp:I
    :cond_9
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->CLOSE_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    if-ne v1, v2, :cond_0

    .line 4169
    if-eqz p2, :cond_0

    .line 4170
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 4171
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto/16 :goto_0
.end method

.method moveWCLWord(Landroid/view/inputmethod/InputConnection;I)V
    .locals 4
    .parameter "InputConnection"
    .parameter "idx"

    .prologue
    const/4 v3, 0x0

    .line 4087
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLDisplay:Z

    if-nez v0, :cond_1

    .line 4098
    :cond_0
    :goto_0
    return-void

    .line 4090
    :cond_1
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    if-gt p2, v0, :cond_0

    .line 4092
    const-string v0, "XT9_CIME_J"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[moveWCLWord(2)]:  mWCLIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4094
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput p2, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    .line 4095
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(I)V

    .line 4096
    sget-object v0, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 4097
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto :goto_0
.end method

.method moveWCLWord(Landroid/view/inputmethod/InputConnection;Z)V
    .locals 9
    .parameter "InputConnection"
    .parameter "bMovePrevWord"

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3913
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLDisplay:Z

    if-nez v4, :cond_0

    .line 4077
    :goto_0
    return-void

    .line 3919
    :cond_0
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/htcime/HTCIMMView;->dispatchTrackballevent(Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;I)V

    .line 3920
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v1

    .line 3921
    .local v1, mWCLMode:I
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mWCLId:I

    if-ne v6, v4, :cond_3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mDropDownBottomWCL:Z

    if-nez v4, :cond_3

    move v0, v2

    .line 3924
    .local v0, bFocusOn2LinesWCLTop:Z
    :goto_1
    const-string v4, "XT9_CIME_J"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[moveWCLWord]:  bMovePrevWord="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mWCLDisplay="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLDisplay:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mPredictIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mWCLMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    const-string v4, "XT9_CIME_J"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[moveWCLWord]:  bMovePrevWord="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mWCLDisplay="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLDisplay:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mPredictIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v6, v6, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mWCLMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    const-string v4, "XT9_CIME_J"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[moveWCLWord(1)]:  mWCLIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3929
    packed-switch v1, :pswitch_data_0

    .line 3946
    :cond_1
    :goto_2
    :pswitch_0
    sget-object v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$1;->$SwitchMap$com$htc$android$htcime$XT9IME$XT9IME$WCLSELECTION:[I

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    invoke-virtual {v5}, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 4064
    :cond_2
    :goto_3
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[moveWCLWord]:  setWCLSelByIndex mPredictIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4066
    if-eqz v0, :cond_e

    .line 4067
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellIdx:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(I)V

    goto/16 :goto_0

    .end local v0           #bFocusOn2LinesWCLTop:Z
    :cond_3
    move v0, v3

    .line 3921
    goto/16 :goto_1

    .line 3931
    .restart local v0       #bFocusOn2LinesWCLTop:Z
    :pswitch_1
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->CLOSE_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    if-ne v4, v5, :cond_1

    .line 3932
    sget-object v4, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    goto :goto_2

    .line 3935
    :pswitch_2
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->DROP_DOWN_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    if-ne v4, v5, :cond_1

    .line 3936
    sget-object v4, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    goto :goto_2

    .line 3939
    :pswitch_3
    sget-object v4, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    goto :goto_2

    .line 3942
    :pswitch_4
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    goto/16 :goto_0

    .line 3949
    :pswitch_5
    const-string v4, "XT9_CIME_J"

    const-string v5, "[moveWCLWord]:  mWCLSELECTION is WORD"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    if-eqz p2, :cond_9

    .line 3953
    if-eqz v0, :cond_6

    .line 3955
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellIdx:I

    if-ne v2, v7, :cond_4

    .line 3956
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellIdx:I

    goto :goto_3

    .line 3958
    :cond_4
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellIdx:I

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellIdx:I

    add-int/lit8 v2, v2, -0x1

    :goto_4
    iput v2, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellIdx:I

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellIdx:I

    goto :goto_4

    .line 3964
    :cond_6
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    if-ne v2, v7, :cond_7

    .line 3965
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    goto/16 :goto_3

    .line 3967
    :cond_7
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    add-int/lit8 v2, v2, -0x1

    :goto_5
    iput v2, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    goto/16 :goto_3

    :cond_8
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    goto :goto_5

    .line 3972
    :cond_9
    if-eqz v0, :cond_c

    .line 3974
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v5, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellIdx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellIdx:I

    .line 3977
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellIdx:I

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    if-lt v4, v5, :cond_a

    .line 3978
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v5, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellIdx:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellIdx:I

    .line 3980
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v4

    if-ne v4, v2, :cond_b

    .line 3981
    sget-object v4, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->DROP_DOWN_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 3982
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4, v2, v3, v3, v3}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    .line 4016
    :cond_a
    :goto_6
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[moveWCLWord]:  New mPredictIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3985
    :cond_b
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v4

    if-ne v4, v8, :cond_a

    .line 3988
    sget-object v4, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->CLOSE_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 3989
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4, v3, v3, v2, v3}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto :goto_6

    .line 3996
    :cond_c
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v5, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    .line 3999
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    if-lt v4, v5, :cond_a

    .line 4000
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v5, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    .line 4002
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v4

    if-ne v4, v2, :cond_d

    .line 4003
    sget-object v4, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->DROP_DOWN_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 4004
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4, v2, v3, v3, v3}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto :goto_6

    .line 4007
    :cond_d
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v4

    if-ne v4, v8, :cond_a

    .line 4010
    sget-object v4, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->CLOSE_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 4011
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4, v3, v3, v2, v3}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto :goto_6

    .line 4022
    :pswitch_6
    const-string v2, "XT9_CIME_J"

    const-string v4, "[moveWCLWord]:  mWCLSELECTION is DROP_DOWN_BUTTON"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4023
    if-eqz p2, :cond_2

    .line 4024
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 4025
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2, v3, v3, v3, v3}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto/16 :goto_3

    .line 4042
    :pswitch_7
    const-string v2, "XT9_CIME_J"

    const-string v4, "[moveWCLWord]:  mWCLSELECTION is CLOSE_BUTTON"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4044
    if-eqz p2, :cond_2

    .line 4047
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 4048
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2, v3, v3, v3, v3}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto/16 :goto_3

    .line 4053
    :pswitch_8
    const-string v2, "XT9_CIME_J"

    const-string v4, "[moveWCLWord]:  mWCLSELECTION is WCL_ADDWORD_BTN"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4054
    if-eqz p2, :cond_2

    .line 4055
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 4056
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2, v3, v3, v3, v3}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    goto/16 :goto_3

    .line 4069
    :cond_e
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(I)V

    goto/16 :goto_0

    .line 3929
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 3946
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public native nativeInitial()I
.end method

.method public native nativeRelease()V
.end method

.method public native nativeXT9CPBuildSelectionList()I
.end method

.method public native nativeXT9CPCJBuildSelectionList()I
.end method

.method public native nativeXT9CPClearActivePrefix()I
.end method

.method public native nativeXT9CPClearContext()I
.end method

.method public native nativeXT9CPClearPartialSpell()I
.end method

.method public native nativeXT9CPCommitSelection()I
.end method

.method public native nativeXT9CPCommitUDBBuffer()I
.end method

.method public native nativeXT9CPDumpWordSymbInfo()V
.end method

.method public native nativeXT9CPEnableComponent(Z)I
.end method

.method public native nativeXT9CPFlushContext()I
.end method

.method public native nativeXT9CPGetActivePrefixIndex()I
.end method

.method public native nativeXT9CPGetCharSpellString(CZI)Ljava/lang/String;
.end method

.method public native nativeXT9CPGetKdbNum()I
.end method

.method public native nativeXT9CPGetLdbNum()I
.end method

.method public native nativeXT9CPGetPhrase(I)I
.end method

.method public native nativeXT9CPGetPrefix(I)I
.end method

.method public native nativeXT9CPGetPrefixCount()I
.end method

.method public native nativeXT9CPGetRawSpell()I
.end method

.method public native nativeXT9CPGetSelection()I
.end method

.method public native nativeXT9CPGetSpellString(I)Ljava/lang/String;
.end method

.method public native nativeXT9CPGetSpellStringFromBuffer([C)Ljava/lang/String;
.end method

.method public native nativeXT9CPGetSpellV62()I
.end method

.method public native nativeXT9CPGetSpellingsCount()I
.end method

.method public native nativeXT9CPGetToneOptions()I
.end method

.method public native nativeXT9CPInitInputModeAndKdb(II)I
.end method

.method public native nativeXT9CPLdbInit(I)I
.end method

.method public native nativeXT9CPProcessBPMFTone(I)I
.end method

.method public native nativeXT9CPProcessSymb(II)I
.end method

.method public native nativeXT9CPSelectPhrase(I)I
.end method

.method public native nativeXT9CPSetActivePrefix(I)I
.end method

.method public native nativeXT9CPSetContext(Ljava/lang/String;)I
.end method

.method public native nativeXT9CPSetInputMode(I)I
.end method

.method public native nativeXT9CPSetPartialSpell()I
.end method

.method public native nativeXT9CPUdbActive()I
.end method

.method public native nativeXT9CPUdbAddPhrase(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native nativeXT9CPUdbBackup(ILjava/lang/String;)I
.end method

.method public native nativeXT9CPUdbDeletePhrase(Ljava/lang/String;)I
.end method

.method public native nativeXT9CPUdbGetPhrase(I)I
.end method

.method public native nativeXT9CPUdbGetPhraseCount()I
.end method

.method public native nativeXT9CPUdbInit(I)I
.end method

.method public native nativeXT9CPUdbReset()I
.end method

.method public native nativeXT9CPUdbRestore(IZ)I
.end method

.method public native nativeXT9CPUnselectAll()I
.end method

.method public native nativeXT9CPUnselectPhrase()I
.end method

.method public native nativeXT9ClearAllSymbs()I
.end method

.method public native nativeXT9ClearOneSymb()I
.end method

.method public native nativeXT9ClearSpecSymb(C)I
.end method

.method public native nativeXT9GetExactWord()Ljava/lang/String;
.end method

.method public native nativeXT9GetInputSymbCount()I
.end method

.method public native nativeXT9InitialV62(Z)I
.end method

.method public native nativeXT9IsMohuPairEnabled(I)I
.end method

.method public native nativeXT9KdbInit(I)I
.end method

.method public native nativeXT9MultiTapWordDone()V
.end method

.method public native nativeXT9ProcessKey(I)I
.end method

.method public native nativeXT9SetAmbigiousMode()I
.end method

.method public native nativeXT9SetMohuPairs(I)I
.end method

.method public native nativeXT9SetMultiTapMode()I
.end method

.method public native nativeXT9SetNameInput(Z)I
.end method

.method public native nativeXT9SetSmartPunct(Z)I
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 267
    const-string v0, "XT9_CIME_J"

    const-string v1, "[onDestroy]: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method

.method public onInterrupt()V
    .locals 3

    .prologue
    .line 235
    const-string v1, "XT9_CIME_J"

    const-string v2, "[onInterrupt]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    .line 239
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processFinishJob(Z)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/util/AndroidException;
    invoke-virtual {v0}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    .line 284
    const-string v0, "XT9_CIME_J"

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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v8, 0x0

    .line 289
    .local v8, bHandle:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 290
    .local v10, keyCode:I
    const/high16 v0, -0x100

    and-int v7, v10, v0

    .line 291
    .local v7, HiKeyCode:I
    const v0, 0xffffff

    and-int v2, v10, v0

    .line 296
    .local v2, LoKeyCode:I
    if-eqz v7, :cond_0

    .line 298
    sparse-switch v7, :sswitch_data_0

    .line 333
    :goto_0
    return v8

    .line 301
    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v0, v2, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleFNKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    move-result v8

    .line 302
    goto :goto_0

    .line 304
    :sswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v0, v2, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleCPFNKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    move-result v8

    .line 305
    goto :goto_0

    .line 307
    :sswitch_2
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;

    const/4 v0, -0x1

    const/4 v4, -0x1

    invoke-direct {v3, p0, v0, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/CXT9IME;II)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleQWERTYKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/CXT9IME$Position;Landroid/view/KeyEvent;ZZ)Z

    move-result v8

    .line 308
    goto :goto_0

    .line 310
    :sswitch_3
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;

    const/4 v0, -0x1

    const/4 v4, -0x1

    invoke-direct {v3, p0, v0, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/CXT9IME;II)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleQWERTYKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/CXT9IME$Position;Landroid/view/KeyEvent;ZZ)Z

    move-result v8

    .line 311
    goto :goto_0

    .line 313
    :sswitch_4
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;

    const/4 v0, -0x1

    const/4 v4, -0x1

    invoke-direct {v3, p0, v0, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/CXT9IME;II)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleQWERTYKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/CXT9IME$Position;Landroid/view/KeyEvent;ZZ)Z

    move-result v8

    .line 314
    goto :goto_0

    .line 316
    :sswitch_5
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v0, v2, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleSIPKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    move-result v8

    .line 317
    goto :goto_0

    .line 319
    :sswitch_6
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    int-to-char v1, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleUnicodeChar(Landroid/view/inputmethod/InputConnection;CLandroid/view/KeyEvent;)V

    .line 320
    const/4 v8, 0x1

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v0, v2, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleSystemKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_0

    .line 328
    :catch_0
    move-exception v9

    .line 330
    .local v9, e:Landroid/util/AndroidException;
    invoke-virtual {v9}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0

    .line 298
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_5
        0x3000000 -> :sswitch_2
        0x7000000 -> :sswitch_0
        0x8000000 -> :sswitch_3
        0xf000000 -> :sswitch_6
        0x17000000 -> :sswitch_1
        0x48000000 -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyDown(Landroid/view/KeyEvent;II)Z
    .locals 12
    .parameter "event"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v11, 0x1

    .line 358
    const-string v0, "XT9_CIME_J"

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

    .line 360
    const/4 v8, 0x0

    .line 364
    .local v8, bHandle:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 365
    .local v10, keyCode:I
    const/high16 v0, -0x100

    and-int v7, v10, v0

    .line 366
    .local v7, HiKeyCode:I
    const v0, 0xffffff

    and-int v2, v10, v0

    .line 371
    .local v2, LoKeyCode:I
    if-eqz v7, :cond_0

    .line 373
    sparse-switch v7, :sswitch_data_0

    .line 400
    :goto_0
    return v11

    .line 376
    :sswitch_0
    :try_start_0
    const-string v0, "XT9_CIME_J"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onKeyDown]: QWERTY Key_ID="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;

    invoke-direct {v3, p0, p2, p3}, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/CXT9IME;II)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleQWERTYKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/CXT9IME$Position;Landroid/view/KeyEvent;ZZ)Z

    move-result v8

    .line 378
    goto :goto_0

    .line 380
    :sswitch_1
    const-string v0, "XT9_CIME_J"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onKeyDown]: QWERTY Key_ID="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;

    invoke-direct {v3, p0, p2, p3}, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/CXT9IME;II)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleQWERTYKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/CXT9IME$Position;Landroid/view/KeyEvent;ZZ)Z

    move-result v8

    .line 382
    goto :goto_0

    .line 384
    :sswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;

    invoke-direct {v1, p0, p2, p3}, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;-><init>(Lcom/htc/android/htcime/XT9IME/CXT9IME;II)V

    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleSIPKeyLongPress(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/CXT9IME$Position;Landroid/view/KeyEvent;)Z

    move-result v8

    .line 385
    goto :goto_0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v0, v2, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleSystemKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_0

    .line 395
    :catch_0
    move-exception v9

    .line 397
    .local v9, e:Landroid/util/AndroidException;
    invoke-virtual {v9}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0

    .line 373
    nop

    :sswitch_data_0
    .sparse-switch
        0x3000000 -> :sswitch_0
        0x4000000 -> :sswitch_2
        0x8000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 338
    const/4 v2, 0x0

    .line 342
    .local v2, bHandle:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 343
    .local v3, keyCode:I
    const/high16 v4, -0x100

    and-int v0, v3, v4

    .line 344
    .local v0, HiKeyCode:I
    const v4, 0xffffff

    and-int v1, v3, v4

    .line 347
    .local v1, LoKeyCode:I
    if-nez v0, :cond_0

    .line 349
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v4, v1, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleSystemKeyUp(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 352
    :cond_0
    return v2
.end method

.method public onKeyUp(Landroid/view/KeyEvent;II)Z
    .locals 1
    .parameter "event"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 405
    const/4 v0, 0x1

    return v0
.end method

.method public onUpdateSelection(IIIIIII)I
    .locals 5
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "editWordLen"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5372
    const/4 v1, -0x1

    .line 5373
    .local v1, retVal:I
    const/4 v0, 0x0

    .line 5374
    .local v0, ignore:Z
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mCPWCLCOMMIT:Z

    if-ne v2, v3, :cond_3

    .line 5375
    const/4 v0, 0x1

    .line 5397
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0, v4, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->getWCLCount(IZ)I

    move-result v2

    if-gtz v2, :cond_1

    if-lez p7, :cond_2

    .line 5401
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v2

    iget-boolean v2, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->passUpdateSelection:Z

    if-nez v2, :cond_2

    .line 5408
    const/high16 v1, 0x71d

    .line 5411
    :cond_2
    return v1

    .line 5377
    :cond_3
    sub-int v2, p4, p3

    if-lez v2, :cond_6

    .line 5378
    sub-int v2, p1, p5

    if-lez v2, :cond_4

    sub-int v2, p2, p6

    if-lez v2, :cond_4

    if-gt p2, p4, :cond_4

    .line 5380
    const/4 v0, 0x1

    goto :goto_0

    .line 5381
    :cond_4
    sub-int v2, p6, p5

    if-lez v2, :cond_5

    if-ne p1, p2, :cond_5

    .line 5383
    const/4 v0, 0x1

    goto :goto_0

    .line 5384
    :cond_5
    sub-int v2, p5, p1

    if-ne v2, v3, :cond_0

    sub-int v2, p6, p2

    if-ne v2, v3, :cond_0

    if-le p6, p4, :cond_0

    .line 5386
    const/4 v0, 0x1

    goto :goto_0

    .line 5390
    :cond_6
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    invoke-virtual {p0, v4, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->getWCLCount(IZ)I

    move-result v2

    if-gtz v2, :cond_0

    .line 5392
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public preProcess()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method processCommonErrorHandling(Landroid/view/inputmethod/InputConnection;I)Z
    .locals 9
    .parameter "InputConnection"
    .parameter "error_status_code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 3495
    const/4 v0, 0x0

    .line 3497
    .local v0, bHandled:Z
    const-string v5, "XT9_CIME_J"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[processCommonErrorHandling]: error_code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3499
    packed-switch p2, :pswitch_data_0

    .line 3545
    :goto_0
    return v0

    .line 3502
    :pswitch_0
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v5, Lcom/htc/android/htcime/HTCIMMData;->mKBDNum:I

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 3522
    :sswitch_0
    const/4 v4, 0x1

    .line 3524
    .local v4, spell_type:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9GetExactWord()Ljava/lang/String;

    move-result-object v1

    .line 3525
    .local v1, buffer:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetSpellStringFromBuffer([C)Ljava/lang/String;

    move-result-object v3

    .line 3527
    .local v3, sp_buffer:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9GetInputSymbCount()I

    move-result v2

    .line 3532
    .local v2, hilite_count:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 3533
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, p1, v3, v8, v5}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;II)V

    .line 3535
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 3536
    const/4 v0, 0x1

    goto :goto_0

    .line 3505
    .end local v1           #buffer:Ljava/lang/String;
    .end local v2           #hilite_count:I
    .end local v3           #sp_buffer:Ljava/lang/String;
    .end local v4           #spell_type:I
    :sswitch_1
    const/16 v4, 0xb

    .line 3507
    .restart local v4       #spell_type:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9GetExactWord()Ljava/lang/String;

    move-result-object v1

    .line 3508
    .restart local v1       #buffer:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetSpellStringFromBuffer([C)Ljava/lang/String;

    move-result-object v3

    .line 3510
    .restart local v3       #sp_buffer:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9GetInputSymbCount()I

    move-result v2

    .line 3512
    .restart local v2       #hilite_count:I
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v5, v5, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mMultitapDone:Z

    if-nez v5, :cond_1

    .line 3513
    add-int/lit8 v2, v2, -0x1

    .line 3515
    :cond_1
    invoke-virtual {p0, p1, v3, v8, v2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;II)V

    .line 3516
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 3517
    const/4 v0, 0x1

    .line 3519
    goto :goto_0

    .line 3499
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
    .end packed-switch

    .line 3502
    :sswitch_data_0
    .sparse-switch
        0xe04 -> :sswitch_0
        0x1104 -> :sswitch_1
    .end sparse-switch
.end method

.method processFinishJob(Z)V
    .locals 4
    .parameter "ReleaseEngine"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2597
    if-nez p1, :cond_0

    .line 2598
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 2599
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-boolean v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLDisplay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mEditWordLen:I

    if-lez v0, :cond_1

    .line 2600
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    .line 2601
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imActiveCandLen:I

    .line 2612
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processFinishJob2(Z)V

    .line 2613
    return-void

    .line 2604
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput v3, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imActiveCandLen:I

    .line 2607
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9GetInputSymbCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2608
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string v1, ""

    invoke-virtual {p0, v0, v1, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method processFinishJob2(Z)V
    .locals 5
    .parameter "ReleaseEngine"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2618
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 2619
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->reset()V

    .line 2620
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->ResetZYInputBuffer()V

    .line 2621
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 2623
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Memory_Optimize:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2624
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeRelease()V

    .line 2625
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput v4, Lcom/htc/android/htcime/HTCIMMData;->mKBDResID:I

    .line 2626
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput v4, Lcom/htc/android/htcime/HTCIMMData;->mKBDNum:I

    .line 2627
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput v4, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBResID:I

    .line 2628
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput v4, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    .line 2630
    :cond_0
    return-void
.end method

.method processHWKeyboardToneSymb(Landroid/view/inputmethod/InputConnection;I)I
    .locals 4
    .parameter "InputConnection"
    .parameter "tone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2397
    const/4 v0, 0x0

    .line 2400
    .local v0, status:I
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v1, v2, :cond_0

    .line 2401
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 2402
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v2, 0x1

    iput v2, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 2405
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    packed-switch v1, :pswitch_data_0

    .line 2427
    :goto_0
    :pswitch_0
    return v0

    .line 2408
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->ZY_TOMB:[C

    add-int/lit8 v2, p2, -0x1

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v3, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;II)V

    goto :goto_0

    .line 2413
    :pswitch_2
    iget-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mbMultitapDone:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mbPrevXT9status:I

    if-nez v1, :cond_1

    .line 2414
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2415
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleDelKey(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;)Z

    .line 2416
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processMultiTapToneSymb(Landroid/view/inputmethod/InputConnection;I)I

    move-result v0

    .line 2417
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 2420
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->processMultiTapToneSymb(Landroid/view/inputmethod/InputConnection;I)I

    move-result v0

    .line 2422
    goto :goto_0

    .line 2405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method processInputKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/CXT9IME$Position;)I
    .locals 5
    .parameter "InputConnection"
    .parameter "keyIndex"
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 2154
    const/4 v0, 0x0

    .line 2156
    .local v0, status:I
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput p2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mLastInputKeyIndex:I

    .line 2159
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v2, v3, :cond_0

    .line 2160
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 2161
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v3, 0x1

    iput v3, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 2164
    :cond_0
    invoke-virtual {p0, p2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ProcessKey(I)I

    move-result v0

    .line 2166
    if-nez v0, :cond_1

    .line 2167
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    move-result v0

    .line 2170
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processInputKey]:  nativeXT9CPBuildSelectionList status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mShowRawSpellIfInvalid:Z

    if-nez v2, :cond_2

    move v1, v0

    .line 2182
    .end local v0           #status:I
    .local v1, status:I
    :goto_0
    return v1

    .line 2176
    .end local v1           #status:I
    .restart local v0       #status:I
    :cond_1
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processInputKey]:  nativeXT9ProcessKey FAIL status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildSpellingListV62(Landroid/view/inputmethod/InputConnection;)I

    move-result v0

    .line 2180
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processInputKey]:  buildSpellingListV62 status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 2182
    .end local v0           #status:I
    .restart local v1       #status:I
    goto :goto_0
.end method

.method processMultiTapToneSymb(Landroid/view/inputmethod/InputConnection;I)I
    .locals 6
    .parameter "InputConnection"
    .parameter "tone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 2432
    const/4 v1, 0x0

    .line 2433
    .local v1, status:I
    const/4 v0, 0x1

    .line 2440
    .local v0, bShowWCL:Z
    invoke-virtual {p0, p2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPProcessBPMFTone(I)I

    move-result v1

    .line 2441
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processMultiTapToneSymb]: nativeXT9CPProcessBPMFTone status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    if-nez v1, :cond_2

    .line 2444
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    move-result v1

    .line 2446
    iput v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mbPrevXT9status:I

    .line 2448
    if-eqz v1, :cond_0

    .line 2449
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processMultiTapToneSymb]: nativeXT9CPBuildSelectionList Fail! Status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearOneSymb()I

    .line 2451
    const/4 v0, 0x0

    .line 2454
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildSpellingListV62(Landroid/view/inputmethod/InputConnection;)I

    move-result v1

    .line 2456
    if-nez v1, :cond_3

    .line 2457
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    move-result v1

    .line 2459
    if-eqz v0, :cond_1

    .line 2460
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string v5, ""

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 2461
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildWCL(Landroid/view/inputmethod/InputConnection;)I

    .line 2467
    :cond_1
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mbMultitapDone:Z

    .line 2505
    :cond_2
    return v1

    .line 2464
    :cond_3
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processMultiTapToneSymb]: buildSpellingList Fail! Status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method processMutliToneSymb(Landroid/view/inputmethod/InputConnection;I)I
    .locals 12
    .parameter "InputConnection"
    .parameter "tone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 2283
    const-string v0, "[processMutliToneSymb]"

    .line 2285
    .local v0, DbgFunTag:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2287
    .local v7, status:I
    const/4 v2, 0x0

    .line 2289
    .local v2, bRebuildSpelling:Z
    const-string v8, "XT9_CIME_J"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "tone = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    const/4 v8, 0x5

    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v8, v9, :cond_0

    .line 2293
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 2294
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v9, 0x1

    iput v9, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 2297
    :cond_0
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    packed-switch v8, :pswitch_data_0

    :goto_0
    move v8, v7

    .line 2391
    :goto_1
    return v8

    .line 2301
    :pswitch_0
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    if-nez v8, :cond_1

    .line 2302
    const/4 v8, 0x0

    goto :goto_1

    .line 2304
    :cond_1
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v9, 0x0

    iput v9, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    .line 2306
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetActivePrefixIndex()I

    .line 2307
    iget v6, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Active_index:I

    .line 2309
    .local v6, old_prefix_index:I
    const-string v8, "XT9_CIME_J"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Previous prefix index="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetPrefixCount()I

    move-result v8

    if-ge v3, v8, :cond_8

    .line 2312
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPSetActivePrefix(I)I

    .line 2314
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetToneOptions()I

    move-result v7

    .line 2316
    if-eqz v7, :cond_2

    .line 2317
    const/4 v8, 0x0

    iput-char v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Tone_Option:C

    .line 2319
    :cond_2
    const-string v8, "XT9_CIME_J"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Prefix["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] option ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-char v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Tone_Option:C

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    iget-char v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Tone_Option:C

    and-int v1, v8, p2

    .line 2323
    .local v1, availavle_tone:I
    if-eqz v1, :cond_7

    .line 2324
    const/4 v4, 0x0

    .local v4, j:I
    :goto_3
    const/4 v8, 0x5

    if-ge v4, v8, :cond_7

    .line 2325
    const/4 v8, 0x1

    shl-int v5, v8, v4

    .line 2327
    .local v5, mask:I
    and-int v8, v1, v5

    if-eqz v8, :cond_5

    .line 2328
    if-nez v2, :cond_3

    .line 2329
    const/4 v2, 0x1

    .line 2330
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    const/4 v9, 0x0

    iput v9, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    .line 2333
    :cond_3
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPSetActivePrefix(I)I

    move-result v7

    .line 2334
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPProcessBPMFTone(I)I

    move-result v7

    .line 2335
    const-string v8, "XT9_CIME_J"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Add Tone["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] Status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    if-nez v7, :cond_5

    .line 2338
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    move-result v7

    .line 2340
    if-eqz v7, :cond_6

    .line 2341
    const-string v8, "XT9_CIME_J"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "nativeXT9CPBuildSelectionList Fail! Status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearOneSymb()I

    .line 2358
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    .line 2324
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2343
    :cond_6
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPGetSpellV62()I

    move-result v7

    .line 2344
    if-nez v7, :cond_4

    .line 2346
    const-string v8, "XT9_CIME_J"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Spell["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_String:Ljava/lang/String;

    const/16 v11, 0x7c

    invoke-static {v10, v11}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->removeChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    aget-object v8, v8, v9

    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Spell_String:Ljava/lang/String;

    const/16 v10, 0x7c

    invoke-static {v9, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->removeChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    .line 2349
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    aget-object v8, v8, v9

    iput v3, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mIndex:I

    .line 2350
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    aget-object v8, v8, v9

    const/4 v9, 0x5

    iput v9, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mType:I

    .line 2351
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v9, v9, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    aget-object v8, v8, v9

    add-int/lit8 v9, v4, 0x1

    iput v9, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mTone:I

    .line 2352
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v9, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    goto/16 :goto_4

    .line 2311
    .end local v4           #j:I
    .end local v5           #mask:I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 2365
    .end local v1           #availavle_tone:I
    :cond_8
    if-eqz v2, :cond_9

    .line 2366
    const-string v8, "XT9_CIME_J"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " CHK1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mIndex:I

    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPSetActivePrefix(I)I

    .line 2369
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mTone:I

    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPProcessBPMFTone(I)I

    .line 2370
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    .line 2372
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->XT9_Active_index:I

    .line 2373
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    const/16 v9, 0x7c

    invoke-static {v8, v9}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->removeChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget-object v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p0, p1, v8, v9, v10}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;II)V

    .line 2374
    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    .line 2375
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildWCL_HWZY(Landroid/view/inputmethod/InputConnection;)I

    goto/16 :goto_0

    .line 2377
    :cond_9
    const/16 v8, 0xff

    if-ne v8, v6, :cond_a

    .line 2378
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPClearActivePrefix()I

    .line 2382
    :goto_5
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    .line 2383
    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    goto/16 :goto_0

    .line 2380
    :cond_a
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPSetActivePrefix(I)I

    goto :goto_5

    .line 2297
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method processSyllDelimiterSymb(Landroid/view/inputmethod/InputConnection;)I
    .locals 5
    .parameter "InputConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 2511
    const/4 v1, 0x0

    .line 2512
    .local v1, status:I
    const/4 v0, 0x1

    .line 2514
    .local v0, bShowWCL:Z
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    packed-switch v2, :pswitch_data_0

    .line 2593
    :cond_0
    :goto_0
    return v1

    .line 2519
    :pswitch_0
    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPProcessSymb(II)I

    move-result v1

    .line 2520
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processSyllDelimiterSymb] nativeXT9CPProcessSymb status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v4, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    if-nez v1, :cond_0

    .line 2523
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    move-result v1

    .line 2525
    if-eqz v1, :cond_1

    .line 2526
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processSyllDelimiterSymb]: nativeXT9CPBuildSelectionList Fail! Status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearOneSymb()I

    .line 2528
    const/4 v0, 0x0

    .line 2531
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildSpellingListV62(Landroid/view/inputmethod/InputConnection;)I

    move-result v1

    .line 2533
    if-nez v1, :cond_2

    .line 2534
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    move-result v1

    .line 2536
    if-eqz v0, :cond_0

    .line 2537
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildWCL(Landroid/view/inputmethod/InputConnection;)I

    goto :goto_0

    .line 2540
    :cond_2
    const-string v2, "XT9_CIME_J"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processSyllDelimiterSymb]: buildSpellingList Fail! Status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2514
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method processToneSymb(Landroid/view/inputmethod/InputConnection;I)I
    .locals 10
    .parameter "InputConnection"
    .parameter "tone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2187
    const/4 v8, 0x0

    .line 2188
    .local v8, status:I
    const/4 v7, 0x1

    .line 2191
    .local v7, bShowWCL:Z
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    if-ne v0, v1, :cond_0

    .line 2192
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->clearWCL()V

    .line 2193
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput v5, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 2196
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    move v9, v8

    .line 2278
    .end local v8           #status:I
    .local v9, status:I
    :goto_1
    return v9

    .line 2199
    .end local v9           #status:I
    .restart local v8       #status:I
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->ZY_TOMB:[C

    add-int/lit8 v1, p2, -0x1

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->insertInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2205
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mCPZYSmartInput:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_ZY_Phrase_Input:Z

    if-eqz v0, :cond_2

    .line 2206
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->TONE_START_KEY_INDEX:I

    add-int v2, v0, p2

    .local v2, keyIndex:I
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    .line 2207
    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->handleNonSmartZYQWERTYKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/CXT9IME$Position;Landroid/view/KeyEvent;ZZ)Z

    move v9, v8

    .line 2208
    .end local v8           #status:I
    .restart local v9       #status:I
    goto :goto_1

    .line 2211
    .end local v2           #keyIndex:I
    .end local v9           #status:I
    .restart local v8       #status:I
    :cond_2
    invoke-virtual {p0, p2}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPProcessBPMFTone(I)I

    move-result v8

    .line 2213
    if-nez v8, :cond_1

    .line 2214
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPBuildSelectionList()I

    move-result v8

    .line 2216
    if-eqz v8, :cond_3

    .line 2217
    const-string v0, "XT9_CIME_J"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[processToneSymb]: nativeXT9CPBuildSelectionList Fail! Status="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearOneSymb()I

    .line 2219
    const/4 v7, 0x0

    .line 2222
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildSpellingListV62(Landroid/view/inputmethod/InputConnection;)I

    move-result v8

    .line 2224
    if-nez v8, :cond_4

    .line 2225
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildPhraseListV62(I)I

    move-result v8

    .line 2227
    if-eqz v7, :cond_1

    .line 2228
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v1, 0x3

    const-string v3, ""

    invoke-interface {v0, v1, v5, v3}, Lcom/htc/android/htcime/Intf/IHTCSIP;->notify(IILjava/lang/String;)V

    .line 2229
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->buildWCL(Landroid/view/inputmethod/InputConnection;)I

    goto :goto_0

    .line 2232
    :cond_4
    const-string v0, "XT9_CIME_J"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[processToneSymb]: buildSpellingList Fail! Status="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
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
    .line 4219
    if-nez p3, :cond_0

    .line 4222
    :goto_0
    return-void

    .line 4221
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p3, v1}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public setInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 0
    .parameter "inputContext"

    .prologue
    .line 588
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 589
    return-void
.end method

.method public startInput()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 194
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mCPEngineInit:Z

    if-nez v4, :cond_0

    .line 195
    iget-boolean v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mbEnableAW:Z

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9InitialV62(Z)I

    move-result v1

    .line 196
    .local v1, status:I
    if-eqz v1, :cond_3

    .line 197
    const-string v4, "XT9_CIME_J"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[startInput] Initial engine status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v1           #status:I
    :cond_0
    :goto_0
    const-string v4, "XT9_CIME_J"

    const-string v5, "[startInput]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v5, 0x8

    iput v5, v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrPriIMID:I

    .line 211
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 213
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9ClearAllSymbs()I

    .line 214
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    invoke-virtual {v4}, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->reset()V

    .line 215
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;

    iput-boolean v2, v4, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mMultitapModeOn:Z

    .line 217
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mbMultitapDone:Z

    .line 219
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->ResetZYInputBuffer()V

    .line 222
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v4}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v4

    iget v0, v4, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 223
    .local v0, sip_id:I
    const/16 v4, 0xd

    if-eq v4, v0, :cond_1

    const/4 v4, 0x6

    if-eq v4, v0, :cond_1

    const/16 v4, 0xb

    if-eq v4, v0, :cond_1

    const/4 v4, 0x4

    if-ne v4, v0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mAutoAddSyllableSip:Z

    .line 225
    return-void

    .line 199
    .end local v0           #sip_id:I
    .restart local v1       #status:I
    :cond_3
    const-string v4, "XT9_CIME_J"

    const-string v5, "[startInput] Initial engine success."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sput-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mCPEngineInit:Z

    .line 201
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME;->nativeXT9CPSetPartialSpell()I

    goto :goto_0
.end method

.method public unsetInputConnection()V
    .locals 2

    .prologue
    .line 594
    const-string v0, "XT9_CIME_J"

    const-string v1, "[unsetInputConnection]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 597
    return-void
.end method

.method updateUDBTimestamp(I)V
    .locals 6
    .parameter "udb_num"

    .prologue
    .line 5244
    const-string v1, ""

    .line 5246
    .local v1, key:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 5261
    :goto_0
    :pswitch_0
    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 5262
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5264
    .local v0, ap_context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/htcime/plugin/util/CSUtils;->getServerTime(Landroid/content/Context;)J

    move-result-wide v3

    .line 5266
    .local v3, timestampCS:J
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 5267
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5269
    .end local v0           #ap_context:Landroid/content/Context;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    .end local v3           #timestampCS:J
    :cond_0
    return-void

    .line 5248
    :pswitch_1
    const-string v1, "udb_normal_tc_timestamp"

    .line 5249
    goto :goto_0

    .line 5251
    :pswitch_2
    const-string v1, "udb_normal_sc_timestamp"

    .line 5252
    goto :goto_0

    .line 5254
    :pswitch_3
    const-string v1, "udb_normal_hwtc_timestamp"

    .line 5255
    goto :goto_0

    .line 5257
    :pswitch_4
    const-string v1, "udb_normal_hwsc_timestamp"

    goto :goto_0

    .line 5246
    nop

    :pswitch_data_0
    .packed-switch 0xe0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
