.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HMyProfileInstantMessagingID"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final INSTANTMESSAGINGID_FIELD_NUMBER:I = 0x50e

.field public static final INSTANTMESSAGINGTYPE_FIELD_NUMBER:I = 0x633

.field public static final MYPROFILEID_FIELD_NUMBER:I = 0x5a7

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5d6

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;


# instance fields
.field private hasId:Z

.field private hasInstantMessagingID:Z

.field private hasInstantMessagingType:Z

.field private hasMyProfileId:Z

.field private hasPriority:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private instantMessagingID_:Ljava/lang/String;

.field private instantMessagingType_:I

.field private memoizedSerializedSize:I

.field private myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private priority_:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19440
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    .line 20021
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 20025
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 20026
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19438
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 19537
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 19544
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->instantMessagingID_:Ljava/lang/String;

    .line 19551
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->instantMessagingType_:I

    .line 19558
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 19565
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->priority_:I

    .line 19572
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->timestamp_:J

    .line 19609
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->memoizedSerializedSize:I

    .line 19438
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19435
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;-><init>()V

    return-void
.end method

.method static synthetic access$56602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19435
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId:Z

    return p1
.end method

.method static synthetic access$56700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19435
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$56702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19435
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$56802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19435
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingID:Z

    return p1
.end method

.method static synthetic access$56902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19435
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->instantMessagingID_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$57002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19435
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingType:Z

    return p1
.end method

.method static synthetic access$57102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19435
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->instantMessagingType_:I

    return p1
.end method

.method static synthetic access$57202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19435
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId:Z

    return p1
.end method

.method static synthetic access$57300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19435
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$57302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19435
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$57402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19435
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasPriority:Z

    return p1
.end method

.method static synthetic access$57502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19435
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->priority_:I

    return p1
.end method

.method static synthetic access$57602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19435
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$57702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19435
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1

    .prologue
    .line 19442
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 19451
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$56100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 1

    .prologue
    .line 19702
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->access$56400()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 19705
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19680
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->access$56300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19686
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->access$56300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19647
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->access$56300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19653
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->access$56300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19692
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->access$56300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19698
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->access$56300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19669
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->access$56300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19675
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->access$56300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19658
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->access$56300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19664
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->access$56300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1

    .prologue
    .line 19446
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 19435
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19435
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 19539
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getInstantMessagingID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19546
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->instantMessagingID_:Ljava/lang/String;

    return-object v0
.end method

.method public getInstantMessagingType()I
    .locals 1

    .prologue
    .line 19553
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->instantMessagingType_:I

    return v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 19560
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 19567
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->priority_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 19611
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->memoizedSerializedSize:I

    .line 19612
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 19641
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 19614
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 19615
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19616
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 19619
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingID()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19620
    const/16 v2, 0x50e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getInstantMessagingID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 19623
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 19624
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 19627
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 19628
    const/16 v2, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 19631
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasPriority()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 19632
    const/16 v2, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getPriority()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 19635
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingType()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19636
    const/16 v2, 0x633

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getInstantMessagingType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 19639
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 19640
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->memoizedSerializedSize:I

    move v1, v0

    .line 19641
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 19574
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->timestamp_:J

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 19538
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId:Z

    return v0
.end method

.method public hasInstantMessagingID()Z
    .locals 1

    .prologue
    .line 19545
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingID:Z

    return v0
.end method

.method public hasInstantMessagingType()Z
    .locals 1

    .prologue
    .line 19552
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingType:Z

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 19559
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId:Z

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 19566
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasPriority:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 19573
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 19456
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$56200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 19577
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19578
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 19583
    :cond_0
    :goto_0
    return v0

    .line 19580
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19581
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19583
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 1

    .prologue
    .line 19703
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 19435
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 19435
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 1

    .prologue
    .line 19707
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 19435
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 19435
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

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
    .line 19588
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19589
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 19591
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingID()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19592
    const/16 v0, 0x50e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getInstantMessagingID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 19594
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19595
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 19597
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19598
    const/16 v0, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 19600
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19601
    const/16 v0, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 19603
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19604
    const/16 v0, 0x633

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getInstantMessagingType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 19606
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 19607
    return-void
.end method
