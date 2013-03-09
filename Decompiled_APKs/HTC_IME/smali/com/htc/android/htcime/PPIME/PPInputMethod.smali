.class public Lcom/htc/android/htcime/PPIME/PPInputMethod;
.super Ljava/lang/Object;
.source "PPInputMethod.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCIM;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/PPIME/PPInputMethod$2;,
        Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;
    }
.end annotation


# static fields
.field private static final DBG_CLASS:Ljava/lang/String; = "PPInputMethod "

.field private static final DBG_TAG:Ljava/lang/String; = "PPLOG"

.field private static final DOUBLE_SPACE_INTERVAL:J = 0x3e8L

.field private static final DUMP_LOG:Z = false

.field public static final END_OF_CANDIDATE_LIST:I = 0xffff

.field public static final END_OF_SYMBOL_CANDIDATE_LIST:I = 0xfffc

.field public static final END_OF_XT9_CANDIDATE_LIST:I = 0xfffe

.field public static final FN_SET_XT9_WORD_COMPLETE:I = 0xfffd

#the value of this static final field might be set in the static constructor
.field private static final HILITE_COLOR:I = 0x0

.field private static final IM_LABEL:Ljava/lang/String; = ""

.field private static final MSG_DELAY_SHOW_AUTO_COMPLETE:I = 0x2

.field private static final MSG_SHOW_AUTO_COMPLETE:I = 0x1

.field private static final MULTITAP_EXPIRE_TIMEOUT:I = 0x4b0

.field public static final SET_RECOGNIZE_RESOLUTION:I = 0xfffa

.field public static final SET_RECOGNIZE_TYPE:I = 0xfffb

.field private static final SHOW_AUTO_COMPLETE_DELAY_TIME:I = 0x64

.field protected static final WCL_BTN_OFFSET_CLOSE:I = -0x2

.field protected static final WCL_BTN_OFFSET_NONE:I = -0x1

.field private static mLastSpaceTime:J


# instance fields
.field XT9_Phrase_Length:I

.field XT9_Phrase_String:Ljava/lang/String;

.field private mAfterFindPhrase:Z

.field private mAppName:Ljava/lang/String;

.field private mAppToken:Landroid/os/IBinder;

.field protected mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

.field mHandler:Landroid/os/Handler;

.field mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

.field private mInputContext:Landroid/view/inputmethod/InputConnection;

.field private mLastSubmitPhrase:Ljava/lang/String;

.field private mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

.field private mSpanSB:Landroid/text/SpannableStringBuilder;

.field protected mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

.field private mXT9:Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;

.field private m_CPLangType:I

.field private m_arrayStringNWPWCL:[Ljava/lang/String;

.field private m_arrayStringWCL:[Ljava/lang/String;

.field private m_bApplyWordComplete:Z

.field private m_bEnterWhenWCLNotEmpty:Z

.field private m_bHandle:Z

.field private m_bIsAddingCandidate:Z

.field private m_bIsPhraseInWCL:Z

.field private m_bIsRecognizeFullWidth:Z

.field private m_bIsRecognizeWCL:Z

.field private m_bIsWritingTimeOut:Z

.field private m_bRecognizerHasBeenInitialized:Z

.field private m_bUserAct:Z

.field private m_nAcCandidateCount:I

.field private m_nAcPredictIdx:I

.field private m_nBreakRecognize:I

.field private m_nCandidateCount:I

.field private m_nNWPCandidateCount:I

.field private m_nPredictIdx:I

.field private m_strAutoCompleteCandidate:Ljava/lang/String;

.field private m_strCandidate:Ljava/lang/String;

.field private m_strNWPCandidate:Ljava/lang/String;

.field private m_strXT9UserInput:Ljava/lang/String;

.field mapLandPPSIPKeyIDToKeyCode:[I

.field mapPortPPHighSIPKeyIDToKeyCode:[I

.field mapPortPPSIPKeyIDToKeyCode:[I

.field final strFullPunctuationList:Ljava/lang/String;

.field final strHalfPunctuationList:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    sget v0, Lcom/htc/android/htcime/HTCIMMData;->IMM_COLOR_SELECTION:I

    sput v0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->HILITE_COLOR:I

    .line 79
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSpaceTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCIMData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCIMData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    .line 86
    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 87
    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 89
    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    .line 90
    iput v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    .line 91
    iput v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nNWPCandidateCount:I

    .line 92
    iput v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    .line 93
    iput v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcCandidateCount:I

    .line 94
    iput v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    .line 95
    iput-boolean v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsAddingCandidate:Z

    .line 96
    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strNWPCandidate:Ljava/lang/String;

    .line 98
    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strAutoCompleteCandidate:Ljava/lang/String;

    .line 99
    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 100
    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringNWPWCL:[Ljava/lang/String;

    .line 103
    iput-boolean v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bRecognizerHasBeenInitialized:Z

    .line 107
    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mXT9:Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;

    .line 111
    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mInputContext:Landroid/view/inputmethod/InputConnection;

    .line 112
    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mAppName:Ljava/lang/String;

    .line 113
    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mAppToken:Landroid/os/IBinder;

    .line 115
    iput v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nBreakRecognize:I

    .line 116
    iput-boolean v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bEnterWhenWCLNotEmpty:Z

    .line 118
    iput-boolean v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bHandle:Z

    .line 120
    iput-boolean v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bUserAct:Z

    .line 122
    iput v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_CPLangType:I

    .line 123
    iput-boolean v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsRecognizeWCL:Z

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    .line 127
    iput-boolean v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsRecognizeFullWidth:Z

    .line 164
    iput-boolean v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mAfterFindPhrase:Z

    .line 172
    sget-object v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    .line 437
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mapPortPPSIPKeyIDToKeyCode:[I

    .line 442
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mapPortPPHighSIPKeyIDToKeyCode:[I

    .line 446
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mapLandPPSIPKeyIDToKeyCode:[I

    .line 1784
    new-instance v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod$1;-><init>(Lcom/htc/android/htcime/PPIME/PPInputMethod;)V

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHandler:Landroid/os/Handler;

    .line 2073
    const-string v0, ",?!:;"

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->strHalfPunctuationList:Ljava/lang/String;

    .line 2074
    const-string v0, "\uff0c\uff1f\uff01\uff1a\uff1b"

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->strFullPunctuationList:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    const-string v1, "HandWriting"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imName:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput v3, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 180
    return-void

    .line 437
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x8t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x20t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 442
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x20t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 446
    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x20t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private AnalyzeXT9Candidate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "strPattern"
    .parameter "strCandidate"

    .prologue
    .line 2589
    const/4 v1, 0x0

    .line 2590
    .local v1, strBufAnalyzed:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 2591
    .local v2, strResult:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2593
    .local v0, nPatternLength:I
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_2

    .line 2594
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1           #strBufAnalyzed:Ljava/lang/StringBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2599
    .restart local v1       #strBufAnalyzed:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 2600
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, p1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2601
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2606
    :cond_1
    return-object v2

    .line 2595
    :cond_2
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_0

    .line 2596
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1           #strBufAnalyzed:Ljava/lang/StringBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v1       #strBufAnalyzed:Ljava/lang/StringBuffer;
    goto :goto_0
.end method

.method private LoadContactDBToUDB(Ljava/lang/String;)Z
    .locals 8
    .parameter "path"

    .prologue
    .line 2796
    const/4 v0, 0x1

    .line 2800
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPUdbReset()I

    .line 2804
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2807
    .local v3, file:Ljava/io/File;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v7, "utf-16le"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2809
    .local v1, buf:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, s:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 2811
    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPUdbAddPhrase(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2815
    .end local v1           #buf:Ljava/io/BufferedReader;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2817
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

    .line 2820
    .end local v2           #e:Ljava/io/IOException;
    :goto_1
    return v0

    .line 2813
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
    .locals 11
    .parameter "res_id"
    .parameter "db_type"

    .prologue
    const/4 v10, 0x0

    .line 2828
    const/4 v7, 0x0

    .line 2831
    .local v7, afd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2836
    :goto_0
    if-nez v7, :cond_0

    .line 2860
    :goto_1
    return v10

    .line 2832
    :catch_0
    move-exception v8

    .line 2833
    .local v8, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v0, "PPLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadDictionary openRawResourceFd fail res_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2841
    .end local v8           #ex:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    const/4 v9, -0x1

    .line 2844
    .local v9, ret:I
    :try_start_1
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeLoadDictionary(Ljava/io/FileDescriptor;JJI)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v9

    .line 2854
    :goto_2
    :try_start_2
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 2860
    :goto_3
    if-gez v9, :cond_1

    move v0, v10

    :goto_4
    move v10, v0

    goto :goto_1

    .line 2845
    :catch_1
    move-exception v8

    .line 2846
    .local v8, ex:Ljava/io/IOException;
    const-string v0, "PPLOG"

    const-string v1, "nativeLoadDictionary failed:"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2847
    .end local v8           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 2848
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "PPLOG"

    const-string v1, "nativeLoadDictionary failed:"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2849
    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v8

    .line 2850
    .local v8, ex:Ljava/lang/IllegalStateException;
    const-string v0, "PPLOG"

    const-string v1, "nativeLoadDictionary failed:"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2860
    .end local v8           #ex:Ljava/lang/IllegalStateException;
    :cond_1
    const/4 v0, 0x1

    goto :goto_4

    .line 2856
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method private XT9CandidateRemoveUL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "str"

    .prologue
    const/4 v4, -0x1

    .line 2620
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 2621
    .local v2, rstr:Ljava/lang/String;
    const/16 v3, 0x3c

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2622
    .local v1, autoCmp_Start:I
    const/16 v3, 0x3e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2623
    .local v0, autoCmp_End:I
    if-eq v4, v1, :cond_0

    if-eq v4, v0, :cond_0

    if-ge v1, v0, :cond_0

    .line 2624
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object p1, v2

    .line 2628
    .end local p1
    :goto_0
    return-object p1

    .line 2626
    .restart local p1
    :cond_0
    move-object v2, p1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/PPIME/PPInputMethod;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/PPIME/PPInputMethod;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strAutoCompleteCandidate:Ljava/lang/String;

    return-object v0
.end method

.method private appendNewPhraseToUDB(Ljava/lang/String;)V
    .locals 7
    .parameter "newPhrase"

    .prologue
    const/4 v6, 0x0

    .line 2744
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 2746
    .local v0, last_submit_strlen:I
    const-string v3, "[OVDEBUG]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[addNewPhraseToUDB](mLastSubmitPhrase,newPhrase)=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2750
    .local v1, nCode:I
    const/16 v3, 0x4e00

    if-lt v1, v3, :cond_1

    const v3, 0x9fff

    if-gt v1, v3, :cond_1

    .line 2751
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 2752
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2753
    .local v2, udb_string:Ljava/lang/String;
    const-string v3, "[OVDEBUG]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[addNewPhraseToUDB]SUBMIT UDB_STRING="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPUdbAddPhrase(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPCommitUDBBuffer()I

    .line 2757
    .end local v2           #udb_string:Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    .line 2761
    :goto_0
    return-void

    .line 2759
    :cond_1
    const-string v3, ""

    iput-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    goto :goto_0
.end method

.method private confirmCandidateInEditor(Landroid/view/inputmethod/InputConnection;)V
    .locals 7
    .parameter "inputContext"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1898
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1907
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    iget v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 1909
    iget v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_CPLangType:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_CPLangType:I

    if-ge v1, v6, :cond_0

    .line 1910
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    iget v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->appendNewPhraseToUDB(Ljava/lang/String;)V

    .line 1911
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1912
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput v5, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    .line 1917
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    iget v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1919
    .local v0, charSel:C
    const/16 v1, 0x61

    if-lt v0, v1, :cond_1

    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    :cond_1
    const/16 v1, 0x41

    if-lt v0, v1, :cond_4

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_4

    .line 1921
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->setFirstCandidateType(I)V

    .line 1928
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 1930
    .end local v0           #charSel:C
    :cond_3
    return-void

    .line 1924
    .restart local v0       #charSel:C
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v1, v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->setFirstCandidateType(I)V

    goto :goto_0
.end method

.method private confirmCandidateInEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .locals 3
    .parameter "inputContext"
    .parameter "configmStr"

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-direct {p0, p2}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9CandidateRemoveUL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 1978
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 1980
    return-void
.end method

.method private confirmCandidateToEngine()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1940
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 1948
    iget v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_CPLangType:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_CPLangType:I

    if-ge v1, v3, :cond_0

    .line 1949
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    iget v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->appendNewPhraseToUDB(Ljava/lang/String;)V

    .line 1952
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    iget v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1954
    .local v0, charSel:C
    const/16 v1, 0x61

    if-lt v0, v1, :cond_1

    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    :cond_1
    const/16 v1, 0x41

    if-lt v0, v1, :cond_4

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_4

    .line 1956
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->setFirstCandidateType(I)V

    .line 1962
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 1964
    .end local v0           #charSel:C
    :cond_3
    return-void

    .line 1959
    .restart local v0       #charSel:C
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->setFirstCandidateType(I)V

    goto :goto_0
.end method

.method private confirmUserSelection(Landroid/view/inputmethod/InputConnection;I)V
    .locals 11
    .parameter "inputContext"
    .parameter "nIndex"

    .prologue
    const/16 v10, 0x65

    const/16 v9, 0x14

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 2095
    const/4 v3, 0x0

    .line 2096
    .local v3, strPhrase:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2097
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 2100
    .local v4, strSelect:Ljava/lang/String;
    sget-object v5, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    iput-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    .line 2103
    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    if-ne v5, v8, :cond_3

    .line 2106
    iput p2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    .line 2107
    iget v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v7, v7

    if-ge v5, v7, :cond_0

    .line 2109
    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2110
    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    aget-object v7, v7, v8

    invoke-interface {v5, v7}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 2113
    :cond_0
    const-string v5, ""

    invoke-direct {p0, p1, v5}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->replaceCandidateToEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 2114
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 2229
    :cond_1
    :goto_0
    iput-boolean v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bUserAct:Z

    .line 2230
    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput v6, v5, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    .line 2232
    :cond_2
    return-void

    .line 2117
    :cond_3
    iput p2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    .line 2120
    iget-boolean v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bRecognizerHasBeenInitialized:Z

    if-nez v5, :cond_7

    .line 2121
    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    sget v7, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->cur_db:I

    invoke-virtual {v5, v7}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->init(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bRecognizerHasBeenInitialized:Z

    .line 2128
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    array-length v5, v5

    if-ge p2, v5, :cond_2

    if-ltz p2, :cond_2

    .line 2129
    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    aget-object v4, v5, p2

    .line 2132
    iget-boolean v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsRecognizeWCL:Z

    if-eqz v5, :cond_5

    .line 2133
    invoke-direct {p0, v4}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->setFullWidthByRecognizeChar(Ljava/lang/String;)V

    .line 2135
    :cond_5
    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v4, v7}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 2138
    invoke-direct {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmCandidateToEngine()V

    .line 2143
    iget-boolean v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bRecognizerHasBeenInitialized:Z

    if-eqz v5, :cond_f

    .line 2147
    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->recognizePhrase(I)Z

    .line 2148
    iput-boolean v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mAfterFindPhrase:Z

    .line 2149
    iput v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    .line 2152
    iget v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_CPLangType:I

    if-ltz v5, :cond_b

    iget v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_CPLangType:I

    const/4 v7, 0x2

    if-ge v5, v7, :cond_b

    .line 2153
    const/4 v2, 0x0

    .line 2155
    .local v2, ret:I
    iget-boolean v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsRecognizeWCL:Z

    if-eqz v5, :cond_8

    .line 2156
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPSetContext(Ljava/lang/String;)I

    move-result v2

    .line 2157
    invoke-virtual {p0, v9, v6, v6}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->buildPhraseList(III)I

    .line 2158
    iput-boolean v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsRecognizeWCL:Z

    .line 2202
    .end local v2           #ret:I
    :cond_6
    :goto_2
    iget v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-lez v5, :cond_e

    .line 2204
    iput-boolean v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsPhraseInWCL:Z

    .line 2207
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL(I)V

    .line 2208
    invoke-direct {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->createWCL()V

    .line 2210
    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v5, :cond_d

    move v5, v6

    :goto_3
    iput v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    .line 2213
    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    .line 2214
    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMMView;->handleFullWCLClose()V

    goto/16 :goto_0

    .line 2123
    :cond_7
    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->getRecognizeType()I

    move-result v5

    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    sget v7, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->cur_db:I

    if-eq v5, v7, :cond_4

    .line 2124
    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    sget v7, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->cur_db:I

    invoke-virtual {v5, v7}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->setRecognizeType(I)V

    goto/16 :goto_1

    .line 2162
    .restart local v2       #ret:I
    :cond_8
    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableContNxtPredict:Z

    if-eqz v5, :cond_6

    .line 2163
    invoke-virtual {p0, p2}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPSelectPhrase(I)I

    move-result v2

    .line 2164
    if-eqz v2, :cond_9

    if-ne v10, v2, :cond_6

    .line 2167
    :cond_9
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPGetSelection()I

    move-result v2

    .line 2168
    if-ne v10, v2, :cond_a

    .line 2169
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPCommitSelection()I

    .line 2170
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9ClearAllSymbs()I

    .line 2173
    :cond_a
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPBuildSelectionList()I

    move-result v2

    .line 2174
    if-nez v2, :cond_6

    .line 2175
    invoke-virtual {p0, v9, v6, v6}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->buildPhraseList(III)I

    goto :goto_2

    .line 2186
    .end local v2           #ret:I
    :cond_b
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    if-ge v1, v9, :cond_c

    .line 2187
    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v5, v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->getPhraseString(I)Ljava/lang/String;

    move-result-object v3

    .line 2189
    if-eqz v3, :cond_c

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 2190
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2191
    const-string v5, "\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2192
    iget v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    .line 2186
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2197
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    goto/16 :goto_2

    .line 2210
    .end local v1           #i:I
    :cond_d
    const/4 v5, -0x1

    goto/16 :goto_3

    .line 2218
    :cond_e
    iput-boolean v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsPhraseInWCL:Z

    .line 2219
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    goto/16 :goto_0

    .line 2224
    :cond_f
    iput-boolean v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsPhraseInWCL:Z

    .line 2225
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    goto/16 :goto_0
.end method

.method private createNWPWCL(I)V
    .locals 8
    .parameter "nCandIndex"

    .prologue
    const/16 v7, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1621
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-ne v3, v6, :cond_0

    .line 1653
    :goto_0
    return-void

    .line 1623
    :cond_0
    const/4 v2, 0x0

    .line 1624
    .local v2, strPhrase:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1626
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    aget-object v3, v3, p1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1627
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    iget-object v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->recognizePhrase(I)Z

    .line 1629
    :cond_1
    iget v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_CPLangType:I

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_CPLangType:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 1630
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPSetContext(Ljava/lang/String;)I

    .line 1631
    invoke-virtual {p0, v7, v6, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->buildPhraseList(III)I

    .line 1651
    :goto_1
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strNWPCandidate:Ljava/lang/String;

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringNWPWCL:[Ljava/lang/String;

    .line 1652
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strNWPCandidate:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v3, v6, v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->setWCLText(ILjava/lang/String;I)V

    goto :goto_0

    .line 1635
    :cond_2
    iput v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nNWPCandidateCount:I

    .line 1636
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v7, :cond_3

    .line 1637
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v3, v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->getPhraseString(I)Ljava/lang/String;

    move-result-object v2

    .line 1638
    if-eqz v2, :cond_3

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1640
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1641
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1642
    const-string v3, "\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1643
    iget v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nNWPCandidateCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nNWPCandidateCount:I

    .line 1636
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1649
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strNWPCandidate:Ljava/lang/String;

    goto :goto_1
.end method

.method private createWCL()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1591
    iput v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    .line 1592
    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v6, :cond_2

    move v0, v5

    .line 1594
    .local v0, defaultNextWordidx:I
    :goto_0
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsPhraseInWCL:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsWritingTimeOut:Z

    if-nez v8, :cond_3

    .end local v0           #defaultNextWordidx:I
    :cond_0
    :goto_1
    invoke-virtual {v6, v5, v7, v0}, Lcom/htc/android/htcime/HTCIMEService;->setWCLText(ILjava/lang/String;I)V

    .line 1595
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 1599
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v6

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsRecognizeFullWidth:Z

    if-eqz v6, :cond_5

    :cond_1
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsRecognizeWCL:Z

    if-eqz v6, :cond_5

    .line 1601
    const/4 v3, 0x0

    .line 1602
    .local v3, nLength:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1603
    .local v1, fullstr:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 1605
    .local v4, strtmp:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 1606
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    array-length v3, v6

    .line 1607
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_5

    .line 1609
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1610
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1613
    :goto_3
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 1614
    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1607
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1592
    .end local v1           #fullstr:Ljava/lang/StringBuffer;
    .end local v2           #i:I
    .end local v3           #nLength:I
    .end local v4           #strtmp:Ljava/lang/String;
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .restart local v0       #defaultNextWordidx:I
    :cond_3
    move v0, v5

    .line 1594
    goto :goto_1

    .line 1612
    .end local v0           #defaultNextWordidx:I
    .restart local v1       #fullstr:Ljava/lang/StringBuffer;
    .restart local v2       #i:I
    .restart local v3       #nLength:I
    .restart local v4       #strtmp:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/htc/android/htcime/util/SIPUtils;->halfToFullWidthChar(I)I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1618
    .end local v1           #fullstr:Ljava/lang/StringBuffer;
    .end local v2           #i:I
    .end local v3           #nLength:I
    .end local v4           #strtmp:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private handleHandwriteChar(Landroid/view/inputmethod/InputConnection;CLandroid/view/KeyEvent;)V
    .locals 12
    .parameter "inputContext"
    .parameter "uni_char"
    .parameter "event"

    .prologue
    const/16 v6, 0xe1

    const/16 v1, 0xe0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 626
    const/4 v3, 0x0

    .line 627
    .local v3, buf:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 632
    .local v5, strXT9Analyzed:Ljava/lang/String;
    const v7, 0xfffe

    if-ne p2, v7, :cond_4

    .line 633
    iget v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nBreakRecognize:I

    if-lez v6, :cond_1

    .line 634
    iput v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nBreakRecognize:I

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iput-boolean v10, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bApplyWordComplete:Z

    .line 637
    iput-boolean v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsAddingCandidate:Z

    .line 638
    invoke-direct {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->createWCL()V

    .line 642
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strXT9UserInput:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v7, v7, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strXT9UserInput:Ljava/lang/String;

    .line 643
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strXT9UserInput:Ljava/lang/String;

    invoke-direct {p0, p1, v6, v10}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->insertCandidateToEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    .line 644
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    iget v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9InputChar(C)V

    .line 645
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9GetCandCount()I

    move-result v6

    iput v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    .line 646
    const-string v6, ""

    iput-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 647
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-ge v4, v6, :cond_3

    .line 648
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strXT9UserInput:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9GetCandString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->AnalyzeXT9Candidate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 649
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 650
    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-ge v6, v7, :cond_2

    .line 651
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 647
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 654
    :cond_3
    iput-boolean v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsPhraseInWCL:Z

    .line 655
    invoke-direct {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->createWCL()V

    goto/16 :goto_0

    .line 658
    .end local v4           #i:I
    :cond_4
    const v7, 0xffff

    if-ne p2, v7, :cond_9

    .line 670
    iput-boolean v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsPhraseInWCL:Z

    .line 671
    iput-boolean v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bApplyWordComplete:Z

    .line 672
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->recognizeCandidate(Landroid/view/inputmethod/InputConnection;)V

    .line 675
    sget v6, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContinuousInputMode:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 678
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmCandidateInEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 680
    :cond_5
    invoke-direct {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->createWCL()V

    .line 683
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsWritingTimeOut:Z

    if-eqz v6, :cond_6

    .line 684
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    iget v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v6, v6, v7

    invoke-direct {p0, p1, v6, v9}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->insertCandidateToEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    .line 686
    :cond_6
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v6}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v6

    iget v0, v6, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 687
    .local v0, HWRId:I
    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->sFeature_WCL_With_Close_Btn:Z

    if-nez v6, :cond_0

    const/4 v6, 0x7

    if-eq v0, v6, :cond_8

    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v6, :cond_7

    const/16 v6, 0x11

    if-eq v0, v6, :cond_8

    :cond_7
    const/4 v6, 0x3

    if-ne v0, v6, :cond_0

    :cond_8
    iget-boolean v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsWritingTimeOut:Z

    if-eqz v6, :cond_0

    .line 691
    invoke-direct {p0, v9}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->createNWPWCL(I)V

    goto/16 :goto_0

    .line 694
    .end local v0           #HWRId:I
    :cond_9
    const v7, 0xfffa

    if-ne p2, v7, :cond_a

    .line 695
    invoke-direct {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->setPanelResolution()V

    goto/16 :goto_0

    .line 696
    :cond_a
    const v7, 0xfffc

    if-ne p2, v7, :cond_b

    .line 697
    iput-boolean v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsPhraseInWCL:Z

    .line 698
    iput-boolean v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bApplyWordComplete:Z

    .line 699
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->recognizeSymbolCandidate(Landroid/view/inputmethod/InputConnection;)V

    .line 700
    invoke-direct {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->createWCL()V

    .line 709
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->isHasStopSign()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 710
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    iget v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v6, v6, v7

    invoke-direct {p0, p1, v6, v9}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->insertCandidateToEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 711
    :cond_b
    const v7, 0xfffb

    if-ne p2, v7, :cond_0

    .line 712
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    sget v8, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->cur_db:I

    invoke-virtual {v7, v8}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->setRecognizeType(I)V

    .line 715
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    invoke-virtual {v7, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v7

    iput v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_CPLangType:I

    .line 717
    iget v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_CPLangType:I

    if-nez v7, :cond_f

    .line 720
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    if-eq v1, v7, :cond_d

    .line 721
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    .line 722
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v7, Lcom/htc/android/htcime/HTCIMMData;->IMM_CP_TC_LDB_RES_ID:I

    sput v7, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBResID:I

    .line 724
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBResID:I

    invoke-direct {p0, v7, v11}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->LoadDictionary(II)Z

    move-result v2

    .line 726
    .local v2, bRet:Z
    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mCPEngineInit:Z

    if-nez v7, :cond_c

    .line 727
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9InitialV62(Z)I

    .line 728
    sput-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->mCPEngineInit:Z

    .line 731
    :cond_c
    if-eqz v2, :cond_d

    .line 732
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPLdbInit(I)I

    .line 736
    .end local v2           #bRet:Z
    :cond_d
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v7, :cond_12

    .line 737
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->sIsIMECursorAdapter:Z

    if-eqz v7, :cond_e

    const/16 v1, 0xe6

    .line 742
    .local v1, XT9_UDB_Num:I
    :cond_e
    :goto_2
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPUdbInit(I)I

    .line 743
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPSetInputMode(I)I

    .line 745
    const/16 v7, 0xe6

    if-ne v7, v1, :cond_f

    .line 746
    const-string v7, "/data/data/com.htc.android.htcime/app_db/sc_mdb_contact_name"

    invoke-direct {p0, v7}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->LoadContactDBToUDB(Ljava/lang/String;)Z

    .line 747
    .end local v1           #XT9_UDB_Num:I
    :cond_f
    iget v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_CPLangType:I

    if-ne v10, v7, :cond_0

    .line 751
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    if-eq v6, v7, :cond_11

    .line 753
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput v6, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    .line 754
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v7, Lcom/htc/android/htcime/HTCIMMData;->IMM_CP_SC_LDB_RES_ID:I

    sput v7, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBResID:I

    .line 756
    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mCPEngineInit:Z

    if-nez v7, :cond_10

    .line 757
    sget v7, Lcom/htc/android/htcime/HTCIMMData;->IMM_CP_TC_LDB_RES_ID:I

    invoke-direct {p0, v7, v11}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->LoadDictionary(II)Z

    .line 758
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9InitialV62(Z)I

    .line 759
    sput-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->mCPEngineInit:Z

    .line 762
    :cond_10
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBResID:I

    invoke-direct {p0, v7, v11}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->LoadDictionary(II)Z

    move-result v2

    .line 764
    .restart local v2       #bRet:Z
    if-eqz v2, :cond_11

    .line 765
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPLdbInit(I)I

    .line 769
    .end local v2           #bRet:Z
    :cond_11
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v7, :cond_15

    .line 770
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->sIsIMECursorAdapter:Z

    if-eqz v7, :cond_14

    const/16 v1, 0xe7

    .line 775
    .restart local v1       #XT9_UDB_Num:I
    :goto_3
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPUdbInit(I)I

    .line 776
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPSetInputMode(I)I

    .line 778
    const/16 v6, 0xe7

    if-ne v6, v1, :cond_0

    .line 779
    const-string v6, "/data/data/com.htc.android.htcime/app_db/sc_mdb_contact_name"

    invoke-direct {p0, v6}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->LoadContactDBToUDB(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 739
    .end local v1           #XT9_UDB_Num:I
    :cond_12
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->sIsIMECursorAdapter:Z

    if-eqz v7, :cond_13

    const/16 v1, 0xe6

    .restart local v1       #XT9_UDB_Num:I
    :goto_4
    goto :goto_2

    .end local v1           #XT9_UDB_Num:I
    :cond_13
    const/16 v1, 0xe4

    goto :goto_4

    :cond_14
    move v1, v6

    .line 770
    goto :goto_3

    .line 772
    :cond_15
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->sIsIMECursorAdapter:Z

    if-eqz v6, :cond_16

    const/16 v1, 0xe7

    .restart local v1       #XT9_UDB_Num:I
    :goto_5
    goto :goto_3

    .end local v1           #XT9_UDB_Num:I
    :cond_16
    const/16 v1, 0xe5

    goto :goto_5
.end method

.method private handleKeyboardKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "inputContext"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1021
    const/4 v1, 0x1

    .line 1023
    .local v1, bRet:Z
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bUserAct:Z

    .line 1028
    sparse-switch p2, :sswitch_data_0

    .line 1195
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 1196
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmCandidateInEditor(Landroid/view/inputmethod/InputConnection;)V

    .line 1197
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsPhraseInWCL:Z

    .line 1198
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 1200
    :cond_0
    const/4 v1, 0x0

    .line 1203
    :cond_1
    :goto_0
    return v1

    .line 1033
    :sswitch_0
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v7, v7, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v7}, Lcom/htc/android/htcime/HTCIMMView;->getWCLSelectionAtButton()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v7, v7, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/16 v8, 0x17

    invoke-virtual {v7, v8}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventUp(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1035
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    sget-object v8, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->DROP:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    if-ne v7, v8, :cond_1

    .line 1036
    sget-object v7, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    iput-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    goto :goto_0

    .line 1040
    :cond_2
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 1041
    iget v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    invoke-direct {p0, p1, v7}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmUserSelection(Landroid/view/inputmethod/InputConnection;I)V

    goto :goto_0

    .line 1046
    :cond_3
    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsRecognizeWCL:Z

    if-nez v7, :cond_4

    .line 1049
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 1052
    :cond_4
    iget v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-lez v7, :cond_5

    .line 1054
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmCandidateInEditor(Landroid/view/inputmethod/InputConnection;)V

    .line 1055
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 1056
    iget-boolean v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bApplyWordComplete:Z

    if-eqz v7, :cond_1

    .line 1057
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9DeleteAllChars()V

    goto :goto_0

    .line 1062
    :cond_5
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Lcom/htc/android/htcime/HTCIMEService;->sendKeyChar(C)V

    goto :goto_0

    .line 1067
    :sswitch_1
    iget-boolean v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bApplyWordComplete:Z

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-lez v7, :cond_8

    .line 1068
    const/4 v6, 0x0

    .line 1069
    .local v6, strXT9Analyzed:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strXT9UserInput:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strXT9UserInput:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1070
    .local v5, strTmp:Ljava/lang/String;
    iput-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strXT9UserInput:Ljava/lang/String;

    .line 1071
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9DeleteLastChar()V

    .line 1072
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9GetCandCount()I

    move-result v7

    iput v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    .line 1073
    const-string v7, ""

    iput-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 1075
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-ge v2, v7, :cond_7

    .line 1076
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strXT9UserInput:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9GetCandString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->AnalyzeXT9Candidate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1077
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 1078
    add-int/lit8 v7, v2, 0x1

    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-ge v7, v8, :cond_6

    .line 1079
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 1075
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1082
    :cond_7
    invoke-direct {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->createWCL()V

    .line 1083
    iget v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    if-ltz v7, :cond_1

    .line 1084
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-direct {p0, p1, v7, v8}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->insertCandidateToEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1085
    .end local v2           #i:I
    .end local v5           #strTmp:Ljava/lang/String;
    .end local v6           #strXT9Analyzed:Ljava/lang/String;
    :cond_8
    iget v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-lez v7, :cond_9

    .line 1086
    const-string v7, ""

    const/4 v8, 0x0

    invoke-direct {p0, p1, v7, v8}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->insertCandidateToEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    .line 1087
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 1088
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringNWPWCL:[Ljava/lang/String;

    .line 1089
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 1090
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1092
    :cond_9
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 1093
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringNWPWCL:[Ljava/lang/String;

    .line 1094
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 1095
    const/4 v1, 0x1

    .line 1097
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v8, 0x43

    invoke-virtual {v7, v8}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto/16 :goto_0

    .line 1101
    :sswitch_2
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 1102
    iget v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    invoke-direct {p0, p1, v7}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmUserSelection(Landroid/view/inputmethod/InputConnection;I)V

    goto/16 :goto_0

    .line 1106
    :cond_a
    const/4 v0, 0x0

    .line 1108
    .local v0, bHasCandidate:Z
    iget v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-lez v7, :cond_b

    .line 1109
    const/4 v0, 0x1

    .line 1110
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmCandidateInEditor(Landroid/view/inputmethod/InputConnection;)V

    .line 1112
    iget-boolean v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mAfterFindPhrase:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 1113
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mAfterFindPhrase:Z

    .line 1114
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 1118
    :cond_b
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 1119
    iget-boolean v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bApplyWordComplete:Z

    if-eqz v7, :cond_c

    .line 1120
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9DeleteAllChars()V

    .line 1123
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sget-wide v9, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSpaceTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    cmp-long v7, v7, v9

    if-gez v7, :cond_13

    .line 1124
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/htc/android/htcime/HTCIMEService;->getTextBeforeCursor(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1126
    .local v4, str:Ljava/lang/CharSequence;
    if-eqz v4, :cond_12

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_12

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v7, 0x1

    invoke-interface {v4, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_12

    .line 1130
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1131
    .local v3, nCode:I
    const/16 v7, 0x41

    if-lt v3, v7, :cond_d

    const/16 v7, 0x5a

    if-le v3, v7, :cond_e

    :cond_d
    const/16 v7, 0x61

    if-lt v3, v7, :cond_11

    const/16 v7, 0x7a

    if-gt v3, v7, :cond_11

    .line 1134
    :cond_e
    if-eqz p1, :cond_f

    .line 1135
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1138
    :cond_f
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/htc/android/htcime/HTCIMEService;->deleteSurroundingText(II)Z

    .line 1139
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v8, ". "

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 1140
    const-string v7, ""

    iput-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    .line 1142
    if-eqz p1, :cond_10

    .line 1143
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1174
    .end local v3           #nCode:I
    :cond_10
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sput-wide v7, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSpaceTime:J

    goto/16 :goto_0

    .line 1146
    .restart local v3       #nCode:I
    :cond_11
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v8, " "

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 1147
    const-string v7, ""

    iput-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    goto :goto_2

    .line 1151
    .end local v3           #nCode:I
    :cond_12
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v8, " "

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 1152
    const-string v7, ""

    iput-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    goto :goto_2

    .line 1155
    .end local v4           #str:Ljava/lang/CharSequence;
    :cond_13
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/android/htcime/HTCIMEService;->getTextBeforeCursor(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1156
    .restart local v4       #str:Ljava/lang/CharSequence;
    if-eqz v4, :cond_16

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_16

    .line 1157
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1158
    .restart local v3       #nCode:I
    const/16 v7, 0x4e00

    if-lt v3, v7, :cond_15

    const v7, 0x9fff

    if-gt v3, v7, :cond_15

    .line 1159
    if-eqz v0, :cond_14

    .line 1160
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v8, ""

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    goto :goto_2

    .line 1162
    :cond_14
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v8, " "

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 1163
    const-string v7, ""

    iput-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    goto :goto_2

    .line 1166
    :cond_15
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v8, " "

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 1167
    const-string v7, ""

    iput-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    goto :goto_2

    .line 1170
    .end local v3           #nCode:I
    :cond_16
    iget-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v8, " "

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 1171
    const-string v7, ""

    iput-object v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    goto :goto_2

    .line 1178
    .end local v0           #bHasCandidate:Z
    .end local v4           #str:Ljava/lang/CharSequence;
    :sswitch_3
    iget v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nBreakRecognize:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nBreakRecognize:I

    .line 1179
    iget v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nBreakRecognize:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_17

    .line 1180
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nBreakRecognize:I

    .line 1186
    :cond_17
    const/4 v1, 0x1

    .line 1187
    goto/16 :goto_0

    .line 1028
    :sswitch_data_0
    .sparse-switch
        -0x1000000 -> :sswitch_3
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method private handleSystemKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "inputContext"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1214
    const/4 v2, 0x1

    .line 1215
    .local v2, bRet:Z
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v8, v8, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v8}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    const/4 v1, 0x1

    .line 1217
    .local v1, bIsFullWCL:Z
    :goto_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bUserAct:Z

    .line 1221
    sparse-switch p2, :sswitch_data_0

    .line 1553
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 1554
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmCandidateInEditor(Landroid/view/inputmethod/InputConnection;)V

    .line 1555
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsPhraseInWCL:Z

    .line 1556
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 1558
    :cond_0
    const/4 v2, 0x0

    .line 1582
    :cond_1
    :goto_1
    return v2

    .line 1215
    .end local v1           #bIsFullWCL:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1262
    .restart local v1       #bIsFullWCL:Z
    :sswitch_0
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v8, v8, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v8}, Lcom/htc/android/htcime/HTCIMMView;->getWCLSelectionAtButton()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v8, v8, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/16 v9, 0x17

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventUp(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1264
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    sget-object v9, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->DROP:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    if-ne v8, v9, :cond_1

    .line 1265
    sget-object v8, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    iput-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    goto :goto_1

    .line 1268
    :cond_3
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v8, v8, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 1269
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    invoke-direct {p0, p1, v8}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmUserSelection(Landroid/view/inputmethod/InputConnection;I)V

    goto :goto_1

    .line 1274
    :cond_4
    sget-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsRecognizeWCL:Z

    if-nez v8, :cond_5

    .line 1277
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 1280
    :cond_5
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-lez v8, :cond_6

    .line 1282
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmCandidateInEditor(Landroid/view/inputmethod/InputConnection;)V

    .line 1283
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 1286
    iget-boolean v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bApplyWordComplete:Z

    if-eqz v8, :cond_1

    .line 1287
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9DeleteAllChars()V

    goto :goto_1

    .line 1295
    :cond_6
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/HTCIMEService;->sendKeyChar(C)V

    goto :goto_1

    .line 1301
    :sswitch_1
    iget-boolean v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bApplyWordComplete:Z

    if-eqz v8, :cond_9

    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-lez v8, :cond_9

    .line 1303
    const/4 v7, 0x0

    .line 1304
    .local v7, strXT9Analyzed:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strXT9UserInput:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strXT9UserInput:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1305
    .local v6, strTmp:Ljava/lang/String;
    iput-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strXT9UserInput:Ljava/lang/String;

    .line 1306
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9DeleteLastChar()V

    .line 1307
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9GetCandCount()I

    move-result v8

    iput v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    .line 1308
    const-string v8, ""

    iput-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 1310
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-ge v3, v8, :cond_8

    .line 1311
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strXT9UserInput:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9GetCandString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->AnalyzeXT9Candidate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1312
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 1313
    add-int/lit8 v8, v3, 0x1

    iget v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-ge v8, v9, :cond_7

    .line 1314
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 1310
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1317
    :cond_8
    invoke-direct {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->createWCL()V

    .line 1318
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    if-ltz v8, :cond_1

    .line 1319
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    iget v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {p0, p1, v8, v9}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->insertCandidateToEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1320
    .end local v3           #i:I
    .end local v6           #strTmp:Ljava/lang/String;
    .end local v7           #strXT9Analyzed:Ljava/lang/String;
    :cond_9
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-lez v8, :cond_a

    .line 1321
    const-string v8, ""

    const/4 v9, 0x0

    invoke-direct {p0, p1, v8, v9}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->insertCandidateToEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    .line 1322
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 1323
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringNWPWCL:[Ljava/lang/String;

    .line 1324
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 1325
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1329
    :cond_a
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 1330
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringNWPWCL:[Ljava/lang/String;

    .line 1331
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 1332
    const/4 v2, 0x1

    .line 1335
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v9, 0x43

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto/16 :goto_1

    .line 1343
    :sswitch_2
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v8, v8, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcCandidateCount:I

    if-lez v8, :cond_c

    .line 1344
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v8, v8, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v8, p2}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventDown(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1345
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    add-int/lit8 v9, v8, 0x1

    if-eqz v1, :cond_b

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {p0, p1, v9, v8}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->procWclMove(Landroid/view/inputmethod/InputConnection;IZ)V

    goto/16 :goto_1

    :cond_b
    const/4 v8, 0x1

    goto :goto_3

    .line 1347
    :cond_c
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-lez v8, :cond_11

    .line 1348
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v8, v8, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v8, p2}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventDown(I)Z

    move-result v8

    if-nez v8, :cond_e

    .line 1349
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    add-int/lit8 v9, v8, 0x1

    if-eqz v1, :cond_d

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {p0, p1, v9, v8}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->procWclMove(Landroid/view/inputmethod/InputConnection;IZ)V

    goto/16 :goto_1

    :cond_d
    const/4 v8, 0x1

    goto :goto_4

    .line 1350
    :cond_e
    sget-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->sFeature_WCL_With_Close_Btn:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v8, v8, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v8}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v8

    iget v8, v8, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_10

    sget-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v8, v8, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v8}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v8

    iget v8, v8, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/16 v9, 0x11

    if-eq v8, v9, :cond_10

    :cond_f
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v8, v8, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v8}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v8

    iget v8, v8, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 1354
    :cond_10
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    invoke-direct {p0, v8}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->createNWPWCL(I)V

    goto/16 :goto_1

    .line 1356
    :cond_11
    const/4 v2, 0x0

    .line 1357
    goto/16 :goto_1

    .line 1360
    :sswitch_3
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v8, v8, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_13

    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcCandidateCount:I

    if-lez v8, :cond_13

    .line 1361
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v8, v8, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v8, p2}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventDown(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1362
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    add-int/lit8 v9, v8, -0x1

    if-eqz v1, :cond_12

    const/4 v8, 0x0

    :goto_5
    invoke-virtual {p0, p1, v9, v8}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->procWclMove(Landroid/view/inputmethod/InputConnection;IZ)V

    goto/16 :goto_1

    :cond_12
    const/4 v8, 0x1

    goto :goto_5

    .line 1363
    :cond_13
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-lez v8, :cond_18

    .line 1364
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v8, v8, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v8, p2}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventDown(I)Z

    move-result v8

    if-nez v8, :cond_15

    .line 1365
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    add-int/lit8 v9, v8, -0x1

    if-eqz v1, :cond_14

    const/4 v8, 0x0

    :goto_6
    invoke-virtual {p0, p1, v9, v8}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->procWclMove(Landroid/view/inputmethod/InputConnection;IZ)V

    goto/16 :goto_1

    :cond_14
    const/4 v8, 0x1

    goto :goto_6

    .line 1366
    :cond_15
    sget-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->sFeature_WCL_With_Close_Btn:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v8, v8, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v8}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v8

    iget v8, v8, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_17

    sget-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v8, v8, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v8}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v8

    iget v8, v8, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/16 v9, 0x11

    if-eq v8, v9, :cond_17

    :cond_16
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v8, v8, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v8}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v8

    iget v8, v8, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 1370
    :cond_17
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    invoke-direct {p0, v8}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->createNWPWCL(I)V

    goto/16 :goto_1

    .line 1372
    :cond_18
    const/4 v2, 0x0

    .line 1373
    goto/16 :goto_1

    .line 1376
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->moveWclBarFocus(Landroid/view/inputmethod/InputConnection;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1377
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-gtz v8, :cond_19

    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcCandidateCount:I

    if-lez v8, :cond_1b

    .line 1378
    :cond_19
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v8}, Lcom/htc/android/htcime/HTCIMEService;->getUpperLineIndex()I

    move-result v9

    if-eqz v1, :cond_1a

    const/4 v8, 0x0

    :goto_7
    invoke-virtual {p0, p1, v9, v8}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->procWclMove(Landroid/view/inputmethod/InputConnection;IZ)V

    goto/16 :goto_1

    :cond_1a
    const/4 v8, 0x1

    goto :goto_7

    .line 1380
    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1384
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->moveWclBarFocus(Landroid/view/inputmethod/InputConnection;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1385
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-gtz v8, :cond_1c

    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcCandidateCount:I

    if-lez v8, :cond_1e

    .line 1386
    :cond_1c
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v8}, Lcom/htc/android/htcime/HTCIMEService;->getLowerLineIndex()I

    move-result v9

    if-eqz v1, :cond_1d

    const/4 v8, 0x0

    :goto_8
    invoke-virtual {p0, p1, v9, v8}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->procWclMove(Landroid/view/inputmethod/InputConnection;IZ)V

    goto/16 :goto_1

    :cond_1d
    const/4 v8, 0x1

    goto :goto_8

    .line 1388
    :cond_1e
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1393
    :sswitch_6
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    sget-object v9, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    if-eq v8, v9, :cond_1f

    .line 1394
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v8, v8, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v8, p2}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventDown(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1395
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->procTouchWclBtn(I)Z

    move-result v2

    goto/16 :goto_1

    .line 1397
    :cond_1f
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v8, v8, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_20

    .line 1398
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    invoke-direct {p0, p1, v8}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmUserSelection(Landroid/view/inputmethod/InputConnection;I)V

    goto/16 :goto_1

    .line 1402
    :cond_20
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-lez v8, :cond_21

    .line 1405
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    invoke-direct {p0, p1, v8}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmUserSelection(Landroid/view/inputmethod/InputConnection;I)V

    .line 1407
    iget-boolean v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bApplyWordComplete:Z

    if-eqz v8, :cond_1

    .line 1408
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9DeleteAllChars()V

    goto/16 :goto_1

    .line 1412
    :cond_21
    const/4 v2, 0x0

    .line 1415
    goto/16 :goto_1

    .line 1419
    :sswitch_7
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v8, v8, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_22

    .line 1420
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    invoke-direct {p0, p1, v8}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmUserSelection(Landroid/view/inputmethod/InputConnection;I)V

    goto/16 :goto_1

    .line 1424
    :cond_22
    const/4 v0, 0x0

    .line 1429
    .local v0, bHasCandidate:Z
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-lez v8, :cond_23

    .line 1430
    const/4 v0, 0x1

    .line 1431
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmCandidateInEditor(Landroid/view/inputmethod/InputConnection;)V

    .line 1433
    iget-boolean v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mAfterFindPhrase:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_23

    .line 1434
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mAfterFindPhrase:Z

    .line 1435
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 1439
    :cond_23
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 1440
    iget-boolean v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bApplyWordComplete:Z

    if-eqz v8, :cond_24

    .line 1441
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9DeleteAllChars()V

    .line 1451
    :cond_24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSpaceTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-gez v8, :cond_2b

    .line 1452
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/HTCIMEService;->getTextBeforeCursor(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1454
    .local v5, str:Ljava/lang/CharSequence;
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2a

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/4 v8, 0x1

    invoke-interface {v5, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-ne v8, v9, :cond_2a

    .line 1456
    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1458
    .local v4, nCode:I
    const/16 v8, 0x41

    if-lt v4, v8, :cond_25

    const/16 v8, 0x5a

    if-le v4, v8, :cond_26

    :cond_25
    const/16 v8, 0x61

    if-lt v4, v8, :cond_29

    const/16 v8, 0x7a

    if-gt v4, v8, :cond_29

    .line 1460
    :cond_26
    if-eqz p1, :cond_27

    .line 1461
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1463
    :cond_27
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/HTCIMEService;->deleteSurroundingText(II)Z

    .line 1464
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v9, ". "

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 1465
    const-string v8, ""

    iput-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    .line 1466
    if-eqz p1, :cond_28

    .line 1467
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1507
    .end local v4           #nCode:I
    :cond_28
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSpaceTime:J

    goto/16 :goto_1

    .line 1470
    .restart local v4       #nCode:I
    :cond_29
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v9, " "

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 1471
    const-string v8, ""

    iput-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    goto :goto_9

    .line 1478
    .end local v4           #nCode:I
    :cond_2a
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v9, " "

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 1479
    const-string v8, ""

    iput-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    goto :goto_9

    .line 1484
    .end local v5           #str:Ljava/lang/CharSequence;
    :cond_2b
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/HTCIMEService;->getTextBeforeCursor(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1485
    .restart local v5       #str:Ljava/lang/CharSequence;
    if-eqz v5, :cond_2e

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2e

    .line 1486
    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1487
    .restart local v4       #nCode:I
    const/16 v8, 0x4e00

    if-lt v4, v8, :cond_2d

    const v8, 0x9fff

    if-gt v4, v8, :cond_2d

    .line 1488
    if-eqz v0, :cond_2c

    .line 1489
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v9, ""

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    goto :goto_9

    .line 1491
    :cond_2c
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v9, " "

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 1492
    const-string v8, ""

    iput-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    goto :goto_9

    .line 1495
    :cond_2d
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v9, " "

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 1496
    const-string v8, ""

    iput-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    goto :goto_9

    .line 1499
    .end local v4           #nCode:I
    :cond_2e
    iget-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v9, " "

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 1500
    const-string v8, ""

    iput-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    goto :goto_9

    .line 1511
    .end local v0           #bHasCandidate:Z
    .end local v5           #str:Ljava/lang/CharSequence;
    :sswitch_8
    iget-boolean v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mAfterFindPhrase:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_30

    .line 1512
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mAfterFindPhrase:Z

    .line 1513
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 1533
    :cond_2f
    :goto_a
    const/4 v2, 0x0

    .line 1534
    goto/16 :goto_1

    .line 1515
    :cond_30
    iget-boolean v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bApplyWordComplete:Z

    if-eqz v8, :cond_31

    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-lez v8, :cond_31

    .line 1516
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmCandidateInEditor(Landroid/view/inputmethod/InputConnection;)V

    .line 1517
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 1518
    iget-boolean v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bApplyWordComplete:Z

    if-eqz v8, :cond_2f

    .line 1519
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9DeleteAllChars()V

    goto :goto_a

    .line 1523
    :cond_31
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-lez v8, :cond_32

    .line 1524
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmCandidateInEditor(Landroid/view/inputmethod/InputConnection;)V

    .line 1525
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    goto :goto_a

    .line 1528
    :cond_32
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 1530
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    goto :goto_a

    .line 1537
    :sswitch_9
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nBreakRecognize:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nBreakRecognize:I

    .line 1538
    iget v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nBreakRecognize:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_33

    .line 1539
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nBreakRecognize:I

    .line 1545
    :cond_33
    const/4 v2, 0x1

    .line 1546
    goto/16 :goto_1

    .line 1221
    :sswitch_data_0
    .sparse-switch
        -0x1000000 -> :sswitch_9
        0x4 -> :sswitch_8
        0x13 -> :sswitch_4
        0x14 -> :sswitch_5
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x17 -> :sswitch_6
        0x3e -> :sswitch_7
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method private hasGestureBeenRecognized()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2547
    const/4 v0, 0x0

    .line 2548
    .local v0, bRet:Z
    const/4 v1, 0x0

    .line 2550
    .local v1, nCode:I
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    if-eqz v2, :cond_0

    .line 2551
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->getCandidateUnicode(I)I

    move-result v1

    .line 2553
    sparse-switch v1, :sswitch_data_0

    .line 2582
    :cond_0
    :goto_0
    return v3

    .line 2557
    :sswitch_0
    const/4 v0, 0x1

    .line 2558
    goto :goto_0

    .line 2563
    :sswitch_1
    const/4 v0, 0x1

    .line 2564
    goto :goto_0

    .line 2570
    :sswitch_2
    const/4 v0, 0x1

    .line 2571
    goto :goto_0

    .line 2576
    :sswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 2553
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xd -> :sswitch_2
        0x10 -> :sswitch_0
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method private insertCandidateToEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V
    .locals 5
    .parameter "inputContext"
    .parameter "strInsert"
    .parameter "bAppend"

    .prologue
    .line 1849
    invoke-direct {p0, p2}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->setFullWidthByRecognizeChar(Ljava/lang/String;)V

    .line 1854
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1855
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1856
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    sget v2, Lcom/htc/android/htcime/PPIME/PPInputMethod;->HILITE_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1857
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    .line 1858
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->setComposingText(Landroid/text/Spanned;I)V

    .line 1865
    return-void
.end method

.method private moveWclBarFocus(Landroid/view/inputmethod/InputConnection;)Z
    .locals 5
    .parameter "inputContext"

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2252
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    sget-object v3, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->DROP:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    if-ne v2, v3, :cond_2

    .line 2254
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 2255
    sget-object v1, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    iput-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    .line 2288
    :cond_0
    :goto_0
    return v0

    .line 2258
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventDown(I)Z

    move v0, v1

    .line 2259
    goto :goto_0

    .line 2263
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget-boolean v2, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->isCompletionsMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 2268
    iget v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcCandidateCount:I

    if-gtz v2, :cond_0

    :cond_3
    move v0, v1

    .line 2269
    goto :goto_0
.end method

.method private onFnSetWclIndex(Landroid/view/inputmethod/InputConnection;II)V
    .locals 4
    .parameter "inputContext"
    .parameter "index"
    .parameter "idxWCL"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 2378
    sget-object v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    .line 2381
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget-boolean v0, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->isCompletionsMode:Z

    if-eqz v0, :cond_2

    .line 2382
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    if-ne v0, v3, :cond_1

    .line 2383
    iput p2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    .line 2384
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    invoke-virtual {v0, v3, v1}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(II)V

    .line 2385
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2386
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(II)V

    .line 2407
    :cond_0
    :goto_0
    return-void

    .line 2391
    :cond_1
    iget v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    if-ltz v0, :cond_2

    .line 2392
    iput v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    .line 2393
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    invoke-virtual {v0, v3, v1}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(II)V

    .line 2398
    :cond_2
    iput p2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    .line 2399
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    iget v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(II)V

    .line 2401
    iget-boolean v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bUserAct:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    if-ltz v0, :cond_0

    .line 2402
    if-nez p3, :cond_3

    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2403
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    iget v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->replaceCandidateToEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    goto :goto_0

    .line 2404
    :cond_3
    if-ne v3, p3, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringNWPWCL:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2405
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringNWPWCL:[Ljava/lang/String;

    iget v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->replaceCandidateToEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSymbolKeyDown(C)V
    .locals 2
    .parameter "element"

    .prologue
    const/4 v1, 0x0

    .line 2411
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2412
    invoke-direct {p0, v1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmCandidateInEditor(Landroid/view/inputmethod/InputConnection;)V

    .line 2413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsPhraseInWCL:Z

    .line 2414
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 2416
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmCandidateInEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 2417
    return-void
.end method

.method private processFinishJob(Landroid/view/inputmethod/InputConnection;)V
    .locals 5
    .parameter "inputContext"

    .prologue
    const/4 v4, 0x0

    .line 989
    iget-boolean v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mAfterFindPhrase:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 991
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    iget v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 994
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 995
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput v4, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    .line 997
    :cond_0
    iput-boolean v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mAfterFindPhrase:Z

    .line 998
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 1005
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 1007
    iget-boolean v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bApplyWordComplete:Z

    if-eqz v0, :cond_1

    .line 1008
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9DeleteAllChars()V

    .line 1010
    :cond_1
    iput v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nBreakRecognize:I

    .line 1011
    return-void

    .line 1001
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmCandidateInEditor(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_0
.end method

.method private recognizeCandidate(Landroid/view/inputmethod/InputConnection;)V
    .locals 13
    .parameter "inputContext"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    .line 2420
    const/4 v0, 0x0

    .line 2421
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 2422
    .local v6, nCode:I
    const/4 v8, 0x0

    .line 2423
    .local v8, total_box:I
    const/4 v2, 0x0

    .line 2425
    .local v2, i:I
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    .line 2426
    const-string v9, ""

    iput-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 2428
    iget-boolean v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bRecognizerHasBeenInitialized:Z

    if-nez v9, :cond_0

    .line 2429
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    iget-object v10, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v10, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    sget v10, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->cur_db:I

    invoke-virtual {v9, v10}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->init(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bRecognizerHasBeenInitialized:Z

    .line 2432
    :cond_0
    sget v9, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContinuousInputMode:I

    packed-switch v9, :pswitch_data_0

    .line 2439
    :goto_0
    iget-boolean v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bRecognizerHasBeenInitialized:Z

    if-eqz v9, :cond_3

    .line 2440
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    iget-object v10, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v10, v10, Lcom/htc/android/htcime/HTCIMMData;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v10}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->getPointArray()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->recognizeCandidate(Ljava/util/ArrayList;)Z

    .line 2442
    invoke-direct {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->hasGestureBeenRecognized()Z

    move-result v9

    if-nez v9, :cond_3

    .line 2443
    sget v9, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContinuousInputMode:I

    if-eq v9, v11, :cond_6

    .line 2445
    const/4 v3, 0x0

    .line 2446
    .local v3, index:I
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v9}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->getMultipleResultSize()I

    move-result v7

    .local v7, size:I
    move v4, v3

    .line 2448
    .end local v3           #index:I
    .local v4, index:I
    :goto_1
    if-ge v4, v7, :cond_7

    .line 2449
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    invoke-virtual {v9, v4}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->getMultipleResultcode(I)I

    move-result v1

    .line 2451
    .local v1, count:I
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2452
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    if-ge v5, v1, :cond_1

    .line 2453
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v9, v3}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->getMultipleResultcode(I)I

    move-result v6

    .line 2455
    if-nez v6, :cond_4

    .line 2464
    :cond_1
    sget v9, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContinuousInputMode:I

    if-ne v9, v12, :cond_5

    .line 2465
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 2466
    iget v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    .line 2497
    .end local v1           #count:I
    .end local v3           #index:I
    .end local v5           #j:I
    .end local v7           #size:I
    :cond_2
    :goto_3
    iput-boolean v11, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsRecognizeWCL:Z

    .line 2500
    :cond_3
    return-void

    .line 2433
    :pswitch_0
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    iget-object v10, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v10, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    sget v10, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->cur_db:I

    invoke-virtual {v9, v10}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->setRecognizeType(I)V

    goto :goto_0

    .line 2434
    :pswitch_1
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v9, v12}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->setRecognizeType(I)V

    goto :goto_0

    .line 2435
    :pswitch_2
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->setRecognizeType(I)V

    goto :goto_0

    .line 2458
    .restart local v1       #count:I
    .restart local v3       #index:I
    .restart local v5       #j:I
    .restart local v7       #size:I
    :cond_4
    int-to-char v9, v6

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2460
    add-int/lit8 v3, v3, 0x1

    .line 2452
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2470
    :cond_5
    const-string v9, "\t"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2471
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 2472
    iget v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    .line 2474
    add-int/2addr v3, v1

    move v4, v3

    .line 2475
    .end local v3           #index:I
    .restart local v4       #index:I
    goto :goto_1

    .line 2477
    .end local v1           #count:I
    .end local v4           #index:I
    .end local v5           #j:I
    .end local v7           #size:I
    :cond_6
    const/4 v2, 0x0

    :goto_4
    const/16 v9, 0xa

    if-ge v2, v9, :cond_2

    .line 2478
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v9, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->getCandidateUnicode(I)I

    move-result v6

    .line 2479
    if-eqz v6, :cond_2

    .line 2481
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2483
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2486
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 2487
    iget v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    .line 2477
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .restart local v4       #index:I
    .restart local v7       #size:I
    :cond_7
    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_3

    .line 2432
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private recognizeSymbolCandidate(Landroid/view/inputmethod/InputConnection;)V
    .locals 5
    .parameter "inputContext"

    .prologue
    .line 2511
    const/4 v0, 0x0

    .line 2513
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 2514
    .local v2, nCode:I
    const/4 v1, 0x0

    .line 2516
    .local v1, i:I
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    .line 2517
    const-string v3, ""

    iput-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 2519
    iget-boolean v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bRecognizerHasBeenInitialized:Z

    if-nez v3, :cond_0

    .line 2520
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    iget-object v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v4, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    sget v4, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->cur_db:I

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->init(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bRecognizerHasBeenInitialized:Z

    .line 2523
    :cond_0
    iget-boolean v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bRecognizerHasBeenInitialized:Z

    if-eqz v3, :cond_1

    .line 2525
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    iget-boolean v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsRecognizeFullWidth:Z

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->recognizeSymbol(Z)V

    .line 2527
    invoke-direct {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->hasGestureBeenRecognized()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2529
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    .line 2530
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v3, v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->getCandidateUnicode(I)I

    move-result v2

    .line 2531
    if-nez v2, :cond_2

    .line 2540
    :cond_1
    return-void

    .line 2533
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2534
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2535
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 2536
    iget v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    .line 2529
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private replaceCandidateToEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .locals 5
    .parameter "inputContext"
    .parameter "strReplace"

    .prologue
    .line 1880
    invoke-direct {p0, p2}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->setFullWidthByRecognizeChar(Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1883
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1884
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    sget v2, Lcom/htc/android/htcime/PPIME/PPInputMethod;->HILITE_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1885
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    .line 1886
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->setComposingText(Landroid/text/Spanned;I)V

    .line 1887
    return-void
.end method

.method private setFullWidthByRecognizeChar(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 1984
    const-string v1, ""

    if-eq p1, v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1985
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1988
    .local v0, nCode:I
    const/16 v1, 0x41

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5a

    if-le v0, v1, :cond_2

    :cond_0
    const/16 v1, 0x61

    if-lt v0, v1, :cond_1

    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1990
    :cond_2
    iput-boolean v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsRecognizeFullWidth:Z

    .line 1995
    .end local v0           #nCode:I
    :cond_3
    :goto_0
    return-void

    .line 1992
    .restart local v0       #nCode:I
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsRecognizeFullWidth:Z

    goto :goto_0
.end method

.method private setPanelResolution()V
    .locals 3

    .prologue
    .line 2503
    iget-boolean v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bRecognizerHasBeenInitialized:Z

    if-nez v0, :cond_0

    .line 2504
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    sget v1, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->cur_db:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->init(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bRecognizerHasBeenInitialized:Z

    .line 2506
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bRecognizerHasBeenInitialized:Z

    if-eqz v0, :cond_1

    .line 2507
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->m_nStrokePanelW:I

    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->m_nStrokePanelH:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->setResolution(II)V

    .line 2508
    :cond_1
    return-void
.end method


# virtual methods
.method public XT9DeleteAllChars()V
    .locals 1

    .prologue
    .line 2673
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strXT9UserInput:Ljava/lang/String;

    .line 2674
    return-void
.end method

.method public XT9DeleteLastChar()V
    .locals 0

    .prologue
    .line 2666
    return-void
.end method

.method public XT9GetCandCount()I
    .locals 1

    .prologue
    .line 2641
    const/4 v0, 0x0

    .line 2647
    .local v0, nRet:I
    return v0
.end method

.method public XT9GetCandString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 2652
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 2658
    .local v0, strRet:Ljava/lang/String;
    return-object v0
.end method

.method public XT9InputChar(C)V
    .locals 0
    .parameter "Char"

    .prologue
    .line 2637
    return-void
.end method

.method public addUserWord(Ljava/lang/String;)V
    .locals 0
    .parameter "addUserWord"

    .prologue
    .line 2248
    return-void
.end method

.method buildPhraseList(III)I
    .locals 9
    .parameter "count"
    .parameter "idWCL"
    .parameter "nCandIndex"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1999
    const/4 v1, 0x0

    .line 2000
    .local v1, status:I
    const/4 v0, 0x0

    .line 2001
    .local v0, index:I
    const/4 v4, 0x0

    .line 2004
    .local v4, strPhrase:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 2005
    const-string v5, ""

    iput-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 2006
    iput v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    .line 2011
    :cond_0
    :goto_0
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPGetPhrase(I)I

    move-result v1

    .line 2013
    const/16 v5, 0x22

    if-ne v5, v1, :cond_2

    .line 2014
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPBuildSelectionList()I

    move-result v1

    .line 2016
    if-eqz v1, :cond_2

    move v2, v1

    .line 2067
    .end local v1           #status:I
    .local v2, status:I
    :goto_1
    return v2

    .line 2007
    .end local v2           #status:I
    .restart local v1       #status:I
    :cond_1
    if-ne p2, v8, :cond_0

    .line 2008
    const-string v5, ""

    iput-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strNWPCandidate:Ljava/lang/String;

    .line 2009
    iput v7, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nNWPCandidateCount:I

    goto :goto_0

    .line 2020
    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_4

    .line 2021
    const/4 v4, 0x0

    .line 2023
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPGetPhrase(I)I

    move-result v1

    .line 2025
    if-nez v1, :cond_3

    .line 2027
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->convertPunctuationForNecessary()V

    .line 2028
    iget-object v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9_Phrase_String:Ljava/lang/String;

    .line 2032
    :cond_3
    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mCPNoXT9DeftPredict:Z

    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    .line 2034
    const v5, 0xff0c

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_5

    :cond_4
    move v2, v1

    .line 2067
    .end local v1           #status:I
    .restart local v2       #status:I
    goto :goto_1

    .line 2039
    .end local v2           #status:I
    .restart local v1       #status:I
    :cond_5
    const/16 v5, 0x6211

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_7

    .line 2040
    const/4 v3, 0x0

    .line 2042
    .local v3, strNextPhrase:Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPGetPhrase(I)I

    move-result v1

    .line 2043
    if-nez v1, :cond_6

    .line 2044
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9_Phrase_String:Ljava/lang/String;

    .line 2046
    :cond_6
    if-eqz v3, :cond_7

    const/16 v5, 0x4f60

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_4

    .line 2051
    .end local v3           #strNextPhrase:Ljava/lang/String;
    :cond_7
    if-eqz v4, :cond_8

    .line 2052
    if-nez p2, :cond_9

    .line 2053
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 2054
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 2055
    iget v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    .line 2020
    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2057
    :cond_9
    if-ne p2, v8, :cond_8

    .line 2059
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strNWPCandidate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    aget-object v6, v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strNWPCandidate:Ljava/lang/String;

    .line 2060
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strNWPCandidate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strNWPCandidate:Ljava/lang/String;

    .line 2061
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strNWPCandidate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strNWPCandidate:Ljava/lang/String;

    .line 2062
    iget v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nNWPCandidateCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nNWPCandidateCount:I

    goto :goto_3
.end method

.method public buildWCL_AutoCompleteText([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 9
    .parameter "completions"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 1718
    iget-object v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strAutoCompleteCandidate:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 1719
    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strAutoCompleteCandidate:Ljava/lang/String;

    .line 1723
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1725
    .local v0, candidatesBuilder:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_3

    .line 1727
    :cond_0
    iget-object v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget-boolean v4, v4, Lcom/htc/android/htcime/Intf/HTCIMData;->isCompletionsMode:Z

    if-eqz v4, :cond_1

    .line 1728
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1729
    iget-object v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput-boolean v2, v4, Lcom/htc/android/htcime/Intf/HTCIMData;->isCompletionsMode:Z

    .line 1730
    iput v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcCandidateCount:I

    .line 1731
    iput v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    .line 1782
    :cond_1
    :goto_1
    return-void

    .line 1721
    .end local v0           #candidatesBuilder:Ljava/lang/StringBuilder;
    :cond_2
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strAutoCompleteCandidate:Ljava/lang/String;

    goto :goto_0

    .line 1738
    .restart local v0       #candidatesBuilder:Ljava/lang/StringBuilder;
    :cond_3
    if-eqz p1, :cond_4

    array-length v2, p1

    .line 1740
    .local v2, length:I
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_6

    .line 1741
    aget-object v4, p1, v1

    if-eqz v4, :cond_5

    .line 1742
    aget-object v4, p1, v1

    invoke-virtual {v4}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1743
    .local v3, word:Ljava/lang/CharSequence;
    if-eqz v3, :cond_5

    .line 1744
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    .end local v3           #word:Ljava/lang/CharSequence;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1755
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 1756
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strAutoCompleteCandidate:Ljava/lang/String;

    .line 1765
    :cond_7
    iput-object p1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1766
    iget-object v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput-boolean v7, v4, Lcom/htc/android/htcime/Intf/HTCIMData;->isCompletionsMode:Z

    .line 1767
    array-length v4, p1

    iput v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcCandidateCount:I

    .line 1768
    iput v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    .line 1772
    iget-object v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v4}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v4

    iget v4, v4, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v4, v8, :cond_8

    iget-object v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->isShown()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1773
    iget-object v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1775
    :cond_8
    iget-object v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strAutoCompleteCandidate:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    goto :goto_1
.end method

.method clearWCL()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1686
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v1, ""

    iget v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    invoke-virtual {v0, v4, v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->setWCLText(ILjava/lang/String;I)V

    .line 1687
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setWCLText(ILjava/lang/String;I)V

    .line 1688
    iput v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    .line 1689
    iput v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    .line 1690
    iput v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nNWPCandidateCount:I

    .line 1691
    sget-object v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    .line 1693
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget-boolean v0, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->isCompletionsMode:Z

    if-eqz v0, :cond_0

    .line 1694
    iput v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    .line 1695
    iput v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcCandidateCount:I

    .line 1696
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1697
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput-boolean v4, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->isCompletionsMode:Z

    .line 1699
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput v4, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    .line 1703
    :cond_0
    return-void
.end method

.method clearWCL(I)V
    .locals 4
    .parameter "idWCL"

    .prologue
    const/4 v3, 0x0

    .line 1658
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v1, ""

    iget v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->setWCLText(ILjava/lang/String;I)V

    .line 1659
    iput v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    .line 1660
    if-nez p1, :cond_2

    .line 1661
    iput v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    .line 1664
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    .line 1666
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget-boolean v0, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->isCompletionsMode:Z

    if-eqz v0, :cond_1

    .line 1667
    iput v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    .line 1668
    iput v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcCandidateCount:I

    .line 1669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1670
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput-boolean v3, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->isCompletionsMode:Z

    .line 1672
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput v3, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    .line 1676
    :cond_1
    return-void

    .line 1662
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1663
    iput v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nNWPCandidateCount:I

    goto :goto_0
.end method

.method convertPunctuationForNecessary()V
    .locals 3

    .prologue
    .line 2077
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9_Phrase_Length:I

    if-ne v1, v2, :cond_0

    .line 2078
    const-string v1, ",?!:;"

    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9_Phrase_String:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2080
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 2081
    const-string v1, "\uff0c\uff1f\uff01\uff1a\uff1b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9_Phrase_String:Ljava/lang/String;

    .line 2084
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method doNormalKey(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)V
    .locals 1
    .parameter "inputContext"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0, p2}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    .line 616
    return-void
.end method

.method public expandFullWCL()I
    .locals 1

    .prologue
    .line 2684
    const/4 v0, 0x0

    return v0
.end method

.method public finishInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mXT9:Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->finishInput()Z

    .line 248
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 249
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 250
    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 251
    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringNWPWCL:[Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    .line 256
    iput-boolean v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bHandle:Z

    .line 258
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    .line 259
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeXT9CPCommitUDBBuffer()I

    .line 265
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Memory_Optimize:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->nativeRelease()V

    .line 267
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->mKBDResID:I

    .line 268
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->mKBDNum:I

    .line 269
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBResID:I

    .line 270
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    .line 272
    :cond_0
    return-void
.end method

.method public getIMEStatus()I
    .locals 1

    .prologue
    .line 2679
    const/4 v0, 0x0

    return v0
.end method

.method public getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    return-object v0
.end method

.method public getSpellCount()I
    .locals 1

    .prologue
    .line 2689
    const/4 v0, 0x0

    return v0
.end method

.method public getSpellString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 2699
    const-string v0, ""

    return-object v0
.end method

.method public getSpellType(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 2694
    const/4 v0, 0x0

    return v0
.end method

.method public getWCLCand(IIZ)Ljava/lang/String;
    .locals 2
    .parameter "i"
    .parameter "idWCL"
    .parameter "bAtbottomBtn"

    .prologue
    .line 2703
    const/4 v0, 0x0

    .line 2705
    .local v0, strWCLCand:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 2723
    :cond_0
    :goto_0
    return-object v0

    .line 2707
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 2709
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    aget-object v0, v1, p1

    goto :goto_0

    .line 2712
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v1, :cond_1

    .line 2714
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 2715
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2718
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringNWPWCL:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringNWPWCL:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 2720
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringNWPWCL:[Ljava/lang/String;

    aget-object v0, v1, p1

    goto :goto_0

    .line 2705
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getWCLCount(IZ)I
    .locals 2
    .parameter "idWCL"
    .parameter "bAtbottomBtn"

    .prologue
    .line 2729
    const/4 v0, 0x0

    .line 2731
    .local v0, Count:I
    packed-switch p1, :pswitch_data_0

    .line 2737
    :goto_0
    return v0

    .line 2733
    :pswitch_0
    iget v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    goto :goto_0

    .line 2735
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget-boolean v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->isCompletionsMode:Z

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcCandidateCount:I

    :goto_1
    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nNWPCandidateCount:I

    goto :goto_1

    .line 2731
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleFNKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "inputContext"
    .parameter "FnInfo"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 826
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/high16 v3, -0x1

    and-int v0, v2, v3

    .line 827
    .local v0, fn_id:I
    const v2, 0xffff

    and-int v1, p2, v2

    .line 834
    .local v1, fn_val:I
    sparse-switch v0, :sswitch_data_0

    .line 984
    :cond_0
    :goto_0
    :sswitch_0
    return v5

    .line 840
    :sswitch_1
    iget-boolean v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsRecognizeWCL:Z

    if-eqz v2, :cond_1

    .line 841
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v2, v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->setEnhanceRecord(I)V

    .line 843
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmUserSelection(Landroid/view/inputmethod/InputConnection;I)V

    .line 845
    iget-boolean v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bApplyWordComplete:Z

    if-eqz v2, :cond_0

    .line 846
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9DeleteAllChars()V

    goto :goto_0

    .line 853
    :sswitch_2
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget-boolean v2, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->isCompletionsMode:Z

    if-eqz v2, :cond_3

    .line 855
    iget v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcCandidateCount:I

    if-lt v1, v2, :cond_2

    .line 857
    const-string v2, "PPLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T9InputMethod_onKeyDown_set touch word index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is bigger than candidate_count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcCandidateCount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 861
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 862
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    goto :goto_0

    .line 868
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 869
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 871
    :cond_4
    iget v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    invoke-direct {p0, p1, v2}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmUserSelection(Landroid/view/inputmethod/InputConnection;I)V

    .line 872
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    iget v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->setEnhanceRecord(I)V

    .line 873
    invoke-direct {p0, p1, v1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmUserSelection(Landroid/view/inputmethod/InputConnection;I)V

    .line 876
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 877
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 878
    :cond_5
    iget-boolean v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bApplyWordComplete:Z

    if-eqz v2, :cond_0

    .line 879
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9DeleteAllChars()V

    goto/16 :goto_0

    .line 886
    :sswitch_3
    iget-boolean v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mAfterFindPhrase:Z

    if-ne v2, v5, :cond_7

    .line 887
    iput-boolean v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mAfterFindPhrase:Z

    .line 888
    iput-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 895
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 897
    iget-boolean v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bApplyWordComplete:Z

    if-eqz v2, :cond_6

    .line 898
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9DeleteAllChars()V

    .line 900
    :cond_6
    iput v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nBreakRecognize:I

    goto/16 :goto_0

    .line 891
    :cond_7
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmCandidateInEditor(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_1

    .line 905
    :sswitch_4
    iget-boolean v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mAfterFindPhrase:Z

    if-ne v2, v5, :cond_b

    .line 906
    iput-boolean v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mAfterFindPhrase:Z

    .line 907
    iput-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 921
    :goto_2
    const/4 v2, 0x2

    sget v3, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContinuousInputMode:I

    if-ne v2, v3, :cond_8

    iget v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-lez v2, :cond_8

    .line 923
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v3, " "

    invoke-virtual {v2, v3, v5}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 925
    :cond_8
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 926
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->isFullScreenHWR()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 927
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->dismissFixedWCLSymbol()V

    .line 929
    :cond_9
    iget-boolean v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bApplyWordComplete:Z

    if-eqz v2, :cond_a

    .line 930
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->XT9DeleteAllChars()V

    .line 932
    :cond_a
    iput v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nBreakRecognize:I

    goto/16 :goto_0

    .line 911
    :cond_b
    sget v2, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContinuousInputMode:I

    if-ne v5, v2, :cond_d

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v2, v3, :cond_c

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-ne v2, v3, :cond_d

    :cond_c
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 916
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v2, v2, v3

    invoke-direct {p0, p1, v2, v4}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->insertCandidateToEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Z)V

    .line 918
    :cond_d
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmCandidateInEditor(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_2

    .line 940
    :sswitch_5
    invoke-direct {p0, p1, v1, v4}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->onFnSetWclIndex(Landroid/view/inputmethod/InputConnection;II)V

    goto/16 :goto_0

    .line 944
    :sswitch_6
    invoke-direct {p0, p1, v1, v5}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->onFnSetWclIndex(Landroid/view/inputmethod/InputConnection;II)V

    goto/16 :goto_0

    .line 948
    :sswitch_7
    const/4 v2, -0x1

    invoke-direct {p0, p1, v2, v4}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->onFnSetWclIndex(Landroid/view/inputmethod/InputConnection;II)V

    goto/16 :goto_0

    .line 954
    :sswitch_8
    sget-object v2, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    .line 955
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget-boolean v2, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->isCompletionsMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    if-nez v2, :cond_0

    .line 956
    iget v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    if-ltz v2, :cond_0

    .line 957
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    iget v4, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(II)V

    goto/16 :goto_0

    .line 962
    :sswitch_9
    sget-object v2, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    goto/16 :goto_0

    .line 965
    :sswitch_a
    sget-object v2, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->DROP:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    goto/16 :goto_0

    .line 970
    :sswitch_b
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->finishComposingText()V

    .line 971
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput v4, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    .line 972
    iput-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 973
    iput-object v6, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringNWPWCL:[Ljava/lang/String;

    .line 976
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    goto/16 :goto_0

    .line 980
    :sswitch_c
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->processFinishJob(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_0

    .line 834
    nop

    :sswitch_data_0
    .sparse-switch
        0xfffd -> :sswitch_0
        0x70b0000 -> :sswitch_1
        0x7100000 -> :sswitch_3
        0x7120000 -> :sswitch_5
        0x71c0000 -> :sswitch_c
        0x71d0000 -> :sswitch_b
        0x7200000 -> :sswitch_8
        0x7210000 -> :sswitch_7
        0x7220000 -> :sswitch_9
        0x7230000 -> :sswitch_a
        0x7490000 -> :sswitch_2
        0x74d0000 -> :sswitch_6
        0x74e0000 -> :sswitch_4
    .end sparse-switch
.end method

.method public handleUnicodeChar(Landroid/view/inputmethod/InputConnection;CLandroid/view/KeyEvent;)V
    .locals 2
    .parameter "inputContext"
    .parameter "uni_char"
    .parameter "event"

    .prologue
    .line 809
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmCandidateInEditor(Landroid/view/inputmethod/InputConnection;)V

    .line 810
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->clearWCL()V

    .line 813
    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->confirmCandidateInEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 814
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mLastSubmitPhrase:Ljava/lang/String;

    .line 815
    return-void
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 4
    .parameter "htcIMM"

    .prologue
    const/4 v3, 0x0

    .line 195
    iput-object p1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 196
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 198
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->loadPropertiesEx(Landroid/content/Context;)V

    .line 200
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-direct {v0}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    .line 202
    iput-boolean v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bRecognizerHasBeenInitialized:Z

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strCandidate:Ljava/lang/String;

    .line 206
    iput-boolean v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsPhraseInWCL:Z

    .line 209
    iput-boolean v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bApplyWordComplete:Z

    .line 210
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strXT9UserInput:Ljava/lang/String;

    .line 212
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mSpanSB:Landroid/text/SpannableStringBuilder;

    .line 219
    new-instance v0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;-><init>(Landroid/content/Context;Lcom/htc/android/htcime/HTCIMEService;)V

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mXT9:Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;

    .line 221
    iput-boolean v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsWritingTimeOut:Z

    .line 222
    return-void
.end method

.method public keyRegionCorrect(III)I
    .locals 1
    .parameter "key_id"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 2246
    const/4 v0, 0x0

    return v0
.end method

.method public loadCommonCtrlValue()V
    .locals 0

    .prologue
    .line 2915
    return-void
.end method

.method moveWCLWord(Landroid/view/inputmethod/InputConnection;Z)V
    .locals 3
    .parameter "inputContext"
    .parameter "bMovePrevWord"

    .prologue
    .line 1821
    iget v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-gtz v0, :cond_0

    .line 1836
    :goto_0
    return-void

    .line 1825
    :cond_0
    if-eqz p2, :cond_2

    .line 1826
    iget v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    .line 1833
    :goto_2
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    iget v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(II)V

    .line 1835
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    iget v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->replaceCandidateToEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    goto :goto_0

    .line 1826
    :cond_1
    iget v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    goto :goto_1

    .line 1828
    :cond_2
    iget v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    .line 1829
    iget v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectIdxLimit:I

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    add-int/lit8 v0, v0, -0x1

    :goto_3
    iput v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    goto :goto_3
.end method

.method public native nativeLoadDictionary(Ljava/io/FileDescriptor;JJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native nativeRelease()V
.end method

.method public native nativeXT9CPBuildSelectionList()I
.end method

.method public native nativeXT9CPCommitSelection()I
.end method

.method public native nativeXT9CPCommitUDBBuffer()I
.end method

.method public native nativeXT9CPGetPhrase(I)I
.end method

.method public native nativeXT9CPGetSelection()I
.end method

.method public native nativeXT9CPLdbInit(I)I
.end method

.method public native nativeXT9CPSelectPhrase(I)I
.end method

.method public native nativeXT9CPSetContext(Ljava/lang/String;)I
.end method

.method public native nativeXT9CPSetInputMode(I)I
.end method

.method public native nativeXT9CPUdbAddPhrase(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native nativeXT9CPUdbInit(I)I
.end method

.method public native nativeXT9CPUdbReset()I
.end method

.method public native nativeXT9ClearAllSymbs()I
.end method

.method public native nativeXT9InitialV62(Z)I
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    if-eqz v0, :cond_0

    .line 2240
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->finish()Z

    .line 2241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    .line 2242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bRecognizerHasBeenInitialized:Z

    .line 2244
    :cond_0
    return-void
.end method

.method public onInterrupt()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 452
    const/4 v2, 0x0

    .line 456
    .local v2, bHandle:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 457
    .local v6, keyCode:I
    const/high16 v9, -0x100

    and-int v0, v6, v9

    .line 458
    .local v0, HiKeyCode:I
    const v9, 0xffffff

    and-int v1, v6, v9

    .line 460
    .local v1, LoKeyCode:I
    const-string v9, "PPLOG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PPInputMethod onKeyDown() -> HiKeyCode = 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", LoKeyCode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    sparse-switch v0, :sswitch_data_0

    .line 563
    const/4 v4, 0x0

    .line 564
    .local v4, ch:I
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v9, :cond_1

    const/16 v9, 0x42

    if-eq v6, v9, :cond_1

    const/16 v9, 0x43

    if-eq v6, v9, :cond_1

    const/16 v9, 0x17

    if-eq v6, v9, :cond_1

    const/16 v9, 0x14

    if-eq v6, v9, :cond_1

    const/16 v9, 0x13

    if-eq v6, v9, :cond_1

    const/16 v9, 0x15

    if-eq v6, v9, :cond_1

    const/16 v9, 0x16

    if-eq v6, v9, :cond_1

    .line 573
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v9, v9, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v9}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getFnState()Z

    move-result v5

    .line 574
    .local v5, fnState:Z
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v9, v9, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v9}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getShiftState()I

    move-result v8

    .line 575
    .local v8, shift:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-static {v9}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v7

    .line 576
    .local v7, kmap:Landroid/view/KeyCharacterMap;
    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    const/4 v9, 0x3

    if-ne v8, v9, :cond_c

    :cond_0
    const/4 v3, 0x1

    .line 578
    .local v3, capMode:Z
    :goto_0
    if-eqz v5, :cond_d

    .line 579
    const/4 v9, 0x2

    invoke-virtual {v7, v6, v9}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v4

    .line 587
    .end local v3           #capMode:Z
    .end local v5           #fnState:Z
    .end local v7           #kmap:Landroid/view/KeyCharacterMap;
    .end local v8           #shift:I
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v9, :cond_f

    if-eqz v4, :cond_f

    .line 588
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v9, v9, Lcom/htc/android/htcime/HTCIMMData;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    int-to-char v10, v4

    invoke-virtual {p0, v9, v10, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->handleUnicodeChar(Landroid/view/inputmethod/InputConnection;CLandroid/view/KeyEvent;)V

    .line 589
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v9, v9, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v9}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    .line 590
    const/4 v2, 0x1

    .line 600
    .end local v4           #ch:I
    :cond_2
    :goto_2
    iput-boolean v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bHandle:Z

    move v9, v2

    .line 602
    :goto_3
    return v9

    .line 464
    :sswitch_0
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v9, v9, Lcom/htc/android/htcime/HTCIMMData;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    if-eqz v9, :cond_3

    .line 465
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v9, v9, Lcom/htc/android/htcime/HTCIMMData;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v9}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->isHasStopSign()Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsWritingTimeOut:Z

    .line 466
    :cond_3
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v9, v9, Lcom/htc/android/htcime/HTCIMMData;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    int-to-char v10, v1

    invoke-direct {p0, v9, v10, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->handleHandwriteChar(Landroid/view/inputmethod/InputConnection;CLandroid/view/KeyEvent;)V

    .line 467
    const/4 v2, 0x1

    .line 469
    iget-boolean v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsWritingTimeOut:Z

    if-eqz v9, :cond_2

    .line 470
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v9, v9, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/android/htcime/HTCIMMView;->setSIPVisibility(I)V

    goto :goto_2

    .line 474
    :sswitch_1
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v9, v9, Lcom/htc/android/htcime/HTCIMMData;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    int-to-char v10, v1

    invoke-virtual {p0, v9, v10, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->handleUnicodeChar(Landroid/view/inputmethod/InputConnection;CLandroid/view/KeyEvent;)V

    .line 475
    const/4 v2, 0x1

    .line 476
    goto :goto_2

    .line 479
    :sswitch_2
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v9, v9, Lcom/htc/android/htcime/HTCIMMData;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v9, v1, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->handleFNKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 480
    goto :goto_2

    .line 486
    :sswitch_3
    const-string v9, "PPLOG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PPInputMethod symbol: code = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    sparse-switch v1, :sswitch_data_1

    .line 512
    const/16 v9, 0x54

    if-eq v1, v9, :cond_5

    .line 515
    const/4 v9, 0x2

    iget-object v10, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v10, v10, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v9, v10, :cond_7

    .line 516
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mapLandPPSIPKeyIDToKeyCode:[I

    array-length v9, v9

    if-lt v1, v9, :cond_4

    .line 517
    const/4 v9, 0x0

    goto :goto_3

    .line 505
    :sswitch_4
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v9, v9, Lcom/htc/android/htcime/HTCIMMData;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    int-to-char v10, v1

    invoke-virtual {p0, v9, v10, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->handleUnicodeChar(Landroid/view/inputmethod/InputConnection;CLandroid/view/KeyEvent;)V

    .line 506
    const/4 v2, 0x1

    .line 507
    iput-boolean v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bHandle:Z

    move v9, v2

    .line 508
    goto :goto_3

    .line 519
    :cond_4
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mapLandPPSIPKeyIDToKeyCode:[I

    aget v1, v9, v1

    .line 543
    :cond_5
    :goto_4
    const/16 v9, 0x8

    if-eq v1, v9, :cond_6

    const/16 v9, 0xa

    if-eq v1, v9, :cond_6

    const/16 v9, 0x20

    if-ne v1, v9, :cond_a

    .line 548
    :cond_6
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mInputContext:Landroid/view/inputmethod/InputConnection;

    invoke-direct {p0, v9, v1, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->handleKeyboardKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_2

    .line 521
    :cond_7
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v9, v9, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v9}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v9

    iget v9, v9, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    sparse-switch v9, :sswitch_data_2

    goto :goto_4

    .line 532
    :sswitch_5
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mapPortPPSIPKeyIDToKeyCode:[I

    array-length v9, v9

    if-lt v1, v9, :cond_9

    .line 533
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 524
    :sswitch_6
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mapPortPPHighSIPKeyIDToKeyCode:[I

    array-length v9, v9

    if-lt v1, v9, :cond_8

    .line 525
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 527
    :cond_8
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mapPortPPHighSIPKeyIDToKeyCode:[I

    aget v1, v9, v1

    .line 528
    goto :goto_4

    .line 535
    :cond_9
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mapPortPPSIPKeyIDToKeyCode:[I

    aget v1, v9, v1

    goto :goto_4

    .line 549
    :cond_a
    const/16 v9, 0x54

    if-ne v1, v9, :cond_b

    .line 550
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v9, v9, Lcom/htc/android/htcime/HTCIMMData;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-direct {p0, v9, v1, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->handleSystemKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_2

    .line 552
    :cond_b
    int-to-char v9, v6

    invoke-direct {p0, v9}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->onSymbolKeyDown(C)V

    .line 553
    const/4 v2, 0x1

    .line 555
    goto/16 :goto_2

    .line 558
    :sswitch_7
    const/4 v2, 0x0

    .line 559
    goto/16 :goto_2

    .line 576
    .restart local v4       #ch:I
    .restart local v5       #fnState:Z
    .restart local v7       #kmap:Landroid/view/KeyCharacterMap;
    .restart local v8       #shift:I
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 580
    .restart local v3       #capMode:Z
    :cond_d
    if-eqz v3, :cond_e

    .line 581
    const/4 v9, 0x1

    invoke-virtual {v7, v6, v9}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v4

    goto/16 :goto_1

    .line 583
    :cond_e
    const/4 v9, 0x0

    invoke-virtual {v7, v6, v9}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v4

    goto/16 :goto_1

    .line 592
    .end local v3           #capMode:Z
    .end local v5           #fnState:Z
    .end local v7           #kmap:Landroid/view/KeyCharacterMap;
    .end local v8           #shift:I
    :cond_f
    iget-object v9, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mInputContext:Landroid/view/inputmethod/InputConnection;

    invoke-direct {p0, v9, v1, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->handleSystemKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_2

    .line 462
    :sswitch_data_0
    .sparse-switch
        -0x1000000 -> :sswitch_7
        0x1000000 -> :sswitch_3
        0x4000000 -> :sswitch_3
        0x7000000 -> :sswitch_2
        0x8000000 -> :sswitch_3
        0x9000000 -> :sswitch_3
        0xa000000 -> :sswitch_0
        0xf000000 -> :sswitch_1
    .end sparse-switch

    .line 490
    :sswitch_data_1
    .sparse-switch
        0x21 -> :sswitch_4
        0x27 -> :sswitch_4
        0x2c -> :sswitch_4
        0x2d -> :sswitch_4
        0x2e -> :sswitch_4
        0x2f -> :sswitch_4
        0x3a -> :sswitch_4
        0x3f -> :sswitch_4
        0x40 -> :sswitch_4
        0x5f -> :sswitch_4
        0x3002 -> :sswitch_4
        0xff01 -> :sswitch_4
        0xff0c -> :sswitch_4
        0xff1f -> :sswitch_4
    .end sparse-switch

    .line 521
    :sswitch_data_2
    .sparse-switch
        0x7 -> :sswitch_5
        0x11 -> :sswitch_6
    .end sparse-switch
.end method

.method public onKeyDown(Landroid/view/KeyEvent;II)Z
    .locals 1
    .parameter "event"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 357
    .local v2, keyCode:I
    const/4 v1, 0x0

    .line 358
    .local v1, bRet:Z
    const/high16 v3, -0x100

    and-int v0, v2, v3

    .line 363
    .local v0, HiKeyCode:I
    if-nez v0, :cond_0

    .line 364
    packed-switch v2, :pswitch_data_0

    .line 372
    :cond_0
    :goto_0
    sparse-switch v2, :sswitch_data_0

    :goto_1
    move v3, v1

    .line 392
    :goto_2
    return v3

    .line 367
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 379
    :sswitch_0
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    sget-object v4, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->DROP:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    if-ne v3, v4, :cond_1

    .line 380
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3, v2}, Lcom/htc/android/htcime/HTCIMMView;->onDpadKeyEventUp(I)Z

    .line 385
    :goto_3
    iget-boolean v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bHandle:Z

    goto :goto_2

    .line 382
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->procTouchWclBtn(I)Z

    goto :goto_3

    .line 388
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_1

    .line 364
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 372
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(Landroid/view/KeyEvent;II)Z
    .locals 1
    .parameter "event"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 345
    const/4 v0, 0x0

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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2871
    const/4 v1, -0x1

    .line 2872
    .local v1, retVal:I
    const/4 v0, 0x0

    .line 2873
    .local v0, ignore:Z
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mCPWCLCOMMIT:Z

    if-ne v2, v4, :cond_3

    .line 2874
    const/4 v0, 0x1

    .line 2896
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0, v3, v3}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->getWCLCount(IZ)I

    move-result v2

    if-gtz v2, :cond_1

    if-lez p7, :cond_2

    .line 2900
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v2

    iget-boolean v2, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->passUpdateSelection:Z

    if-nez v2, :cond_2

    .line 2907
    const/high16 v1, 0x71d

    .line 2910
    :cond_2
    return v1

    .line 2876
    :cond_3
    sub-int v2, p4, p3

    if-lez v2, :cond_6

    .line 2877
    sub-int v2, p1, p5

    if-lez v2, :cond_4

    sub-int v2, p2, p6

    if-lez v2, :cond_4

    if-gt p2, p4, :cond_4

    .line 2879
    const/4 v0, 0x1

    goto :goto_0

    .line 2880
    :cond_4
    sub-int v2, p6, p5

    if-lez v2, :cond_5

    if-ne p1, p2, :cond_5

    .line 2882
    const/4 v0, 0x1

    goto :goto_0

    .line 2883
    :cond_5
    sub-int v2, p5, p1

    if-ne v2, v4, :cond_0

    sub-int v2, p6, p2

    if-ne v2, v4, :cond_0

    if-le p6, p4, :cond_0

    .line 2885
    const/4 v0, 0x1

    goto :goto_0

    .line 2889
    :cond_6
    invoke-virtual {p0, v3, v3}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->getWCLCount(IZ)I

    move-result v2

    if-gtz v2, :cond_0

    .line 2891
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public preProcess()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public procTouchWclBtn(I)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 2351
    const/4 v0, 0x1

    .line 2352
    .local v0, bRet:Z
    sget-object v1, Lcom/htc/android/htcime/PPIME/PPInputMethod$2;->$SwitchMap$com$htc$android$htcime$PPIME$PPInputMethod$WclBtnMode:[I

    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    invoke-virtual {v2}, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2372
    :cond_0
    :goto_0
    return v0

    .line 2354
    :pswitch_0
    iget v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-lez v1, :cond_1

    .line 2355
    const/4 v0, 0x1

    goto :goto_0

    .line 2357
    :cond_1
    const/4 v0, 0x0

    .line 2358
    goto :goto_0

    .line 2361
    :pswitch_1
    if-ne p1, v3, :cond_0

    .line 2362
    sget-object v1, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    iput-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    goto :goto_0

    .line 2367
    :pswitch_2
    if-ne p1, v3, :cond_0

    .line 2368
    sget-object v1, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    iput-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    goto :goto_0

    .line 2352
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public procWclMove(Landroid/view/inputmethod/InputConnection;IZ)V
    .locals 6
    .parameter "inputContext"
    .parameter "newOffset"
    .parameter "bUpdateInlineText"

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 2294
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget v0, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectIdxLimit:I

    .line 2297
    .local v0, nSelectIdxLimit:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    if-nez v2, :cond_3

    iget v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    .line 2298
    .local v1, predictIdx:I
    :goto_1
    sget-object v2, Lcom/htc/android/htcime/PPIME/PPInputMethod$2;->$SwitchMap$com$htc$android$htcime$PPIME$PPInputMethod$WclBtnMode:[I

    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    invoke-virtual {v3}, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2337
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    if-nez v2, :cond_7

    .line 2338
    iput v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    .line 2339
    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    if-ltz v2, :cond_1

    .line 2340
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nPredictIdx:I

    aget-object v2, v2, v3

    invoke-direct {p0, p1, v2}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->replaceCandidateToEditor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 2348
    :cond_1
    :goto_3
    return-void

    .line 2294
    .end local v0           #nSelectIdxLimit:I
    .end local v1           #predictIdx:I
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iget v0, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imACSelectIdxLimit:I

    goto :goto_0

    .line 2297
    .restart local v0       #nSelectIdxLimit:I
    :cond_3
    iget v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    goto :goto_1

    .line 2300
    .restart local v1       #predictIdx:I
    :pswitch_0
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 2301
    if-ltz p2, :cond_4

    if-ge p2, v0, :cond_4

    .line 2302
    move v1, p2

    .line 2303
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    invoke-virtual {v2, v3, v1}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(II)V

    goto :goto_2

    .line 2304
    :cond_4
    if-ne p2, v5, :cond_0

    .line 2306
    const/4 v1, 0x0

    .line 2307
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    invoke-virtual {v2, v3, v1}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(II)V

    goto :goto_2

    .line 2312
    :cond_5
    if-ltz p2, :cond_6

    if-ge p2, v0, :cond_6

    .line 2313
    move v1, p2

    .line 2314
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    invoke-virtual {v2, v3, v1}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(II)V

    goto :goto_2

    .line 2315
    :cond_6
    if-ne p2, v0, :cond_0

    iget v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I

    if-eq p2, v2, :cond_0

    .line 2316
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    .line 2317
    sget-object v2, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->DROP:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    goto :goto_2

    .line 2322
    :pswitch_1
    if-ge p2, v0, :cond_0

    .line 2323
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    .line 2324
    sget-object v2, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    goto :goto_2

    .line 2328
    :pswitch_2
    if-ge p2, v0, :cond_0

    if-eq p2, v5, :cond_0

    .line 2329
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    .line 2330
    sget-object v2, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    iput-object v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mWclBtnMode:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    goto/16 :goto_2

    .line 2343
    :cond_7
    iput v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nAcPredictIdx:I

    goto :goto_3

    .line 2298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public restartInput()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setInputConnection(Landroid/os/IBinder;Landroid/view/inputmethod/InputConnection;)V
    .locals 0
    .parameter "appToken"
    .parameter "inputContext"

    .prologue
    .line 228
    iput-object p2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mInputContext:Landroid/view/inputmethod/InputConnection;

    .line 229
    iput-object p1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mAppToken:Landroid/os/IBinder;

    .line 230
    return-void
.end method

.method public startInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 285
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput v2, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    .line 286
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrChIMID:I

    .line 287
    iput-object v3, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_arrayStringWCL:[Ljava/lang/String;

    .line 289
    iput-boolean v2, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_bIsRecognizeFullWidth:Z

    .line 292
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->setInputConnection(Landroid/os/IBinder;Landroid/view/inputmethod/InputConnection;)V

    .line 304
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mXT9:Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->startInput()Z

    .line 305
    return-void
.end method

.method public unsetInputConnection()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mInputContext:Landroid/view/inputmethod/InputConnection;

    .line 236
    return-void
.end method
