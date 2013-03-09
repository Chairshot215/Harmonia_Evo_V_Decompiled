.class public final Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddFootprint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    }
.end annotation


# static fields
.field public static final FOOTPRINT_FIELD_NUMBER:I = 0x4b

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;


# instance fields
.field private footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

.field private hasFootprint:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;-><init>()V

    return-void
.end method

.method static synthetic access$21202(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->hasFootprint:Z

    return p1
.end method

.method static synthetic access$21300(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    return-object v0
.end method

.method static synthetic access$21302(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$20700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    .locals 1

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->access$21000()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->access$20900(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->access$20900(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->access$20900(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->access$20900(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->access$20900(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->access$20900(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->access$20900(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->access$20900(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->access$20900(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->access$20900(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->hasFootprint()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x4b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->memoizedSerializedSize:I

    move v1, v0

    goto :goto_0
.end method

.method public hasFootprint()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->hasFootprint:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$20800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->hasFootprint:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    .locals 1

    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->hasFootprint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    return-void
.end method
