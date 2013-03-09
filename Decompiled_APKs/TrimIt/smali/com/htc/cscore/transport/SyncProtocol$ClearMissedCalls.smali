.class public final Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClearMissedCalls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    }
.end annotation


# static fields
.field public static final MISSEDCALLIDS_FIELD_NUMBER:I = 0x7cf

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x732

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;


# instance fields
.field private hasTimestamp:Z

.field private memoizedSerializedSize:I

.field private missedCallIds_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$UniqueId;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43580
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    .line 43924
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 43928
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 43929
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43578
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 43601
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;

    .line 43614
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->timestamp_:J

    .line 43637
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->memoizedSerializedSize:I

    .line 43578
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43575
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;-><init>()V

    return-void
.end method

.method static synthetic access$128000(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43575
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$128002(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43575
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$128102(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43575
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$128202(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43575
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1

    .prologue
    .line 43582
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 43591
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$127500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 1

    .prologue
    .line 43714
    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->access$127800()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 43717
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43692
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->access$127700(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43698
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->access$127700(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43659
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->access$127700(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43665
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->access$127700(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43704
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->access$127700(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43710
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->access$127700(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43681
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->access$127700(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43687
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->access$127700(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43670
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->access$127700(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43676
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->access$127700(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1

    .prologue
    .line 43586
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 43575
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 43575
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public getMissedCallIds(I)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "index"

    .prologue
    .line 43608
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getMissedCallIdsCount()I
    .locals 1

    .prologue
    .line 43606
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMissedCallIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$UniqueId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43604
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->missedCallIds_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 43639
    iget v2, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->memoizedSerializedSize:I

    .line 43640
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 43653
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 43642
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 43643
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->hasTimestamp()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43644
    const/16 v4, 0x732

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getTimestamp()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 43647
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getMissedCallIdsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 43648
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    const/16 v4, 0x7cf

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 43651
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 43652
    iput v2, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->memoizedSerializedSize:I

    move v3, v2

    .line 43653
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 43616
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->timestamp_:J

    return-wide v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 43615
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 43596
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$127600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 43619
    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->hasTimestamp:Z

    if-nez v3, :cond_0

    .line 43623
    :goto_0
    return v2

    .line 43620
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getMissedCallIdsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 43621
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 43623
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 1

    .prologue
    .line 43715
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 43575
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 43575
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    .locals 1

    .prologue
    .line 43719
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 43575
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 43575
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43628
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43629
    const/16 v2, 0x732

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 43631
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getMissedCallIdsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 43632
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    const/16 v2, 0x7cf

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 43634
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 43635
    return-void
.end method
