.class public final Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HFriendRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final MESSAGE_FIELD_NUMBER:I = 0x72f

.field public static final PERSONID_FIELD_NUMBER:I = 0x4a2

.field public static final STATUS_FIELD_NUMBER:I = 0x692

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;


# instance fields
.field private hasId:Z

.field private hasMessage:Z

.field private hasPersonId:Z

.field private hasStatus:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private message_:Ljava/lang/String;

.field private personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private status_:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->message_:Ljava/lang/String;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->status_:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->timestamp_:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;-><init>()V

    return-void
.end method

.method static synthetic access$31802(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasId:Z

    return p1
.end method

.method static synthetic access$31900(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$31902(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$32002(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasMessage:Z

    return p1
.end method

.method static synthetic access$32102(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->message_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$32202(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasPersonId:Z

    return p1
.end method

.method static synthetic access$32300(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$32302(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$32402(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasStatus:Z

    return p1
.end method

.method static synthetic access$32502(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->status_:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    return-object p1
.end method

.method static synthetic access$32602(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$32702(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;J)J
    .locals 0

    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$31300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 1

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->access$31600()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->access$31500(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->access$31500(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->access$31500(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->access$31500(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->access$31500(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->access$31500(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->access$31500(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->access$31500(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->access$31500(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->access$31500(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->message_:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasPersonId()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x4a2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasId()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x692

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getStatus()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasMessage()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x72f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->memoizedSerializedSize:I

    move v1, v0

    goto :goto_0
.end method

.method public getStatus()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->status_:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->timestamp_:J

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasId:Z

    return v0
.end method

.method public hasMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasMessage:Z

    return v0
.end method

.method public hasPersonId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasPersonId:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasStatus:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$31400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasPersonId()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 1

    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4a2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x692

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getStatus()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x72f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    return-void
.end method
