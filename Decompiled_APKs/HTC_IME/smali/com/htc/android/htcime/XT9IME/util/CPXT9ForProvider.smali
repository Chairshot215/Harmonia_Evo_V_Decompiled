.class public Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;
.super Ljava/lang/Object;
.source "CPXT9ForProvider.java"


# static fields
.field private static final CP_CHAR_END:C = '\u312f'

.field private static final CP_CHAR_SEPARATE:C = '\u312e'

.field private static final CP_CHAR_START:C = '\u3100'

.field private static final DEBUG:Z = true

.field protected static final DEBUG_DUMP:Z = true

.field protected static final DEBUG_TAG:Ljava/lang/String; = "XT9_CIME_PROVIDER_J"

.field private static final DEFAULT_NXT_PRED_COLUMNS:[Ljava/lang/String; = null

.field private static final DEFAULT_SPELLING_COLUMNS:[Ljava/lang/String; = null

.field private static final DEFAULT_TIMESTAMP_COLUMNS:[Ljava/lang/String; = null

.field private static final DEFAULT_UDBCONTENT_COLUMNS:[Ljava/lang/String; = null

.field private static final LANG_MULTISPELLING_TYPE:I = 0x100

.field private static final LANG_SC:I = 0x2

.field private static final LANG_SC_PINYIN:I = 0x3

.field private static final LANG_TC:I = 0x1

.field private static final LANG_TC_BPMF:I = 0x1

.field private static final LANG_TC_PINYIN:I = 0x2

.field private static final PREDICTION_COUNT:I = 0x14

.field protected static sAPPContext:Landroid/content/Context;


# instance fields
.field private SC_LDB_RES_ID:I

.field final TAG:Ljava/lang/String;

.field private TC_LDB_RES_ID:I

.field UDB_BAK_FILEPATH:[Ljava/lang/String;

.field XT9_Phrase_Length:I

.field XT9_Phrase_String:Ljava/lang/String;

.field XT9_Spell_Length:I

.field XT9_Spell_String:Ljava/lang/String;

.field XT9_UDB_Count:I

.field private bInitialEngine:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->sAPPContext:Landroid/content/Context;

    .line 81
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DEAULT_SPELLING"

    aput-object v2, v1, v3

    const-string v2, "_id"

    aput-object v2, v1, v4

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->DEFAULT_SPELLING_COLUMNS:[Ljava/lang/String;

    .line 85
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "NEXT_PREDICTION"

    aput-object v2, v1, v3

    const-string v2, "_id"

    aput-object v2, v1, v4

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->DEFAULT_NXT_PRED_COLUMNS:[Ljava/lang/String;

    .line 89
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TIMESTAMP"

    aput-object v2, v1, v3

    const-string v2, "_id"

    aput-object v2, v1, v4

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->DEFAULT_TIMESTAMP_COLUMNS:[Ljava/lang/String;

    .line 93
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "UDB_CONTENT"

    aput-object v2, v1, v3

    const-string v2, "_id"

    aput-object v2, v1, v4

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->DEFAULT_UDBCONTENT_COLUMNS:[Ljava/lang/String;

    .line 693
    :try_start_0
    const-string v1, "cpt9provider"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 694
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 696
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load libcpt9provider.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "/data/data/com.htc.android.htcime/cp_tc_udb_bak.dat"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/data/data/com.htc.android.htcime/cp_sc_udb_bak.dat"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/data/data/com.htc.android.htcime/cp_tc_hw_udb_bak.dat"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/data/data/com.htc.android.htcime/cp_sc_hw_udb_bak.dat"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->UDB_BAK_FILEPATH:[Ljava/lang/String;

    .line 67
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->bInitialEngine:Z

    .line 68
    iput v3, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->TC_LDB_RES_ID:I

    .line 69
    iput v3, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->SC_LDB_RES_ID:I

    .line 73
    sget-object v0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->sAPPContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 74
    sput-object p1, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->sAPPContext:Landroid/content/Context;

    .line 76
    sget-object v0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->sAPPContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ldb_00e0"

    const-string v2, "raw"

    const-string v3, "com.htc.android.htcime"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->TC_LDB_RES_ID:I

    .line 77
    sget-object v0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->sAPPContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ldb_00e1"

    const-string v2, "raw"

    const-string v3, "com.htc.android.htcime"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->SC_LDB_RES_ID:I

    .line 79
    :cond_0
    return-void
.end method

.method private LoadDictionary(II)Z
    .locals 11
    .parameter "res_id"
    .parameter "db_type"

    .prologue
    const/4 v10, 0x0

    .line 616
    const/4 v7, 0x0

    .line 620
    .local v7, afd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    sget-object v0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->sAPPContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 625
    :goto_0
    if-nez v7, :cond_0

    .line 648
    :goto_1
    return v10

    .line 621
    :catch_0
    move-exception v8

    .line 622
    .local v8, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v0, "XT9_CIME_PROVIDER_J"

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

    .line 629
    .end local v8           #ex:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    const/4 v9, -0x1

    .line 632
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

    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeLoadDictionary(Ljava/io/FileDescriptor;JJI)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v9

    .line 642
    :goto_2
    :try_start_2
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 648
    :goto_3
    if-gez v9, :cond_1

    move v0, v10

    :goto_4
    move v10, v0

    goto :goto_1

    .line 633
    :catch_1
    move-exception v8

    .line 634
    .local v8, ex:Ljava/io/IOException;
    const-string v0, "XT9_CIME_PROVIDER_J"

    const-string v1, "nativeLoadDictionary failed:"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 635
    .end local v8           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 636
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "XT9_CIME_PROVIDER_J"

    const-string v1, "nativeLoadDictionary failed:"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 637
    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v8

    .line 638
    .local v8, ex:Ljava/lang/IllegalStateException;
    const-string v0, "XT9_CIME_PROVIDER_J"

    const-string v1, "nativeLoadDictionary failed:"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 648
    .end local v8           #ex:Ljava/lang/IllegalStateException;
    :cond_1
    const/4 v0, 0x1

    goto :goto_4

    .line 644
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method private initEngine()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 470
    iget-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->bInitialEngine:Z

    if-nez v1, :cond_0

    .line 471
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9InitialV62(Z)I

    move-result v0

    .line 472
    .local v0, status:I
    if-eqz v0, :cond_1

    .line 473
    const-string v1, "XT9_CIME_PROVIDER_J"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[startInput] Initial engine status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .end local v0           #status:I
    :cond_0
    :goto_0
    return v4

    .line 475
    .restart local v0       #status:I
    :cond_1
    const-string v1, "XT9_CIME_PROVIDER_J"

    const-string v2, "[startInput] Initial engine success."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iput-boolean v4, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->bInitialEngine:Z

    .line 477
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPSetPartialSpell()I

    goto :goto_0
.end method

.method private initLanguageAndSpelling(I)Z
    .locals 8
    .parameter "language_spell_type"

    .prologue
    const/4 v4, 0x0

    .line 487
    const/4 v1, 0x0

    .local v1, ldb_res_id:I
    const/4 v2, 0x0

    .local v2, ldb_res_num:I
    const/4 v0, 0x0

    .line 489
    .local v0, input_type:I
    packed-switch p1, :pswitch_data_0

    .line 493
    iget v1, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->TC_LDB_RES_ID:I

    .line 494
    const/16 v2, 0xe0

    .line 495
    const/4 v0, 0x1

    .line 514
    :goto_0
    const/4 v5, 0x2

    invoke-direct {p0, v1, v5}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->LoadDictionary(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 515
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->TAG:Ljava/lang/String;

    const-string v6, "[initLanguageAndSpelling]Load LDB fail!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    :goto_1
    return v4

    .line 500
    :pswitch_0
    iget v1, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->TC_LDB_RES_ID:I

    .line 501
    const/16 v2, 0xe0

    .line 502
    const/4 v0, 0x0

    .line 504
    goto :goto_0

    .line 507
    :pswitch_1
    iget v1, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->SC_LDB_RES_ID:I

    .line 508
    const/16 v2, 0xe1

    .line 509
    const/4 v0, 0x0

    goto :goto_0

    .line 519
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPLdbInit(I)I

    move-result v3

    .line 520
    .local v3, ret:I
    if-eqz v3, :cond_3

    .line 521
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[initLanguageAndSpelling]nativeXT9CPLdbInit fail! status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/16 v5, 0x20

    if-ne v5, v3, :cond_0

    .line 525
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbInit(I)I

    move-result v3

    .line 527
    if-eqz v3, :cond_2

    .line 528
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[initLanguageAndSpelling]nativeXT9CPUdbInit(AGAIN) fail! status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 532
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPLdbInit(I)I

    move-result v3

    .line 533
    if-eqz v3, :cond_3

    .line 534
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[initLanguageAndSpelling]nativeXT9CPLdbInit(AGAIN) fail! status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 542
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPSetInputMode(I)I

    move-result v3

    .line 543
    if-eqz v3, :cond_4

    .line 544
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->TAG:Ljava/lang/String;

    const-string v6, "[initLanguageAndSpelling]nativeXT9CPSetInputMode fail!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 548
    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method buildPhraseList(I)Ljava/lang/String;
    .locals 9
    .parameter "count"

    .prologue
    const/4 v8, 0x0

    .line 554
    const-string v0, "[buildPhraseList]"

    .line 556
    .local v0, DbgFunTag:Ljava/lang/String;
    const/4 v2, 0x0

    .line 557
    .local v2, status:I
    const/4 v1, 0x0

    .line 558
    .local v1, index:I
    const-string v3, ""

    .line 559
    .local v3, strPhrase:Ljava/lang/String;
    const-string v4, ""

    .line 561
    .local v4, strRet:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPGetPhrase(I)I

    move-result v2

    .line 563
    const/16 v5, 0x22

    if-ne v5, v2, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPBuildSelectionList()I

    move-result v2

    .line 566
    const-string v5, "XT9_CIME_PROVIDER_J"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "nativeXT9CPBuildSelectionList status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    if-eqz v2, :cond_0

    .line 569
    const-string v5, ""

    .line 607
    :goto_0
    return-object v5

    .line 572
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 573
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPGetPhrase(I)I

    move-result v2

    .line 575
    const-string v5, "XT9_CIME_PROVIDER_J"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "nativeXT9CPGetPhrase("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    if-eqz v2, :cond_2

    :cond_1
    move-object v5, v4

    .line 607
    goto :goto_0

    .line 580
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->XT9_Phrase_String:Ljava/lang/String;

    .line 582
    if-eqz v3, :cond_5

    .line 585
    const v5, 0xff0c

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_1

    .line 590
    const/16 v5, 0x6211

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_3

    .line 592
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPGetPhrase(I)I

    move-result v2

    .line 594
    if-nez v2, :cond_3

    .line 595
    const/16 v5, 0x4f60

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->XT9_Phrase_String:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_1

    .line 600
    :cond_3
    if-lez v1, :cond_4

    .line 601
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 603
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 572
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public mergeUDBFile(I)V
    .locals 11
    .parameter "udb_type"

    .prologue
    const/4 v2, 0x3

    const/4 v9, 0x1

    .line 376
    const/4 v6, 0x1

    .line 378
    .local v6, status:I
    const-string v7, ""

    .line 379
    .local v7, udb_string:Ljava/lang/String;
    const/16 v8, 0x100

    new-array v0, v8, [C

    .line 384
    .local v0, c:[C
    iget v8, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->TC_LDB_RES_ID:I

    if-nez v8, :cond_1

    iget v8, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->SC_LDB_RES_ID:I

    if-nez v8, :cond_1

    .line 385
    const-string v8, "XT9_CIME_PROVIDER_J"

    const-string v9, "writeUDBString resource NOT exist!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    if-lt p1, v9, :cond_0

    const/4 v8, 0x4

    if-gt p1, v8, :cond_0

    .line 392
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->UDB_BAK_FILEPATH:[Ljava/lang/String;

    aget-object v4, v8, p1

    .line 396
    .local v4, path:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 398
    .local v5, reader:Ljava/io/FileReader;
    invoke-virtual {v5, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 400
    .local v3, length:I
    if-nez v3, :cond_2

    .line 402
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 454
    .end local v3           #length:I
    .end local v5           #reader:Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 456
    .local v1, fnf:Ljava/io/FileNotFoundException;
    const-string v8, "XT9_CIME_PROVIDER_J"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[mergeUDBFile] File("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") is not exist!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 406
    .end local v1           #fnf:Ljava/io/FileNotFoundException;
    .restart local v3       #length:I
    .restart local v5       #reader:Ljava/io/FileReader;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 408
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->initEngine()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 411
    if-eq v9, p1, :cond_3

    if-ne v2, p1, :cond_4

    :cond_3
    const/4 v2, 0x2

    .line 414
    .local v2, lang_type:I
    :cond_4
    invoke-direct {p0, v2}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->initLanguageAndSpelling(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 417
    packed-switch p1, :pswitch_data_0

    .line 432
    :goto_1
    if-eqz v6, :cond_5

    .line 433
    const-string v8, "XT9_CIME_PROVIDER_J"

    const-string v9, "[mergeUDBFile] Initial UDB fail."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 458
    .end local v2           #lang_type:I
    .end local v3           #length:I
    .end local v5           #reader:Ljava/io/FileReader;
    :catch_1
    move-exception v1

    .line 460
    .local v1, fnf:Ljava/io/IOException;
    const-string v8, "XT9_CIME_PROVIDER_J"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[mergeUDBFile] File("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") IO error!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 419
    .end local v1           #fnf:Ljava/io/IOException;
    .restart local v2       #lang_type:I
    .restart local v3       #length:I
    .restart local v5       #reader:Ljava/io/FileReader;
    :pswitch_0
    const/16 v8, 0xe0

    :try_start_2
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbInit(I)I

    move-result v6

    .line 420
    goto :goto_1

    .line 422
    :pswitch_1
    const/16 v8, 0xe4

    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbInit(I)I

    move-result v6

    .line 423
    goto :goto_1

    .line 425
    :pswitch_2
    const/16 v8, 0xe1

    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbInit(I)I

    move-result v6

    .line 426
    goto :goto_1

    .line 428
    :pswitch_3
    const/16 v8, 0xe5

    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbInit(I)I

    move-result v6

    goto :goto_1

    .line 437
    :cond_5
    packed-switch p1, :pswitch_data_1

    .line 452
    :goto_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPCommitUDBBuffer()I

    goto/16 :goto_0

    .line 439
    :pswitch_4
    const/16 v8, 0xe0

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbRestore(IZ)I

    move-result v6

    .line 440
    goto :goto_2

    .line 442
    :pswitch_5
    const/16 v8, 0xe4

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbRestore(IZ)I

    move-result v6

    .line 443
    goto :goto_2

    .line 445
    :pswitch_6
    const/16 v8, 0xe1

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbRestore(IZ)I

    move-result v6

    .line 446
    goto :goto_2

    .line 448
    :pswitch_7
    const/16 v8, 0xe5

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbRestore(IZ)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    goto :goto_2

    .line 417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 437
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
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

.method public native nativeXT9CPBuildSelectionList()I
.end method

.method public native nativeXT9CPCommitUDBBuffer()I
.end method

.method public native nativeXT9CPGetCharSpellString(CZI)Ljava/lang/String;
.end method

.method public native nativeXT9CPGetPhrase(I)I
.end method

.method public native nativeXT9CPLdbInit(I)I
.end method

.method public native nativeXT9CPSetContext(Ljava/lang/String;)I
.end method

.method public native nativeXT9CPSetInputMode(I)I
.end method

.method public native nativeXT9CPSetPartialSpell()I
.end method

.method public native nativeXT9CPUdbAddPhrase(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native nativeXT9CPUdbBackup(ILjava/lang/String;)I
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

.method public native nativeXT9ClearAllSymbs()I
.end method

.method public native nativeXT9InitialV62(Z)I
.end method

.method public queryChineseNextPredition([Ljava/lang/String;I)Landroid/database/MatrixCursor;
    .locals 11
    .parameter "selectionArgs"
    .parameter "lang_type"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 196
    iget v7, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->TC_LDB_RES_ID:I

    if-nez v7, :cond_1

    iget v7, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->SC_LDB_RES_ID:I

    if-nez v7, :cond_1

    .line 197
    const-string v6, "XT9_CIME_PROVIDER_J"

    const-string v7, "queryChineseNextPredition resource NOT exist!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    :goto_0
    return-object v3

    .line 201
    :cond_1
    if-eqz p1, :cond_0

    .line 204
    if-lt p2, v6, :cond_0

    if-gt p2, v10, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->initEngine()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 210
    if-ne v6, p2, :cond_2

    move v2, v6

    .line 212
    .local v2, lang_spell_type:I
    :goto_1
    invoke-direct {p0, v2}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->initLanguageAndSpelling(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 215
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->DEFAULT_NXT_PRED_COLUMNS:[Ljava/lang/String;

    invoke-direct {v3, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 217
    .local v3, mac:Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v7, p1

    if-ge v1, v7, :cond_4

    .line 218
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9ClearAllSymbs()I

    .line 220
    const-string v5, ""

    .line 222
    .local v5, string_nxt_pred:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, c_index:I
    :goto_3
    aget-object v7, p1, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 223
    aget-object v7, p1, v1

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPSetContext(Ljava/lang/String;)I

    move-result v4

    .line 224
    .local v4, ret:I
    const/16 v7, 0x14

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->buildPhraseList(I)Ljava/lang/String;

    move-result-object v5

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 210
    .end local v0           #c_index:I
    .end local v1           #i:I
    .end local v2           #lang_spell_type:I
    .end local v3           #mac:Landroid/database/MatrixCursor;
    .end local v4           #ret:I
    .end local v5           #string_nxt_pred:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x3

    goto :goto_1

    .line 227
    .restart local v0       #c_index:I
    .restart local v1       #i:I
    .restart local v2       #lang_spell_type:I
    .restart local v3       #mac:Landroid/database/MatrixCursor;
    .restart local v5       #string_nxt_pred:Ljava/lang/String;
    :cond_3
    new-array v7, v10, [Ljava/lang/Object;

    aput-object v5, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v3, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 230
    .end local v0           #c_index:I
    .end local v5           #string_nxt_pred:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9ClearAllSymbs()I

    goto :goto_0
.end method

.method public queryChineseSpelling([Ljava/lang/String;I)Landroid/database/MatrixCursor;
    .locals 11
    .parameter "selectionArgs"
    .parameter "lang_spell_type"

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 103
    .local v1, bMultiSpellingSupport:Z
    iget v8, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->TC_LDB_RES_ID:I

    if-nez v8, :cond_0

    iget v8, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->SC_LDB_RES_ID:I

    if-nez v8, :cond_0

    .line 104
    const-string v8, "XT9_CIME_PROVIDER_J"

    const-string v9, "queryChineseSpelling resource NOT exist!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v5, 0x0

    .line 187
    :goto_0
    return-object v5

    .line 108
    :cond_0
    if-nez p1, :cond_1

    .line 109
    const/4 v5, 0x0

    goto :goto_0

    .line 111
    :cond_1
    const/16 v8, 0x100

    if-lt p2, v8, :cond_2

    .line 112
    add-int/lit16 p2, p2, -0x100

    .line 113
    const/4 v1, 0x1

    .line 116
    :cond_2
    const/4 v8, 0x1

    if-lt p2, v8, :cond_3

    const/4 v8, 0x3

    if-le p2, v8, :cond_4

    .line 117
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 119
    :cond_4
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->initEngine()Z

    move-result v8

    if-nez v8, :cond_5

    .line 120
    const/4 v5, 0x0

    goto :goto_0

    .line 122
    :cond_5
    invoke-direct {p0, p2}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->initLanguageAndSpelling(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 123
    const/4 v5, 0x0

    goto :goto_0

    .line 125
    :cond_6
    new-instance v5, Landroid/database/MatrixCursor;

    sget-object v8, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->DEFAULT_SPELLING_COLUMNS:[Ljava/lang/String;

    invoke-direct {v5, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 127
    .local v5, mac:Landroid/database/MatrixCursor;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v8, p1

    if-ge v4, v8, :cond_d

    .line 128
    const-string v7, ""

    .line 130
    .local v7, string_spell:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, c_index:I
    :goto_2
    aget-object v8, p1, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_c

    .line 131
    aget-object v8, p1, v4

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 150
    .local v6, parse_char:C
    if-eqz v1, :cond_a

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, alt_index:I
    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8, v0}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPGetCharSpellString(CZI)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, char_spelling:Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 156
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3100

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 158
    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    .line 159
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 160
    add-int/lit8 v0, v0, 0x1

    .line 161
    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8, v0}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPGetCharSpellString(CZI)Ljava/lang/String;

    move-result-object v3

    .line 163
    if-eqz v3, :cond_7

    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x312e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 167
    :cond_8
    if-nez v0, :cond_9

    .line 168
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 130
    .end local v0           #alt_index:I
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 170
    .restart local v0       #alt_index:I
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x312f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 173
    .end local v0           #alt_index:I
    .end local v3           #char_spelling:Ljava/lang/String;
    :cond_a
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v8, v9}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPGetCharSpellString(CZI)Ljava/lang/String;

    move-result-object v3

    .line 175
    .restart local v3       #char_spelling:Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3100

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x312f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 178
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 182
    .end local v3           #char_spelling:Ljava/lang/String;
    .end local v6           #parse_char:C
    :cond_c
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 127
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 185
    .end local v2           #c_index:I
    .end local v7           #string_spell:Ljava/lang/String;
    :cond_d
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9ClearAllSymbs()I

    goto/16 :goto_0
.end method

.method public queryUDBString(I)Landroid/database/MatrixCursor;
    .locals 10
    .parameter "udb_type"

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 279
    const/4 v3, 0x1

    .line 281
    .local v3, status:I
    const-string v4, ""

    .line 285
    .local v4, udb_string:Ljava/lang/String;
    iget v7, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->TC_LDB_RES_ID:I

    if-nez v7, :cond_0

    iget v7, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->SC_LDB_RES_ID:I

    if-nez v7, :cond_0

    .line 286
    const-string v5, "XT9_CIME_PROVIDER_J"

    const-string v7, "queryUDBString resource NOT exist!!!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v6

    .line 340
    :goto_0
    return-object v2

    .line 290
    :cond_0
    if-lt p1, v8, :cond_1

    const/4 v7, 0x4

    if-le p1, v7, :cond_2

    :cond_1
    move-object v2, v6

    .line 291
    goto :goto_0

    .line 293
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->initEngine()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v2, v6

    .line 294
    goto :goto_0

    .line 296
    :cond_3
    if-eq v8, p1, :cond_4

    if-ne v1, p1, :cond_5

    :cond_4
    move v1, v5

    .line 299
    .local v1, lang_type:I
    :cond_5
    invoke-direct {p0, v1}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->initLanguageAndSpelling(I)Z

    move-result v7

    if-nez v7, :cond_6

    move-object v2, v6

    .line 300
    goto :goto_0

    .line 302
    :cond_6
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->DEFAULT_UDBCONTENT_COLUMNS:[Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 304
    .local v2, mac:Landroid/database/MatrixCursor;
    packed-switch p1, :pswitch_data_0

    .line 319
    :goto_1
    if-nez v3, :cond_b

    .line 320
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbGetPhraseCount()I

    move-result v3

    .line 322
    if-eqz v3, :cond_7

    move-object v2, v6

    .line 323
    goto :goto_0

    .line 306
    :pswitch_0
    const/16 v7, 0xe0

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbInit(I)I

    move-result v3

    .line 307
    goto :goto_1

    .line 309
    :pswitch_1
    const/16 v7, 0xe4

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbInit(I)I

    move-result v3

    .line 310
    goto :goto_1

    .line 312
    :pswitch_2
    const/16 v7, 0xe1

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbInit(I)I

    move-result v3

    .line 313
    goto :goto_1

    .line 315
    :pswitch_3
    const/16 v7, 0xe5

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbInit(I)I

    move-result v3

    goto :goto_1

    .line 325
    :cond_7
    iget v7, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->XT9_UDB_Count:I

    if-nez v7, :cond_8

    move-object v2, v6

    .line 326
    goto :goto_0

    .line 328
    :cond_8
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v6, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->XT9_UDB_Count:I

    if-ge v0, v6, :cond_a

    .line 329
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbGetPhrase(I)I

    move-result v6

    if-nez v6, :cond_9

    .line 330
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->XT9_Phrase_String:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 331
    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->XT9_UDB_Count:I

    if-ge v6, v7, :cond_9

    .line 332
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 328
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 335
    :cond_a
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .end local v0           #i:I
    :cond_b
    move-object v2, v6

    .line 337
    goto/16 :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public queryUDBTimestamp(I)Landroid/database/MatrixCursor;
    .locals 10
    .parameter "udb_type"

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 238
    const-string v0, ""

    .line 242
    .local v0, key:Ljava/lang/String;
    iget v5, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->TC_LDB_RES_ID:I

    if-nez v5, :cond_1

    iget v5, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->SC_LDB_RES_ID:I

    if-nez v5, :cond_1

    .line 243
    const-string v5, "XT9_CIME_PROVIDER_J"

    const-string v6, "queryUDBTimestamp resource NOT exist!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    :goto_0
    return-object v1

    .line 247
    :cond_1
    if-lt p1, v8, :cond_0

    const/4 v5, 0x4

    if-gt p1, v5, :cond_0

    .line 250
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->DEFAULT_TIMESTAMP_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 252
    .local v1, mac:Landroid/database/MatrixCursor;
    packed-switch p1, :pswitch_data_0

    .line 267
    :goto_1
    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 268
    sget-object v5, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->sAPPContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 269
    .local v2, sp:Landroid/content/SharedPreferences;
    const-wide/16 v5, 0x0

    invoke-interface {v2, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 270
    .local v3, timestamp:J
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 254
    .end local v2           #sp:Landroid/content/SharedPreferences;
    .end local v3           #timestamp:J
    :pswitch_0
    const-string v0, "udb_normal_tc_timestamp"

    .line 255
    goto :goto_1

    .line 257
    :pswitch_1
    const-string v0, "udb_normal_hwtc_timestamp"

    .line 258
    goto :goto_1

    .line 260
    :pswitch_2
    const-string v0, "udb_normal_sc_timestamp"

    .line 261
    goto :goto_1

    .line 263
    :pswitch_3
    const-string v0, "udb_normal_hwsc_timestamp"

    goto :goto_1

    .line 272
    :cond_2
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public writeUDBString(ILjava/lang/String;)V
    .locals 4
    .parameter "udb_type"
    .parameter "udb_string"

    .prologue
    .line 344
    const/4 v1, 0x1

    .line 349
    .local v1, status:I
    iget v2, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->TC_LDB_RES_ID:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->SC_LDB_RES_ID:I

    if-nez v2, :cond_1

    .line 350
    const-string v2, "XT9_CIME_PROVIDER_J"

    const-string v3, "writeUDBString resource NOT exist!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    const/4 v2, 0x4

    if-gt p1, v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->UDB_BAK_FILEPATH:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 359
    .local v0, path:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 361
    :pswitch_0
    const/16 v2, 0xe0

    invoke-virtual {p0, v2, p2}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbBackup(ILjava/lang/String;)I

    move-result v1

    .line 362
    goto :goto_0

    .line 364
    :pswitch_1
    const/16 v2, 0xe4

    invoke-virtual {p0, v2, p2}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbBackup(ILjava/lang/String;)I

    move-result v1

    .line 365
    goto :goto_0

    .line 367
    :pswitch_2
    const/16 v2, 0xe1

    invoke-virtual {p0, v2, p2}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbBackup(ILjava/lang/String;)I

    move-result v1

    .line 368
    goto :goto_0

    .line 370
    :pswitch_3
    const/16 v2, 0xe5

    invoke-virtual {p0, v2, p2}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->nativeXT9CPUdbBackup(ILjava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
