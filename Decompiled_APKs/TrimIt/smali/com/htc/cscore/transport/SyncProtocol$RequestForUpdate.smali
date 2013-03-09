.class public final Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestForUpdate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    }
.end annotation


# static fields
.field public static final SYNCLIST_FIELD_NUMBER:I = 0x2c

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;


# instance fields
.field private memoizedSerializedSize:I

.field private syncList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45273
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    .line 45577
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 45581
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 45582
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45271
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 45294
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;

    .line 45319
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->memoizedSerializedSize:I

    .line 45271
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45268
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;-><init>()V

    return-void
.end method

.method static synthetic access$131800(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45268
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$131802(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45268
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1

    .prologue
    .line 45275
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 45284
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$131300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    .locals 1

    .prologue
    .line 45392
    #calls: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->access$131600()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 45395
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45370
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->access$131500(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45376
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->access$131500(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 45337
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->access$131500(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 45343
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->access$131500(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45382
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->access$131500(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45388
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->access$131500(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45359
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->access$131500(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45365
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->access$131500(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 45348
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->access$131500(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 45354
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->access$131500(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1

    .prologue
    .line 45279
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 45268
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 45268
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 45321
    iget v2, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->memoizedSerializedSize:I

    .line 45322
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 45331
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 45324
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 45325
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->getSyncListList()Ljava/util/List;

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

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    .line 45326
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    const/16 v4, 0x2c

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 45329
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 45330
    iput v2, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->memoizedSerializedSize:I

    move v3, v2

    .line 45331
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public getSyncList(I)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 45301
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    return-object v0
.end method

.method public getSyncListCount()I
    .locals 1

    .prologue
    .line 45299
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSyncListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45297
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 45289
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$131400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    .line 45305
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->getSyncListList()Ljava/util/List;

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

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    .line 45306
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 45308
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    .locals 1

    .prologue
    .line 45393
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 45268
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 45268
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    .locals 1

    .prologue
    .line 45397
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 45268
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 45268
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

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
    .line 45313
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->getSyncListList()Ljava/util/List;

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

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    .line 45314
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    const/16 v2, 0x2c

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 45316
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 45317
    return-void
.end method
