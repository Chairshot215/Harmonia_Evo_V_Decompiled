.class public Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;
.super Ljava/lang/Object;
.source "XT9ForProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$1;,
        Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$MyBroadcastReceiver;,
        Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$MyContentObserver;
    }
.end annotation


# static fields
.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final DEBUG_DEBUG:I = 0x2

.field private static final DEBUG_DUMP:I = 0x0

.field private static final DEBUG_INFO:I = 0x3

.field private static final DEBUG_LEVEL:I = 0x2

.field private static final DEBUG_OFF:I = 0x9

.field private static final DEBUG_VERBOSE:I = 0x1

.field public static final INVALIDKEYCODE:I = -0x1

.field static final MAX_SUGGESTIONS_OF_SPELLCHECK_GENERAL:I = 0x5

.field private static final QWERTY_MAP:[C = null

.field static final ROW_KNOWN_WORD:[Ljava/lang/Object; = null

.field static final ROW_NON_WORD:[Ljava/lang/Object; = null

.field private static final SPELL_CORRECT_COLUMNS:[Ljava/lang/String; = null

.field private static final SPELL_CORRECT_LOCALE_ASSIGN_COLUMNS:[Ljava/lang/String; = null

.field static final TCCN_AllowedSymbol:[C = null

.field static final TCTW_AllowedSymbol:[C = null

.field private static final TYPO_CORRECT_COLUMNS:[Ljava/lang/String; = null

.field private static currSC_LDBID:I = 0x0

.field private static currSC_Locale:Ljava/lang/String; = null

.field private static sAPPContext:Landroid/content/Context; = null

.field private static sContent:Landroid/content/ContentResolver; = null

.field private static final sET:Ljava/lang/String; = "engineToken"

.field private static sReceiver:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$MyBroadcastReceiver;

.field private static sSupport_TypoCorrectTopWebsite:Z

.field private static sUDBNeedReload:Z

.field private static sUDBObserver:Landroid/database/ContentObserver;


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    sput-boolean v3, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sSupport_TypoCorrectTopWebsite:Z

    .line 48
    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sReceiver:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$MyBroadcastReceiver;

    .line 49
    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sUDBObserver:Landroid/database/ContentObserver;

    .line 50
    sput-boolean v3, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sUDBNeedReload:Z

    .line 52
    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sAPPContext:Landroid/content/Context;

    .line 56
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CORRECT_WORD"

    aput-object v2, v1, v3

    const-string v2, "_id"

    aput-object v2, v1, v4

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TYPO_CORRECT_COLUMNS:[Ljava/lang/String;

    .line 59
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CORRECT_WORD"

    aput-object v2, v1, v3

    const-string v2, "_id"

    aput-object v2, v1, v4

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->SPELL_CORRECT_COLUMNS:[Ljava/lang/String;

    .line 62
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "STATUS"

    aput-object v2, v1, v3

    const-string v2, "_id"

    aput-object v2, v1, v4

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->SPELL_CORRECT_LOCALE_ASSIGN_COLUMNS:[Ljava/lang/String;

    .line 267
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Y"

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->ROW_KNOWN_WORD:[Ljava/lang/Object;

    .line 268
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "N"

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->ROW_NON_WORD:[Ljava/lang/Object;

    .line 269
    const-string v1, "en"

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->currSC_Locale:Ljava/lang/String;

    .line 270
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/EZSIPView;->GetSysLocale(I)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->currSC_LDBID:I

    .line 481
    const/16 v1, 0x1a

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->QWERTY_MAP:[C

    .line 504
    new-array v1, v3, [C

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TCCN_AllowedSymbol:[C

    .line 505
    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TCTW_AllowedSymbol:[C

    .line 592
    :try_start_0
    const-string v1, "t9"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 593
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 595
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: XT9ForProvider could not load libt9.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :array_0
    .array-data 0x2
        0x71t 0x0t
        0x77t 0x0t
        0x65t 0x0t
        0x72t 0x0t
        0x74t 0x0t
        0x79t 0x0t
        0x75t 0x0t
        0x69t 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x61t 0x0t
        0x73t 0x0t
        0x64t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x7at 0x0t
        0x78t 0x0t
        0x63t 0x0t
        0x76t 0x0t
        0x62t 0x0t
        0x6et 0x0t
        0x6dt 0x0t
    .end array-data

    .line 505
    :array_1
    .array-data 0x2
        0x2et 0x0t
        0x2ft 0x0t
        0x3at 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TAG:Ljava/lang/String;

    .line 71
    sget-object v3, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sAPPContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 72
    sput-object p1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sAPPContext:Landroid/content/Context;

    .line 73
    sget-object v3, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sAPPContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 74
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeInitial(Landroid/content/res/AssetManager;)I

    .line 77
    const/4 v1, 0x1

    .line 78
    .local v1, doNotRun:Z
    if-nez v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->dummyRunForFroyo()V

    .line 82
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v1           #doNotRun:Z
    :cond_0
    sget-object v3, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sAPPContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sput-object v3, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sContent:Landroid/content/ContentResolver;

    .line 83
    sget-object v3, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sUDBObserver:Landroid/database/ContentObserver;

    if-nez v3, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->registerAll()V

    .line 88
    :cond_1
    :try_start_0
    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_2

    .line 89
    const/4 v3, 0x1

    sput-boolean v3, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sSupport_TypoCorrectTopWebsite:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_2
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, e:Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " parse sense version error!!  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sSupport_TypoCorrectTopWebsite:Z

    goto :goto_0
.end method

.method private TypoCorrectReqirementCheck([Ljava/lang/String;)Z
    .locals 3
    .parameter "selectionArgs"

    .prologue
    const/4 v0, 0x0

    .line 427
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->isHTCQwerty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TAG:Ljava/lang/String;

    const-string v2, "[TypoCorrectReqirementCheck] For HTC_IME QWERTY only."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :goto_0
    return v0

    .line 431
    :cond_0
    if-nez p1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TAG:Ljava/lang/String;

    const-string v2, "[TypoCorrectReqirementCheck] Illegal! Request\'s argument is null."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 435
    :cond_1
    aget-object v1, p1, v0

    if-nez v1, :cond_2

    .line 436
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TAG:Ljava/lang/String;

    const-string v2, "[TypoCorrectReqirementCheck] Illegal! Request\'s argument 1 is null."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 439
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    sput-boolean p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sUDBNeedReload:Z

    return p0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->unregisterAll()V

    return-void
.end method

.method public static getSIPKeyCode(C)I
    .locals 3
    .parameter "ch"

    .prologue
    .line 495
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 496
    .local v1, lch:C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->QWERTY_MAP:[C

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 497
    sget-object v2, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->QWERTY_MAP:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 500
    .end local v0           #i:I
    :goto_1
    return v0

    .line 496
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private hanldeDBContentSensitive(I)V
    .locals 0
    .parameter "mdb_type"

    .prologue
    .line 418
    invoke-static {p1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetMDB(I)V

    .line 419
    return-void
.end method

.method private initEngine(Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;[I)V
    .locals 6
    .parameter "imConf"
    .parameter "langID"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 377
    sget-boolean v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sUDBNeedReload:Z

    if-eqz v1, :cond_0

    .line 378
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeUDBReload()V

    .line 379
    sput-boolean v3, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sUDBNeedReload:Z

    .line 382
    :cond_0
    if-eqz p2, :cond_1

    .line 383
    aget v1, p2, v3

    aget v4, p2, v2

    invoke-static {v1, v4}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetLanguage(II)V

    .line 384
    :cond_1
    const/16 v1, 0xd09

    invoke-static {v1, v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetKdb(II)I

    .line 385
    invoke-static {v5}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetWordCompletePoint(I)V

    .line 390
    invoke-virtual {p1}, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->getFeatureMask()I

    move-result v0

    .line 392
    .local v0, fMask:I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetWordComplete(I)V

    .line 393
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetInputMode(I)V

    .line 394
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeEnableSpellCheck(Z)V

    .line 395
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    move v1, v2

    :goto_3
    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetExactInList(I)V

    .line 396
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    move v1, v2

    :goto_4
    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetAutoAppend(I)V

    .line 397
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_7

    move v1, v2

    :goto_5
    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeEnableAutoDownshift(I)V

    .line 398
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_8

    :goto_6
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeEnableWordStem(I)V

    .line 400
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetBigramEnabled(Z)I

    .line 402
    invoke-static {v5}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetSelLstMode(I)V

    .line 405
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetAmbigiousMode()V

    .line 408
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetKdbPage(I)V

    .line 410
    invoke-virtual {p1}, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->getMDBType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->hanldeDBContentSensitive(I)V

    .line 411
    return-void

    :cond_2
    move v1, v3

    .line 392
    goto :goto_0

    :cond_3
    move v1, v3

    .line 393
    goto :goto_1

    :cond_4
    move v1, v3

    .line 394
    goto :goto_2

    :cond_5
    move v1, v3

    .line 395
    goto :goto_3

    :cond_6
    move v1, v3

    .line 396
    goto :goto_4

    :cond_7
    move v1, v3

    .line 397
    goto :goto_5

    :cond_8
    move v2, v3

    .line 398
    goto :goto_6
.end method

.method private isAllowedSymbol(C[C)Z
    .locals 2
    .parameter "c"
    .parameter "allowedSymbols"

    .prologue
    .line 508
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 509
    aget-char v1, p2, v0

    if-ne p1, v1, :cond_0

    .line 510
    const/4 v1, 0x1

    .line 512
    :goto_1
    return v1

    .line 508
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static native nativeASDBAddWord([C[C)I
.end method

.method private static native nativeAddSymbol(I)V
.end method

.method private static native nativeAddSymbolOnly(II)V
.end method

.method private static native nativeBuildCandList()I
.end method

.method private static native nativeClearAllSymb()V
.end method

.method private static native nativeClearOneSymb()V
.end method

.method private static native nativeClearOneSymbOnly()V
.end method

.method private static native nativeContextBreak()I
.end method

.method private static native nativeContextFill(Ljava/lang/String;)I
.end method

.method private static native nativeDisableSubstituteString(I)V
.end method

.method private static native nativeDumpUDB()I
.end method

.method private static native nativeEnableAutoDownshift(I)V
.end method

.method private static native nativeEnableMDB(Z)I
.end method

.method private static native nativeEnableSpellCheck(Z)V
.end method

.method private static native nativeEnableWordStem(I)V
.end method

.method private static native nativeExportUDB(Ljava/lang/String;)I
.end method

.method private static native nativeGetActiveWordIndex()I
.end method

.method private static native nativeGetCandCount()I
.end method

.method private static native nativeGetCandString(I)Ljava/lang/String;
.end method

.method private static native nativeGetSubstituteString(I)Ljava/lang/String;
.end method

.method private static native nativeGetWCLString()Ljava/lang/String;
.end method

.method private static native nativeGetWordSrcType(I)I
.end method

.method private static native nativeImportUDB(Ljava/lang/String;)I
.end method

.method private static native nativeInitial(Landroid/content/res/AssetManager;)I
.end method

.method private static native nativeIsKnownWord([CI)I
.end method

.method private static native nativeIsMDBEnabled()Z
.end method

.method private static native nativeIsSCWord(I)Z
.end method

.method private static native nativeLockWord(I)I
.end method

.method private static native nativeNoteCandAccept(I)I
.end method

.method private static native nativeNoteWordCommit(Ljava/lang/String;)I
.end method

.method private static native nativePreRegCorrect(II)I
.end method

.method private static native nativePreRegCorrectDone()V
.end method

.method private static native nativeProcessKey(I)I
.end method

.method private static native nativeProcessKeyBySymbol(CZI)I
.end method

.method private static native nativeProcessKeyOnly(I)I
.end method

.method private static native nativeProcessTap(III)I
.end method

.method private static native nativeProcessTapOnly(III)I
.end method

.method private static native nativeProcessTrace([I)I
.end method

.method private static native nativeReselectWord([CI)I
.end method

.method private static native nativeResetUDB()I
.end method

.method private static native nativeScanArticleForCustomWord([C)I
.end method

.method private static native nativeSetAmbigiousMode()V
.end method

.method private static native nativeSetAutoAppend(I)V
.end method

.method private static native nativeSetAutoSubstitute(II)I
.end method

.method private static native nativeSetBigramEnabled(Z)I
.end method

.method private static native nativeSetExactInList(I)V
.end method

.method private static native nativeSetInputMode(I)V
.end method

.method private static native nativeSetKdb(II)I
.end method

.method private static native nativeSetKdbPage(I)V
.end method

.method private static native nativeSetLanguage(II)V
.end method

.method private static native nativeSetMDB(I)V
.end method

.method private static native nativeSetMultiTapDone()V
.end method

.method private static native nativeSetMultiTapMode()V
.end method

.method private static native nativeSetSelLstMode(I)V
.end method

.method private static native nativeSetShiftMode(I)V
.end method

.method private static native nativeSetWordComplete(I)V
.end method

.method private static native nativeSetWordCompletePoint(I)V
.end method

.method private static native nativeSetWordPredict(I)V
.end method

.method private static native nativeUDBReload()V
.end method

.method private queryTypoCorrect([Ljava/lang/String;[CLcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;)Landroid/database/MatrixCursor;
    .locals 14
    .parameter "selectionArgs"
    .parameter "allowedSymbol"
    .parameter "imConf"

    .prologue
    .line 191
    new-instance v7, Landroid/database/MatrixCursor;

    sget-object v10, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TYPO_CORRECT_COLUMNS:[Ljava/lang/String;

    invoke-direct {v7, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 194
    .local v7, mac:Landroid/database/MatrixCursor;
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TypoCorrectReqirementCheck([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 263
    :goto_0
    return-object v7

    .line 198
    :cond_0
    iget-object v10, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[queryTypoCorrect] src = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v10, 0x0

    aget-object v8, p1, v10

    .line 202
    .local v8, typoWord:Ljava/lang/String;
    const-string v11, "engineToken"

    monitor-enter v11

    .line 205
    const/4 v10, 0x2

    :try_start_0
    new-array v10, v10, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/htc/android/htcime/ezsip/EZSIPView;->GetSysLocale(I)I

    move-result v13

    aput v13, v10, v12

    const/4 v12, 0x1

    const/4 v13, -0x1

    invoke-static {v13}, Lcom/htc/android/htcime/ezsip/EZSIPView;->GetSysLocale(I)I

    move-result v13

    aput v13, v10, v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v10}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->initEngine(Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;[I)V

    .line 210
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeClearAllSymb()V

    .line 211
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v4, v10, :cond_3

    .line 213
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 214
    .local v2, ch:C
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->getSIPKeyCode(C)I

    move-result v6

    .line 216
    .local v6, keyID:I
    const/4 v10, -0x1

    if-ne v6, v10, :cond_2

    .line 218
    move-object/from16 v0, p2

    invoke-direct {p0, v2, v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->isAllowedSymbol(C[C)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 220
    const/4 v10, -0x1

    invoke-static {v2, v10}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeAddSymbolOnly(II)V

    .line 211
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 225
    :cond_1
    monitor-exit v11

    goto :goto_0

    .line 261
    .end local v2           #ch:C
    .end local v4           #i:I
    .end local v6           #keyID:I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 230
    .restart local v2       #ch:C
    .restart local v4       #i:I
    .restart local v6       #keyID:I
    :cond_2
    :try_start_1
    invoke-static {v6}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeProcessKeyOnly(I)I

    goto :goto_2

    .line 233
    .end local v2           #ch:C
    .end local v6           #keyID:I
    :cond_3
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeBuildCandList()I

    .line 237
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeGetCandCount()I

    move-result v1

    .line 239
    .local v1, cand_count:I
    const/4 v5, 0x0

    .local v5, index:I
    :goto_3
    if-ge v5, v1, :cond_5

    .line 241
    invoke-static {v5}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeGetWordSrcType(I)I

    move-result v9

    .line 242
    .local v9, wordSrcType:I
    const/4 v10, 0x3

    if-eq v9, v10, :cond_4

    .line 239
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 247
    :cond_4
    invoke-static {v5}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/android/htcime/XT9IME/XT9IME;->pureCandStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, correctWord:Ljava/lang/String;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v10, v12

    const/4 v12, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v12

    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4

    .line 259
    .end local v3           #correctWord:Ljava/lang/String;
    .end local v9           #wordSrcType:I
    :cond_5
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeClearAllSymb()V

    .line 261
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private registerAll()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 98
    const-string v1, "XT9ForProvider"

    const-string v2, "[registerAll]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$MyBroadcastReceiver;

    invoke-direct {v1, p0, v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$MyBroadcastReceiver;-><init>(Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$1;)V

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sReceiver:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$MyBroadcastReceiver;

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sAPPContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sReceiver:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$MyBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    new-instance v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$MyContentObserver;

    invoke-direct {v1, p0, v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$MyContentObserver;-><init>(Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;Landroid/os/Handler;)V

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sUDBObserver:Landroid/database/ContentObserver;

    .line 105
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sContent:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->URI_UDB_CHANGE:Landroid/net/Uri;

    const/4 v3, 0x0

    sget-object v4, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sUDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 106
    return-void
.end method

.method public static routeSolution(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 5
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TYPO_CORRECT_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 145
    .local v0, mac:Landroid/database/MatrixCursor;
    if-nez p0, :cond_1

    .line 160
    :cond_0
    return-object v0

    .line 148
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 157
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method private unregisterAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    const-string v0, "XT9ForProvider"

    const-string v1, "[unregisterAll]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sContent:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sUDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 112
    sput-object v2, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sUDBObserver:Landroid/database/ContentObserver;

    .line 114
    sget-object v0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sAPPContext:Landroid/content/Context;

    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sReceiver:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$MyBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    sput-object v2, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sReceiver:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$MyBroadcastReceiver;

    .line 116
    return-void
.end method


# virtual methods
.method public assignSpellCheckLocale([Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 7
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    .line 273
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->SPELL_CORRECT_LOCALE_ASSIGN_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 276
    .local v1, mac:Landroid/database/MatrixCursor;
    if-nez p1, :cond_0

    .line 277
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TAG:Ljava/lang/String;

    const-string v5, "[assignSpellCheckLocale] selectionArgs is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_0
    return-object v1

    .line 281
    :cond_0
    aget-object v4, p1, v5

    if-nez v4, :cond_1

    .line 282
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TAG:Ljava/lang/String;

    const-string v5, "[assignSpellCheckLocale] selectionArgs[0] is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_1
    aget-object v3, p1, v5

    .line 287
    .local v3, newLocale:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[assignSpellCheckLocale] src = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget-object v4, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->currSC_Locale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 290
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TAG:Ljava/lang/String;

    const-string v5, "[assignSpellCheckLocale] locale is equal to current locale."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    :cond_2
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, englishName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/LatinLDBInfo;->getLDBID(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 299
    .local v2, newLdbID:Ljava/lang/Integer;
    if-nez v2, :cond_3

    .line 300
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[assignSpellCheckLocale] Not support this language input! (language name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    :cond_3
    sput-object v3, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->currSC_Locale:Ljava/lang/String;

    .line 306
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->currSC_LDBID:I

    .line 308
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currSC_Locale = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->currSC_Locale:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", currSC_LDBID = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->currSC_LDBID:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method dummyRunForFroyo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 600
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeBuildCandList()I

    .line 601
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeGetWCLString()Ljava/lang/String;

    .line 602
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeGetSubstituteString(I)Ljava/lang/String;

    .line 603
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeDisableSubstituteString(I)V

    .line 604
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeGetCandCount()I

    .line 605
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeEnableSpellCheck(Z)V

    .line 606
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeProcessKey(I)I

    .line 607
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeProcessKeyOnly(I)I

    .line 608
    invoke-static {v2, v2, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeProcessTap(III)I

    .line 609
    invoke-static {v2, v2, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeProcessTapOnly(III)I

    .line 610
    new-array v0, v2, [I

    aput v2, v0, v3

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeProcessTrace([I)I

    .line 611
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeGetCandString(I)Ljava/lang/String;

    .line 612
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeClearOneSymb()V

    .line 613
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeClearOneSymbOnly()V

    .line 614
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeClearAllSymb()V

    .line 615
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetMultiTapMode()V

    .line 616
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetAmbigiousMode()V

    .line 617
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetMultiTapDone()V

    .line 618
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetShiftMode(I)V

    .line 619
    invoke-static {v2, v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetKdb(II)I

    .line 620
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetKdbPage(I)V

    .line 622
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeAddSymbol(I)V

    .line 623
    invoke-static {v2, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeAddSymbolOnly(II)V

    .line 624
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetWordComplete(I)V

    .line 625
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetAutoAppend(I)V

    .line 626
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetWordPredict(I)V

    .line 627
    invoke-static {v2, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetAutoSubstitute(II)I

    .line 628
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetInputMode(I)V

    .line 630
    invoke-static {v2, v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetLanguage(II)V

    .line 631
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeGetActiveWordIndex()I

    .line 632
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetWordCompletePoint(I)V

    .line 633
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeLockWord(I)I

    .line 635
    invoke-static {v2, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativePreRegCorrect(II)I

    .line 636
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativePreRegCorrectDone()V

    .line 638
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetExactInList(I)V

    .line 639
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetSelLstMode(I)V

    .line 640
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeIsKnownWord([CI)I

    .line 641
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeIsSCWord(I)Z

    .line 642
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeIsMDBEnabled()Z

    .line 643
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeASDBAddWord([C[C)I

    .line 644
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeScanArticleForCustomWord([C)I

    .line 645
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeReselectWord([CI)I

    .line 646
    const-string v0, ""

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeExportUDB(Ljava/lang/String;)I

    .line 647
    const-string v0, ""

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeImportUDB(Ljava/lang/String;)I

    .line 648
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeResetUDB()I

    .line 649
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeDumpUDB()I

    .line 650
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetMDB(I)V

    .line 651
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeGetWordSrcType(I)I

    .line 652
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeEnableWordStem(I)V

    .line 653
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeEnableAutoDownshift(I)V

    .line 654
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeEnableMDB(Z)I

    .line 656
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeSetBigramEnabled(Z)I

    .line 657
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeNoteCandAccept(I)I

    .line 658
    const-string v0, ""

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeNoteWordCommit(Ljava/lang/String;)I

    .line 659
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeContextBreak()I

    .line 660
    const-string v0, ""

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeContextFill(Ljava/lang/String;)I

    .line 662
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeUDBReload()V

    .line 663
    return-void
.end method

.method isHTCQwerty()Z
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 447
    const/4 v7, 0x0

    .line 449
    .local v7, retVal:Z
    sget-object v0, Lcom/htc/android/htcime/provider/HTCIMEProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "sip_status"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 450
    .local v1, uri:Landroid/net/Uri;
    sget-object v0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sContent:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 451
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 452
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TAG:Ljava/lang/String;

    const-string v2, "[isQWERTYKDB] Error occur while query HTC_IME provider about sip_status. (cursor is null)"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 472
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 474
    :cond_1
    return v7

    .line 454
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 455
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TAG:Ljava/lang/String;

    const-string v2, "[isQWERTYKDB] Error occur while query HTC_IME provider about sip_status. (cursor is empty)"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 458
    .local v10, sipState:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 459
    .local v8, sipLang:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 461
    .local v9, sipName:Ljava/lang/String;
    const-string v0, "SHOW"

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EN"

    invoke-virtual {v8, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SIP_PORT_QWERTY_US"

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SIP_LAND_QWERTY_US"

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 465
    :cond_4
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public querySpellCheck_General([Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 11
    .parameter "selectionArgs"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 314
    new-instance v5, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->SPELL_CORRECT_COLUMNS:[Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 317
    .local v5, mac:Landroid/database/MatrixCursor;
    if-nez p1, :cond_0

    .line 318
    sget-object v6, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->ROW_KNOWN_WORD:[Ljava/lang/Object;

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 373
    :goto_0
    return-object v5

    .line 322
    :cond_0
    aget-object v6, p1, v9

    if-nez v6, :cond_1

    .line 323
    sget-object v6, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->ROW_KNOWN_WORD:[Ljava/lang/Object;

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[querySpellCheck_General] src = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p1, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    aget-object v2, p1, v9

    .line 331
    .local v2, exactWord:Ljava/lang/String;
    const-string v7, "engineToken"

    monitor-enter v7

    .line 334
    :try_start_0
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeClearAllSymb()V

    .line 337
    new-instance v3, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;

    invoke-direct {v3}, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;-><init>()V

    .line 338
    .local v3, imConf:Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->setFeatureMask(I)V

    .line 339
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->setMDBType(I)V

    .line 340
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v8, 0x0

    sget v9, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->currSC_LDBID:I

    aput v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-static {v9}, Lcom/htc/android/htcime/ezsip/EZSIPView;->GetSysLocale(I)I

    move-result v9

    aput v9, v6, v8

    invoke-direct {p0, v3, v6}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->initEngine(Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;[I)V

    .line 345
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v8}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeIsKnownWord([CI)I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 346
    sget-object v6, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->ROW_KNOWN_WORD:[Ljava/lang/Object;

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 347
    monitor-exit v7

    goto :goto_0

    .line 371
    .end local v3           #imConf:Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 349
    .restart local v3       #imConf:Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;
    :cond_2
    :try_start_1
    sget-object v6, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->ROW_NON_WORD:[Ljava/lang/Object;

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 352
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v8}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeReselectWord([CI)I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 353
    .local v0, cand_count:I
    if-gtz v0, :cond_3

    .line 354
    monitor-exit v7

    goto/16 :goto_0

    .line 357
    :cond_3
    const/4 v4, 0x0

    .local v4, index:I
    :goto_1
    if-ge v4, v0, :cond_4

    const/4 v6, 0x5

    if-ge v4, v6, :cond_4

    .line 359
    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->pureCandStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, correctWord:Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v6, v8

    const/4 v8, 0x1

    add-int/lit8 v9, v4, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 357
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 371
    .end local v1           #correctWord:Ljava/lang/String;
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public queryTypoCorrectContactsDisplayName([Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 2
    .parameter "selectionArgs"

    .prologue
    .line 170
    new-instance v0, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;

    invoke-direct {v0}, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;-><init>()V

    .line 171
    .local v0, imConf:Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;
    const/16 v1, 0x802

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->setFeatureMask(I)V

    .line 172
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->setMDBType(I)V

    .line 174
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TCCN_AllowedSymbol:[C

    invoke-direct {p0, p1, v1, v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->queryTypoCorrect([Ljava/lang/String;[CLcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;)Landroid/database/MatrixCursor;

    move-result-object v1

    return-object v1
.end method

.method public queryTypoCorrectTopWebsite([Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 4
    .parameter "selectionArgs"

    .prologue
    .line 178
    sget-boolean v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->sSupport_TypoCorrectTopWebsite:Z

    if-nez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[queryTypoCorrectTopWebsite] Feature does not support for this version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TYPO_CORRECT_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 187
    :goto_0
    return-object v1

    .line 183
    :cond_0
    new-instance v0, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;

    invoke-direct {v0}, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;-><init>()V

    .line 184
    .local v0, imConf:Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->setFeatureMask(I)V

    .line 185
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->setMDBType(I)V

    .line 187
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->TCTW_AllowedSymbol:[C

    invoke-direct {p0, p1, v1, v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->queryTypoCorrect([Ljava/lang/String;[CLcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;)Landroid/database/MatrixCursor;

    move-result-object v1

    goto :goto_0
.end method
