.class public final Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    }
.end annotation


# static fields
.field public static final MESSAGEID_FIELD_NUMBER:I = 0x3ae

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x732

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;


# instance fields
.field private hasMessageId:Z

.field private hasTimestamp:Z

.field private memoizedSerializedSize:I

.field private messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12820
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    .line 13140
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 13144
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 13145
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 12818
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 12842
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 12849
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->timestamp_:J

    .line 12871
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->memoizedSerializedSize:I

    .line 12818
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12815
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;-><init>()V

    return-void
.end method

.method static synthetic access$37102(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12815
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasMessageId:Z

    return p1
.end method

.method static synthetic access$37200(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12815
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$37202(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12815
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$37302(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12815
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$37402(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12815
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1

    .prologue
    .line 12822
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12831
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$36600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    .locals 1

    .prologue
    .line 12948
    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->access$36900()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 12951
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12926
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->access$36800(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12932
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->access$36800(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12893
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->access$36800(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12899
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->access$36800(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12938
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->access$36800(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12944
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->access$36800(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12915
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->access$36800(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12921
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->access$36800(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12904
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->access$36800(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12910
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->access$36800(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1

    .prologue
    .line 12826
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 12815
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12815
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 12844
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 12873
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->memoizedSerializedSize:I

    .line 12874
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 12887
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 12876
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 12877
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasMessageId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12878
    const/16 v2, 0x3ae

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12881
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12882
    const/16 v2, 0x732

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12885
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 12886
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->memoizedSerializedSize:I

    move v1, v0

    .line 12887
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 12851
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->timestamp_:J

    return-wide v0
.end method

.method public hasMessageId()Z
    .locals 1

    .prologue
    .line 12843
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasMessageId:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 12850
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 12836
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$36700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 12854
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasMessageId:Z

    if-nez v1, :cond_1

    .line 12857
    :cond_0
    :goto_0
    return v0

    .line 12855
    :cond_1
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasTimestamp:Z

    if-eqz v1, :cond_0

    .line 12856
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12857
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    .locals 1

    .prologue
    .line 12949
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12815
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12815
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    .locals 1

    .prologue
    .line 12953
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12815
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12815
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

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
    .line 12862
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12863
    const/16 v0, 0x3ae

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 12865
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12866
    const/16 v0, 0x732

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 12868
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 12869
    return-void
.end method
