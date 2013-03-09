.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetUpdatesResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;


# instance fields
.field private changesRemaining_:J

.field private deprecatedNewestTimestamp_:J

.field private entries_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;",
            ">;"
        }
    .end annotation
.end field

.field private hasChangesRemaining:Z

.field private hasDeprecatedNewestTimestamp:Z

.field private hasNewTimestamp:Z

.field private memoizedSerializedSize:I

.field private newProgressMarker_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;",
            ">;"
        }
    .end annotation
.end field

.field private newTimestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6967
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    .line 6968
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 6969
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->initFields()V

    .line 6970
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 6473
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6489
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;

    .line 6502
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newTimestamp_:J

    .line 6509
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->deprecatedNewestTimestamp_:J

    .line 6516
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->changesRemaining_:J

    .line 6522
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;

    .line 6561
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->memoizedSerializedSize:I

    .line 6474
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->initFields()V

    .line 6475
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6470
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .parameter "noInit"

    .prologue
    const-wide/16 v1, 0x0

    .line 6476
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6489
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;

    .line 6502
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newTimestamp_:J

    .line 6509
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->deprecatedNewestTimestamp_:J

    .line 6516
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->changesRemaining_:J

    .line 6522
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;

    .line 6561
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->memoizedSerializedSize:I

    .line 6476
    return-void
.end method

.method static synthetic access$17600(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6470
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6470
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6470
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6470
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6470
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasNewTimestamp:Z

    return p1
.end method

.method static synthetic access$17902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6470
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$18002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6470
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasDeprecatedNewestTimestamp:Z

    return p1
.end method

.method static synthetic access$18102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6470
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->deprecatedNewestTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$18202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6470
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasChangesRemaining:Z

    return p1
.end method

.method static synthetic access$18302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6470
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->changesRemaining_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;
    .locals 1

    .prologue
    .line 6480
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 6533
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 1

    .prologue
    .line 6658
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->access$17400()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 6661
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChangesRemaining()J
    .locals 2

    .prologue
    .line 6518
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->changesRemaining_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;
    .locals 1

    .prologue
    .line 6484
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6470
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecatedNewestTimestamp()J
    .locals 2

    .prologue
    .line 6511
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->deprecatedNewestTimestamp_:J

    return-wide v0
.end method

.method public getEntriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6492
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;

    return-object v0
.end method

.method public getNewProgressMarkerCount()I
    .locals 1

    .prologue
    .line 6527
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNewProgressMarkerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6525
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;

    return-object v0
.end method

.method public getNewTimestamp()J
    .locals 2

    .prologue
    .line 6504
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newTimestamp_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 6563
    iget v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->memoizedSerializedSize:I

    .line 6564
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 6588
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 6566
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 6567
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getEntriesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    .line 6568
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    const/4 v4, 0x1

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 6571
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasNewTimestamp()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6572
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getNewTimestamp()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 6575
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasDeprecatedNewestTimestamp()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6576
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getDeprecatedNewestTimestamp()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 6579
    :cond_3
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasChangesRemaining()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6580
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getChangesRemaining()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 6583
    :cond_4
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getNewProgressMarkerList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    .line 6584
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    const/4 v4, 0x5

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_2

    .line 6587
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    :cond_5
    iput v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->memoizedSerializedSize:I

    move v3, v2

    .line 6588
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public hasChangesRemaining()Z
    .locals 1

    .prologue
    .line 6517
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasChangesRemaining:Z

    return v0
.end method

.method public hasDeprecatedNewestTimestamp()Z
    .locals 1

    .prologue
    .line 6510
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasDeprecatedNewestTimestamp:Z

    return v0
.end method

.method public hasNewTimestamp()Z
    .locals 1

    .prologue
    .line 6503
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasNewTimestamp:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    .line 6535
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getEntriesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    .line 6536
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 6538
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 1

    .prologue
    .line 6659
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6470
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 1

    .prologue
    .line 6663
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6470
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6543
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getSerializedSize()I

    .line 6544
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getEntriesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    .line 6545
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0

    .line 6547
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasNewTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6548
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getNewTimestamp()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6550
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasDeprecatedNewestTimestamp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6551
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getDeprecatedNewestTimestamp()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6553
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasChangesRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6554
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getChangesRemaining()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6556
    :cond_3
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getNewProgressMarkerList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    .line 6557
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_1

    .line 6559
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    :cond_4
    return-void
.end method
