.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetUpdatesMetadataResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;


# instance fields
.field private changesRemaining_:J

.field private hasChangesRemaining:Z

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7305
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    .line 7306
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 7307
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->initFields()V

    .line 7308
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 6978
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6995
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->changesRemaining_:J

    .line 7001
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;

    .line 7028
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->memoizedSerializedSize:I

    .line 6979
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->initFields()V

    .line 6980
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6975
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "noInit"

    .prologue
    .line 6981
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6995
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->changesRemaining_:J

    .line 7001
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;

    .line 7028
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->memoizedSerializedSize:I

    .line 6981
    return-void
.end method

.method static synthetic access$18700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6975
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$18702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6975
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$18802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6975
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->hasChangesRemaining:Z

    return p1
.end method

.method static synthetic access$18902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6975
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->changesRemaining_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;
    .locals 1

    .prologue
    .line 6985
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 7012
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    .locals 1

    .prologue
    .line 7113
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->access$18500()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 7116
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChangesRemaining()J
    .locals 2

    .prologue
    .line 6997
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->changesRemaining_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;
    .locals 1

    .prologue
    .line 6989
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6975
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    move-result-object v0

    return-object v0
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
    .line 7004
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 7030
    iget v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->memoizedSerializedSize:I

    .line 7031
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 7043
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 7033
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 7034
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->hasChangesRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7035
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->getChangesRemaining()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 7038
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->getNewProgressMarkerList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    .line 7039
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    const/4 v4, 0x2

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 7042
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    :cond_2
    iput v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->memoizedSerializedSize:I

    move v3, v2

    .line 7043
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public hasChangesRemaining()Z
    .locals 1

    .prologue
    .line 6996
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->hasChangesRemaining:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7014
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    .locals 1

    .prologue
    .line 7114
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6975
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    .locals 1

    .prologue
    .line 7118
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6975
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

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
    .line 7019
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->getSerializedSize()I

    .line 7020
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->hasChangesRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7021
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->getChangesRemaining()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7023
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->getNewProgressMarkerList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    .line 7024
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0

    .line 7026
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    :cond_1
    return-void
.end method
