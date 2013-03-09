.class public Lcom/google/android/gm/provider/Label;
.super Ljava/lang/Object;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/Label$LabelContentUpdater;,
        Lcom/google/android/gm/provider/Label$LabelContentObserver;
    }
.end annotation


# static fields
.field private static final LABEL_COMPONENT_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static sLabelRequeryDelayMs:I

.field private static sLabelUpdateThread:Landroid/os/HandlerThread;

.field private static sSystemLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemLabelCacheLock:Ljava/lang/Object;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private mCanonicalName:Ljava/lang/String;

.field private mColor:Ljava/lang/String;

.field private mCountsInitialized:Z

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private final mFactorySystemLabelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:J

.field private final mIsHidden:Z

.field private mIsSystemLabel:Z

.field private mLabelCountBehavior:I

.field private mLabelSyncPolicy:I

.field private mLastTouched:J

.field private mName:Ljava/lang/String;

.field private mNumConversations:I

.field private mNumUnreadConversations:I

.field private mSelfUpdateObserver:Lcom/google/android/gm/provider/Label$LabelContentObserver;

.field private mSerializedInfo:Ljava/lang/String;

.field private mUpdater:Lcom/google/android/gm/provider/Label$LabelContentUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/Label;->sSystemLabelCacheLock:Ljava/lang/Object;

    .line 125
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gm/provider/Label;->sLabelRequeryDelayMs:I

    .line 141
    const-string v0, "\\^\\*\\^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Label;->LABEL_COMPONENT_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIIJLjava/util/Map;)V
    .locals 12
    .parameter "context"
    .parameter "account"
    .parameter "id"
    .parameter "canonicalName"
    .parameter "name"
    .parameter "color"
    .parameter "numConversations"
    .parameter "numUnreadConversations"
    .parameter "isHidden"
    .parameter "labelCountBehavior"
    .parameter "labelSyncPolicy"
    .parameter "lastTouched"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZIIJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p15, systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gm/provider/Label;->mLabelCountBehavior:I

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gm/provider/Label;->mLabelSyncPolicy:I

    .line 115
    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/google/android/gm/provider/Label;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 381
    iput-object p2, p0, Lcom/google/android/gm/provider/Label;->mAccount:Ljava/lang/String;

    .line 382
    iput-wide p3, p0, Lcom/google/android/gm/provider/Label;->mId:J

    .line 383
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mIsHidden:Z

    .line 384
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gm/provider/Label;->mFactorySystemLabelMap:Ljava/util/Map;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p11

    move/from16 v9, p12

    move-wide/from16 v10, p13

    .line 386
    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gm/provider/Label;->loadInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJ)V

    .line 388
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "id"
    .parameter "canonicalName"
    .parameter "name"
    .parameter "color"
    .parameter "isHidden"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p9, systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v1, p0, Lcom/google/android/gm/provider/Label;->mLabelCountBehavior:I

    .line 99
    iput v1, p0, Lcom/google/android/gm/provider/Label;->mLabelSyncPolicy:I

    .line 115
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/Label;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 359
    iput-object p2, p0, Lcom/google/android/gm/provider/Label;->mAccount:Ljava/lang/String;

    .line 360
    iput-wide p3, p0, Lcom/google/android/gm/provider/Label;->mId:J

    .line 361
    iput-object p5, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    .line 362
    invoke-static {p5}, Lcom/google/android/gm/provider/Gmail;->isSystemLabel(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mIsSystemLabel:Z

    .line 363
    iput-object p9, p0, Lcom/google/android/gm/provider/Label;->mFactorySystemLabelMap:Ljava/util/Map;

    .line 365
    iget-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mIsSystemLabel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/Label;->getHumanSystemLabelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Label;->mName:Ljava/lang/String;

    .line 372
    :goto_0
    iput-object p7, p0, Lcom/google/android/gm/provider/Label;->mColor:Ljava/lang/String;

    .line 373
    iput-boolean v1, p0, Lcom/google/android/gm/provider/Label;->mCountsInitialized:Z

    .line 374
    iput-boolean p8, p0, Lcom/google/android/gm/provider/Label;->mIsHidden:Z

    .line 375
    return-void

    .line 370
    :cond_0
    iput-object p6, p0, Lcom/google/android/gm/provider/Label;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/gm/provider/Label;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/provider/Label;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/google/android/gm/provider/Label;->mId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/provider/Label;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/Label;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gm/provider/Label;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/gm/provider/Label;->notifyDataSetChanged()V

    return-void
.end method

.method static getBackgroundColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "account"
    .parameter "canonicalName"
    .parameter "colorIndex"

    .prologue
    .line 458
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->isSystemLabel(Ljava/lang/String;)Z

    move-result v0

    .line 459
    .local v0, isSystemLabel:Z
    const-string v2, "^g"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    invoke-static {}, Lcom/google/android/gm/utils/LabelColorUtils;->getMutedColorInts()[I

    move-result-object v1

    .line 465
    .local v1, labelColors:[I
    :goto_0
    if-eqz v0, :cond_1

    const v2, 0xffffff

    :goto_1
    return v2

    .line 462
    .end local v1           #labelColors:[I
    :cond_0
    invoke-static {v0, p2}, Lcom/google/android/gm/provider/Label;->getColor(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/google/android/gm/utils/LabelColorUtils;->getLabelColorInts(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .restart local v1       #labelColors:[I
    goto :goto_0

    .line 465
    :cond_1
    const/4 v2, 0x0

    aget v2, v1, v2

    goto :goto_1
.end method

.method static getColor(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "isSystemLabel"
    .parameter "colorIndex"

    .prologue
    .line 443
    if-eqz p0, :cond_0

    const-string p1, "2147483647"

    .end local p1
    :cond_0
    return-object p1
.end method

.method private getHumanSystemLabelName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "c"

    .prologue
    .line 275
    const/4 v1, 0x0

    .line 278
    .local v1, humanReadable:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/google/android/gm/provider/Label;->mFactorySystemLabelMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 279
    iget-object v2, p0, Lcom/google/android/gm/provider/Label;->mFactorySystemLabelMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #humanReadable:Ljava/lang/CharSequence;
    check-cast v1, Ljava/lang/CharSequence;

    .line 288
    .restart local v1       #humanReadable:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    :goto_1
    return-object v2

    .line 280
    :cond_1
    if-eqz p1, :cond_0

    .line 282
    sget-object v3, Lcom/google/android/gm/provider/Label;->sSystemLabelCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 283
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/Label;->initLabelCache(Landroid/content/Context;)V

    .line 284
    sget-object v2, Lcom/google/android/gm/provider/Label;->sSystemLabelCache:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v0

    .line 285
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 288
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method static getLabelUri(Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 2
    .parameter "account"
    .parameter "labelId"

    .prologue
    .line 773
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->getLabelUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 774
    .local v0, labelUri:Landroid/net/Uri;
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 775
    return-object v0
.end method

.method private getSelfUpdateLooper()Landroid/os/Looper;
    .locals 3

    .prologue
    .line 613
    sget-object v0, Lcom/google/android/gm/provider/Label;->sLabelUpdateThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 614
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Label self updater"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Label;->sLabelUpdateThread:Landroid/os/HandlerThread;

    .line 616
    sget-object v0, Lcom/google/android/gm/provider/Label;->sLabelUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 618
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/Label;->sLabelUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static getSystemLabelNameMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    if-eqz p0, :cond_0

    .line 294
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 295
    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Label;->loadSystemLabelNameMap(Landroid/content/Context;Ljava/util/Map;)V

    .line 298
    :cond_0
    return-object v0
.end method

.method static getTextColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "account"
    .parameter "canonicalName"
    .parameter "colorIndex"

    .prologue
    .line 480
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->isSystemLabel(Ljava/lang/String;)Z

    move-result v0

    .line 481
    .local v0, isSystemLabel:Z
    const-string v2, "^g"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    invoke-static {}, Lcom/google/android/gm/utils/LabelColorUtils;->getMutedColorInts()[I

    move-result-object v1

    .line 487
    .local v1, labelColors:[I
    :goto_0
    const/4 v2, 0x1

    aget v2, v1, v2

    return v2

    .line 484
    .end local v1           #labelColors:[I
    :cond_0
    invoke-static {v0, p2}, Lcom/google/android/gm/provider/Label;->getColor(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/google/android/gm/utils/LabelColorUtils;->getLabelColorInts(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .restart local v1       #labelColors:[I
    goto :goto_0
.end method

.method private initLabelCache(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 323
    sget-object v0, Lcom/google/android/gm/provider/Label;->sSystemLabelCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/Label;->sSystemLabelCache:Ljava/util/HashMap;

    .line 327
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/Label;->sSystemLabelCache:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/google/android/gm/provider/Label;->loadSystemLabelNameMap(Landroid/content/Context;Ljava/util/Map;)V

    .line 328
    return-void
.end method

.method private declared-synchronized load(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 21
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 641
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 642
    :try_start_0
    const-string v2, "canonicalName"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 643
    .local v13, canonicalNameIndex:I
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 644
    .local v18, nameIndex:I
    const-string v2, "numConversations"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 646
    .local v19, numConversationsIndex:I
    const-string v2, "numUnreadConversations"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 648
    .local v20, numUnreadConversationsIndex:I
    const-string v2, "color"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 649
    .local v14, colorIndex:I
    const-string v2, "labelCountDisplayBehavior"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 651
    .local v15, labelCountBehaviorIndex:I
    const-string v2, "labelSyncPolicy"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 653
    .local v16, labelSyncPolicyIndex:I
    const-string v2, "lastTouched"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 655
    .local v17, lastTouchedIndex:I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 657
    .local v4, canonicalName:Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 658
    .local v5, name:Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 659
    .local v7, numConversations:I
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 660
    .local v8, numUnreadConversations:I
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 661
    .local v6, color:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 662
    .local v9, labelCountBehavior:I
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 663
    .local v10, labelSyncPolicy:I
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .local v11, lastTouched:J
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 665
    invoke-virtual/range {v2 .. v12}, Lcom/google/android/gm/provider/Label;->loadInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    .end local v4           #canonicalName:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #color:Ljava/lang/String;
    .end local v7           #numConversations:I
    .end local v8           #numUnreadConversations:I
    .end local v9           #labelCountBehavior:I
    .end local v10           #labelSyncPolicy:I
    .end local v11           #lastTouched:J
    .end local v13           #canonicalNameIndex:I
    .end local v14           #colorIndex:I
    .end local v15           #labelCountBehaviorIndex:I
    .end local v16           #labelSyncPolicyIndex:I
    .end local v17           #lastTouchedIndex:I
    .end local v18           #nameIndex:I
    .end local v19           #numConversationsIndex:I
    .end local v20           #numUnreadConversationsIndex:I
    :cond_0
    monitor-exit p0

    return-void

    .line 641
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static loadSystemLabelNameMap(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    const-string v0, "^f"

    const v1, 0x7f0c0115

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v0, "^^out"

    const v1, 0x7f0c0116

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v0, "^i"

    const v1, 0x7f0c0117

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v0, "^r"

    const v1, 0x7f0c0118

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v0, "^b"

    const v1, 0x7f0c0119

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v0, "^all"

    const v1, 0x7f0c011a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v0, "^u"

    const v1, 0x7f0c011b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v0, "^k"

    const v1, 0x7f0c011c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v0, "^s"

    const v1, 0x7f0c011d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v0, "^t"

    const v1, 0x7f0c011e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v0, "^g"

    const v1, 0x7f0c011f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v0, "^io_im"

    const v1, 0x7f0c0120

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v0, "^iim"

    const v1, 0x7f0c0121

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 764
    return-void
.end method

.method public static parseJoinedString(Ljava/lang/String;)Lcom/google/android/gm/provider/Label;
    .locals 1
    .parameter "joinedString"

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Label;->parseJoinedString(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    return-object v0
.end method

.method static parseJoinedString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gm/provider/Label;
    .locals 17
    .parameter "account"
    .parameter "joinedString"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/google/android/gm/provider/Label;"
        }
    .end annotation

    .prologue
    .line 234
    .local p2, systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    sget-object v2, Lcom/google/android/gm/provider/Label;->LABEL_COMPONENT_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v12

    .line 235
    .local v12, fragments:[Ljava/lang/String;
    array-length v2, v12

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 236
    const/4 v1, 0x0

    .line 265
    :goto_0
    return-object v1

    .line 239
    :cond_0
    const/4 v13, 0x0

    .line 240
    .local v13, i:I
    const-wide/16 v4, 0x0

    .line 242
    .local v4, labelId:J
    add-int/lit8 v14, v13, 0x1

    .end local v13           #i:I
    .local v14, i:I
    :try_start_0
    aget-object v2, v12, v13

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 248
    add-int/lit8 v13, v14, 0x1

    .end local v14           #i:I
    .restart local v13       #i:I
    aget-object v6, v12, v14

    .line 251
    .local v6, canonicalName:Ljava/lang/String;
    add-int/lit8 v14, v13, 0x1

    .end local v13           #i:I
    .restart local v14       #i:I
    aget-object v7, v12, v13

    .line 252
    .local v7, labelName:Ljava/lang/String;
    add-int/lit8 v13, v14, 0x1

    .end local v14           #i:I
    .restart local v13       #i:I
    aget-object v8, v12, v14

    .line 253
    .local v8, color:Ljava/lang/String;
    const/4 v9, 0x0

    .line 255
    .local v9, isHidden:Z
    add-int/lit8 v14, v13, 0x1

    .end local v13           #i:I
    .restart local v14       #i:I
    :try_start_1
    aget-object v2, v12, v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-lez v2, :cond_1

    const/4 v9, 0x1

    .line 262
    :goto_1
    new-instance v1, Lcom/google/android/gm/provider/Label;

    const/4 v2, 0x0

    move-object/from16 v3, p0

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gm/provider/Label;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V

    .line 265
    .local v1, label:Lcom/google/android/gm/provider/Label;
    goto :goto_0

    .line 243
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    .end local v6           #canonicalName:Ljava/lang/String;
    .end local v7           #labelName:Ljava/lang/String;
    .end local v8           #color:Ljava/lang/String;
    .end local v9           #isHidden:Z
    :catch_0
    move-exception v11

    .line 244
    .local v11, e:Ljava/lang/NumberFormatException;
    const-string v2, "Gmail"

    const-string v3, "Problem parsing labelId: %s original string: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v10, v15

    const/4 v15, 0x1

    aput-object p1, v10, v15

    invoke-static {v2, v3, v10}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 246
    const/4 v1, 0x0

    goto :goto_0

    .line 255
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #canonicalName:Ljava/lang/String;
    .restart local v7       #labelName:Ljava/lang/String;
    .restart local v8       #color:Ljava/lang/String;
    .restart local v9       #isHidden:Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 256
    :catch_1
    move-exception v11

    .line 257
    .restart local v11       #e:Ljava/lang/NumberFormatException;
    const-string v2, "Gmail"

    const-string v3, "Problem parsing isHidden: %s original string: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v10, v15

    const/4 v15, 0x1

    aput-object p1, v10, v15

    invoke-static {v2, v3, v10}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 259
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static parseJoinedString(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gm/provider/Label;
    .locals 20
    .parameter "joinedString"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/google/android/gm/provider/Label;"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    sget-object v2, Lcom/google/android/gm/provider/Label;->LABEL_COMPONENT_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v14

    .line 174
    .local v14, fragments:[Ljava/lang/String;
    array-length v2, v14

    const/4 v10, 0x6

    if-ge v2, v10, :cond_0

    .line 175
    const/4 v1, 0x0

    .line 217
    :goto_0
    return-object v1

    .line 178
    :cond_0
    const/4 v15, 0x0

    .line 179
    .local v15, i:I
    add-int/lit8 v16, v15, 0x1

    .end local v15           #i:I
    .local v16, i:I
    aget-object v13, v14, v15

    .line 181
    .local v13, encodedAccount:Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 183
    .local v4, labelId:J
    add-int/lit8 v15, v16, 0x1

    .end local v16           #i:I
    .restart local v15       #i:I
    :try_start_0
    aget-object v2, v14, v16

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 189
    add-int/lit8 v16, v15, 0x1

    .end local v15           #i:I
    .restart local v16       #i:I
    aget-object v6, v14, v15

    .line 190
    .local v6, canonicalName:Ljava/lang/String;
    add-int/lit8 v15, v16, 0x1

    .end local v16           #i:I
    .restart local v15       #i:I
    aget-object v12, v14, v16

    .line 191
    .local v12, encodeLabelName:Ljava/lang/String;
    const-string v7, ""

    .line 192
    .local v7, labelName:Ljava/lang/String;
    const-string v3, ""

    .line 193
    .local v3, account:Ljava/lang/String;
    const-string v8, ""

    .line 194
    .local v8, color:Ljava/lang/String;
    const/4 v9, 0x0

    .line 197
    .local v9, isHidden:Z
    :try_start_1
    const-string v2, "UTF-8"

    invoke-static {v12, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 202
    :goto_1
    :try_start_2
    const-string v2, "UTF-8"

    invoke-static {v13, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 207
    add-int/lit8 v16, v15, 0x1

    .end local v15           #i:I
    .restart local v16       #i:I
    aget-object v8, v14, v15

    .line 209
    add-int/lit8 v15, v16, 0x1

    .end local v16           #i:I
    .restart local v15       #i:I
    :try_start_3
    aget-object v2, v14, v16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    if-lez v2, :cond_1

    const/4 v9, 0x1

    .line 215
    :goto_2
    new-instance v1, Lcom/google/android/gm/provider/Label;

    const/4 v2, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gm/provider/Label;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V

    .line 217
    .local v1, label:Lcom/google/android/gm/provider/Label;
    goto :goto_0

    .line 184
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    .end local v3           #account:Ljava/lang/String;
    .end local v6           #canonicalName:Ljava/lang/String;
    .end local v7           #labelName:Ljava/lang/String;
    .end local v8           #color:Ljava/lang/String;
    .end local v9           #isHidden:Z
    .end local v12           #encodeLabelName:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 185
    .local v11, e:Ljava/lang/NumberFormatException;
    const-string v2, "Gmail"

    const-string v10, "Problem parsing labelId: %s original string: %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object p0, v17, v18

    move-object/from16 v0, v17

    invoke-static {v2, v10, v0}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 187
    const/4 v1, 0x0

    goto :goto_0

    .line 198
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #account:Ljava/lang/String;
    .restart local v6       #canonicalName:Ljava/lang/String;
    .restart local v7       #labelName:Ljava/lang/String;
    .restart local v8       #color:Ljava/lang/String;
    .restart local v9       #isHidden:Z
    .restart local v12       #encodeLabelName:Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 199
    .local v11, e:Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string v2, "Gmail"

    const-string v10, "illegal argument"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v2, v11, v10, v0}, Lcom/google/android/gm/provider/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 200
    move-object v7, v12

    goto :goto_1

    .line 203
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v11

    .line 204
    .local v11, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "Gmail"

    const-string v10, "unsupported encoding"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v2, v11, v10, v0}, Lcom/google/android/gm/provider/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 205
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 209
    .end local v11           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    .line 210
    :catch_3
    move-exception v11

    .line 211
    .local v11, e:Ljava/lang/NumberFormatException;
    const-string v2, "Gmail"

    const-string v10, "Problem parsing isHidden: %s original string: %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object p0, v17, v18

    move-object/from16 v0, v17

    invoke-static {v2, v10, v0}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 213
    const/4 v1, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized disableSelfUpdate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 605
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 606
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mSelfUpdateObserver:Lcom/google/android/gm/provider/Label$LabelContentObserver;

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/Label;->mSelfUpdateObserver:Lcom/google/android/gm/provider/Label$LabelContentObserver;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/Label;->unregisterContentObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/Label;->mSelfUpdateObserver:Lcom/google/android/gm/provider/Label$LabelContentObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    :cond_0
    monitor-exit p0

    return-void

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableSelfUpdate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 592
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 593
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mSelfUpdateObserver:Lcom/google/android/gm/provider/Label$LabelContentObserver;

    if-nez v0, :cond_0

    .line 594
    new-instance v0, Lcom/google/android/gm/provider/Label$LabelContentObserver;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/provider/Label$LabelContentObserver;-><init>(Lcom/google/android/gm/provider/Label;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/Label;->mSelfUpdateObserver:Lcom/google/android/gm/provider/Label$LabelContentObserver;

    .line 595
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/Label;->mSelfUpdateObserver:Lcom/google/android/gm/provider/Label$LabelContentObserver;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/Label;->registerContentObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    :cond_0
    monitor-exit p0

    return-void

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getBackgroundColor()I
    .locals 3

    .prologue
    .line 453
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/provider/Label;->mColor:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/Label;->getBackgroundColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getColor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Label;->isSystemLabel()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gm/provider/Label;->mColor:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/Label;->getColor(ZLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDisplayNoConversationCount()Z
    .locals 2

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gm/provider/Label;->mLabelCountBehavior:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDisplayTotalConversationCount()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 498
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gm/provider/Label;->mLabelCountBehavior:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getForceSyncAll()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 549
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gm/provider/Label;->mLabelSyncPolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getForceSyncAllOrPartial()Z
    .locals 2

    .prologue
    .line 569
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gm/provider/Label;->mLabelSyncPolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getForceSyncNone()Z
    .locals 2

    .prologue
    .line 559
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gm/provider/Label;->mLabelSyncPolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHidden()Z
    .locals 1

    .prologue
    .line 578
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mIsHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getId()J
    .locals 2

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gm/provider/Label;->mId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastTouched()J
    .locals 2

    .prologue
    .line 583
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gm/provider/Label;->mLastTouched:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumConversations()I
    .locals 2

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mCountsInitialized:Z

    if-nez v0, :cond_0

    .line 518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversation counts were not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 520
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gm/provider/Label;->mNumConversations:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getNumUnreadConversations()I
    .locals 2

    .prologue
    .line 529
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mCountsInitialized:Z

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unread conversation counts were not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 532
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gm/provider/Label;->mNumUnreadConversations:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getTextColor()I
    .locals 3

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/provider/Label;->mColor:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/Label;->getTextColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSystemLabel()Z
    .locals 1

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mIsSystemLabel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized labelCountsInitialized()Z
    .locals 1

    .prologue
    .line 539
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mCountsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method loadInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJ)V
    .locals 2
    .parameter "context"
    .parameter "canonicalName"
    .parameter "name"
    .parameter "color"
    .parameter "numConversations"
    .parameter "numUnreadConversations"
    .parameter "labelCountBehavior"
    .parameter "labelSyncPolicy"
    .parameter "lastTouched"

    .prologue
    const/4 v1, 0x0

    .line 678
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    iput-object p2, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    .line 680
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->isSystemLabel(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mIsSystemLabel:Z

    .line 681
    iput-object v1, p0, Lcom/google/android/gm/provider/Label;->mSerializedInfo:Ljava/lang/String;

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mColor:Ljava/lang/String;

    invoke-static {p4, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 684
    iput-object p4, p0, Lcom/google/android/gm/provider/Label;->mColor:Ljava/lang/String;

    .line 685
    iput-object v1, p0, Lcom/google/android/gm/provider/Label;->mSerializedInfo:Ljava/lang/String;

    .line 691
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mIsSystemLabel:Z

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/Label;->getHumanSystemLabelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 693
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mName:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 694
    iput-object p3, p0, Lcom/google/android/gm/provider/Label;->mName:Ljava/lang/String;

    .line 695
    iput-object v1, p0, Lcom/google/android/gm/provider/Label;->mSerializedInfo:Ljava/lang/String;

    .line 698
    :cond_4
    iput p5, p0, Lcom/google/android/gm/provider/Label;->mNumConversations:I

    .line 699
    iput p6, p0, Lcom/google/android/gm/provider/Label;->mNumUnreadConversations:I

    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mCountsInitialized:Z

    .line 701
    iput p7, p0, Lcom/google/android/gm/provider/Label;->mLabelCountBehavior:I

    .line 702
    iput p8, p0, Lcom/google/android/gm/provider/Label;->mLabelSyncPolicy:I

    .line 703
    iput-wide p9, p0, Lcom/google/android/gm/provider/Label;->mLastTouched:J

    .line 704
    return-void
.end method

.method public declared-synchronized registerContentObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 4
    .parameter "resolver"
    .parameter "observer"

    .prologue
    .line 714
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/Label;->mAccount:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gm/provider/Label;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gm/provider/Label;->getLabelUri(Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    .line 716
    .local v0, labelUri:Landroid/net/Uri;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    monitor-exit p0

    return-void

    .line 714
    .end local v0           #labelUri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public requery(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 626
    iget-object v1, p0, Lcom/google/android/gm/provider/Label;->mUpdater:Lcom/google/android/gm/provider/Label$LabelContentUpdater;

    if-nez v1, :cond_1

    .line 627
    sget v1, Lcom/google/android/gm/provider/Label;->sLabelRequeryDelayMs:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 628
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/provider/Label;->sLabelRequeryDelayMs:I

    .line 631
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Label;->getSelfUpdateLooper()Landroid/os/Looper;

    move-result-object v0

    .line 633
    .local v0, looper:Landroid/os/Looper;
    new-instance v1, Lcom/google/android/gm/provider/Label$LabelContentUpdater;

    sget v2, Lcom/google/android/gm/provider/Label;->sLabelRequeryDelayMs:I

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/google/android/gm/provider/Label$LabelContentUpdater;-><init>(Lcom/google/android/gm/provider/Label;Landroid/content/Context;Landroid/os/Looper;I)V

    iput-object v1, p0, Lcom/google/android/gm/provider/Label;->mUpdater:Lcom/google/android/gm/provider/Label$LabelContentUpdater;

    .line 637
    .end local v0           #looper:Landroid/os/Looper;
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/Label;->mUpdater:Lcom/google/android/gm/provider/Label$LabelContentUpdater;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label$LabelContentUpdater;->scheduleTask()V

    .line 638
    return-void
.end method

.method public declared-synchronized serialize()Ljava/lang/String;
    .locals 7

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gm/provider/Label;->mSerializedInfo:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 334
    iget-object v4, p0, Lcom/google/android/gm/provider/Label;->mSerializedInfo:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :goto_0
    monitor-exit p0

    return-object v4

    .line 337
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v3, result:Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 339
    .local v1, encodedAccount:Ljava/lang/String;
    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    .local v2, encodedLabelName:Ljava/lang/String;
    :try_start_2
    iget-object v4, p0, Lcom/google/android/gm/provider/Label;->mAccount:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    iget-object v4, p0, Lcom/google/android/gm/provider/Label;->mName:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 346
    :goto_1
    :try_start_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "^*^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget-wide v4, p0, Lcom/google/android/gm/provider/Label;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "^*^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v4, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "^*^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "^*^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget-object v4, p0, Lcom/google/android/gm/provider/Label;->mColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "^*^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    iget-boolean v4, p0, Lcom/google/android/gm/provider/Label;->mIsHidden:Z

    if-eqz v4, :cond_1

    const-string v4, "1"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/provider/Label;->mSerializedInfo:Ljava/lang/String;

    .line 354
    iget-object v4, p0, Lcom/google/android/gm/provider/Label;->mSerializedInfo:Ljava/lang/String;

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "Gmail"

    const-string v5, "unsupported encoding"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v0, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 333
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #encodedAccount:Ljava/lang/String;
    .end local v2           #encodedLabelName:Ljava/lang/String;
    .end local v3           #result:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 351
    .restart local v1       #encodedAccount:Ljava/lang/String;
    .restart local v2       #encodedLabelName:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_4
    const-string v4, "0"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized unregisterContentObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "resolver"
    .parameter "observer"

    .prologue
    .line 729
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    monitor-exit p0

    return-void

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
