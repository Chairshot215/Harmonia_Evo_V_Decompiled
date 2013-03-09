.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommitMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;


# instance fields
.field private cacheGuid_:Ljava/lang/String;

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

.field private extensionsActivity_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;",
            ">;"
        }
    .end annotation
.end field

.field private hasCacheGuid:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2837
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    .line 2838
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 2839
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->initFields()V

    .line 2840
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2418
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2434
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;

    .line 2447
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->cacheGuid_:Ljava/lang/String;

    .line 2453
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;

    .line 2486
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->memoizedSerializedSize:I

    .line 2419
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->initFields()V

    .line 2420
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2415
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 2421
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2434
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;

    .line 2447
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->cacheGuid_:Ljava/lang/String;

    .line 2453
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;

    .line 2486
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->memoizedSerializedSize:I

    .line 2421
    return-void
.end method

.method static synthetic access$8000(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2415
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2415
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2415
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->hasCacheGuid:Z

    return p1
.end method

.method static synthetic access$8302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2415
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->cacheGuid_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;
    .locals 1

    .prologue
    .line 2425
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 2464
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 1

    .prologue
    .line 2575
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->access$7800()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2578
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCacheGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2449
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->cacheGuid_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;
    .locals 1

    .prologue
    .line 2429
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2415
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v0

    return-object v0
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
    .line 2437
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;

    return-object v0
.end method

.method public getExtensionsActivityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 2488
    iget v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->memoizedSerializedSize:I

    .line 2489
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 2505
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 2491
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 2492
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->getEntriesList()Ljava/util/List;

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

    .line 2493
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    const/4 v4, 0x1

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 2496
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->hasCacheGuid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2497
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->getCacheGuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2500
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->getExtensionsActivityList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    .line 2501
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;
    const/4 v4, 0x3

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_2

    .line 2504
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;
    :cond_3
    iput v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->memoizedSerializedSize:I

    move v3, v2

    .line 2505
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public hasCacheGuid()Z
    .locals 1

    .prologue
    .line 2448
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->hasCacheGuid:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    .line 2466
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->getEntriesList()Ljava/util/List;

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

    .line 2467
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 2469
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 1

    .prologue
    .line 2576
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2415
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 1

    .prologue
    .line 2580
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2415
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2474
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->getSerializedSize()I

    .line 2475
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->getEntriesList()Ljava/util/List;

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

    .line 2476
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0

    .line 2478
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->hasCacheGuid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2479
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->getCacheGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 2481
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->getExtensionsActivityList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    .line 2482
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_1

    .line 2484
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;
    :cond_2
    return-void
.end method
