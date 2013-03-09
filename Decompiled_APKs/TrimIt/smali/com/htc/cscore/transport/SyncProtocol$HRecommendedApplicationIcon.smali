.class public final Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HRecommendedApplicationIcon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x3ce

.field public static final FILETYPE_FIELD_NUMBER:I = 0x447

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final NAME_FIELD_NUMBER:I = 0x1dc

.field public static final PHONEAPPID_FIELD_NUMBER:I = 0x53d

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;


# instance fields
.field private data_:Lcom/htc/protobuf/ByteString;

.field private fileType_:Ljava/lang/String;

.field private hasData:Z

.field private hasFileType:Z

.field private hasId:Z

.field private hasName:Z

.field private hasPhoneAppId:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;

.field private phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36697
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    .line 37209
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 37213
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 37214
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36695
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 36719
    sget-object v0, Lcom/htc/protobuf/ByteString;->EMPTY:Lcom/htc/protobuf/ByteString;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->data_:Lcom/htc/protobuf/ByteString;

    .line 36726
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->fileType_:Ljava/lang/String;

    .line 36733
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 36740
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->name_:Ljava/lang/String;

    .line 36747
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 36754
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->timestamp_:J

    .line 36791
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->memoizedSerializedSize:I

    .line 36695
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36692
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;-><init>()V

    return-void
.end method

.method static synthetic access$106802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36692
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasData:Z

    return p1
.end method

.method static synthetic access$106902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36692
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->data_:Lcom/htc/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$107002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36692
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasFileType:Z

    return p1
.end method

.method static synthetic access$107102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36692
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->fileType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$107202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36692
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId:Z

    return p1
.end method

.method static synthetic access$107300(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36692
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$107302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36692
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$107402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36692
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasName:Z

    return p1
.end method

.method static synthetic access$107502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36692
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$107602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36692
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId:Z

    return p1
.end method

.method static synthetic access$107700(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36692
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$107702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36692
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$107802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36692
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$107902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36692
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1

    .prologue
    .line 36699
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 36708
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$106300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 1

    .prologue
    .line 36884
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->access$106600()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 36887
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36862
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->access$106500(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36868
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->access$106500(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36829
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->access$106500(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36835
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->access$106500(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36874
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->access$106500(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36880
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->access$106500(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36851
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->access$106500(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36857
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->access$106500(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36840
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->access$106500(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36846
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->access$106500(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 36721
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->data_:Lcom/htc/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1

    .prologue
    .line 36703
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 36692
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 36692
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36728
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->fileType_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 36735
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36742
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneAppId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 36749
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 36793
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->memoizedSerializedSize:I

    .line 36794
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 36823
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 36796
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 36797
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36798
    const/16 v2, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 36801
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36802
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 36805
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasData()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 36806
    const/16 v2, 0x3ce

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSize(ILcom/htc/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 36809
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasFileType()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 36810
    const/16 v2, 0x447

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getFileType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 36813
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 36814
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 36817
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 36818
    const/16 v2, 0x53d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getPhoneAppId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 36821
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 36822
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->memoizedSerializedSize:I

    move v1, v0

    .line 36823
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 36756
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->timestamp_:J

    return-wide v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 36720
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasData:Z

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    .prologue
    .line 36727
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasFileType:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 36734
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 36741
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasName:Z

    return v0
.end method

.method public hasPhoneAppId()Z
    .locals 1

    .prologue
    .line 36748
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 36755
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 36713
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$106400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 36759
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36760
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 36765
    :cond_0
    :goto_0
    return v0

    .line 36762
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36763
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getPhoneAppId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36765
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 1

    .prologue
    .line 36885
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 36692
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 36692
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 1

    .prologue
    .line 36889
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 36692
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 36692
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

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
    .line 36770
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36771
    const/16 v0, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 36773
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36774
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 36776
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36777
    const/16 v0, 0x3ce

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBytes(ILcom/htc/protobuf/ByteString;)V

    .line 36779
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36780
    const/16 v0, 0x447

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getFileType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 36782
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36783
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 36785
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 36786
    const/16 v0, 0x53d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getPhoneAppId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 36788
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 36789
    return-void
.end method
