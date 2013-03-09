.class public final Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HAggregatePerson"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;
    }
.end annotation


# static fields
.field public static final AGGREGATEPERSONIMAGE_FIELD_NUMBER:I = 0x3d6

.field public static final CUSTOMRINGTONEID_FIELD_NUMBER:I = 0x1da

.field public static final DISPLAYNAME_FIELD_NUMBER:I = 0x41f

.field public static final FRIENDSTATUS_FIELD_NUMBER:I = 0x72f

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final PERSONSUPDATED_FIELD_NUMBER:I = 0x18a

.field public static final PERSONS_FIELD_NUMBER:I = 0x299

.field public static final SENDTOVOICEMAIL_FIELD_NUMBER:I = 0x74b

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;


# instance fields
.field private aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

.field private customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private displayName_:Ljava/lang/String;

.field private friendStatus_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

.field private hasAggregatePersonImage:Z

.field private hasCustomRingtoneId:Z

.field private hasDisplayName:Z

.field private hasFriendStatus:Z

.field private hasId:Z

.field private hasPersonsUpdated:Z

.field private hasSendToVoiceMail:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private personsUpdated_:Z

.field private persons_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPerson;",
            ">;"
        }
    .end annotation
.end field

.field private sendToVoiceMail_:Z

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->displayName_:Ljava/lang/String;

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;->FriendUnknown:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->friendStatus_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;

    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->personsUpdated_:Z

    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->sendToVoiceMail_:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->timestamp_:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasDisplayName:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->displayName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasFriendStatus:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->friendStatus_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasPersonsUpdated:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->personsUpdated_:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasSendToVoiceMail:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->sendToVoiceMail_:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;J)J
    .locals 0

    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$1400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 1

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->access$1700()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->access$1600(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->access$1600(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->access$1600(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->access$1600(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->access$1600(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->access$1600(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->access$1600(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->access$1600(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->access$1600(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->access$1600(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    return-object v0
.end method

.method public getCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendStatus()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->friendStatus_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getPersons(I)Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    return-object v0
.end method

.method public getPersonsCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPersonsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPerson;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;

    return-object v0
.end method

.method public getPersonsUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->personsUpdated_:Z

    return v0
.end method

.method public getSendToVoiceMail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->sendToVoiceMail_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    iget v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->memoizedSerializedSize:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    :goto_0
    return v3

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasPersonsUpdated()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x18a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getPersonsUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x1da

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasTimestamp()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getTimestamp()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getPersonsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/16 v4, 0x299

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x3d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasDisplayName()Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x41f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId()Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasFriendStatus()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x72f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getFriendStatus()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasSendToVoiceMail()Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x74b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getSendToVoiceMail()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->memoizedSerializedSize:I

    move v3, v2

    goto/16 :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->timestamp_:J

    return-wide v0
.end method

.method public hasAggregatePersonImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage:Z

    return v0
.end method

.method public hasCustomRingtoneId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId:Z

    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasDisplayName:Z

    return v0
.end method

.method public hasFriendStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasFriendStatus:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId:Z

    return v0
.end method

.method public hasPersonsUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasPersonsUpdated:Z

    return v0
.end method

.method public hasSendToVoiceMail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasSendToVoiceMail:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$1500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasPersonsUpdated:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getPersonsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 1

    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasPersonsUpdated()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x18a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getPersonsUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1da

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getPersonsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/16 v2, 0x299

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x3d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasDisplayName()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x41f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasFriendStatus()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x72f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getFriendStatus()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasSendToVoiceMail()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x74b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getSendToVoiceMail()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    return-void
.end method
