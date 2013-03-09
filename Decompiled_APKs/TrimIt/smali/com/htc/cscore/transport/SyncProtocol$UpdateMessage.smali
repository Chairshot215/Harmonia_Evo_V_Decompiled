.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    }
.end annotation


# static fields
.field public static final MESSAGE_FIELD_NUMBER:I = 0x3ab

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;


# instance fields
.field private hasMessage:Z

.field private memoizedSerializedSize:I

.field private message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13153
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    .line 13433
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 13437
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 13438
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13151
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 13175
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .line 13193
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->memoizedSerializedSize:I

    .line 13151
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13148
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;-><init>()V

    return-void
.end method

.method static synthetic access$38002(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13148
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->hasMessage:Z

    return p1
.end method

.method static synthetic access$38100(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13148
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    return-object v0
.end method

.method static synthetic access$38102(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13148
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1

    .prologue
    .line 13155
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13164
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$37500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    .locals 1

    .prologue
    .line 13266
    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->access$37800()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 13269
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13244
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->access$37700(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13250
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->access$37700(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13211
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->access$37700(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13217
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->access$37700(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13256
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->access$37700(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13262
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->access$37700(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13233
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->access$37700(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13239
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->access$37700(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13222
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->access$37700(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13228
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->access$37700(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1

    .prologue
    .line 13159
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 13148
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13148
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1

    .prologue
    .line 13177
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 13195
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->memoizedSerializedSize:I

    .line 13196
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 13205
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 13198
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 13199
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->hasMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13200
    const/16 v2, 0x3ab

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->getMessage()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13203
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 13204
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->memoizedSerializedSize:I

    move v1, v0

    .line 13205
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasMessage()Z
    .locals 1

    .prologue
    .line 13176
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->hasMessage:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 13169
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$37600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 13180
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->hasMessage:Z

    if-nez v1, :cond_1

    .line 13182
    :cond_0
    :goto_0
    return v0

    .line 13181
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->getMessage()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13182
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    .locals 1

    .prologue
    .line 13267
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13148
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13148
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    .locals 1

    .prologue
    .line 13271
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13148
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13148
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

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
    .line 13187
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13188
    const/16 v0, 0x3ab

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->getMessage()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 13190
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 13191
    return-void
.end method
