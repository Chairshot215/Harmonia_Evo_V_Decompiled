.class public final Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HExternalError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;
    }
.end annotation


# static fields
.field public static final ERRORCODETYPE_FIELD_NUMBER:I = 0x7bf

.field public static final ERRORCODE_FIELD_NUMBER:I = 0xb1

.field public static final ERRORSTRING_FIELD_NUMBER:I = 0x73e

.field public static final ISSERVERERROR_FIELD_NUMBER:I = 0x419

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;


# instance fields
.field private errorCodeType_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

.field private errorCode_:I

.field private errorString_:Ljava/lang/String;

.field private hasErrorCode:Z

.field private hasErrorCodeType:Z

.field private hasErrorString:Z

.field private hasIsServerError:Z

.field private isServerError_:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCode_:I

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;->GeneralError:Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCodeType_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorString_:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->isServerError_:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;-><init>()V

    return-void
.end method

.method static synthetic access$14102(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCode:Z

    return p1
.end method

.method static synthetic access$14202(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;I)I
    .locals 0

    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCode_:I

    return p1
.end method

.method static synthetic access$14302(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCodeType:Z

    return p1
.end method

.method static synthetic access$14402(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCodeType_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    return-object p1
.end method

.method static synthetic access$14502(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorString:Z

    return p1
.end method

.method static synthetic access$14602(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorString_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$14702(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasIsServerError:Z

    return p1
.end method

.method static synthetic access$14802(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->isServerError_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$13600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 1

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13900()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCode_:I

    return v0
.end method

.method public getErrorCodeType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCodeType_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    return-object v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorString_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsServerError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->isServerError_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCode()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasIsServerError()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x419

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getIsServerError()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorString()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x73e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCodeType()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x7bf

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorCodeType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->memoizedSerializedSize:I

    move v1, v0

    goto :goto_0
.end method

.method public hasErrorCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCode:Z

    return v0
.end method

.method public hasErrorCodeType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCodeType:Z

    return v0
.end method

.method public hasErrorString()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorString:Z

    return v0
.end method

.method public hasIsServerError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasIsServerError:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$13700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 1

    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasIsServerError()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x419

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getIsServerError()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorString()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x73e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCodeType()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x7bf

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorCodeType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    return-void
.end method
