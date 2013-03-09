.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommitResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;,
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;,
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;


# instance fields
.field private entryResponse_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6462
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    .line 6463
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 6464
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->initFields()V

    .line 6465
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5575
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6187
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;

    .line 6214
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->memoizedSerializedSize:I

    .line 5576
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->initFields()V

    .line 5577
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5572
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 5578
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6187
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;

    .line 6214
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->memoizedSerializedSize:I

    .line 5578
    return-void
.end method

.method static synthetic access$17200(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5572
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5572
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
    .locals 1

    .prologue
    .line 5582
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 6198
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
    .locals 1

    .prologue
    .line 6295
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->access$17000()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 6298
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
    .locals 1

    .prologue
    .line 5586
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5572
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public getEntryResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6190
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 6216
    iget v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->memoizedSerializedSize:I

    .line 6217
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 6225
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 6219
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 6220
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->getEntryResponseList()Ljava/util/List;

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

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    .line 6221
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;
    const/4 v4, 0x1

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 6224
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;
    :cond_1
    iput v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->memoizedSerializedSize:I

    move v3, v2

    .line 6225
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    .line 6200
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->getEntryResponseList()Ljava/util/List;

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

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    .line 6201
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 6203
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
    .locals 1

    .prologue
    .line 6296
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5572
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
    .locals 1

    .prologue
    .line 6300
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5572
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

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
    .line 6208
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->getSerializedSize()I

    .line 6209
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->getEntryResponseList()Ljava/util/List;

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

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    .line 6210
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0

    .line 6212
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;
    :cond_0
    return-void
.end method
