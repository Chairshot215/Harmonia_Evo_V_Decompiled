.class public final Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HFootprintImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;
    }
.end annotation


# static fields
.field public static final CONTENTTYPE_FIELD_NUMBER:I = 0x2b4

.field public static final DATA_FIELD_NUMBER:I = 0x3ce

.field public static final FILETYPE_FIELD_NUMBER:I = 0x447

.field public static final FOOTPRINTID_FIELD_NUMBER:I = 0x1

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final IMAGETYPE_FIELD_NUMBER:I = 0x719

.field public static final NAME_FIELD_NUMBER:I = 0x1dc

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;


# instance fields
.field private contentType_:Ljava/lang/String;

.field private data_:Lcom/htc/protobuf/ByteString;

.field private fileType_:Ljava/lang/String;

.field private footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private hasContentType:Z

.field private hasData:Z

.field private hasFileType:Z

.field private hasFootprintId:Z

.field private hasId:Z

.field private hasImageType:Z

.field private hasName:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private imageType_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8903
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    .line 9572
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 9576
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 9577
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 8901
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 8992
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->contentType_:Ljava/lang/String;

    .line 8999
    sget-object v0, Lcom/htc/protobuf/ByteString;->EMPTY:Lcom/htc/protobuf/ByteString;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->data_:Lcom/htc/protobuf/ByteString;

    .line 9006
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->fileType_:Ljava/lang/String;

    .line 9013
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 9020
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 9027
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->Web:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->imageType_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    .line 9034
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->name_:Ljava/lang/String;

    .line 9041
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->timestamp_:J

    .line 9084
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->memoizedSerializedSize:I

    .line 8901
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8898
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;-><init>()V

    return-void
.end method

.method static synthetic access$26002(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8898
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasContentType:Z

    return p1
.end method

.method static synthetic access$26102(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8898
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->contentType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$26202(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8898
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasData:Z

    return p1
.end method

.method static synthetic access$26302(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8898
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->data_:Lcom/htc/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$26402(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8898
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFileType:Z

    return p1
.end method

.method static synthetic access$26502(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8898
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->fileType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$26602(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8898
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFootprintId:Z

    return p1
.end method

.method static synthetic access$26700(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8898
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$26702(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8898
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$26802(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8898
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasId:Z

    return p1
.end method

.method static synthetic access$26900(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8898
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$26902(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8898
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$27002(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8898
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasImageType:Z

    return p1
.end method

.method static synthetic access$27102(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8898
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->imageType_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    return-object p1
.end method

.method static synthetic access$27202(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8898
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasName:Z

    return p1
.end method

.method static synthetic access$27302(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8898
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$27402(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8898
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$27502(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8898
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1

    .prologue
    .line 8905
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8914
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$25500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 1

    .prologue
    .line 9185
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->access$25800()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 9188
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9163
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->access$25700(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9169
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->access$25700(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9130
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->access$25700(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9136
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->access$25700(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9175
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->access$25700(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9181
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->access$25700(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9152
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->access$25700(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9158
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->access$25700(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9141
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->access$25700(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9147
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->access$25700(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8994
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->contentType_:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 9001
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->data_:Lcom/htc/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1

    .prologue
    .line 8909
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 8898
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8898
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9008
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->fileType_:Ljava/lang/String;

    return-object v0
.end method

.method public getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 9015
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 9022
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getImageType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;
    .locals 1

    .prologue
    .line 9029
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->imageType_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9036
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 9086
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->memoizedSerializedSize:I

    .line 9087
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 9124
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 9089
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 9090
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFootprintId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9091
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9094
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9095
    const/16 v2, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9098
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9099
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 9102
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasContentType()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9103
    const/16 v2, 0x2b4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9106
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasData()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9107
    const/16 v2, 0x3ce

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSize(ILcom/htc/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9110
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFileType()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9111
    const/16 v2, 0x447

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getFileType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9114
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasId()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 9115
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9118
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasImageType()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 9119
    const/16 v2, 0x719

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getImageType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9122
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 9123
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->memoizedSerializedSize:I

    move v1, v0

    .line 9124
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 9043
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->timestamp_:J

    return-wide v0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 8993
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasContentType:Z

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 9000
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasData:Z

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    .prologue
    .line 9007
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFileType:Z

    return v0
.end method

.method public hasFootprintId()Z
    .locals 1

    .prologue
    .line 9014
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFootprintId:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 9021
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasId:Z

    return v0
.end method

.method public hasImageType()Z
    .locals 1

    .prologue
    .line 9028
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasImageType:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 9035
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasName:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 9042
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 8919
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$25600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9046
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFootprintId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9047
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9052
    :cond_0
    :goto_0
    return v0

    .line 9049
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9050
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9052
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 1

    .prologue
    .line 9186
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8898
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8898
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 1

    .prologue
    .line 9190
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8898
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8898
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

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
    .line 9057
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFootprintId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9058
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 9060
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9061
    const/16 v0, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9063
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9064
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9066
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9067
    const/16 v0, 0x2b4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9069
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9070
    const/16 v0, 0x3ce

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBytes(ILcom/htc/protobuf/ByteString;)V

    .line 9072
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9073
    const/16 v0, 0x447

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getFileType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9075
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9076
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 9078
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasImageType()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9079
    const/16 v0, 0x719

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getImageType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9081
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 9082
    return-void
.end method
