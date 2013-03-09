.class public final Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HMessageAttachment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    }
.end annotation


# static fields
.field public static final CONTENTTYPE_FIELD_NUMBER:I = 0x2b4

.field public static final DATA_FIELD_NUMBER:I = 0x3ce

.field public static final FILETYPE_FIELD_NUMBER:I = 0x447

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final MESSAGEID_FIELD_NUMBER:I = 0x230

.field public static final NAME_FIELD_NUMBER:I = 0x1dc

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;


# instance fields
.field private contentType_:Ljava/lang/String;

.field private data_:Lcom/htc/protobuf/ByteString;

.field private fileType_:Ljava/lang/String;

.field private hasContentType:Z

.field private hasData:Z

.field private hasFileType:Z

.field private hasId:Z

.field private hasMessageId:Z

.field private hasName:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private name_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->contentType_:Ljava/lang/String;

    sget-object v0, Lcom/htc/protobuf/ByteString;->EMPTY:Lcom/htc/protobuf/ByteString;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->data_:Lcom/htc/protobuf/ByteString;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->fileType_:Ljava/lang/String;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->name_:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;-><init>()V

    return-void
.end method

.method static synthetic access$38702(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasContentType:Z

    return p1
.end method

.method static synthetic access$38802(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->contentType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$38902(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasData:Z

    return p1
.end method

.method static synthetic access$39002(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->data_:Lcom/htc/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$39102(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasFileType:Z

    return p1
.end method

.method static synthetic access$39202(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->fileType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$39302(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId:Z

    return p1
.end method

.method static synthetic access$39400(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$39402(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$39502(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId:Z

    return p1
.end method

.method static synthetic access$39600(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$39602(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$39702(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasName:Z

    return p1
.end method

.method static synthetic access$39802(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->name_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$38200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 1

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->access$38500()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->access$38400(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->access$38400(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->access$38400(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->access$38400(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->access$38400(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->access$38400(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->access$38400(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->access$38400(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->access$38400(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->access$38400(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->contentType_:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->data_:Lcom/htc/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->fileType_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasName()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x230

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasContentType()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x2b4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasData()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x3ce

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSize(ILcom/htc/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasFileType()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x447

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getFileType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->memoizedSerializedSize:I

    move v1, v0

    goto :goto_0
.end method

.method public hasContentType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasContentType:Z

    return v0
.end method

.method public hasData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasData:Z

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasFileType:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId:Z

    return v0
.end method

.method public hasMessageId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasName:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$38300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 1

    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x230

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2b4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasData()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3ce

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBytes(ILcom/htc/protobuf/ByteString;)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x447

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getFileType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    return-void
.end method
