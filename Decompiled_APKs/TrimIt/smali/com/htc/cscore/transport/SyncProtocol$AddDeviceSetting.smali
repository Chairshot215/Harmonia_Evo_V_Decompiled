.class public final Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddDeviceSetting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;
    }
.end annotation


# static fields
.field public static final DEVICESETTING_FIELD_NUMBER:I = 0x684

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;


# instance fields
.field private deviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

.field private hasDeviceSetting:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47631
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    .line 47911
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 47915
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 47916
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47629
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 47653
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->deviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    .line 47671
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->memoizedSerializedSize:I

    .line 47629
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47626
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;-><init>()V

    return-void
.end method

.method static synthetic access$137902(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47626
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->hasDeviceSetting:Z

    return p1
.end method

.method static synthetic access$138000(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47626
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->deviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    return-object v0
.end method

.method static synthetic access$138002(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47626
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->deviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 1

    .prologue
    .line 47633
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 47642
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$137400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;
    .locals 1

    .prologue
    .line 47744
    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->access$137700()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 47747
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47722
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->access$137600(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47728
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->access$137600(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47689
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->access$137600(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47695
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->access$137600(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47734
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->access$137600(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47740
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->access$137600(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47711
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->access$137600(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47717
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->access$137600(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47700
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->access$137600(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47706
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->access$137600(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 1

    .prologue
    .line 47637
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 47626
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 47626
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1

    .prologue
    .line 47655
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->deviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 47673
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->memoizedSerializedSize:I

    .line 47674
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 47683
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 47676
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 47677
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->hasDeviceSetting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47678
    const/16 v2, 0x684

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->getDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47681
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 47682
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->memoizedSerializedSize:I

    move v1, v0

    .line 47683
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasDeviceSetting()Z
    .locals 1

    .prologue
    .line 47654
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->hasDeviceSetting:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 47647
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$137500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47658
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->hasDeviceSetting:Z

    if-nez v1, :cond_1

    .line 47660
    :cond_0
    :goto_0
    return v0

    .line 47659
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->getDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47660
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;
    .locals 1

    .prologue
    .line 47745
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 47626
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 47626
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;
    .locals 1

    .prologue
    .line 47749
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 47626
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 47626
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

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
    .line 47665
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->hasDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47666
    const/16 v0, 0x684

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->getDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 47668
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 47669
    return-void
.end method
