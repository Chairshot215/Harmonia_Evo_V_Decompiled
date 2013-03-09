.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateDeviceSetting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    }
.end annotation


# static fields
.field public static final DEVICESETTING_FIELD_NUMBER:I = 0x684

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;


# instance fields
.field private deviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

.field private hasDeviceSetting:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48257
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    .line 48537
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 48541
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 48542
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48255
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 48279
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->deviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    .line 48297
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->memoizedSerializedSize:I

    .line 48255
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48252
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;-><init>()V

    return-void
.end method

.method static synthetic access$139502(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48252
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->hasDeviceSetting:Z

    return p1
.end method

.method static synthetic access$139600(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48252
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->deviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    return-object v0
.end method

.method static synthetic access$139602(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48252
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->deviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1

    .prologue
    .line 48259
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 48268
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$139000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    .locals 1

    .prologue
    .line 48370
    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->access$139300()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 48373
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48348
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->access$139200(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48354
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->access$139200(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 48315
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->access$139200(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 48321
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->access$139200(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48360
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->access$139200(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48366
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->access$139200(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48337
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->access$139200(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48343
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->access$139200(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 48326
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->access$139200(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 48332
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->access$139200(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1

    .prologue
    .line 48263
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 48252
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 48252
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1

    .prologue
    .line 48281
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->deviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 48299
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->memoizedSerializedSize:I

    .line 48300
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 48309
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 48302
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 48303
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->hasDeviceSetting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48304
    const/16 v2, 0x684

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 48307
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 48308
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->memoizedSerializedSize:I

    move v1, v0

    .line 48309
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasDeviceSetting()Z
    .locals 1

    .prologue
    .line 48280
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->hasDeviceSetting:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 48273
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$139100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 48284
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->hasDeviceSetting:Z

    if-nez v1, :cond_1

    .line 48286
    :cond_0
    :goto_0
    return v0

    .line 48285
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48286
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    .locals 1

    .prologue
    .line 48371
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 48252
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 48252
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    .locals 1

    .prologue
    .line 48375
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 48252
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 48252
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

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
    .line 48291
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->hasDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48292
    const/16 v0, 0x684

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 48294
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 48295
    return-void
.end method
