.class public final Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "ReliableMessaging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ReliableMessaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PbReliableMessages"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    }
.end annotation


# static fields
.field public static final MESSAGES_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;


# instance fields
.field private memoizedSerializedSize:I

.field private messages_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 495
    new-instance v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->defaultInstance:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    .line 799
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 803
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging;->internalForceInit()V

    .line 804
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 516
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;

    .line 541
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->memoizedSerializedSize:I

    .line 493
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/ReliableMessaging$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;-><init>()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 490
    iput-object p1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 1

    .prologue
    .line 497
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->defaultInstance:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 506
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging;->access$1300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    .locals 1

    .prologue
    .line 614
    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->create()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->access$1600()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 617
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeFrom(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->access$1500(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->access$1500(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 559
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->access$1500(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 565
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->access$1500(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 604
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->access$1500(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 610
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->access$1500(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->access$1500(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->access$1500(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->access$1500(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 576
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->access$1500(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 1

    .prologue
    .line 501
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->defaultInstance:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(I)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1
    .parameter "index"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    return-object v0
.end method

.method public getMessagesCount()I
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 543
    iget v2, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->memoizedSerializedSize:I

    .line 544
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 553
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 546
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 547
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->getMessagesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    .line 548
    .local v0, element:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    const/4 v4, 0x1

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 551
    .end local v0           #element:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 552
    iput v2, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->memoizedSerializedSize:I

    move v3, v2

    .line 553
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 511
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging;->access$1400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->getMessagesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    .line 528
    .local v0, element:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 530
    .end local v0           #element:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    .locals 1

    .prologue
    .line 615
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->newBuilderForType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->newBuilderForType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    .locals 1

    .prologue
    .line 619
    invoke-static {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->newBuilder(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->toBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->toBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

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
    .line 535
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->getMessagesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    .line 536
    .local v0, element:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 538
    .end local v0           #element:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 539
    return-void
.end method
