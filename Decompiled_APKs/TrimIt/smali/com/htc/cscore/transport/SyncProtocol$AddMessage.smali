.class public final Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    }
.end annotation


# static fields
.field public static final MESSAGE_FIELD_NUMBER:I = 0x3ab

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;


# instance fields
.field private hasMessage:Z

.field private memoizedSerializedSize:I

.field private message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12527
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    .line 12807
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 12811
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 12812
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12525
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 12549
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .line 12567
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->memoizedSerializedSize:I

    .line 12525
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12522
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;-><init>()V

    return-void
.end method

.method static synthetic access$36402(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12522
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->hasMessage:Z

    return p1
.end method

.method static synthetic access$36500(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12522
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    return-object v0
.end method

.method static synthetic access$36502(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12522
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1

    .prologue
    .line 12529
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12538
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$35900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    .locals 1

    .prologue
    .line 12640
    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->access$36200()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 12643
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12618
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->access$36100(Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12624
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->access$36100(Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12585
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->access$36100(Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12591
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->access$36100(Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12630
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->access$36100(Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12636
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->access$36100(Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12607
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->access$36100(Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12613
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->access$36100(Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12596
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->access$36100(Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12602
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->access$36100(Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1

    .prologue
    .line 12533
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 12522
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12522
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1

    .prologue
    .line 12551
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 12569
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->memoizedSerializedSize:I

    .line 12570
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 12579
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 12572
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 12573
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->hasMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12574
    const/16 v2, 0x3ab

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->getMessage()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12577
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 12578
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->memoizedSerializedSize:I

    move v1, v0

    .line 12579
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasMessage()Z
    .locals 1

    .prologue
    .line 12550
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->hasMessage:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 12543
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$36000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 12554
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->hasMessage:Z

    if-nez v1, :cond_1

    .line 12556
    :cond_0
    :goto_0
    return v0

    .line 12555
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->getMessage()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12556
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    .locals 1

    .prologue
    .line 12641
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12522
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12522
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    .locals 1

    .prologue
    .line 12645
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12522
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12522
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

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
    .line 12561
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12562
    const/16 v0, 0x3ab

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->getMessage()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 12564
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 12565
    return-void
.end method
