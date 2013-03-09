.class public final Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    }
.end annotation


# static fields
.field public static final FEATURE_FIELD_NUMBER:I = 0x73d

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final PHYSICALDEVICEMODELID_FIELD_NUMBER:I = 0x48

.field public static final REGIONID_FIELD_NUMBER:I = 0x31a

.field public static final STATE_FIELD_NUMBER:I = 0x5a3

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;


# instance fields
.field private feature_:Ljava/lang/String;

.field private hasFeature:Z

.field private hasId:Z

.field private hasPhysicalDeviceModelID:Z

.field private hasRegionId:Z

.field private hasState:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private physicalDeviceModelID_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private regionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private state_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5331
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    .line 5825
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 5829
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 5830
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5329
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 5353
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->feature_:Ljava/lang/String;

    .line 5360
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 5367
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->physicalDeviceModelID_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 5374
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->regionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 5381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->state_:Z

    .line 5418
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->memoizedSerializedSize:I

    .line 5329
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5326
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;-><init>()V

    return-void
.end method

.method static synthetic access$15402(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5326
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasFeature:Z

    return p1
.end method

.method static synthetic access$15502(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5326
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->feature_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15602(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5326
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasId:Z

    return p1
.end method

.method static synthetic access$15700(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5326
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$15702(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5326
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$15802(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5326
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasPhysicalDeviceModelID:Z

    return p1
.end method

.method static synthetic access$15900(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5326
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->physicalDeviceModelID_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$15902(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5326
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->physicalDeviceModelID_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$16002(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5326
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasRegionId:Z

    return p1
.end method

.method static synthetic access$16100(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5326
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->regionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$16102(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5326
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->regionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$16202(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5326
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasState:Z

    return p1
.end method

.method static synthetic access$16302(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5326
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->state_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1

    .prologue
    .line 5333
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5342
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$14900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 1

    .prologue
    .line 5507
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->access$15200()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 5510
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5485
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->access$15100(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5491
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->access$15100(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5452
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->access$15100(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5458
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->access$15100(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5497
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->access$15100(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5503
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->access$15100(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5474
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->access$15100(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5480
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->access$15100(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5463
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->access$15100(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5469
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->access$15100(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1

    .prologue
    .line 5337
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public getFeature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5355
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->feature_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 5362
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getPhysicalDeviceModelID()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 5369
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->physicalDeviceModelID_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 5376
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->regionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 5420
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->memoizedSerializedSize:I

    .line 5421
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 5446
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 5423
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 5424
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasPhysicalDeviceModelID()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5425
    const/16 v2, 0x48

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getPhysicalDeviceModelID()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5428
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasRegionId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5429
    const/16 v2, 0x31a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5432
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5433
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5436
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasState()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5437
    const/16 v2, 0x5a3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getState()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5440
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasFeature()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5441
    const/16 v2, 0x73d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getFeature()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5444
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 5445
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->memoizedSerializedSize:I

    move v1, v0

    .line 5446
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getState()Z
    .locals 1

    .prologue
    .line 5383
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->state_:Z

    return v0
.end method

.method public hasFeature()Z
    .locals 1

    .prologue
    .line 5354
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasFeature:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 5361
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasId:Z

    return v0
.end method

.method public hasPhysicalDeviceModelID()Z
    .locals 1

    .prologue
    .line 5368
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasPhysicalDeviceModelID:Z

    return v0
.end method

.method public hasRegionId()Z
    .locals 1

    .prologue
    .line 5375
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasRegionId:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 5382
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasState:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5347
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$15000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5386
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5387
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5395
    :cond_0
    :goto_0
    return v0

    .line 5389
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasPhysicalDeviceModelID()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5390
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getPhysicalDeviceModelID()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5392
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasRegionId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5393
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5395
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 1

    .prologue
    .line 5508
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 1

    .prologue
    .line 5512
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

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
    .line 5400
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasPhysicalDeviceModelID()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5401
    const/16 v0, 0x48

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getPhysicalDeviceModelID()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 5403
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasRegionId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5404
    const/16 v0, 0x31a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 5406
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5407
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 5409
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5410
    const/16 v0, 0x5a3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getState()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5412
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasFeature()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5413
    const/16 v0, 0x73d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getFeature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5415
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 5416
    return-void
.end method
