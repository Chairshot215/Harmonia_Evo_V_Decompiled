.class public final Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HVirtualDeviceSetting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final NAME_FIELD_NUMBER:I = 0x1dc

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field public static final VALUE_FIELD_NUMBER:I = 0x78e

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;


# instance fields
.field private hasId:Z

.field private hasName:Z

.field private hasTimestamp:Z

.field private hasValue:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;

.field private timestamp_:J

.field private value_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47214
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    .line 47618
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 47622
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 47623
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47212
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 47236
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 47243
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->name_:Ljava/lang/String;

    .line 47250
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->timestamp_:J

    .line 47257
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->value_:Ljava/lang/String;

    .line 47285
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->memoizedSerializedSize:I

    .line 47212
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47209
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;-><init>()V

    return-void
.end method

.method static synthetic access$136602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47209
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasId:Z

    return p1
.end method

.method static synthetic access$136700(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47209
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$136702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47209
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$136802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47209
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasName:Z

    return p1
.end method

.method static synthetic access$136902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47209
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$137002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47209
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$137102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47209
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$137202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47209
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasValue:Z

    return p1
.end method

.method static synthetic access$137302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47209
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->value_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1

    .prologue
    .line 47216
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 47225
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$136100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 1

    .prologue
    .line 47370
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->access$136400()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 47373
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47348
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->access$136300(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47354
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->access$136300(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47315
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->access$136300(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47321
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->access$136300(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47360
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->access$136300(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47366
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->access$136300(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47337
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->access$136300(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47343
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->access$136300(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47326
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->access$136300(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47332
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->access$136300(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1

    .prologue
    .line 47220
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 47209
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 47209
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 47238
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47245
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 47287
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->memoizedSerializedSize:I

    .line 47288
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 47309
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 47290
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 47291
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47292
    const/16 v2, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47295
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47296
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 47299
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47300
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47303
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 47304
    const/16 v2, 0x78e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47307
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 47308
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->memoizedSerializedSize:I

    move v1, v0

    .line 47309
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 47252
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->timestamp_:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47259
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 47237
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasId:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 47244
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasName:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 47251
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasTimestamp:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 47258
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasValue:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 47230
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$136200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 47262
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47263
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 47265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 1

    .prologue
    .line 47371
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 47209
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 47209
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 1

    .prologue
    .line 47375
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 47209
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 47209
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

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
    .line 47270
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47271
    const/16 v0, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 47273
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47274
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 47276
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47277
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 47279
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47280
    const/16 v0, 0x78e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 47282
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 47283
    return-void
.end method
