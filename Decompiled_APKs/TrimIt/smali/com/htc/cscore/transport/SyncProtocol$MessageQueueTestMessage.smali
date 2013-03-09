.class public final Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageQueueTestMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x63a

.field public static final ORDINAL_FIELD_NUMBER:I = 0x38a

.field public static final QUEUENAME_FIELD_NUMBER:I = 0x3d

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x732

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;


# instance fields
.field private data_:Lcom/htc/protobuf/ByteString;

.field private hasData:Z

.field private hasOrdinal:Z

.field private hasQueueName:Z

.field private hasTimestamp:Z

.field private memoizedSerializedSize:I

.field private ordinal_:I

.field private queueName_:Ljava/lang/String;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49302
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    .line 49683
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 49687
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 49688
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49300
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 49324
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->queueName_:Ljava/lang/String;

    .line 49331
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->timestamp_:J

    .line 49338
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->ordinal_:I

    .line 49345
    sget-object v0, Lcom/htc/protobuf/ByteString;->EMPTY:Lcom/htc/protobuf/ByteString;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->data_:Lcom/htc/protobuf/ByteString;

    .line 49374
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->memoizedSerializedSize:I

    .line 49300
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49297
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;-><init>()V

    return-void
.end method

.method static synthetic access$142402(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49297
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasQueueName:Z

    return p1
.end method

.method static synthetic access$142502(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49297
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->queueName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$142602(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49297
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$142702(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49297
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$142802(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49297
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasOrdinal:Z

    return p1
.end method

.method static synthetic access$142902(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49297
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->ordinal_:I

    return p1
.end method

.method static synthetic access$143002(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49297
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasData:Z

    return p1
.end method

.method static synthetic access$143102(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49297
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->data_:Lcom/htc/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1

    .prologue
    .line 49304
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 49313
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$141900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 1

    .prologue
    .line 49459
    #calls: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->access$142200()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 49462
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49437
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->access$142100(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49443
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->access$142100(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 49404
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->access$142100(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 49410
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->access$142100(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49449
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->access$142100(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49455
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->access$142100(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49426
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->access$142100(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49432
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->access$142100(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 49415
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->access$142100(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 49421
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->access$142100(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 49347
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->data_:Lcom/htc/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1

    .prologue
    .line 49308
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 49297
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 49297
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 49340
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->ordinal_:I

    return v0
.end method

.method public getQueueName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49326
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->queueName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 49376
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->memoizedSerializedSize:I

    .line 49377
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 49398
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 49379
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 49380
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasQueueName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49381
    const/16 v2, 0x3d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getQueueName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 49384
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasOrdinal()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49385
    const/16 v2, 0x38a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getOrdinal()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 49388
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasData()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49389
    const/16 v2, 0x63a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSize(ILcom/htc/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 49392
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49393
    const/16 v2, 0x732

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 49396
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 49397
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->memoizedSerializedSize:I

    move v1, v0

    .line 49398
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 49333
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->timestamp_:J

    return-wide v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 49346
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasData:Z

    return v0
.end method

.method public hasOrdinal()Z
    .locals 1

    .prologue
    .line 49339
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasOrdinal:Z

    return v0
.end method

.method public hasQueueName()Z
    .locals 1

    .prologue
    .line 49325
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasQueueName:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 49332
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 49318
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$142000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 49350
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasQueueName:Z

    if-nez v1, :cond_1

    .line 49354
    :cond_0
    :goto_0
    return v0

    .line 49351
    :cond_1
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasTimestamp:Z

    if-eqz v1, :cond_0

    .line 49352
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasOrdinal:Z

    if-eqz v1, :cond_0

    .line 49353
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasData:Z

    if-eqz v1, :cond_0

    .line 49354
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 1

    .prologue
    .line 49460
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 49297
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 49297
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 1

    .prologue
    .line 49464
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 49297
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 49297
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

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
    .line 49359
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasQueueName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49360
    const/16 v0, 0x3d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getQueueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 49362
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasOrdinal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49363
    const/16 v0, 0x38a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getOrdinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 49365
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49366
    const/16 v0, 0x63a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBytes(ILcom/htc/protobuf/ByteString;)V

    .line 49368
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49369
    const/16 v0, 0x732

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 49371
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 49372
    return-void
.end method
