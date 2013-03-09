.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClearUserDataResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;


# instance fields
.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4832
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    .line 4833
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 4834
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->initFields()V

    .line 4835
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4630
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4655
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->memoizedSerializedSize:I

    .line 4631
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->initFields()V

    .line 4632
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4627
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 4633
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4655
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->memoizedSerializedSize:I

    .line 4633
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;
    .locals 1

    .prologue
    .line 4637
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 4645
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;
    .locals 1

    .prologue
    .line 4732
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;->access$12700()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 4735
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;
    .locals 1

    .prologue
    .line 4641
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4627
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4657
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->memoizedSerializedSize:I

    .line 4658
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4662
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 4660
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 4661
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 4662
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4647
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;
    .locals 1

    .prologue
    .line 4733
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4627
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;
    .locals 1

    .prologue
    .line 4737
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4627
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 0
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4652
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->getSerializedSize()I

    .line 4653
    return-void
.end method
