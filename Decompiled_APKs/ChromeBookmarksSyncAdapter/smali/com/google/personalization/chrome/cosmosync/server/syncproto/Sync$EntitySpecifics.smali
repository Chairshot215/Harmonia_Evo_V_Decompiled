.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntitySpecifics"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;",
        ">;"
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;


# instance fields
.field private encrypted_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

.field private hasEncrypted:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 734
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    .line 735
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 736
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->initFields()V

    .line 737
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 502
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->memoizedSerializedSize:I

    .line 463
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->initFields()V

    .line 464
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 502
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->memoizedSerializedSize:I

    .line 465
    return-void
.end method

.method static synthetic access$1802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->hasEncrypted:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->encrypted_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 458
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->encrypted_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    .locals 1

    .prologue
    .line 469
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 484
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->encrypted_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    .line 485
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    .locals 1

    .prologue
    .line 584
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->access$1600()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 587
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    .locals 1

    .prologue
    .line 473
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v0

    return-object v0
.end method

.method public getEncrypted()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->encrypted_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 504
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->memoizedSerializedSize:I

    .line 505
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 514
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 507
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->hasEncrypted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->getEncrypted()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 512
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 513
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->memoizedSerializedSize:I

    move v1, v0

    .line 514
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasEncrypted()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->hasEncrypted:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 488
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    .locals 1

    .prologue
    .line 589
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

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
    .line 493
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->getSerializedSize()I

    .line 495
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 496
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->hasEncrypted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->getEncrypted()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 499
    :cond_0
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 500
    return-void
.end method
