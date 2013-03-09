.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;


# instance fields
.field private hasMaxCommitBatchSize:Z

.field private hasSetSyncLongPollInterval:Z

.field private hasSetSyncPollInterval:Z

.field private maxCommitBatchSize_:I

.field private memoizedSerializedSize:I

.field private setSyncLongPollInterval_:I

.field private setSyncPollInterval_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8970
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    .line 8971
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 8972
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->initFields()V

    .line 8973
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8651
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8668
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->setSyncPollInterval_:I

    .line 8675
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->setSyncLongPollInterval_:I

    .line 8682
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->maxCommitBatchSize_:I

    .line 8706
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->memoizedSerializedSize:I

    .line 8652
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->initFields()V

    .line 8653
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8648
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, 0x0

    .line 8654
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8668
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->setSyncPollInterval_:I

    .line 8675
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->setSyncLongPollInterval_:I

    .line 8682
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->maxCommitBatchSize_:I

    .line 8706
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->memoizedSerializedSize:I

    .line 8654
    return-void
.end method

.method static synthetic access$22402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8648
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->hasSetSyncPollInterval:Z

    return p1
.end method

.method static synthetic access$22502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8648
    iput p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->setSyncPollInterval_:I

    return p1
.end method

.method static synthetic access$22602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8648
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->hasSetSyncLongPollInterval:Z

    return p1
.end method

.method static synthetic access$22702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8648
    iput p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->setSyncLongPollInterval_:I

    return p1
.end method

.method static synthetic access$22802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8648
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->hasMaxCommitBatchSize:Z

    return p1
.end method

.method static synthetic access$22902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8648
    iput p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->maxCommitBatchSize_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    .locals 1

    .prologue
    .line 8658
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 8687
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;
    .locals 1

    .prologue
    .line 8795
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->access$22200()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 8798
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    .locals 1

    .prologue
    .line 8662
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8648
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCommitBatchSize()I
    .locals 1

    .prologue
    .line 8684
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->maxCommitBatchSize_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 8708
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->memoizedSerializedSize:I

    .line 8709
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 8725
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 8711
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 8712
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->hasSetSyncPollInterval()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8713
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->getSetSyncPollInterval()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8716
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->hasSetSyncLongPollInterval()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8717
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->getSetSyncLongPollInterval()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8720
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->hasMaxCommitBatchSize()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8721
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->getMaxCommitBatchSize()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8724
    :cond_3
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->memoizedSerializedSize:I

    move v1, v0

    .line 8725
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getSetSyncLongPollInterval()I
    .locals 1

    .prologue
    .line 8677
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->setSyncLongPollInterval_:I

    return v0
.end method

.method public getSetSyncPollInterval()I
    .locals 1

    .prologue
    .line 8670
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->setSyncPollInterval_:I

    return v0
.end method

.method public hasMaxCommitBatchSize()Z
    .locals 1

    .prologue
    .line 8683
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->hasMaxCommitBatchSize:Z

    return v0
.end method

.method public hasSetSyncLongPollInterval()Z
    .locals 1

    .prologue
    .line 8676
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->hasSetSyncLongPollInterval:Z

    return v0
.end method

.method public hasSetSyncPollInterval()Z
    .locals 1

    .prologue
    .line 8669
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->hasSetSyncPollInterval:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 8689
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;
    .locals 1

    .prologue
    .line 8796
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8648
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;
    .locals 1

    .prologue
    .line 8800
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8648
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8694
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->getSerializedSize()I

    .line 8695
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->hasSetSyncPollInterval()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8696
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->getSetSyncPollInterval()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 8698
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->hasSetSyncLongPollInterval()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8699
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->getSetSyncLongPollInterval()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 8701
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->hasMaxCommitBatchSize()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8702
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->getMaxCommitBatchSize()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 8704
    :cond_2
    return-void
.end method
