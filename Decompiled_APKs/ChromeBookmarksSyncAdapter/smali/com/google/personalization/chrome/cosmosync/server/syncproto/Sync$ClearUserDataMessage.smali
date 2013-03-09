.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClearUserDataMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;


# instance fields
.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4619
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    .line 4620
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 4621
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->initFields()V

    .line 4622
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4417
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4442
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->memoizedSerializedSize:I

    .line 4418
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->initFields()V

    .line 4419
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4414
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 4420
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4442
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->memoizedSerializedSize:I

    .line 4420
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;
    .locals 1

    .prologue
    .line 4424
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 4432
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;
    .locals 1

    .prologue
    .line 4519
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->access$12400()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 4522
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;
    .locals 1

    .prologue
    .line 4428
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4414
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4444
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->memoizedSerializedSize:I

    .line 4445
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4449
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 4447
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 4448
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->memoizedSerializedSize:I

    move v1, v0

    .line 4449
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4434
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;
    .locals 1

    .prologue
    .line 4520
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4414
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;
    .locals 1

    .prologue
    .line 4524
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4414
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

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
    .line 4439
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->getSerializedSize()I

    .line 4440
    return-void
.end method
