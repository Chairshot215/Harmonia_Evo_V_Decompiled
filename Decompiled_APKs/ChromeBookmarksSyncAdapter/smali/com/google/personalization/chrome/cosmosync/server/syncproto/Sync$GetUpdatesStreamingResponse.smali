.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetUpdatesStreamingResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;


# instance fields
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

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7607
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    .line 7608
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 7609
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->initFields()V

    .line 7610
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7316
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7332
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;

    .line 7359
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->memoizedSerializedSize:I

    .line 7317
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->initFields()V

    .line 7318
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 7313
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 7319
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7332
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;

    .line 7359
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->memoizedSerializedSize:I

    .line 7319
    return-void
.end method

.method static synthetic access$19300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7313
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$19302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7313
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;
    .locals 1

    .prologue
    .line 7323
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 7343
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    .locals 1

    .prologue
    .line 7440
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->access$19100()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 7443
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;
    .locals 1

    .prologue
    .line 7327
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7313
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

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
    .line 7335
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 7361
    iget v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->memoizedSerializedSize:I

    .line 7362
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 7370
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 7364
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 7365
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->getEntriesList()Ljava/util/List;

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

    .line 7366
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    const/4 v4, 0x1

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 7369
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    :cond_1
    iput v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->memoizedSerializedSize:I

    move v3, v2

    .line 7370
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    .line 7345
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->getEntriesList()Ljava/util/List;

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

    .line 7346
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 7348
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    .locals 1

    .prologue
    .line 7441
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7313
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    .locals 1

    .prologue
    .line 7445
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7313
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7353
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->getSerializedSize()I

    .line 7354
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->getEntriesList()Ljava/util/List;

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

    .line 7355
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0

    .line 7357
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    :cond_0
    return-void
.end method
