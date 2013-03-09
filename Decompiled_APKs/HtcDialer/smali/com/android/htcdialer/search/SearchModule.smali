.class public Lcom/android/htcdialer/search/SearchModule;
.super Ljava/lang/Object;
.source "SearchModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/search/SearchModule$SearchHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final EMPTY_INPUT:Ljava/lang/String; = ""

.field public static final HANDWRITE_SEARCH:I = 0x2

.field public static final KEYPAD_SEARCH:I = 0x1

.field private static final MSG_DESTROY:I = 0x2

.field private static final MSG_SEARCH:I = 0x1

.field private static final NO_DELAY:Z = true

.field public static final ONEDIT_SEARCH:I = 0x5

.field public static final PASTE_SEARCH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SearchModule"

.field public static final VOICE_SEARCH:I = 0x3

.field private static countryCode:Ljava/lang/String;

.field private static mKeyClicked:Ljava/lang/String;

.field private static mNewClicked:Ljava/lang/String;

.field private static matchStack:[[I

.field private static patternListCache:[I

.field private static trunkCodeChar:C


# instance fields
.field protected mHasScrollListener:Z

.field private mSearchHandler:Lcom/android/htcdialer/search/SearchModule$SearchHandler;

.field public mSearchMode:I

.field private mSearchThread:Landroid/os/HandlerThread;

.field private mUIHandler:Landroid/os/Handler;

.field private stack:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private t_doSearch:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/htcdialer/search/SearchModule;->mKeyClicked:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/htcdialer/search/SearchModule;->mNewClicked:Ljava/lang/String;

    .line 66
    sput-object v2, Lcom/android/htcdialer/search/SearchModule;->patternListCache:[I

    .line 74
    sput-object v2, Lcom/android/htcdialer/search/SearchModule;->countryCode:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    sput-char v0, Lcom/android/htcdialer/search/SearchModule;->trunkCodeChar:C

    .line 430
    const/16 v0, 0x3e8

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 3
    .parameter "uiHandler"

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/android/htcdialer/search/SearchModule;->mSearchThread:Landroid/os/HandlerThread;

    .line 70
    iput-object v0, p0, Lcom/android/htcdialer/search/SearchModule;->mSearchHandler:Lcom/android/htcdialer/search/SearchModule$SearchHandler;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/search/SearchModule;->stack:Ljava/util/HashMap;

    .line 592
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/htcdialer/search/SearchModule;->mSearchMode:I

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SearchingModuleThread"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/htcdialer/search/SearchModule;->mSearchThread:Landroid/os/HandlerThread;

    .line 85
    iget-object v0, p0, Lcom/android/htcdialer/search/SearchModule;->mSearchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v0, Lcom/android/htcdialer/search/SearchModule$SearchHandler;

    iget-object v1, p0, Lcom/android/htcdialer/search/SearchModule;->mSearchThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/htcdialer/search/SearchModule$SearchHandler;-><init>(Lcom/android/htcdialer/search/SearchModule;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/htcdialer/search/SearchModule;->mSearchHandler:Lcom/android/htcdialer/search/SearchModule$SearchHandler;

    .line 88
    iput-object p1, p0, Lcom/android/htcdialer/search/SearchModule;->mUIHandler:Landroid/os/Handler;

    .line 90
    invoke-virtual {p0}, Lcom/android/htcdialer/search/SearchModule;->clearClicked()V

    .line 92
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/htcdialer/search/SearchModule;->mKeyClicked:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htcdialer/search/SearchModule;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/htcdialer/search/SearchModule;->getSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method public static getPatternList(Ljava/lang/String;)[I
    .locals 6
    .parameter "searchPattern"

    .prologue
    .line 555
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 556
    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, patterns:[Ljava/lang/String;
    array-length v1, v2

    .line 558
    .local v1, len:I
    if-lez v1, :cond_0

    .line 559
    new-array v3, v1, [I

    .line 560
    .local v3, result:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 561
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #patterns:[Ljava/lang/String;
    .end local v3           #result:[I
    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3
.end method

.method private getSearchResult(Ljava/lang/String;)V
    .locals 10
    .parameter "searchPattern"

    .prologue
    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 156
    sget-object v8, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-direct {p0, p1, v8, v9}, Lcom/android/htcdialer/search/SearchModule;->notifySearchComplete(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 203
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-static {}, Lcom/android/htcdialer/search/SearchModule;->setCountryCode()V

    .line 162
    const-wide/16 v6, 0x0

    .line 166
    .local v6, t1:J
    invoke-static {p1}, Lcom/android/htcdialer/search/SearchModule;->getPatternList(Ljava/lang/String;)[I

    move-result-object v3

    .line 167
    .local v3, patternList:[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v2, newResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v5, pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 171
    .local v4, patternPrefix:Ljava/lang/String;
    array-length v8, v3

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 172
    iget-object v8, p0, Lcom/android/htcdialer/search/SearchModule;->stack:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 185
    :cond_1
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/htcdialer/search/SearchModule;->stack:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/htcdialer/search/SearchModule;->stack:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_5

    .line 187
    :cond_2
    sget-object v8, Lcom/android/htcdialer/DialerService;->mRefFilter:[Lcom/android/htcdialer/search/SearchableObject;

    sget v9, Lcom/android/htcdialer/DialerService;->mRefFilterCount:I

    invoke-static {v2, v5, v3, v8, v9}, Lcom/android/htcdialer/search/SearchModule;->searchStage(Ljava/util/ArrayList;Ljava/util/HashMap;[I[Lcom/android/htcdialer/search/SearchableObject;I)V

    .line 201
    :goto_2
    iget-object v8, p0, Lcom/android/htcdialer/search/SearchModule;->stack:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-direct {p0, p1, v2, v5}, Lcom/android/htcdialer/search/SearchModule;->notifySearchComplete(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    goto :goto_0

    .line 175
    :cond_3
    move-object v4, p1

    .line 177
    :cond_4
    invoke-static {v4}, Lcom/android/htcdialer/search/SearchModule;->shortenPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    if-eqz v4, :cond_1

    iget-object v8, p0, Lcom/android/htcdialer/search/SearchModule;->stack:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    .line 190
    :cond_5
    iget-object v8, p0, Lcom/android/htcdialer/search/SearchModule;->stack:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 191
    .local v1, lastResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lcom/android/htcdialer/search/SearchableObject;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/htcdialer/search/SearchableObject;

    .line 192
    .local v0, array:[Lcom/android/htcdialer/search/SearchableObject;
    array-length v8, v0

    invoke-static {v2, v5, v3, v0, v8}, Lcom/android/htcdialer/search/SearchModule;->searchStage(Ljava/util/ArrayList;Ljava/util/HashMap;[I[Lcom/android/htcdialer/search/SearchableObject;I)V

    goto :goto_2
.end method

.method public static isNameMatch([I[[[C)Z
    .locals 26
    .parameter "patternList"
    .parameter "namePattern"

    .prologue
    .line 433
    if-eqz p0, :cond_20

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_20

    if-eqz p1, :cond_20

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_20

    .line 435
    move-object/from16 v0, p0

    array-length v11, v0

    .line 436
    .local v11, pLen:I
    move-object/from16 v0, p1

    array-length v9, v0

    .line 438
    .local v9, nLen:I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_3

    .line 439
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_2

    .line 440
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    aget-object v18, p1, v6

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_1

    .line 441
    const/16 v18, 0x0

    aget v18, p0, v18

    aget-object v19, p1, v6

    aget-object v19, v19, v7

    const/16 v20, 0x1

    aget-char v19, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/android/htcdialer/search/SmartKeyMapping;->isNameMatch(IC)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 442
    const/16 v18, 0x1

    .line 551
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v9           #nLen:I
    .end local v11           #pLen:I
    :goto_2
    return v18

    .line 440
    .restart local v6       #i:I
    .restart local v7       #j:I
    .restart local v9       #nLen:I
    .restart local v11       #pLen:I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 439
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 446
    .end local v7           #j:I
    :cond_2
    const/16 v18, 0x0

    goto :goto_2

    .line 448
    .end local v6           #i:I
    :cond_3
    sget-object v19, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    monitor-enter v19

    .line 449
    :try_start_0
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    const/16 v20, 0x0

    aget-object v18, v18, v20

    const/16 v20, 0x0

    sget-object v21, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    sget-object v23, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x2

    const/16 v25, 0x0

    aput v25, v23, v24

    aput v25, v21, v22

    aput v25, v18, v20

    .line 450
    const/4 v12, 0x0

    .line 451
    .local v12, pivot:I
    :goto_3
    if-eqz v12, :cond_4

    if-lez v12, :cond_1f

    if-ge v12, v11, :cond_1f

    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    add-int/lit8 v20, v12, -0x1

    aget-object v18, v18, v20

    const/16 v20, 0x2

    aget v18, v18, v20

    move/from16 v0, v18

    if-ge v0, v11, :cond_1f

    .line 452
    :cond_4
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x0

    aget v2, v18, v20

    .line 453
    .local v2, curIndex0:I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v9, :cond_5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v2, v0, :cond_6

    :cond_5
    sget-boolean v18, Lcom/android/htcdialer/DialerApp;->ENABLE_SEARCH_CYCLE:Z

    if-nez v18, :cond_7

    if-lt v2, v9, :cond_7

    .line 455
    :cond_6
    if-lez v12, :cond_8

    if-ne v2, v9, :cond_8

    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    add-int/lit8 v20, v12, -0x1

    aget-object v18, v18, v20

    const/16 v20, 0x1

    aget v18, v18, v20

    sget-object v20, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    add-int/lit8 v21, v12, -0x1

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    aget-object v20, p1, v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 458
    add-int/lit8 v12, v12, -0x1

    .line 459
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x1

    aget v21, v18, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v18, v20

    .line 460
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput v21, v18, v20

    .line 461
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x0

    aget v2, v18, v20

    .line 466
    :cond_7
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x1

    aget v3, v18, v20

    .line 467
    .local v3, curIndex1:I
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x2

    aget v4, v18, v20

    .line 468
    .local v4, curIndex2:I
    if-lez v12, :cond_9

    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    add-int/lit8 v20, v12, -0x1

    aget-object v18, v18, v20

    const/16 v20, 0x2

    aget v10, v18, v20

    .line 470
    .local v10, pIndex:I
    :goto_4
    rem-int v18, v2, v9

    aget-object v5, p1, v18

    .line 473
    .local v5, curPattern:[[C
    :goto_5
    aget-object v18, v5, v3

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v4, v0, :cond_b

    add-int v18, v10, v4

    aget v18, p0, v18

    aget-object v20, v5, v3

    add-int/lit8 v21, v4, 0x1

    aget-char v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/htcdialer/search/SmartKeyMapping;->isNameMatch(IC)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 475
    add-int v18, v10, v4

    add-int/lit8 v20, v11, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    .line 476
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 463
    .end local v3           #curIndex1:I
    .end local v4           #curIndex2:I
    .end local v5           #curPattern:[[C
    .end local v10           #pIndex:I
    :cond_8
    const/16 v18, 0x0

    monitor-exit v19

    goto/16 :goto_2

    .line 549
    .end local v2           #curIndex0:I
    .end local v12           #pivot:I
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 468
    .restart local v2       #curIndex0:I
    .restart local v3       #curIndex1:I
    .restart local v4       #curIndex2:I
    .restart local v12       #pivot:I
    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    .line 478
    .restart local v5       #curPattern:[[C
    .restart local v10       #pIndex:I
    :cond_a
    const/16 v18, 0x1

    :try_start_1
    monitor-exit v19

    goto/16 :goto_2

    .line 482
    :cond_b
    add-int/lit8 v20, v9, -0x1

    sget-boolean v18, Lcom/android/htcdialer/DialerApp;->ENABLE_SEARCH_CYCLE:Z

    if-eqz v18, :cond_c

    if-lez v12, :cond_c

    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    const/16 v21, 0x0

    aget-object v18, v18, v21

    const/16 v21, 0x0

    aget v18, v18, v21

    :goto_6
    add-int v8, v20, v18

    .line 485
    .local v8, maxPivot:I
    if-nez v4, :cond_d

    array-length v0, v5

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v3, v0, :cond_d

    .line 486
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x1

    aget v21, v18, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v18, v20

    .line 487
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput v21, v18, v20

    goto/16 :goto_3

    .line 482
    .end local v8           #maxPivot:I
    :cond_c
    const/16 v18, 0x0

    goto :goto_6

    .line 488
    .restart local v8       #maxPivot:I
    :cond_d
    if-nez v4, :cond_f

    if-ge v2, v8, :cond_f

    .line 489
    sget-boolean v18, Lcom/android/htcdialer/DialerApp;->ENABLE_SEARCH_JUMP:Z

    if-nez v18, :cond_e

    .line 490
    const/4 v12, 0x0

    .line 492
    :cond_e
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x0

    aget v21, v18, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v18, v20

    .line 493
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x1

    sget-object v21, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v21, v21, v12

    const/16 v22, 0x2

    const/16 v23, 0x0

    aput v23, v21, v22

    aput v23, v18, v20

    goto/16 :goto_3

    .line 494
    :cond_f
    if-lez v4, :cond_14

    aget-object v18, v5, v3

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v4, v0, :cond_14

    add-int/lit8 v18, v11, -0x1

    move/from16 v0, v18

    if-ge v12, v0, :cond_14

    if-eqz v12, :cond_10

    if-ge v2, v8, :cond_14

    .line 497
    :cond_10
    if-lez v12, :cond_11

    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    add-int/lit8 v20, v12, -0x1

    aget-object v18, v18, v20

    const/16 v20, 0x2

    aget v13, v18, v20

    .line 498
    .local v13, preCount:I
    :goto_7
    aget-object v18, v5, v3

    const/16 v20, 0x0

    aget-char v18, v18, v20

    const/16 v20, 0x100

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_12

    aget-object v18, v5, v3

    const/16 v20, 0x0

    aget-char v18, v18, v20

    :goto_8
    move/from16 v0, v18

    if-ge v4, v0, :cond_13

    .line 500
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x2

    add-int/lit8 v21, v13, 0x1

    aput v21, v18, v20

    .line 504
    :goto_9
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    add-int/lit8 v12, v12, 0x1

    aget-object v18, v18, v12

    const/16 v20, 0x0

    add-int/lit8 v21, v2, 0x1

    aput v21, v18, v20

    .line 505
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x1

    sget-object v21, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v21, v21, v12

    const/16 v22, 0x2

    const/16 v23, 0x0

    aput v23, v21, v22

    aput v23, v18, v20

    goto/16 :goto_3

    .line 497
    .end local v13           #preCount:I
    :cond_11
    const/4 v13, 0x0

    goto :goto_7

    .line 498
    .restart local v13       #preCount:I
    :cond_12
    aget-object v18, v5, v3

    const/16 v20, 0x0

    aget-char v18, v18, v20

    shr-int/lit8 v18, v18, 0x8

    goto :goto_8

    .line 502
    :cond_13
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x2

    add-int v21, v13, v4

    aput v21, v18, v20

    goto :goto_9

    .line 506
    .end local v13           #preCount:I
    :cond_14
    aget-object v18, v5, v3

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_16

    add-int/lit8 v18, v11, -0x1

    move/from16 v0, v18

    if-ge v12, v0, :cond_16

    if-eqz v12, :cond_15

    if-ge v2, v8, :cond_16

    .line 508
    :cond_15
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x2

    add-int v21, v10, v4

    aput v21, v18, v20

    .line 509
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    add-int/lit8 v12, v12, 0x1

    aget-object v18, v18, v12

    const/16 v20, 0x0

    add-int/lit8 v21, v2, 0x1

    aput v21, v18, v20

    .line 510
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x1

    sget-object v21, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v21, v21, v12

    const/16 v22, 0x2

    const/16 v23, 0x0

    aput v23, v21, v22

    aput v23, v18, v20

    goto/16 :goto_3

    .line 511
    :cond_16
    if-lez v12, :cond_1e

    .line 512
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    add-int/lit8 v20, v12, -0x1

    aget-object v18, v18, v20

    const/16 v20, 0x0

    aget v14, v18, v20

    .line 513
    .local v14, preIndex0:I
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    add-int/lit8 v20, v12, -0x1

    aget-object v18, v18, v20

    const/16 v20, 0x1

    aget v15, v18, v20

    .line 514
    .local v15, preIndex1:I
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    add-int/lit8 v20, v12, -0x1

    aget-object v18, v18, v20

    const/16 v20, 0x2

    aget v20, v18, v20

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v12, v0, :cond_17

    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    add-int/lit8 v21, v12, -0x2

    aget-object v18, v18, v21

    const/16 v21, 0x2

    aget v18, v18, v21

    :goto_a
    sub-int v16, v20, v18

    .line 516
    .local v16, preIndex2:I
    rem-int v18, v14, v9

    aget-object v17, p1, v18

    .line 518
    .local v17, prePattern:[[C
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_1a

    .line 519
    aget-object v18, v17, v15

    const/16 v20, 0x0

    aget-char v18, v18, v20

    const/16 v20, 0x100

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_18

    aget-object v18, v17, v15

    const/16 v20, 0x0

    aget-char v18, v18, v20

    :goto_b
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_19

    .line 521
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    add-int/lit8 v20, v12, -0x1

    aget-object v18, v18, v20

    const/16 v20, 0x2

    const/16 v21, 0x1

    aput v21, v18, v20

    .line 525
    :goto_c
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x0

    sget-object v21, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    add-int/lit8 v22, v12, -0x1

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget v21, v21, v22

    add-int/lit8 v21, v21, 0x1

    aput v21, v18, v20

    .line 526
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput v21, v18, v20

    goto/16 :goto_3

    .line 514
    .end local v16           #preIndex2:I
    .end local v17           #prePattern:[[C
    :cond_17
    const/16 v18, 0x0

    goto :goto_a

    .line 519
    .restart local v16       #preIndex2:I
    .restart local v17       #prePattern:[[C
    :cond_18
    aget-object v18, v17, v15

    const/16 v20, 0x0

    aget-char v18, v18, v20

    shr-int/lit8 v18, v18, 0x8

    goto :goto_b

    .line 523
    :cond_19
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    add-int/lit8 v20, v12, -0x1

    aget-object v18, v18, v20

    const/16 v20, 0x2

    aget v21, v18, v20

    add-int/lit8 v21, v21, -0x1

    aput v21, v18, v20

    goto :goto_c

    .line 528
    :cond_1a
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_1b

    add-int/lit8 v18, v9, -0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_1b

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_1b

    .line 530
    const/16 v18, 0x0

    monitor-exit v19

    goto/16 :goto_2

    .line 533
    :cond_1b
    add-int/lit8 v12, v12, -0x1

    .line 534
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v15, v0, :cond_1c

    .line 535
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x1

    aget v21, v18, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v18, v20

    .line 536
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput v21, v18, v20

    goto/16 :goto_3

    .line 538
    :cond_1c
    sget-boolean v18, Lcom/android/htcdialer/DialerApp;->ENABLE_SEARCH_JUMP:Z

    if-nez v18, :cond_1d

    .line 539
    const/4 v12, 0x0

    .line 541
    :cond_1d
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x0

    aget v21, v18, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v18, v20

    .line 542
    sget-object v18, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v18, v18, v12

    const/16 v20, 0x1

    sget-object v21, Lcom/android/htcdialer/search/SearchModule;->matchStack:[[I

    aget-object v21, v21, v12

    const/16 v22, 0x2

    const/16 v23, 0x0

    aput v23, v21, v22

    aput v23, v18, v20

    goto/16 :goto_3

    .line 546
    .end local v14           #preIndex0:I
    .end local v15           #preIndex1:I
    .end local v16           #preIndex2:I
    .end local v17           #prePattern:[[C
    :cond_1e
    const/16 v18, 0x0

    monitor-exit v19

    goto/16 :goto_2

    .line 549
    .end local v2           #curIndex0:I
    .end local v3           #curIndex1:I
    .end local v4           #curIndex2:I
    .end local v5           #curPattern:[[C
    .end local v8           #maxPivot:I
    .end local v10           #pIndex:I
    :cond_1f
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    .end local v9           #nLen:I
    .end local v11           #pLen:I
    .end local v12           #pivot:I
    :cond_20
    const/16 v18, 0x0

    goto/16 :goto_2
.end method

.method public static nameMatchForHandWrite(Ljava/lang/String;[ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "name"
    .parameter "position"
    .parameter "pattern"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 746
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/htcdialer/util/ContactsUtils;->isChineseCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 749
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 750
    new-array v1, v8, [I

    .line 751
    .local v1, pos:[I
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v6

    .line 752
    aget v4, v1, v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v1, v7

    .line 753
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    .end local v1           #pos:[I
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 771
    .end local v2           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    :goto_0
    return-object v2

    .line 757
    .restart local v2       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 758
    aget v4, p1, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 759
    .local v3, temp:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 760
    new-array v1, v8, [I

    .line 761
    .restart local v1       #pos:[I
    aget v4, p1, v0

    aput v4, v1, v6

    .line 762
    aget v4, p1, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v1, v7

    .line 763
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    .end local v1           #pos:[I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 771
    .end local v0           #i:I
    .end local v3           #temp:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private notifySearchComplete(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 4
    .parameter "searchPattern"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    .local p3, pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    sget-object v2, Lcom/android/htcdialer/search/SearchModule;->mKeyClicked:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v0, mapResult:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "searchPattern"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v2, "result"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v2, "pivot"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v2, p0, Lcom/android/htcdialer/search/SearchModule;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0xcb

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 147
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/htcdialer/search/SearchModule;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    .end local v0           #mapResult:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static numberMatchForHandWrite(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 4
    .parameter "number"
    .parameter "pattern"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 723
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 724
    .local v0, pos:[I
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 725
    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 726
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 727
    aput v2, v0, v2

    .line 728
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 742
    .end local v0           #pos:[I
    :goto_0
    return-object v0

    .line 730
    .restart local v0       #pos:[I
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 731
    aput v2, v0, v2

    .line 732
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    aput v1, v0, v3

    goto :goto_0

    .line 735
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 736
    aput v2, v0, v2

    .line 737
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    aput v1, v0, v3

    goto :goto_0

    .line 742
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseNumberMatch(Ljava/lang/String;[I)[I
    .locals 12
    .parameter "number"
    .parameter "patternList"

    .prologue
    .line 343
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 344
    :cond_0
    const/4 v9, 0x0

    .line 427
    :goto_0
    return-object v9

    .line 346
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 347
    .local v6, nLen:I
    array-length v7, p1

    .line 349
    .local v7, pLen:I
    if-eqz v6, :cond_2

    if-nez v7, :cond_3

    .line 350
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 352
    :cond_3
    const/4 v3, 0x0

    .line 353
    .local v3, indexStart:I
    const/4 v2, 0x0

    .line 354
    .local v2, indexEnd:I
    const/4 v5, 0x0

    .line 357
    .local v5, matchCount:I
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2b

    if-ne v9, v10, :cond_4

    const/4 v9, 0x0

    aget v9, p1, v9

    sget-object v10, Lcom/android/htcdialer/search/SmartKeyIndex;->SW_KEY_PLUS:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v10}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v10

    if-eq v9, v10, :cond_4

    const/4 v9, 0x0

    aget v9, p1, v9

    invoke-static {}, Lcom/android/htcdialer/search/SmartKeyIndex;->getDeviceHWkeyWithPlusOrdinal()I

    move-result v10

    if-eq v9, v10, :cond_4

    .line 359
    const/4 v2, 0x1

    move v3, v2

    .line 360
    sget-object v9, Lcom/android/htcdialer/search/SearchModule;->countryCode:Ljava/lang/String;

    if-eqz v9, :cond_4

    sget-char v9, Lcom/android/htcdialer/search/SearchModule;->trunkCodeChar:C

    if-lez v9, :cond_4

    const/4 v9, 0x0

    aget v9, p1, v9

    sget-object v10, Lcom/android/htcdialer/search/SmartKeyIndex;->SW_KEY_0:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v10}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v10

    sget-char v11, Lcom/android/htcdialer/search/SearchModule;->trunkCodeChar:C

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x30

    if-ne v9, v10, :cond_4

    sget-object v9, Lcom/android/htcdialer/search/SearchModule;->countryCode:Ljava/lang/String;

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 363
    const/4 v3, 0x0

    .line 364
    sget-object v9, Lcom/android/htcdialer/search/SearchModule;->countryCode:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v2, v9, 0x1

    .line 365
    add-int/lit8 v5, v5, 0x1

    .line 369
    :cond_4
    sget-object v9, Lcom/android/htcdialer/search/SearchModule;->countryCode:Ljava/lang/String;

    if-eqz v9, :cond_9

    sget-char v9, Lcom/android/htcdialer/search/SearchModule;->trunkCodeChar:C

    if-lez v9, :cond_9

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sget-char v10, Lcom/android/htcdialer/search/SearchModule;->trunkCodeChar:C

    if-ne v9, v10, :cond_9

    .line 370
    const/4 v9, 0x0

    aget v9, p1, v9

    sget-object v10, Lcom/android/htcdialer/search/SmartKeyIndex;->SW_KEY_PLUS:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v10}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v10

    if-eq v9, v10, :cond_5

    const/4 v9, 0x0

    aget v9, p1, v9

    invoke-static {}, Lcom/android/htcdialer/search/SmartKeyIndex;->getDeviceHWkeyWithPlusOrdinal()I

    move-result v10

    if-ne v9, v10, :cond_a

    :cond_5
    const/4 v8, 0x1

    .line 372
    .local v8, shift:I
    :goto_1
    sub-int v9, v7, v8

    sget-object v10, Lcom/android/htcdialer/search/SearchModule;->countryCode:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 373
    .local v0, checkCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_6

    .line 374
    add-int v9, v1, v8

    aget v9, p1, v9

    sget-object v10, Lcom/android/htcdialer/search/SearchModule;->countryCode:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v9, v10}, Lcom/android/htcdialer/search/SmartKeyMapping;->isNumberMatch(IC)Z

    move-result v9

    if-nez v9, :cond_b

    .line 379
    :cond_6
    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_8

    :cond_7
    if-ne v5, v0, :cond_c

    .line 380
    :cond_8
    add-int/2addr v5, v8

    .line 381
    const/4 v2, 0x1

    .line 386
    .end local v0           #checkCount:I
    .end local v1           #i:I
    .end local v8           #shift:I
    :cond_9
    :goto_3
    move v1, v5

    .restart local v1       #i:I
    :goto_4
    if-ge v1, v7, :cond_e

    if-ge v2, v6, :cond_e

    .line 387
    :goto_5
    if-ge v2, v6, :cond_d

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v9

    if-nez v9, :cond_d

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 370
    .end local v1           #i:I
    :cond_a
    const/4 v8, 0x0

    goto :goto_1

    .line 377
    .restart local v0       #checkCount:I
    .restart local v1       #i:I
    .restart local v8       #shift:I
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 383
    :cond_c
    const/4 v5, 0x0

    goto :goto_3

    .line 389
    .end local v0           #checkCount:I
    .end local v8           #shift:I
    :cond_d
    if-ge v2, v6, :cond_e

    aget v9, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v9, v10}, Lcom/android/htcdialer/search/SmartKeyMapping;->isNumberMatch(IC)Z

    move-result v9

    if-nez v9, :cond_f

    .line 396
    :cond_e
    if-eq v5, v7, :cond_14

    sget-boolean v9, Lcom/android/htcdialer/DialerApp;->ENABLE_SEARCH_SUFFIX:Z

    if-eqz v9, :cond_14

    if-le v6, v7, :cond_14

    .line 397
    const/4 v1, 0x0

    :goto_6
    sub-int v9, v6, v7

    if-gt v1, v9, :cond_14

    .line 398
    move v3, v1

    .line 399
    move v2, v1

    .line 400
    const/4 v5, 0x0

    .line 401
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 402
    const/4 v4, 0x0

    .local v4, j:I
    :goto_7
    if-ge v4, v7, :cond_11

    if-ge v2, v6, :cond_11

    .line 404
    :goto_8
    if-ge v2, v6, :cond_10

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v9

    if-nez v9, :cond_10

    .line 405
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 393
    .end local v4           #j:I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 394
    add-int/lit8 v5, v5, 0x1

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 406
    .restart local v4       #j:I
    :cond_10
    if-ge v2, v6, :cond_11

    aget v9, p1, v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v9, v10}, Lcom/android/htcdialer/search/SmartKeyMapping;->isNumberMatch(IC)Z

    move-result v9

    if-nez v9, :cond_12

    .line 414
    :cond_11
    if-ne v5, v7, :cond_13

    .line 415
    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v3, v9, v10

    const/4 v10, 0x1

    aput v2, v9, v10

    goto/16 :goto_0

    .line 411
    :cond_12
    add-int/lit8 v2, v2, 0x1

    .line 412
    add-int/lit8 v5, v5, 0x1

    .line 402
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 397
    .end local v4           #j:I
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 422
    :cond_14
    if-ne v5, v7, :cond_15

    .line 423
    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v3, v9, v10

    const/4 v10, 0x1

    aput v2, v9, v10

    goto/16 :goto_0

    .line 427
    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private static searchStage(Ljava/util/ArrayList;Ljava/util/HashMap;[I[Lcom/android/htcdialer/search/SearchableObject;I)V
    .locals 10
    .parameter
    .parameter
    .parameter "patternList"
    .parameter "oldResult"
    .parameter "oldCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;[I[",
            "Lcom/android/htcdialer/search/SearchableObject;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, newResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    .local p1, pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    array-length v6, p3

    if-eqz v6, :cond_0

    if-nez p4, :cond_1

    .line 280
    :cond_0
    return-void

    .line 224
    :cond_1
    array-length v6, p3

    invoke-static {v6, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 225
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    const/4 v1, 0x0

    .line 228
    .local v1, contact:Lcom/android/htcdialer/search/SearchableContact;
    aget-object v6, p3, v2

    if-eqz v6, :cond_2

    .line 229
    aget-object v6, p3, v2

    iget v6, v6, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v6, :cond_6

    .line 230
    aget-object v6, p3, v2

    iget-object v0, v6, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .end local v0           #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    check-cast v0, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 231
    .restart local v0       #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    if-eqz v0, :cond_3

    .line 232
    iget-object v6, v0, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/android/htcdialer/search/SearchModule;->parseNumberMatch(Ljava/lang/String;[I)[I

    move-result-object v6

    if-eqz v6, :cond_3

    .line 233
    aget-object v6, p3, v2

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    :cond_3
    iget-wide v6, v0, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 238
    sget-object v6, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    iget-wide v7, v0, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #contact:Lcom/android/htcdialer/search/SearchableContact;
    check-cast v1, Lcom/android/htcdialer/search/SearchableContact;

    .line 244
    .restart local v1       #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_4
    :goto_2
    if-eqz v1, :cond_2

    iget-object v6, v1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    if-eqz v6, :cond_2

    iget v6, v1, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v6, :cond_2

    .line 245
    const/4 v4, -0x1

    .line 246
    .local v4, matchIndex:I
    sget-boolean v6, Lcom/android/htcdialer/DialerApp;->ENABLE_MERGE_CONTACT:Z

    if-eqz v6, :cond_8

    .line 247
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    iget v6, v1, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v3, v6, :cond_5

    .line 248
    iget-object v6, v1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v6, v6, v3

    if-eqz v6, :cond_7

    iget-object v6, v1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/android/htcdialer/search/SearchModule;->parseNumberMatch(Ljava/lang/String;[I)[I

    move-result-object v6

    if-eqz v6, :cond_7

    .line 251
    move v4, v3

    .line 265
    .end local v3           #j:I
    :cond_5
    if-ltz v4, :cond_a

    .line 266
    aget-object v6, p3, v2

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    aget-object v6, p3, v2

    iget v6, v6, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v6, :cond_9

    .line 268
    iget-wide v6, v0, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 241
    .end local v4           #matchIndex:I
    :cond_6
    aget-object v6, p3, v2

    iget-object v1, v6, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .end local v1           #contact:Lcom/android/htcdialer/search/SearchableContact;
    check-cast v1, Lcom/android/htcdialer/search/SearchableContact;

    .restart local v1       #contact:Lcom/android/htcdialer/search/SearchableContact;
    goto :goto_2

    .line 247
    .restart local v3       #j:I
    .restart local v4       #matchIndex:I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 255
    .end local v3           #j:I
    :cond_8
    aget-object v6, p3, v2

    iget v6, v6, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-eqz v6, :cond_5

    .line 256
    aget-object v6, p3, v2

    iget v5, v6, Lcom/android/htcdialer/search/SearchableObject;->phoneIndex:I

    .line 257
    .local v5, phoneIndex:I
    iget v6, v1, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v5, v6, :cond_5

    iget-object v6, v1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v6, v6, v5

    if-eqz v6, :cond_5

    iget-object v6, v1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/android/htcdialer/search/SearchModule;->parseNumberMatch(Ljava/lang/String;[I)[I

    move-result-object v6

    if-eqz v6, :cond_5

    .line 261
    aget-object v6, p3, v2

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 269
    .end local v5           #phoneIndex:I
    :cond_9
    if-lez v4, :cond_2

    .line 270
    iget-wide v6, v1, Lcom/android/htcdialer/search/SearchableContact;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 273
    :cond_a
    iget-object v6, v1, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcom/android/htcdialer/search/SearchableContact;->pattern:[[[C

    invoke-static {p2, v6}, Lcom/android/htcdialer/search/SearchModule;->isNameMatch([I[[[C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 274
    aget-object v6, p3, v2

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private static searchStageForHandWrite(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;[Lcom/android/htcdialer/search/SearchableObject;I)V
    .locals 10
    .parameter
    .parameter
    .parameter "searchPattern"
    .parameter "oldResult"
    .parameter "oldCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Lcom/android/htcdialer/search/SearchableObject;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 657
    .local p0, newResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    .local p1, pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    array-length v6, p3

    if-eqz v6, :cond_0

    if-nez p4, :cond_1

    .line 719
    :cond_0
    return-void

    .line 661
    :cond_1
    array-length v6, p3

    invoke-static {v6, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 662
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 663
    const/4 v0, 0x0

    .line 664
    .local v0, callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    const/4 v1, 0x0

    .line 665
    .local v1, contact:Lcom/android/htcdialer/search/SearchableContact;
    aget-object v6, p3, v2

    if-eqz v6, :cond_2

    .line 666
    aget-object v6, p3, v2

    iget v6, v6, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v6, :cond_6

    .line 667
    aget-object v6, p3, v2

    iget-object v0, v6, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .end local v0           #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    check-cast v0, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 668
    .restart local v0       #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    if-eqz v0, :cond_3

    .line 669
    iget-object v6, v0, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/android/htcdialer/search/SearchModule;->numberMatchForHandWrite(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v6

    if-eqz v6, :cond_3

    .line 670
    aget-object v6, p3, v2

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 674
    :cond_3
    iget-wide v6, v0, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 675
    sget-object v6, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    iget-wide v7, v0, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #contact:Lcom/android/htcdialer/search/SearchableContact;
    check-cast v1, Lcom/android/htcdialer/search/SearchableContact;

    .line 681
    .restart local v1       #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_4
    :goto_2
    if-eqz v1, :cond_2

    iget-object v6, v1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    if-eqz v6, :cond_2

    iget v6, v1, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v6, :cond_2

    .line 682
    const/4 v4, -0x1

    .line 683
    .local v4, matchIndex:I
    sget-boolean v6, Lcom/android/htcdialer/DialerApp;->ENABLE_MERGE_CONTACT:Z

    if-eqz v6, :cond_8

    .line 684
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    iget v6, v1, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v3, v6, :cond_5

    .line 685
    iget-object v6, v1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v6, v6, v3

    if-eqz v6, :cond_7

    iget-object v6, v1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/android/htcdialer/search/SearchModule;->numberMatchForHandWrite(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v6

    if-eqz v6, :cond_7

    .line 688
    move v4, v3

    .line 702
    .end local v3           #j:I
    :cond_5
    if-ltz v4, :cond_a

    .line 703
    aget-object v6, p3, v2

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    aget-object v6, p3, v2

    iget v6, v6, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v6, :cond_9

    .line 705
    iget-wide v6, v0, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 678
    .end local v4           #matchIndex:I
    :cond_6
    aget-object v6, p3, v2

    iget-object v1, v6, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .end local v1           #contact:Lcom/android/htcdialer/search/SearchableContact;
    check-cast v1, Lcom/android/htcdialer/search/SearchableContact;

    .restart local v1       #contact:Lcom/android/htcdialer/search/SearchableContact;
    goto :goto_2

    .line 684
    .restart local v3       #j:I
    .restart local v4       #matchIndex:I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 692
    .end local v3           #j:I
    :cond_8
    aget-object v6, p3, v2

    iget v6, v6, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-eqz v6, :cond_5

    .line 693
    aget-object v6, p3, v2

    iget v5, v6, Lcom/android/htcdialer/search/SearchableObject;->phoneIndex:I

    .line 694
    .local v5, phoneIndex:I
    iget v6, v1, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v5, v6, :cond_5

    iget-object v6, v1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v6, v6, v5

    if-eqz v6, :cond_5

    iget-object v6, v1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/android/htcdialer/search/SearchModule;->numberMatchForHandWrite(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v6

    if-eqz v6, :cond_5

    .line 698
    aget-object v6, p3, v2

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 706
    .end local v5           #phoneIndex:I
    :cond_9
    if-lez v4, :cond_2

    .line 707
    iget-wide v6, v1, Lcom/android/htcdialer/search/SearchableContact;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 710
    :cond_a
    iget-object v6, v1, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/htcdialer/search/SearchableContact;->namePosition:[I

    invoke-static {v6, v7, p2}, Lcom/android/htcdialer/search/SearchModule;->nameMatchForHandWrite(Ljava/lang/String;[ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 713
    aget-object v6, p3, v2

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private static setCountryCode()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 206
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, simOperator:Ljava/lang/String;
    const/4 v2, 0x0

    .line 208
    .local v2, trunkCode:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_0

    .line 209
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, mcc:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/htcdialer/assist/RoamingAssistMapping;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/htcdialer/search/SearchModule;->countryCode:Ljava/lang/String;

    .line 211
    invoke-static {v0}, Lcom/android/htcdialer/assist/RoamingAssistMapping;->getTrunkCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .end local v0           #mcc:Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/android/htcdialer/search/SearchModule;->countryCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    sput-object v3, Lcom/android/htcdialer/search/SearchModule;->countryCode:Ljava/lang/String;

    .line 214
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    sput-char v3, Lcom/android/htcdialer/search/SearchModule;->trunkCodeChar:C

    .line 215
    return-void

    .line 213
    :cond_1
    sget-object v3, Lcom/android/htcdialer/search/SearchModule;->countryCode:Ljava/lang/String;

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1
.end method

.method public static shortenPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "searchPattern"

    .prologue
    .line 578
    if-eqz p0, :cond_2

    .line 579
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 580
    .local v0, end:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_0

    .line 581
    :cond_1
    if-lez v0, :cond_2

    .line 582
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 585
    .end local v0           #end:I
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public appendClicked(Ljava/lang/String;)V
    .locals 2
    .parameter "chars"

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/htcdialer/search/SearchModule;->mKeyClicked:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/search/SearchModule;->mKeyClicked:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public clearClicked()V
    .locals 1

    .prologue
    .line 118
    const-string v0, ""

    sput-object v0, Lcom/android/htcdialer/search/SearchModule;->mKeyClicked:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/htcdialer/search/SearchModule;->mSearchHandler:Lcom/android/htcdialer/search/SearchModule$SearchHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/search/SearchModule$SearchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 284
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 285
    return-void
.end method

.method public doSearch(Ljava/lang/String;)V
    .locals 3
    .parameter "searchPattern"

    .prologue
    .line 327
    if-nez p1, :cond_0

    const-string p1, ""

    .line 329
    :cond_0
    sget-object v1, Lcom/android/htcdialer/search/SearchModule;->mKeyClicked:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/android/htcdialer/search/SearchModule;->mSearchHandler:Lcom/android/htcdialer/search/SearchModule$SearchHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/htcdialer/search/SearchModule$SearchHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 338
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/htcdialer/search/SearchModule;->mSearchHandler:Lcom/android/htcdialer/search/SearchModule$SearchHandler;

    invoke-virtual {v1, v0}, Lcom/android/htcdialer/search/SearchModule$SearchHandler;->sendMessage(Landroid/os/Message;)Z

    .line 340
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public getClicked()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/htcdialer/search/SearchModule;->mKeyClicked:Ljava/lang/String;

    return-object v0
.end method

.method public getPatternList()[I
    .locals 2

    .prologue
    .line 570
    sget-object v0, Lcom/android/htcdialer/search/SearchModule;->mNewClicked:Ljava/lang/String;

    sget-object v1, Lcom/android/htcdialer/search/SearchModule;->mKeyClicked:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    sget-object v0, Lcom/android/htcdialer/search/SearchModule;->mKeyClicked:Ljava/lang/String;

    sput-object v0, Lcom/android/htcdialer/search/SearchModule;->mNewClicked:Ljava/lang/String;

    .line 572
    sget-object v0, Lcom/android/htcdialer/search/SearchModule;->mNewClicked:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/htcdialer/search/SearchModule;->getPatternList(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/search/SearchModule;->patternListCache:[I

    .line 574
    :cond_0
    sget-object v0, Lcom/android/htcdialer/search/SearchModule;->patternListCache:[I

    return-object v0
.end method

.method public getSearchMode()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/android/htcdialer/search/SearchModule;->mSearchMode:I

    return v0
.end method

.method public getSearchResultHandwrite(Ljava/lang/String;)V
    .locals 9
    .parameter "searchPattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 608
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 609
    sget-object v7, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-direct {p0, p1, v7, v8}, Lcom/android/htcdialer/search/SearchModule;->notifySearchComplete(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 652
    :goto_0
    return-void

    .line 613
    :cond_0
    const-wide/16 v5, 0x0

    .line 617
    .local v5, t1:J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v2, newResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 620
    .local v4, pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 621
    .local v3, patternPrefix:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_2

    .line 622
    iget-object v7, p0, Lcom/android/htcdialer/search/SearchModule;->stack:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 635
    :cond_1
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 636
    sget-object v7, Lcom/android/htcdialer/DialerService;->mRefFilter:[Lcom/android/htcdialer/search/SearchableObject;

    sget v8, Lcom/android/htcdialer/DialerService;->mRefFilterCount:I

    invoke-static {v2, v4, p1, v7, v8}, Lcom/android/htcdialer/search/SearchModule;->searchStageForHandWrite(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;[Lcom/android/htcdialer/search/SearchableObject;I)V

    .line 650
    :goto_2
    iget-object v7, p0, Lcom/android/htcdialer/search/SearchModule;->stack:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    invoke-direct {p0, p1, v2, v4}, Lcom/android/htcdialer/search/SearchModule;->notifySearchComplete(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    goto :goto_0

    .line 625
    :cond_2
    move-object v3, p1

    .line 627
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 628
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/htcdialer/search/SearchModule;->stack:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 639
    :cond_4
    iget-object v7, p0, Lcom/android/htcdialer/search/SearchModule;->stack:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 640
    .local v1, lastResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/android/htcdialer/search/SearchableObject;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/htcdialer/search/SearchableObject;

    .line 641
    .local v0, array:[Lcom/android/htcdialer/search/SearchableObject;
    array-length v7, v0

    invoke-static {v2, v4, p1, v0, v7}, Lcom/android/htcdialer/search/SearchModule;->searchStageForHandWrite(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;[Lcom/android/htcdialer/search/SearchableObject;I)V

    goto :goto_2
.end method

.method public setClicked(Ljava/lang/String;)V
    .locals 0
    .parameter "chars"

    .prologue
    .line 128
    sput-object p1, Lcom/android/htcdialer/search/SearchModule;->mKeyClicked:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setSearchMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 600
    iput p1, p0, Lcom/android/htcdialer/search/SearchModule;->mSearchMode:I

    .line 601
    return-void
.end method
