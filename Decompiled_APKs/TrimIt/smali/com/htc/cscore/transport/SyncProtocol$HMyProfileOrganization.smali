.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HMyProfileOrganization"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final MYPROFILEID_FIELD_NUMBER:I = 0x5a7

.field public static final ORGANIZATIONNAME_FIELD_NUMBER:I = 0x79c

.field public static final ORGANIZATIONTYPE_FIELD_NUMBER:I = 0x29b

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5d6

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;


# instance fields
.field private hasId:Z

.field private hasMyProfileId:Z

.field private hasOrganizationName:Z

.field private hasOrganizationType:Z

.field private hasPriority:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private organizationName_:Ljava/lang/String;

.field private organizationType_:I

.field private priority_:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20514
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    .line 21085
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 21089
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 21090
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20512
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 20601
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20608
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20615
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->organizationName_:Ljava/lang/String;

    .line 20622
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->organizationType_:I

    .line 20629
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->priority_:I

    .line 20636
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->timestamp_:J

    .line 20673
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->memoizedSerializedSize:I

    .line 20512
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20509
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;-><init>()V

    return-void
.end method

.method static synthetic access$59802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20509
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasId:Z

    return p1
.end method

.method static synthetic access$59900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20509
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$59902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20509
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$60002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20509
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasMyProfileId:Z

    return p1
.end method

.method static synthetic access$60100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20509
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$60102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20509
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$60202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20509
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationName:Z

    return p1
.end method

.method static synthetic access$60302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20509
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->organizationName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$60402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20509
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationType:Z

    return p1
.end method

.method static synthetic access$60502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20509
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->organizationType_:I

    return p1
.end method

.method static synthetic access$60602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20509
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasPriority:Z

    return p1
.end method

.method static synthetic access$60702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20509
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->priority_:I

    return p1
.end method

.method static synthetic access$60802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20509
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$60902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20509
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1

    .prologue
    .line 20516
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 20525
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$59300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 1

    .prologue
    .line 20766
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59600()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 20769
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20744
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20750
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20711
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20717
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20756
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20762
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20733
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20739
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20722
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20728
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1

    .prologue
    .line 20520
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 20509
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20509
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 20603
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 20610
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getOrganizationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20617
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->organizationName_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizationType()I
    .locals 1

    .prologue
    .line 20624
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->organizationType_:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 20631
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->priority_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 20675
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->memoizedSerializedSize:I

    .line 20676
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 20705
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 20678
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 20679
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 20680
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 20683
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20684
    const/16 v2, 0x29b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getOrganizationType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 20687
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20688
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 20691
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasMyProfileId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 20692
    const/16 v2, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 20695
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasPriority()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20696
    const/16 v2, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getPriority()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 20699
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationName()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 20700
    const/16 v2, 0x79c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getOrganizationName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 20703
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 20704
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->memoizedSerializedSize:I

    move v1, v0

    .line 20705
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 20638
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->timestamp_:J

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 20602
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasId:Z

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 20609
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasMyProfileId:Z

    return v0
.end method

.method public hasOrganizationName()Z
    .locals 1

    .prologue
    .line 20616
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationName:Z

    return v0
.end method

.method public hasOrganizationType()Z
    .locals 1

    .prologue
    .line 20623
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationType:Z

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 20630
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasPriority:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 20637
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 20530
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$59400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 20641
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20642
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 20647
    :cond_0
    :goto_0
    return v0

    .line 20644
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasMyProfileId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20647
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 1

    .prologue
    .line 20767
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 20509
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20509
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 1

    .prologue
    .line 20771
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 20509
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20509
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

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
    .line 20652
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20653
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 20655
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20656
    const/16 v0, 0x29b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getOrganizationType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 20658
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20659
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 20661
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20662
    const/16 v0, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 20664
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20665
    const/16 v0, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 20667
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20668
    const/16 v0, 0x79c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getOrganizationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 20670
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 20671
    return-void
.end method
