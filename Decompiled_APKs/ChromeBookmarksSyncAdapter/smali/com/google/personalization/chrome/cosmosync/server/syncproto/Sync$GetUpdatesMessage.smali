.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetUpdatesMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;


# instance fields
.field private batchSize_:I

.field private callerInfo_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

.field private fetchFolders_:Z

.field private fromProgressMarker_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;",
            ">;"
        }
    .end annotation
.end field

.field private fromTimestamp_:J

.field private hasBatchSize:Z

.field private hasCallerInfo:Z

.field private hasFetchFolders:Z

.field private hasFromTimestamp:Z

.field private hasRequestedTypes:Z

.field private hasStreaming:Z

.field private memoizedSerializedSize:I

.field private requestedTypes_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

.field private streaming_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4150
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    .line 4151
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 4152
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->initFields()V

    .line 4153
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3572
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3589
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromTimestamp_:J

    .line 3603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fetchFolders_:Z

    .line 3617
    iput v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->batchSize_:I

    .line 3623
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;

    .line 3636
    iput-boolean v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->streaming_:Z

    .line 3680
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->memoizedSerializedSize:I

    .line 3573
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->initFields()V

    .line 3574
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3569
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .parameter "noInit"

    .prologue
    const/4 v2, 0x0

    .line 3575
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3589
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromTimestamp_:J

    .line 3603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fetchFolders_:Z

    .line 3617
    iput v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->batchSize_:I

    .line 3623
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;

    .line 3636
    iput-boolean v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->streaming_:Z

    .line 3680
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->memoizedSerializedSize:I

    .line 3575
    return-void
.end method

.method static synthetic access$10500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3569
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3569
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3569
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasFromTimestamp:Z

    return p1
.end method

.method static synthetic access$10702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3569
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$10802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3569
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasCallerInfo:Z

    return p1
.end method

.method static synthetic access$10900(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3569
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->callerInfo_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    return-object v0
.end method

.method static synthetic access$10902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3569
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->callerInfo_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    return-object p1
.end method

.method static synthetic access$11002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3569
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasFetchFolders:Z

    return p1
.end method

.method static synthetic access$11102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3569
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fetchFolders_:Z

    return p1
.end method

.method static synthetic access$11202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3569
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasRequestedTypes:Z

    return p1
.end method

.method static synthetic access$11300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3569
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->requestedTypes_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    return-object v0
.end method

.method static synthetic access$11302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3569
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->requestedTypes_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    return-object p1
.end method

.method static synthetic access$11402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3569
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasBatchSize:Z

    return p1
.end method

.method static synthetic access$11502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3569
    iput p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->batchSize_:I

    return p1
.end method

.method static synthetic access$11602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3569
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasStreaming:Z

    return p1
.end method

.method static synthetic access$11702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3569
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->streaming_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;
    .locals 1

    .prologue
    .line 3579
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3641
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->callerInfo_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    .line 3642
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->requestedTypes_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    .line 3643
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 1

    .prologue
    .line 3785
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->access$10300()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 3788
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBatchSize()I
    .locals 1

    .prologue
    .line 3619
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->batchSize_:I

    return v0
.end method

.method public getCallerInfo()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
    .locals 1

    .prologue
    .line 3598
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->callerInfo_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;
    .locals 1

    .prologue
    .line 3583
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3569
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v0

    return-object v0
.end method

.method public getFetchFolders()Z
    .locals 1

    .prologue
    .line 3605
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fetchFolders_:Z

    return v0
.end method

.method public getFromProgressMarkerList()Ljava/util/List;
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
    .line 3626
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromProgressMarker_:Ljava/util/List;

    return-object v0
.end method

.method public getFromTimestamp()J
    .locals 2

    .prologue
    .line 3591
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->fromTimestamp_:J

    return-wide v0
.end method

.method public getRequestedTypes()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    .locals 1

    .prologue
    .line 3612
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->requestedTypes_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 3682
    iget v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->memoizedSerializedSize:I

    .line 3683
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 3715
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 3685
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 3686
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasFromTimestamp()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3687
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getFromTimestamp()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 3690
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasCallerInfo()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3691
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getCallerInfo()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3694
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasFetchFolders()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3695
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getFetchFolders()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 3698
    :cond_3
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasRequestedTypes()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3699
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getRequestedTypes()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3702
    :cond_4
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasBatchSize()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3703
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getBatchSize()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 3706
    :cond_5
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getFromProgressMarkerList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    .line 3707
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    const/4 v4, 0x6

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 3710
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    :cond_6
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasStreaming()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3711
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getStreaming()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 3714
    :cond_7
    iput v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->memoizedSerializedSize:I

    move v3, v2

    .line 3715
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public getStreaming()Z
    .locals 1

    .prologue
    .line 3638
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->streaming_:Z

    return v0
.end method

.method public hasBatchSize()Z
    .locals 1

    .prologue
    .line 3618
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasBatchSize:Z

    return v0
.end method

.method public hasCallerInfo()Z
    .locals 1

    .prologue
    .line 3597
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasCallerInfo:Z

    return v0
.end method

.method public hasFetchFolders()Z
    .locals 1

    .prologue
    .line 3604
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasFetchFolders:Z

    return v0
.end method

.method public hasFromTimestamp()Z
    .locals 1

    .prologue
    .line 3590
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasFromTimestamp:Z

    return v0
.end method

.method public hasRequestedTypes()Z
    .locals 1

    .prologue
    .line 3611
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasRequestedTypes:Z

    return v0
.end method

.method public hasStreaming()Z
    .locals 1

    .prologue
    .line 3637
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasStreaming:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3645
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasCallerInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3646
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getCallerInfo()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3651
    :cond_0
    :goto_0
    return v0

    .line 3648
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasRequestedTypes()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3649
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getRequestedTypes()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3651
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 1

    .prologue
    .line 3786
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3569
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    .locals 1

    .prologue
    .line 3790
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3569
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

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
    .line 3656
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getSerializedSize()I

    .line 3657
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasFromTimestamp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3658
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getFromTimestamp()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3660
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasCallerInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3661
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getCallerInfo()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3663
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasFetchFolders()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3664
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getFetchFolders()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3666
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasRequestedTypes()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3667
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getRequestedTypes()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3669
    :cond_3
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasBatchSize()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3670
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getBatchSize()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3672
    :cond_4
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getFromProgressMarkerList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    .line 3673
    .local v0, element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0

    .line 3675
    .end local v0           #element:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    :cond_5
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->hasStreaming()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3676
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getStreaming()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3678
    :cond_6
    return-void
.end method
