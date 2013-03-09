.class public final Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogRemoteError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    }
.end annotation


# static fields
.field public static final EXTERNALERROR_FIELD_NUMBER:I = 0x5a6

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;


# instance fields
.field private externalError_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

.field private hasExternalError:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44436
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    .line 44715
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 44719
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 44720
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44434
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 44458
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->externalError_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    .line 44475
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->memoizedSerializedSize:I

    .line 44434
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44431
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;-><init>()V

    return-void
.end method

.method static synthetic access$130002(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44431
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->hasExternalError:Z

    return p1
.end method

.method static synthetic access$130100(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44431
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->externalError_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    return-object v0
.end method

.method static synthetic access$130102(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44431
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->externalError_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1

    .prologue
    .line 44438
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 44447
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$129500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    .locals 1

    .prologue
    .line 44548
    #calls: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->access$129800()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 44551
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44526
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->access$129700(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44532
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->access$129700(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44493
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->access$129700(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44499
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->access$129700(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44538
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->access$129700(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44544
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->access$129700(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44515
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->access$129700(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44521
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->access$129700(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44504
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->access$129700(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44510
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->access$129700(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1

    .prologue
    .line 44442
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 44431
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 44431
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public getExternalError()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1

    .prologue
    .line 44460
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->externalError_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 44477
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->memoizedSerializedSize:I

    .line 44478
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 44487
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 44480
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 44481
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->hasExternalError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44482
    const/16 v2, 0x5a6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->getExternalError()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 44485
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 44486
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->memoizedSerializedSize:I

    move v1, v0

    .line 44487
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasExternalError()Z
    .locals 1

    .prologue
    .line 44459
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->hasExternalError:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 44452
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$129600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 44463
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->hasExternalError:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 44464
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    .locals 1

    .prologue
    .line 44549
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 44431
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 44431
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    .locals 1

    .prologue
    .line 44553
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 44431
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 44431
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

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
    .line 44469
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->hasExternalError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44470
    const/16 v0, 0x5a6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->getExternalError()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 44472
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 44473
    return-void
.end method
