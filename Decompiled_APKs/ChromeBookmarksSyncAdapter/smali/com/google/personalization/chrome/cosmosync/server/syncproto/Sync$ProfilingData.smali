.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfilingData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;


# instance fields
.field private fileDataReadTime_:J

.field private fileDataWriteTime_:J

.field private hasFileDataReadTime:Z

.field private hasFileDataWriteTime:Z

.field private hasMetaDataReadTime:Z

.field private hasMetaDataWriteTime:Z

.field private hasTotalRequestTime:Z

.field private hasUserLookupTime:Z

.field private memoizedSerializedSize:I

.field private metaDataReadTime_:J

.field private metaDataWriteTime_:J

.field private totalRequestTime_:J

.field private userLookupTime_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 450
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    .line 451
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 452
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->initFields()V

    .line 453
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31
    iput-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->metaDataWriteTime_:J

    .line 38
    iput-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->fileDataWriteTime_:J

    .line 45
    iput-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->userLookupTime_:J

    .line 52
    iput-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->metaDataReadTime_:J

    .line 59
    iput-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->fileDataReadTime_:J

    .line 66
    iput-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->totalRequestTime_:J

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->memoizedSerializedSize:I

    .line 15
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "noInit"

    .prologue
    const-wide/16 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31
    iput-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->metaDataWriteTime_:J

    .line 38
    iput-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->fileDataWriteTime_:J

    .line 45
    iput-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->userLookupTime_:J

    .line 52
    iput-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->metaDataReadTime_:J

    .line 59
    iput-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->fileDataReadTime_:J

    .line 66
    iput-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->totalRequestTime_:J

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->memoizedSerializedSize:I

    .line 17
    return-void
.end method

.method static synthetic access$1002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->metaDataReadTime_:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasFileDataReadTime:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->fileDataReadTime_:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasTotalRequestTime:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->totalRequestTime_:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasMetaDataWriteTime:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->metaDataWriteTime_:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasFileDataWriteTime:Z

    return p1
.end method

.method static synthetic access$602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->fileDataWriteTime_:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasUserLookupTime:Z

    return p1
.end method

.method static synthetic access$802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->userLookupTime_:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasMetaDataReadTime:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    .locals 1

    .prologue
    .line 200
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->access$100()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 203
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    move-result-object v0

    return-object v0
.end method

.method public getFileDataReadTime()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->fileDataReadTime_:J

    return-wide v0
.end method

.method public getFileDataWriteTime()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->fileDataWriteTime_:J

    return-wide v0
.end method

.method public getMetaDataReadTime()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->metaDataReadTime_:J

    return-wide v0
.end method

.method public getMetaDataWriteTime()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->metaDataWriteTime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 101
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->memoizedSerializedSize:I

    .line 102
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 130
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 104
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasMetaDataWriteTime()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getMetaDataWriteTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasFileDataWriteTime()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getFileDataWriteTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasUserLookupTime()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getUserLookupTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 117
    :cond_3
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasMetaDataReadTime()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 118
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getMetaDataReadTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 121
    :cond_4
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasFileDataReadTime()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 122
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getFileDataReadTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 125
    :cond_5
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasTotalRequestTime()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 126
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getTotalRequestTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 129
    :cond_6
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->memoizedSerializedSize:I

    move v1, v0

    .line 130
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTotalRequestTime()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->totalRequestTime_:J

    return-wide v0
.end method

.method public getUserLookupTime()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->userLookupTime_:J

    return-wide v0
.end method

.method public hasFileDataReadTime()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasFileDataReadTime:Z

    return v0
.end method

.method public hasFileDataWriteTime()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasFileDataWriteTime:Z

    return v0
.end method

.method public hasMetaDataReadTime()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasMetaDataReadTime:Z

    return v0
.end method

.method public hasMetaDataWriteTime()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasMetaDataWriteTime:Z

    return v0
.end method

.method public hasTotalRequestTime()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasTotalRequestTime:Z

    return v0
.end method

.method public hasUserLookupTime()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasUserLookupTime:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    .locals 1

    .prologue
    .line 205
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

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
    .line 78
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getSerializedSize()I

    .line 79
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasMetaDataWriteTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getMetaDataWriteTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasFileDataWriteTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getFileDataWriteTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasUserLookupTime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getUserLookupTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 88
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasMetaDataReadTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getMetaDataReadTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 91
    :cond_3
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasFileDataReadTime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getFileDataReadTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 94
    :cond_4
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->hasTotalRequestTime()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getTotalRequestTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 97
    :cond_5
    return-void
.end method
