.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HMyProfileWebSite"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final MYPROFILEID_FIELD_NUMBER:I = 0x5a7

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5d6

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field public static final WEBSITE_FIELD_NUMBER:I = 0x3ab

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;


# instance fields
.field private hasId:Z

.field private hasMyProfileId:Z

.field private hasPriority:Z

.field private hasTimestamp:Z

.field private hasWebSite:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private priority_:I

.field private timestamp_:J

.field private webSite_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21749
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    .line 22216
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 22220
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 22221
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 21747
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 21771
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 21778
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 21785
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->priority_:I

    .line 21792
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->timestamp_:J

    .line 21799
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->webSite_:Ljava/lang/String;

    .line 21833
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->memoizedSerializedSize:I

    .line 21747
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21744
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;-><init>()V

    return-void
.end method

.method static synthetic access$63402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21744
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId:Z

    return p1
.end method

.method static synthetic access$63500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21744
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$63502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21744
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$63602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21744
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId:Z

    return p1
.end method

.method static synthetic access$63700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21744
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$63702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21744
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$63802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21744
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasPriority:Z

    return p1
.end method

.method static synthetic access$63902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21744
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->priority_:I

    return p1
.end method

.method static synthetic access$64002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21744
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$64102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21744
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$64202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21744
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasWebSite:Z

    return p1
.end method

.method static synthetic access$64302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21744
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->webSite_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1

    .prologue
    .line 21751
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 21760
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$62900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 1

    .prologue
    .line 21922
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->access$63200()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 21925
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21900
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->access$63100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21906
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->access$63100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21867
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->access$63100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21873
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->access$63100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21912
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->access$63100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21918
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->access$63100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21889
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->access$63100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21895
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->access$63100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21878
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->access$63100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21884
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->access$63100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1

    .prologue
    .line 21755
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 21744
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 21744
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 21773
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 21780
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 21787
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->priority_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 21835
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->memoizedSerializedSize:I

    .line 21836
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 21861
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 21838
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 21839
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21840
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 21843
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasWebSite()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 21844
    const/16 v2, 0x3ab

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getWebSite()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21847
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 21848
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21851
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 21852
    const/16 v2, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21855
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasPriority()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 21856
    const/16 v2, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getPriority()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 21859
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 21860
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->memoizedSerializedSize:I

    move v1, v0

    .line 21861
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 21794
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->timestamp_:J

    return-wide v0
.end method

.method public getWebSite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21801
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->webSite_:Ljava/lang/String;

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 21772
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId:Z

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 21779
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId:Z

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 21786
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasPriority:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 21793
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasTimestamp:Z

    return v0
.end method

.method public hasWebSite()Z
    .locals 1

    .prologue
    .line 21800
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasWebSite:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 21765
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$63000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 21804
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21805
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 21810
    :cond_0
    :goto_0
    return v0

    .line 21807
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21808
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21810
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 1

    .prologue
    .line 21923
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 21744
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 21744
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 1

    .prologue
    .line 21927
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 21744
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 21744
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

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
    .line 21815
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21816
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 21818
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasWebSite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21819
    const/16 v0, 0x3ab

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getWebSite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 21821
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21822
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 21824
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21825
    const/16 v0, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 21827
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21828
    const/16 v0, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 21830
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 21831
    return-void
.end method
