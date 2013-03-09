.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateVirtualDevice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    }
.end annotation


# static fields
.field public static final VIRTUALDEVICE_FIELD_NUMBER:I = 0x27c

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;


# instance fields
.field private hasVirtualDevice:Z

.field private memoizedSerializedSize:I

.field private virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46468
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    .line 46748
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 46752
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 46753
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46466
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 46490
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    .line 46508
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->memoizedSerializedSize:I

    .line 46466
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46463
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;-><init>()V

    return-void
.end method

.method static synthetic access$134402(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46463
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice:Z

    return p1
.end method

.method static synthetic access$134500(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46463
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    return-object v0
.end method

.method static synthetic access$134502(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46463
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1

    .prologue
    .line 46470
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 46479
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$133900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 1

    .prologue
    .line 46581
    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->access$134200()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 46584
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46559
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->access$134100(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46565
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->access$134100(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 46526
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->access$134100(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 46532
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->access$134100(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46571
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->access$134100(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46577
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->access$134100(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46548
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->access$134100(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46554
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->access$134100(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 46537
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->access$134100(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 46543
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->access$134100(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1

    .prologue
    .line 46474
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 46463
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46463
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 46510
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->memoizedSerializedSize:I

    .line 46511
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 46520
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 46513
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 46514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46515
    const/16 v2, 0x27c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 46518
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 46519
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->memoizedSerializedSize:I

    move v1, v0

    .line 46520
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1

    .prologue
    .line 46492
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    return-object v0
.end method

.method public hasVirtualDevice()Z
    .locals 1

    .prologue
    .line 46491
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 46484
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$134000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 46495
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice:Z

    if-nez v1, :cond_1

    .line 46497
    :cond_0
    :goto_0
    return v0

    .line 46496
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46497
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 1

    .prologue
    .line 46582
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 46463
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 46463
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 1

    .prologue
    .line 46586
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 46463
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 46463
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

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
    .line 46502
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46503
    const/16 v0, 0x27c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 46505
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 46506
    return-void
.end method
