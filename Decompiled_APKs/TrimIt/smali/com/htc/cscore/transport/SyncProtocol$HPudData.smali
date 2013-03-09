.class public final Lcom/htc/cscore/transport/SyncProtocol$HPudData;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HPudData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x3ce

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final MESSAGEID_FIELD_NUMBER:I = 0x230

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPudData;


# instance fields
.field private data_:Lcom/htc/protobuf/ByteString;

.field private hasData:Z

.field private hasId:Z

.field private hasMessageId:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30779
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    .line 31207
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 31211
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 31212
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30777
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 30801
    sget-object v0, Lcom/htc/protobuf/ByteString;->EMPTY:Lcom/htc/protobuf/ByteString;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->data_:Lcom/htc/protobuf/ByteString;

    .line 30808
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30815
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30822
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->timestamp_:J

    .line 30853
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->memoizedSerializedSize:I

    .line 30777
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30774
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;-><init>()V

    return-void
.end method

.method static synthetic access$89402(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30774
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasData:Z

    return p1
.end method

.method static synthetic access$89502(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30774
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->data_:Lcom/htc/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$89602(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30774
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasId:Z

    return p1
.end method

.method static synthetic access$89700(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30774
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$89702(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30774
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$89802(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30774
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasMessageId:Z

    return p1
.end method

.method static synthetic access$89900(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30774
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$89902(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30774
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$90002(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30774
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$90102(Lcom/htc/cscore/transport/SyncProtocol$HPudData;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30774
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1

    .prologue
    .line 30781
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30790
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$88900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 1

    .prologue
    .line 30938
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->access$89200()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 30941
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30916
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->access$89100(Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30922
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->access$89100(Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30883
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->access$89100(Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30889
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->access$89100(Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30928
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->access$89100(Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30934
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->access$89100(Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30905
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->access$89100(Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30911
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->access$89100(Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30894
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->access$89100(Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30900
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->access$89100(Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 30803
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->data_:Lcom/htc/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1

    .prologue
    .line 30785
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 30774
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 30774
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 30810
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 30817
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 30855
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->memoizedSerializedSize:I

    .line 30856
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 30877
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 30858
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 30859
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30860
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 30863
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasMessageId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30864
    const/16 v2, 0x230

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 30867
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasData()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 30868
    const/16 v2, 0x3ce

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSize(ILcom/htc/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 30871
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 30872
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 30875
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 30876
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->memoizedSerializedSize:I

    move v1, v0

    .line 30877
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 30824
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->timestamp_:J

    return-wide v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 30802
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasData:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 30809
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasId:Z

    return v0
.end method

.method public hasMessageId()Z
    .locals 1

    .prologue
    .line 30816
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasMessageId:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 30823
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 30795
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$89000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 30827
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30828
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 30833
    :cond_0
    :goto_0
    return v0

    .line 30830
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasMessageId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30831
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30833
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 1

    .prologue
    .line 30939
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 30774
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 30774
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 1

    .prologue
    .line 30943
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 30774
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 30774
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

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
    .line 30838
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30839
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 30841
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30842
    const/16 v0, 0x230

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 30844
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30845
    const/16 v0, 0x3ce

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBytes(ILcom/htc/protobuf/ByteString;)V

    .line 30847
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30848
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 30850
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 30851
    return-void
.end method
