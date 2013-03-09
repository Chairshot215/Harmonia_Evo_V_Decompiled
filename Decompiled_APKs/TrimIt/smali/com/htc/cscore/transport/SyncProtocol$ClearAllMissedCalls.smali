.class public final Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClearAllMissedCalls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;


# instance fields
.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43352
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    .line 43567
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 43571
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 43572
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43350
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 43380
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->memoizedSerializedSize:I

    .line 43350
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43347
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;-><init>()V

    return-void
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 1

    .prologue
    .line 43354
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 43363
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$127000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;
    .locals 1

    .prologue
    .line 43449
    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->access$127300()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 43452
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43427
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->access$127200(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43433
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->access$127200(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43394
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->access$127200(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43400
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->access$127200(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43439
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->access$127200(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43445
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->access$127200(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43416
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->access$127200(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43422
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->access$127200(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43405
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->access$127200(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43411
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->access$127200(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 1

    .prologue
    .line 43358
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 43347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 43347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 43382
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->memoizedSerializedSize:I

    .line 43383
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 43388
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 43385
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 43386
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 43387
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->memoizedSerializedSize:I

    move v1, v0

    .line 43388
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 43368
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$127100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 43372
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;
    .locals 1

    .prologue
    .line 43450
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 43347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 43347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;
    .locals 1

    .prologue
    .line 43454
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 43347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 43347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 1
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 43378
    return-void
.end method
