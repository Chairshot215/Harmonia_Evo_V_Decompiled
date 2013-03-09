.class public final Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HFreetextMessageKeywordSearchTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x512

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;


# instance fields
.field private hasId:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10548
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    .line 10829
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 10833
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 10834
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10546
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 10570
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 10589
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->memoizedSerializedSize:I

    .line 10546
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10543
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;-><init>()V

    return-void
.end method

.method static synthetic access$31102(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10543
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->hasId:Z

    return p1
.end method

.method static synthetic access$31200(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10543
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$31202(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10543
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    .locals 1

    .prologue
    .line 10550
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10559
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$30600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
    .locals 1

    .prologue
    .line 10662
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->access$30900()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 10665
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10640
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->access$30800(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10646
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->access$30800(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10607
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->access$30800(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10613
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->access$30800(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10652
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->access$30800(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10658
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->access$30800(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10629
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->access$30800(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10635
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->access$30800(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10618
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->access$30800(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10624
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->access$30800(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    .locals 1

    .prologue
    .line 10554
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 10543
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10543
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 10572
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 10591
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->memoizedSerializedSize:I

    .line 10592
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 10601
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 10594
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 10595
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->hasId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10596
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10599
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 10600
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->memoizedSerializedSize:I

    move v1, v0

    .line 10601
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 10571
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->hasId:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 10564
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$30700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 10575
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10576
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 10578
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
    .locals 1

    .prologue
    .line 10663
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10543
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10543
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
    .locals 1

    .prologue
    .line 10667
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10543
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10543
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

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
    .line 10583
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10584
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 10586
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 10587
    return-void
.end method
