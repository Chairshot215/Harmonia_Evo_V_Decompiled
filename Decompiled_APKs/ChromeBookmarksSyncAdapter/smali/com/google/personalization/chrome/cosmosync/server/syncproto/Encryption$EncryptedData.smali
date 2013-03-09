.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Encryption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EncryptedData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;


# instance fields
.field private blob_:Ljava/lang/String;

.field private hasBlob:Z

.field private hasKeyName:Z

.field private keyName_:Ljava/lang/String;

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 300
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    .line 301
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption;->internalForceInit()V

    .line 302
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->initFields()V

    .line 303
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->keyName_:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->blob_:Ljava/lang/String;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->memoizedSerializedSize:I

    .line 15
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->keyName_:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->blob_:Ljava/lang/String;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->memoizedSerializedSize:I

    .line 17
    return-void
.end method

.method static synthetic access$302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->hasKeyName:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->keyName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->hasBlob:Z

    return p1
.end method

.method static synthetic access$602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->blob_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;
    .locals 1

    .prologue
    .line 144
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->access$100()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 147
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBlob()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->blob_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->keyName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 61
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->memoizedSerializedSize:I

    .line 62
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 74
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 64
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->hasKeyName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->getKeyName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->hasBlob()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->getBlob()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 73
    :cond_2
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->memoizedSerializedSize:I

    move v1, v0

    .line 74
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasBlob()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->hasBlob:Z

    return v0
.end method

.method public hasKeyName()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->hasKeyName:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;
    .locals 1

    .prologue
    .line 149
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

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
    .line 50
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->getSerializedSize()I

    .line 51
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->hasKeyName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->getKeyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->hasBlob()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->getBlob()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 57
    :cond_1
    return-void
.end method
