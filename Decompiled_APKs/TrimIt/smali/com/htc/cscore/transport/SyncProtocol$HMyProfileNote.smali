.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HMyProfileNote"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final MYPROFILEID_FIELD_NUMBER:I = 0x5a7

.field public static final NOTE_FIELD_NUMBER:I = 0x2d8

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5d6

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;


# instance fields
.field private hasId:Z

.field private hasMyProfileId:Z

.field private hasNote:Z

.field private hasPriority:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private note_:Ljava/lang/String;

.field private priority_:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20034
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    .line 20501
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 20505
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 20506
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 20032
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 20056
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20063
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20070
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->note_:Ljava/lang/String;

    .line 20077
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->priority_:I

    .line 20084
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->timestamp_:J

    .line 20118
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->memoizedSerializedSize:I

    .line 20032
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20029
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;-><init>()V

    return-void
.end method

.method static synthetic access$58302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20029
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId:Z

    return p1
.end method

.method static synthetic access$58400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20029
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$58402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20029
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$58502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20029
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId:Z

    return p1
.end method

.method static synthetic access$58600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20029
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$58602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20029
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$58702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20029
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasNote:Z

    return p1
.end method

.method static synthetic access$58802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20029
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->note_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$58902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20029
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasPriority:Z

    return p1
.end method

.method static synthetic access$59002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20029
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->priority_:I

    return p1
.end method

.method static synthetic access$59102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20029
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$59202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20029
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1

    .prologue
    .line 20036
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 20045
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$57800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 1

    .prologue
    .line 20207
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->access$58100()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 20210
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20185
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->access$58000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20191
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->access$58000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20152
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->access$58000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20158
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->access$58000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20197
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->access$58000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20203
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->access$58000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20174
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->access$58000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20180
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->access$58000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20163
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->access$58000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20169
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->access$58000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1

    .prologue
    .line 20040
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 20029
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20029
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 20058
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 20065
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20072
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->note_:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 20079
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->priority_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 20120
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->memoizedSerializedSize:I

    .line 20121
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 20146
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 20123
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 20124
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 20125
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 20128
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasNote()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20129
    const/16 v2, 0x2d8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getNote()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 20132
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20133
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 20136
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 20137
    const/16 v2, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 20140
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasPriority()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20141
    const/16 v2, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getPriority()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 20144
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 20145
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->memoizedSerializedSize:I

    move v1, v0

    .line 20146
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 20086
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->timestamp_:J

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 20057
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId:Z

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 20064
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId:Z

    return v0
.end method

.method public hasNote()Z
    .locals 1

    .prologue
    .line 20071
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasNote:Z

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 20078
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasPriority:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 20085
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 20050
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$57900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 20089
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20090
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 20095
    :cond_0
    :goto_0
    return v0

    .line 20092
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20093
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20095
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 1

    .prologue
    .line 20208
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 20029
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20029
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 1

    .prologue
    .line 20212
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 20029
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20029
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

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
    .line 20100
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20101
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 20103
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasNote()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20104
    const/16 v0, 0x2d8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 20106
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20107
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 20109
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20110
    const/16 v0, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 20112
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20113
    const/16 v0, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 20115
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 20116
    return-void
.end method
