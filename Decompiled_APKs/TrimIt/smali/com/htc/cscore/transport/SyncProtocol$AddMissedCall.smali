.class public final Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddMissedCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    }
.end annotation


# static fields
.field public static final MISSEDCALL_FIELD_NUMBER:I = 0x522

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;


# instance fields
.field private hasMissedCall:Z

.field private memoizedSerializedSize:I

.field private missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42221
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    .line 42501
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 42505
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 42506
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42219
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 42243
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    .line 42261
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->memoizedSerializedSize:I

    .line 42219
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42216
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;-><init>()V

    return-void
.end method

.method static synthetic access$125002(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42216
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall:Z

    return p1
.end method

.method static synthetic access$125100(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42216
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    return-object v0
.end method

.method static synthetic access$125102(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42216
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1

    .prologue
    .line 42223
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 42232
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$124500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 1

    .prologue
    .line 42334
    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->access$124800()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 42337
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42312
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->access$124700(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42318
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->access$124700(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42279
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->access$124700(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42285
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->access$124700(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42324
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->access$124700(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42330
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->access$124700(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42301
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->access$124700(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42307
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->access$124700(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42290
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->access$124700(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42296
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->access$124700(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1

    .prologue
    .line 42227
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 42216
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 42216
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public getMissedCall()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    .locals 1

    .prologue
    .line 42245
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 42263
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->memoizedSerializedSize:I

    .line 42264
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 42273
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 42266
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 42267
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42268
    const/16 v2, 0x522

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getMissedCall()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42271
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 42272
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->memoizedSerializedSize:I

    move v1, v0

    .line 42273
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasMissedCall()Z
    .locals 1

    .prologue
    .line 42244
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 42237
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$124600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 42248
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall:Z

    if-nez v1, :cond_1

    .line 42250
    :cond_0
    :goto_0
    return v0

    .line 42249
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getMissedCall()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42250
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 1

    .prologue
    .line 42335
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 42216
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 42216
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 1

    .prologue
    .line 42339
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 42216
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 42216
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42255
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42256
    const/16 v0, 0x522

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getMissedCall()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 42258
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 42259
    return-void
.end method
