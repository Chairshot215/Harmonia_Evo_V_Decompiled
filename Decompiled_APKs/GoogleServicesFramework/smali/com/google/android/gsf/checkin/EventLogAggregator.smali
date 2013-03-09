.class public Lcom/google/android/gsf/checkin/EventLogAggregator;
.super Ljava/lang/Object;
.source "EventLogAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/checkin/EventLogAggregator$Operation;,
        Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;,
        Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    }
.end annotation


# static fields
.field private static final OPS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/checkin/EventLogAggregator$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mInterestingTags:[I

.field private mTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mVersionToken:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 102
    const-string v0, ",?([a-z_]+)(?:\\(([0-9]+)\\))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OP_PATTERN:Ljava/util/regex/Pattern;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    .line 418
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "count"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$1;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "sum"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$2;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "mean"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$3;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "min"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$4;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "max"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$5;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "group_by"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$6;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$6;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mInterestingTags:[I

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    .line 94
    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-static {p0, p1}, Lcom/google/android/gsf/checkin/EventLogAggregator;->getParam(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Object;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 94
    invoke-static {p0}, Lcom/google/android/gsf/checkin/EventLogAggregator;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getLong(Ljava/lang/Object;)J
    .locals 2
    .parameter "data"

    .prologue
    .line 543
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "number expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMillis(Landroid/util/EventLog$Event;)J
    .locals 4
    .parameter "event"

    .prologue
    .line 535
    invoke-virtual {p0}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    add-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getParam(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .parameter "data"
    .parameter "param"

    .prologue
    .line 518
    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "parameter required"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 519
    :cond_0
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 520
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    .line 521
    .local v0, array:[Ljava/lang/Object;
    if-ltz p1, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bad index"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 522
    :cond_2
    aget-object p0, v0, p1

    .line 526
    .end local v0           #array:[Ljava/lang/Object;
    :cond_3
    return-object p0

    .line 523
    .restart local p0
    :cond_4
    if-lez p1, :cond_3

    .line 524
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "list expected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseTagSpec(Ljava/lang/String;)Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    .locals 8
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    .line 390
    new-instance v4, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;-><init>(Lcom/google/android/gsf/checkin/EventLogAggregator$1;)V

    .line 391
    .local v4, spec:Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    sget-object v5, Lcom/google/android/gsf/checkin/EventLogAggregator;->OP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 392
    .local v1, m:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 395
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-nez v5, :cond_0

    .line 396
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad spec: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 399
    :cond_0
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .local v2, op:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, arg:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    const/4 v3, -0x1

    .line 401
    .local v3, param:I
    :goto_1
    const-string v5, "log"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 402
    iput-boolean v7, v4, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->doLog:Z

    .line 393
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 400
    .end local v3           #param:I
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .line 404
    .restart local v3       #param:I
    :cond_4
    sget-object v5, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad function: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 405
    :cond_5
    iget-object v5, v4, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opList:Ljava/util/ArrayList;

    sget-object v6, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v5, v4, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opParam:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    const-string v5, "group_by"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->groupBy:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 411
    .end local v0           #arg:Ljava/lang/String;
    .end local v2           #op:Ljava/lang/String;
    .end local v3           #param:I
    :cond_6
    return-object v4
.end method

.method private declared-synchronized updateTagMap(Landroid/content/ContentResolver;)V
    .locals 14
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gsf/Gservices;->getVersionToken(Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v10

    .line 346
    .local v10, versionToken:Ljava/lang/Object;
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mVersionToken:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v10, v11, :cond_0

    .line 381
    :goto_0
    monitor-exit p0

    return-void

    .line 348
    :cond_0
    :try_start_1
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 350
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "event:"

    aput-object v13, v11, v12

    invoke-static {p1, v11}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 351
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 352
    .local v2, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "event:"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 353
    .local v6, tag:Ljava/lang/String;
    invoke-static {v6}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v4

    .line 354
    .local v4, num:I
    if-gez v4, :cond_2

    .line 355
    const-string v11, "EventLogAggregator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown tag: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 345
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #num:I
    .end local v6           #tag:Ljava/lang/String;
    .end local v10           #versionToken:Ljava/lang/Object;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 359
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #num:I
    .restart local v6       #tag:Ljava/lang/String;
    .restart local v10       #versionToken:Ljava/lang/Object;
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 360
    .local v5, spec:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    if-lez v11, :cond_1

    .line 363
    :try_start_3
    invoke-static {v5}, Lcom/google/android/gsf/checkin/EventLogAggregator;->parseTagSpec(Ljava/lang/String;)Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;

    move-result-object v9

    .line 364
    .local v9, tagspec:Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    iget-boolean v11, v9, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->doLog:Z

    if-nez v11, :cond_3

    iget-object v11, v9, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 365
    :cond_3
    iput-object v6, v9, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->tagName:Ljava/lang/String;

    .line 366
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 367
    .end local v9           #tagspec:Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string v11, "EventLogAggregator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad spec: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 374
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v2           #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #num:I
    .end local v5           #spec:Ljava/lang/String;
    .end local v6           #tag:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    .line 375
    .local v7, tags:I
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mInterestingTags:[I

    .line 376
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v8, v7

    .end local v7           #tags:I
    .local v8, tags:I
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .local v6, tag:Ljava/lang/Integer;
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mInterestingTags:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8           #tags:I
    .restart local v7       #tags:I
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v11, v8

    move v8, v7

    .end local v7           #tags:I
    .restart local v8       #tags:I
    goto :goto_2

    .line 377
    .end local v6           #tag:Ljava/lang/Integer;
    :cond_5
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mInterestingTags:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8           #tags:I
    .restart local v7       #tags:I
    const v12, 0x11238

    aput v12, v11, v8

    .line 378
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mInterestingTags:[I

    array-length v11, v11

    if-eq v7, v11, :cond_6

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 380
    :cond_6
    iput-object v10, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mVersionToken:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private writeDataEntry(JJJLjava/util/List;Landroid/os/DropBoxManager;)V
    .locals 22
    .parameter "beginTimeMillis"
    .parameter "endTimeMillis"
    .parameter "firstTimeMillis"
    .parameter
    .parameter "dropbox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List",
            "<",
            "Landroid/util/EventLog$Event;",
            ">;",
            "Landroid/os/DropBoxManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 281
    .local p7, events:Ljava/util/List;,"Ljava/util/List<Landroid/util/EventLog$Event;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v3, buffer:Ljava/lang/StringBuilder;
    const-string v19, "start="

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v19, "end="

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    cmp-long v19, p5, p1

    if-eqz v19, :cond_0

    .line 286
    const-string v19, "log_start="

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v12, key:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 293
    .local v16, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/util/ArrayList<Ljava/lang/Object;>;Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;>;"
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/EventLog$Event;

    .line 294
    .local v7, event:Landroid/util/EventLog$Event;
    invoke-virtual {v7}, Landroid/util/EventLog$Event;->getTag()I

    move-result v18

    .line 295
    .local v18, tag:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;

    .line 296
    .local v14, spec:Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    if-eqz v14, :cond_1

    iget-object v0, v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1

    .line 298
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 299
    iget-object v0, v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->tagName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {v7}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v4

    .line 301
    .local v4, data:Ljava/lang/Object;
    iget-object v0, v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->groupBy:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .local v8, g:I
    invoke-static {v4, v8}, Lcom/google/android/gsf/checkin/EventLogAggregator;->getParam(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 304
    .end local v8           #g:I
    :cond_2
    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 305
    .local v15, state:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;"
    if-nez v15, :cond_4

    .line 306
    new-instance v15, Ljava/util/ArrayList;

    .end local v15           #state:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;"
    iget-object v0, v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    .restart local v15       #state:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    iget-object v0, v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    .line 308
    iget-object v0, v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/gsf/checkin/EventLogAggregator$Operation;

    iget-object v0, v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opParam:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-interface/range {v19 .. v20}, Lcom/google/android/gsf/checkin/EventLogAggregator$Operation;->newState(I)Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 310
    :cond_3
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .end local v9           #i:I
    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;

    .local v13, ops:Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
    invoke-interface {v13, v7, v4}, Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;->addValue(Landroid/util/EventLog$Event;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 314
    .end local v13           #ops:Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
    .end local v15           #state:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;"
    :catch_0
    move-exception v5

    .line 315
    .local v5, e:Ljava/lang/IllegalArgumentException;
    const-string v19, "EventLogAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Can\'t accumulate event: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->tagName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 321
    .end local v4           #data:Ljava/lang/Object;
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    .end local v7           #event:Landroid/util/EventLog$Event;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v14           #spec:Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    .end local v18           #tag:I
    :cond_5
    :try_start_1
    const-string v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 323
    .local v6, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/util/ArrayList<Ljava/lang/Object;>;Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/google/android/common/Csv;->writeValue(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 324
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;

    .line 325
    .restart local v13       #ops:Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-interface {v13, v3}, Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;->finish(Ljava/lang/StringBuilder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 330
    .end local v6           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/util/ArrayList<Ljava/lang/Object;>;Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #ops:Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
    :catch_1
    move-exception v5

    .line 331
    .local v5, e:Ljava/io/IOException;
    const-string v19, "EventLogAggregator"

    const-string v20, "IOException writing StringBuilder"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    .end local v5           #e:Ljava/io/IOException;
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 336
    .local v17, str:Ljava/lang/String;
    const-string v19, "event_data"

    move-object/from16 v0, p8

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void

    .line 328
    .end local v17           #str:Ljava/lang/String;
    .restart local v6       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/util/ArrayList<Ljava/lang/Object;>;Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;>;"
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_7
    :try_start_2
    const-string v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4
.end method

.method private declared-synchronized writeLogEntry(JJJLjava/util/List;Landroid/os/DropBoxManager;)V
    .locals 14
    .parameter "beginTimeMillis"
    .parameter "endTimeMillis"
    .parameter "firstTimeMillis"
    .parameter
    .parameter "dropbox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List",
            "<",
            "Landroid/util/EventLog$Event;",
            ">;",
            "Landroid/os/DropBoxManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 228
    .local p7, events:Ljava/util/List;,"Ljava/util/List<Landroid/util/EventLog$Event;>;"
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .local v3, buffer:Ljava/lang/StringBuilder;
    cmp-long v12, p5, p1

    if-eqz v12, :cond_0

    .line 231
    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",0,0,event_log_start"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_0
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/EventLog$Event;

    .line 235
    .local v6, event:Landroid/util/EventLog$Event;
    invoke-virtual {v6}, Landroid/util/EventLog$Event;->getTag()I

    move-result v11

    .line 236
    .local v11, tag:I
    iget-object v12, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;

    .line 237
    .local v9, spec:Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    if-eqz v9, :cond_1

    iget-boolean v12, v9, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->doLog:Z

    if-eqz v12, :cond_1

    .line 239
    invoke-static {v6}, Lcom/google/android/gsf/checkin/EventLogAggregator;->getMillis(Landroid/util/EventLog$Event;)J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v6}, Landroid/util/EventLog$Event;->getProcessId()I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v6}, Landroid/util/EventLog$Event;->getThreadId()I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v12, v9, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->tagName:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :try_start_1
    invoke-virtual {v6}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v4

    .line 246
    .local v4, data:Ljava/lang/Object;
    instance-of v12, v4, [Ljava/lang/Object;

    if-eqz v12, :cond_2

    .line 247
    check-cast v4, [Ljava/lang/Object;

    .end local v4           #data:Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 248
    .local v2, array:[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v12, v2

    if-ge v7, v12, :cond_3

    .line 249
    const-string v12, ","

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    aget-object v12, v2, v7

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Lcom/google/android/common/Csv;->writeValue(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 248
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 252
    .end local v2           #array:[Ljava/lang/Object;
    .end local v7           #i:I
    .restart local v4       #data:Ljava/lang/Object;
    :cond_2
    if-eqz v4, :cond_3

    .line 253
    const-string v12, ","

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Lcom/google/android/common/Csv;->writeValue(Ljava/lang/String;Ljava/lang/Appendable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    .end local v4           #data:Ljava/lang/Object;
    :cond_3
    :goto_2
    :try_start_2
    const-string v12, "\n"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 228
    .end local v3           #buffer:Ljava/lang/StringBuilder;
    .end local v6           #event:Landroid/util/EventLog$Event;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #spec:Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    .end local v11           #tag:I
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 256
    .restart local v3       #buffer:Ljava/lang/StringBuilder;
    .restart local v6       #event:Landroid/util/EventLog$Event;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #spec:Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    .restart local v11       #tag:I
    :catch_0
    move-exception v5

    .line 257
    .local v5, e:Ljava/io/IOException;
    :try_start_3
    const-string v12, "EventLogAggregator"

    const-string v13, "IOException writing StringBuilder"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 263
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #event:Landroid/util/EventLog$Event;
    .end local v9           #spec:Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    .end local v11           #tag:I
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 264
    .local v10, str:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_5

    .line 266
    const-string v12, "event_log"

    move-object/from16 v0, p8

    invoke-virtual {v0, v12, v10}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    :cond_5
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized aggregate(Landroid/content/ContentResolver;JJLandroid/os/DropBoxManager;)J
    .locals 31
    .parameter "resolver"
    .parameter "logBookmark"
    .parameter "dataBookmark"
    .parameter "dropbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gsf/checkin/EventLogAggregator;->updateTagMap(Landroid/content/ContentResolver;)V

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 152
    .local v5, newBookmark:J
    const v2, 0x11238

    invoke-static {v2, v5, v6}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 154
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v25, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/EventLog$Event;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mInterestingTags:[I

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V

    .line 159
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v27

    .local v27, logPos:I
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v22

    .local v22, dataPos:I
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 160
    .local v23, endPos:I
    move-wide v7, v5

    .local v7, logMillis:J
    move-wide v15, v5

    .line 162
    .local v15, dataMillis:J
    const/16 v26, 0x0

    .local v26, i:I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 163
    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/EventLog$Event;

    .line 164
    .local v24, event:Landroid/util/EventLog$Event;
    invoke-virtual/range {v24 .. v24}, Landroid/util/EventLog$Event;->getTag()I

    move-result v30

    .line 165
    .local v30, tag:I
    invoke-static/range {v24 .. v24}, Lcom/google/android/gsf/checkin/EventLogAggregator;->getMillis(Landroid/util/EventLog$Event;)J

    move-result-wide v28

    .line 169
    .local v28, millis:J
    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    cmp-long v2, v28, p2

    if-ltz v2, :cond_0

    .line 170
    move/from16 v27, v26

    .line 171
    cmp-long v2, v28, v7

    if-gez v2, :cond_0

    move-wide/from16 v7, v28

    .line 173
    :cond_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    cmp-long v2, v28, p4

    if-ltz v2, :cond_1

    .line 174
    move/from16 v22, v26

    .line 175
    cmp-long v2, v28, v15

    if-gez v2, :cond_1

    move-wide/from16 v15, v28

    .line 179
    :cond_1
    const v2, 0x11238

    move/from16 v0, v30

    if-ne v0, v2, :cond_7

    .line 180
    invoke-virtual/range {v24 .. v24}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v21

    .line 181
    .local v21, data:Ljava/lang/Object;
    move-object/from16 v0, v21

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 182
    check-cast v21, Ljava/lang/Long;

    .end local v21           #data:Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 183
    .local v19, bookmark:J
    cmp-long v2, v19, p2

    if-nez v2, :cond_2

    .line 184
    add-int/lit8 v27, v26, 0x1

    .line 185
    move-wide/from16 v7, p2

    .line 187
    :cond_2
    cmp-long v2, v19, p4

    if-nez v2, :cond_3

    .line 188
    add-int/lit8 v22, v26, 0x1

    .line 189
    move-wide/from16 v15, p4

    .line 191
    :cond_3
    cmp-long v2, v19, v5

    if-nez v2, :cond_7

    .line 192
    move/from16 v23, v26

    .line 204
    .end local v19           #bookmark:J
    .end local v24           #event:Landroid/util/EventLog$Event;
    .end local v28           #millis:J
    .end local v30           #tag:I
    :cond_4
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-lez v2, :cond_5

    if-eqz p6, :cond_5

    .line 205
    move/from16 v0, v27

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    .local v9, logEvents:Ljava/util/List;
    move-object/from16 v2, p0

    move-wide/from16 v3, p2

    move-object/from16 v10, p6

    .line 206
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gsf/checkin/EventLogAggregator;->writeLogEntry(JJJLjava/util/List;Landroid/os/DropBoxManager;)V

    .line 208
    .end local v9           #logEvents:Ljava/util/List;
    :cond_5
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-lez v2, :cond_6

    if-eqz p6, :cond_6

    .line 209
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v17

    .local v17, dataEvents:Ljava/util/List;
    move-object/from16 v10, p0

    move-wide/from16 v11, p4

    move-wide v13, v5

    move-object/from16 v18, p6

    .line 210
    invoke-direct/range {v10 .. v18}, Lcom/google/android/gsf/checkin/EventLogAggregator;->writeDataEntry(JJJLjava/util/List;Landroid/os/DropBoxManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .end local v17           #dataEvents:Ljava/util/List;
    :cond_6
    monitor-exit p0

    return-wide v5

    .line 162
    .restart local v24       #event:Landroid/util/EventLog$Event;
    .restart local v28       #millis:J
    .restart local v30       #tag:I
    :cond_7
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_0

    .line 147
    .end local v5           #newBookmark:J
    .end local v7           #logMillis:J
    .end local v15           #dataMillis:J
    .end local v22           #dataPos:I
    .end local v23           #endPos:I
    .end local v24           #event:Landroid/util/EventLog$Event;
    .end local v25           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/EventLog$Event;>;"
    .end local v26           #i:I
    .end local v27           #logPos:I
    .end local v28           #millis:J
    .end local v30           #tag:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
