.class public final Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteAggregatePerson"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;
    }
.end annotation


# static fields
.field public static final AGGREGATEPERSONID_FIELD_NUMBER:I = 0x54f

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x732

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;


# instance fields
.field private aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private hasAggregatePersonId:Z

.field private hasTimestamp:Z

.field private memoizedSerializedSize:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1646
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    .line 1966
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 1970
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 1971
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1644
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 1668
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 1675
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->timestamp_:J

    .line 1697
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->memoizedSerializedSize:I

    .line 1644
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1641
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;-><init>()V

    return-void
.end method

.method static synthetic access$4802(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1641
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->hasAggregatePersonId:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1641
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1641
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1641
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 1

    .prologue
    .line 1648
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1657
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$4300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;
    .locals 1

    .prologue
    .line 1774
    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->access$4600()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1777
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1752
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->access$4500(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1758
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->access$4500(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1719
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->access$4500(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1725
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->access$4500(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1764
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->access$4500(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1770
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->access$4500(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1741
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->access$4500(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1747
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->access$4500(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1730
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->access$4500(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1736
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->access$4500(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAggregatePersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 1

    .prologue
    .line 1652
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1641
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1641
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1699
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->memoizedSerializedSize:I

    .line 1700
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1713
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1702
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1703
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->hasAggregatePersonId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1704
    const/16 v2, 0x54f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->getAggregatePersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1707
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1708
    const/16 v2, 0x732

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1711
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1712
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->memoizedSerializedSize:I

    move v1, v0

    .line 1713
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 1677
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->timestamp_:J

    return-wide v0
.end method

.method public hasAggregatePersonId()Z
    .locals 1

    .prologue
    .line 1669
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->hasAggregatePersonId:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 1676
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1662
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$4400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1680
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->hasAggregatePersonId:Z

    if-nez v1, :cond_1

    .line 1683
    :cond_0
    :goto_0
    return v0

    .line 1681
    :cond_1
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->hasTimestamp:Z

    if-eqz v1, :cond_0

    .line 1682
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->getAggregatePersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1683
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;
    .locals 1

    .prologue
    .line 1775
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1641
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1641
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;
    .locals 1

    .prologue
    .line 1779
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1641
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1641
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

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
    .line 1688
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->hasAggregatePersonId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1689
    const/16 v0, 0x54f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->getAggregatePersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 1691
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1692
    const/16 v0, 0x732

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1694
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 1695
    return-void
.end method
