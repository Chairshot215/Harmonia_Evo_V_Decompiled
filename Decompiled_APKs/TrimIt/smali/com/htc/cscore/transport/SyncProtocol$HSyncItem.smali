.class public final Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HSyncItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$HSyncItemType;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final SYNCITEMTYPE_FIELD_NUMBER:I = 0x398

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;


# instance fields
.field private hasId:Z

.field private hasSyncItemType:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private syncItemType_:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38539
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    .line 39061
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 39065
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 39066
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 38537
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 38724
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 38731
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->syncItemType_:I

    .line 38738
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->timestamp_:J

    .line 38763
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->memoizedSerializedSize:I

    .line 38537
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38534
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;-><init>()V

    return-void
.end method

.method static synthetic access$112402(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38534
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId:Z

    return p1
.end method

.method static synthetic access$112500(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38534
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$112502(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38534
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$112602(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38534
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasSyncItemType:Z

    return p1
.end method

.method static synthetic access$112702(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38534
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->syncItemType_:I

    return p1
.end method

.method static synthetic access$112802(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38534
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$112902(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38534
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1

    .prologue
    .line 38541
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 38550
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$111900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 1

    .prologue
    .line 38844
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112200()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 38847
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38822
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38828
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38789
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38795
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38834
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38840
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38811
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38817
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38800
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38806
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1

    .prologue
    .line 38545
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 38534
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 38534
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 38726
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 38765
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->memoizedSerializedSize:I

    .line 38766
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 38783
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 38768
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 38769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38770
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 38773
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasSyncItemType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38774
    const/16 v2, 0x398

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getSyncItemType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 38777
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38778
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38781
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 38782
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->memoizedSerializedSize:I

    move v1, v0

    .line 38783
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getSyncItemType()I
    .locals 1

    .prologue
    .line 38733
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->syncItemType_:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 38740
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->timestamp_:J

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 38725
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId:Z

    return v0
.end method

.method public hasSyncItemType()Z
    .locals 1

    .prologue
    .line 38732
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasSyncItemType:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 38739
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 38555
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$112000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 38743
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38744
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 38746
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 1

    .prologue
    .line 38845
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 38534
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 38534
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 1

    .prologue
    .line 38849
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 38534
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 38534
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

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
    .line 38751
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38752
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 38754
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasSyncItemType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38755
    const/16 v0, 0x398

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getSyncItemType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 38757
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38758
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 38760
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 38761
    return-void
.end method
