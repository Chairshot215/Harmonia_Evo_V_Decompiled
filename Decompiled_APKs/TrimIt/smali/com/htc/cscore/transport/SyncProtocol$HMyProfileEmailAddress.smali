.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HMyProfileEmailAddress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;
    }
.end annotation


# static fields
.field public static final EMAILADDRESSTYPE_FIELD_NUMBER:I = 0x246

.field public static final EMAILADDRESS_FIELD_NUMBER:I = 0x758

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final MYPROFILEID_FIELD_NUMBER:I = 0x5a7

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5d6

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;


# instance fields
.field private emailAddressType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

.field private emailAddress_:Ljava/lang/String;

.field private hasEmailAddress:Z

.field private hasEmailAddressType:Z

.field private hasId:Z

.field private hasMyProfileId:Z

.field private hasPriority:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private priority_:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17570
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    .line 18160
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 18164
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 18165
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 17568
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 17667
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->emailAddress_:Ljava/lang/String;

    .line 17674
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;->EmailHome:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->emailAddressType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

    .line 17681
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 17688
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 17695
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->priority_:I

    .line 17702
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->timestamp_:J

    .line 17739
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->memoizedSerializedSize:I

    .line 17568
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17565
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;-><init>()V

    return-void
.end method

.method static synthetic access$50902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17565
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddress:Z

    return p1
.end method

.method static synthetic access$51002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17565
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->emailAddress_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$51102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17565
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddressType:Z

    return p1
.end method

.method static synthetic access$51202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17565
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->emailAddressType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

    return-object p1
.end method

.method static synthetic access$51302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17565
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId:Z

    return p1
.end method

.method static synthetic access$51400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17565
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$51402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17565
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$51502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17565
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId:Z

    return p1
.end method

.method static synthetic access$51600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17565
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$51602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17565
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$51702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17565
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasPriority:Z

    return p1
.end method

.method static synthetic access$51802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17565
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->priority_:I

    return p1
.end method

.method static synthetic access$51902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17565
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$52002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17565
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1

    .prologue
    .line 17572
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 17581
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$50400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 1

    .prologue
    .line 17832
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->access$50700()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 17835
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17810
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->access$50600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17816
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->access$50600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17777
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->access$50600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17783
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->access$50600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17822
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->access$50600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17828
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->access$50600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17799
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->access$50600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17805
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->access$50600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17788
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->access$50600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17794
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->access$50600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1

    .prologue
    .line 17576
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 17565
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17565
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17669
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->emailAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddressType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;
    .locals 1

    .prologue
    .line 17676
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->emailAddressType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 17683
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 17690
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 17697
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->priority_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 17741
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->memoizedSerializedSize:I

    .line 17742
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 17771
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 17744
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 17745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17746
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 17749
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddressType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 17750
    const/16 v2, 0x246

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getEmailAddressType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 17753
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17754
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 17757
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17758
    const/16 v2, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 17761
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasPriority()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 17762
    const/16 v2, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getPriority()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 17765
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddress()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 17766
    const/16 v2, 0x758

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 17769
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 17770
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->memoizedSerializedSize:I

    move v1, v0

    .line 17771
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 17704
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->timestamp_:J

    return-wide v0
.end method

.method public hasEmailAddress()Z
    .locals 1

    .prologue
    .line 17668
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddress:Z

    return v0
.end method

.method public hasEmailAddressType()Z
    .locals 1

    .prologue
    .line 17675
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddressType:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 17682
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId:Z

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 17689
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId:Z

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 17696
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasPriority:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 17703
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 17586
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$50500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 17707
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17708
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 17713
    :cond_0
    :goto_0
    return v0

    .line 17710
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17711
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17713
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 1

    .prologue
    .line 17833
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 17565
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17565
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 1

    .prologue
    .line 17837
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 17565
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17565
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

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
    .line 17718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17719
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17721
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddressType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17722
    const/16 v0, 0x246

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getEmailAddressType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 17724
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17725
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 17727
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17728
    const/16 v0, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 17730
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17731
    const/16 v0, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17733
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddress()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17734
    const/16 v0, 0x758

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 17736
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 17737
    return-void
.end method
