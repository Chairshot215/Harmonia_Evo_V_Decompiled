.class public final Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Htrace_events"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x512

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;


# instance fields
.field private hasId:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39449
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    .line 39730
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 39734
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 39735
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39447
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 39471
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39490
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->memoizedSerializedSize:I

    .line 39447
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39444
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;-><init>()V

    return-void
.end method

.method static synthetic access$114602(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39444
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->hasId:Z

    return p1
.end method

.method static synthetic access$114700(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39444
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$114702(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39444
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    .locals 1

    .prologue
    .line 39451
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 39460
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$114100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
    .locals 1

    .prologue
    .line 39563
    #calls: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->access$114400()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 39566
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39541
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->access$114300(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39547
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->access$114300(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 39508
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->access$114300(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 39514
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->access$114300(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39553
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->access$114300(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39559
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->access$114300(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39530
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->access$114300(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39536
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->access$114300(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 39519
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->access$114300(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 39525
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->access$114300(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    .locals 1

    .prologue
    .line 39455
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 39444
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 39444
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 39473
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 39492
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->memoizedSerializedSize:I

    .line 39493
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 39502
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 39495
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 39496
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->hasId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39497
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 39500
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 39501
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->memoizedSerializedSize:I

    move v1, v0

    .line 39502
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 39472
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->hasId:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 39465
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$114200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 39476
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39477
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 39479
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
    .locals 1

    .prologue
    .line 39564
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 39444
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 39444
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
    .locals 1

    .prologue
    .line 39568
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 39444
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 39444
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

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
    .line 39484
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39485
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 39487
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 39488
    return-void
.end method
