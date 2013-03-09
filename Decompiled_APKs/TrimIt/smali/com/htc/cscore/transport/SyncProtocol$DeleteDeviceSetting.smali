.class public final Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteDeviceSetting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    }
.end annotation


# static fields
.field public static final DEVICESETTINGID_FIELD_NUMBER:I = 0x559

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x732

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;


# instance fields
.field private deviceSettingId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private hasDeviceSettingId:Z

.field private hasTimestamp:Z

.field private memoizedSerializedSize:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47924
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    .line 48244
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 48248
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 48249
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47922
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 47946
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->deviceSettingId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 47953
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->timestamp_:J

    .line 47975
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->memoizedSerializedSize:I

    .line 47922
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47919
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;-><init>()V

    return-void
.end method

.method static synthetic access$138602(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47919
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasDeviceSettingId:Z

    return p1
.end method

.method static synthetic access$138700(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47919
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->deviceSettingId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$138702(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47919
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->deviceSettingId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$138802(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47919
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$138902(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47919
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1

    .prologue
    .line 47926
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 47935
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$138100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    .locals 1

    .prologue
    .line 48052
    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->access$138400()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 48055
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48030
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->access$138300(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48036
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->access$138300(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47997
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->access$138300(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 48003
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->access$138300(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48042
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->access$138300(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48048
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->access$138300(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48019
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->access$138300(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48025
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->access$138300(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 48008
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->access$138300(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 48014
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->access$138300(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1

    .prologue
    .line 47930
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 47919
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 47919
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSettingId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 47948
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->deviceSettingId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 47977
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->memoizedSerializedSize:I

    .line 47978
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 47991
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 47980
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 47981
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasDeviceSettingId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47982
    const/16 v2, 0x559

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getDeviceSettingId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47985
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47986
    const/16 v2, 0x732

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 47989
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 47990
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->memoizedSerializedSize:I

    move v1, v0

    .line 47991
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 47955
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->timestamp_:J

    return-wide v0
.end method

.method public hasDeviceSettingId()Z
    .locals 1

    .prologue
    .line 47947
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasDeviceSettingId:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 47954
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 47940
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$138200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47958
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasDeviceSettingId:Z

    if-nez v1, :cond_1

    .line 47961
    :cond_0
    :goto_0
    return v0

    .line 47959
    :cond_1
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasTimestamp:Z

    if-eqz v1, :cond_0

    .line 47960
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getDeviceSettingId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47961
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    .locals 1

    .prologue
    .line 48053
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 47919
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 47919
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    .locals 1

    .prologue
    .line 48057
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 47919
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 47919
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47966
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasDeviceSettingId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47967
    const/16 v0, 0x559

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getDeviceSettingId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 47969
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47970
    const/16 v0, 0x732

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 47972
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 47973
    return-void
.end method
