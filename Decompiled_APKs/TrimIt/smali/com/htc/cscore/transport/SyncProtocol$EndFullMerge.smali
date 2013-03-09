.class public final Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EndFullMerge"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;


# instance fields
.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44208
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    .line 44423
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 44427
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 44428
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44206
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 44236
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->memoizedSerializedSize:I

    .line 44206
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44203
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;-><init>()V

    return-void
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1

    .prologue
    .line 44210
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 44219
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$129000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;
    .locals 1

    .prologue
    .line 44305
    #calls: Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->access$129300()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 44308
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44283
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->access$129200(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44289
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->access$129200(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44250
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->access$129200(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44256
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->access$129200(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44295
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->access$129200(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44301
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->access$129200(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44272
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->access$129200(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44278
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->access$129200(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44261
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->access$129200(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44267
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->access$129200(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1

    .prologue
    .line 44214
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 44203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 44203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 44238
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->memoizedSerializedSize:I

    .line 44239
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 44244
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 44241
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 44242
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 44243
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->memoizedSerializedSize:I

    move v1, v0

    .line 44244
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 44224
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$129100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 44228
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;
    .locals 1

    .prologue
    .line 44306
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 44203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 44203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;
    .locals 1

    .prologue
    .line 44310
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 44203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 44203
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

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
    .line 44233
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 44234
    return-void
.end method
