.class public final Lcom/htc/cscore/transport/SyncProtocol$HMessage;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;,
        Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;
    }
.end annotation


# static fields
.field public static final BODY_FIELD_NUMBER:I = 0x26c

.field public static final CREATEDATE_FIELD_NUMBER:I = 0x39d

.field public static final HASVIEWED_FIELD_NUMBER:I = 0x4b4

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final MESSAGEATTACHMENTSUPDATED_FIELD_NUMBER:I = 0x2b6

.field public static final MESSAGEATTACHMENTS_FIELD_NUMBER:I = 0x3cc

.field public static final MESSAGERECIPIENTSUPDATED_FIELD_NUMBER:I = 0x62b

.field public static final MESSAGERECIPIENTS_FIELD_NUMBER:I = 0x58f

.field public static final MESSAGETYPE_FIELD_NUMBER:I = 0x16f

.field public static final PUDDATA_FIELD_NUMBER:I = 0x405

.field public static final STATUS_FIELD_NUMBER:I = 0x692

.field public static final SUBJECT_FIELD_NUMBER:I = 0x768

.field public static final THREADID_FIELD_NUMBER:I = 0x57a

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMessage;


# instance fields
.field private body_:Ljava/lang/String;

.field private createDate_:J

.field private hasBody:Z

.field private hasCreateDate:Z

.field private hasHasViewed:Z

.field private hasId:Z

.field private hasMessageAttachmentsUpdated:Z

.field private hasMessageRecipientsUpdated:Z

.field private hasMessageType:Z

.field private hasPudData:Z

.field private hasStatus:Z

.field private hasSubject:Z

.field private hasThreadId:Z

.field private hasTimestamp:Z

.field private hasViewed_:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private messageAttachmentsUpdated_:Z

.field private messageAttachments_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private messageRecipientsUpdated_:Z

.field private messageRecipients_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private messageType_:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

.field private pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

.field private status_:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

.field private subject_:Ljava/lang/String;

.field private threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->body_:Ljava/lang/String;

    iput-wide v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->createDate_:J

    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasViewed_:Z

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;

    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachmentsUpdated_:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;

    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipientsUpdated_:Z

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->MessageUnknownType:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageType_:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageUnknownStatus:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->status_:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->subject_:Ljava/lang/String;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    iput-wide v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->timestamp_:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;-><init>()V

    return-void
.end method

.method static synthetic access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$33302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$33402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$33502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasBody:Z

    return p1
.end method

.method static synthetic access$33602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->body_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$33702(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasCreateDate:Z

    return p1
.end method

.method static synthetic access$33802(Lcom/htc/cscore/transport/SyncProtocol$HMessage;J)J
    .locals 0

    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->createDate_:J

    return-wide p1
.end method

.method static synthetic access$33902(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasHasViewed:Z

    return p1
.end method

.method static synthetic access$34002(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasViewed_:Z

    return p1
.end method

.method static synthetic access$34102(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId:Z

    return p1
.end method

.method static synthetic access$34200(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$34202(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$34302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageAttachmentsUpdated:Z

    return p1
.end method

.method static synthetic access$34402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachmentsUpdated_:Z

    return p1
.end method

.method static synthetic access$34502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageRecipientsUpdated:Z

    return p1
.end method

.method static synthetic access$34602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipientsUpdated_:Z

    return p1
.end method

.method static synthetic access$34702(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageType:Z

    return p1
.end method

.method static synthetic access$34802(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageType_:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    return-object p1
.end method

.method static synthetic access$34902(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData:Z

    return p1
.end method

.method static synthetic access$35000(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    return-object v0
.end method

.method static synthetic access$35002(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    return-object p1
.end method

.method static synthetic access$35102(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasStatus:Z

    return p1
.end method

.method static synthetic access$35202(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->status_:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    return-object p1
.end method

.method static synthetic access$35302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasSubject:Z

    return p1
.end method

.method static synthetic access$35402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->subject_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$35502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId:Z

    return p1
.end method

.method static synthetic access$35600(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$35602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$35702(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$35802(Lcom/htc/cscore/transport/SyncProtocol$HMessage;J)J
    .locals 0

    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$32800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 1

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->access$33100()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->access$33000(Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->access$33000(Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->access$33000(Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->access$33000(Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->access$33000(Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->access$33000(Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->access$33000(Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->access$33000(Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->access$33000(Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->access$33000(Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->body_:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateDate()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->createDate_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public getHasViewed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasViewed_:Z

    return v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getMessageAttachments(I)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    return-object v0
.end method

.method public getMessageAttachmentsCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessageAttachmentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;

    return-object v0
.end method

.method public getMessageAttachmentsUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachmentsUpdated_:Z

    return v0
.end method

.method public getMessageRecipients(I)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    return-object v0
.end method

.method public getMessageRecipientsCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessageRecipientsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;

    return-object v0
.end method

.method public getMessageRecipientsUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipientsUpdated_:Z

    return v0
.end method

.method public getMessageType()Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageType_:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    return-object v0
.end method

.method public getPudData()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    iget v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->memoizedSerializedSize:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    :goto_0
    return v3

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageType()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x16f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageType()Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasTimestamp()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getTimestamp()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasBody()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x26c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageAttachmentsUpdated()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x2b6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageAttachmentsUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasCreateDate()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x39d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getCreateDate()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageAttachmentsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/16 v4, 0x3cc

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData()Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x405

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getPudData()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasHasViewed()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x4b4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getHasViewed()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId()Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId()Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x57a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getThreadId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageRecipientsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/16 v4, 0x58f

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageRecipientsUpdated()Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0x62b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageRecipientsUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasStatus()Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v4, 0x692

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getStatus()Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasSubject()Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v4, 0x768

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->memoizedSerializedSize:I

    move v3, v2

    goto/16 :goto_0
.end method

.method public getStatus()Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->status_:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->subject_:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->timestamp_:J

    return-wide v0
.end method

.method public hasBody()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasBody:Z

    return v0
.end method

.method public hasCreateDate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasCreateDate:Z

    return v0
.end method

.method public hasHasViewed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasHasViewed:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId:Z

    return v0
.end method

.method public hasMessageAttachmentsUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageAttachmentsUpdated:Z

    return v0
.end method

.method public hasMessageRecipientsUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageRecipientsUpdated:Z

    return v0
.end method

.method public hasMessageType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageType:Z

    return v0
.end method

.method public hasPudData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasStatus:Z

    return v0
.end method

.method public hasSubject()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasSubject:Z

    return v0
.end method

.method public hasThreadId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$32900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageAttachmentsUpdated:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageRecipientsUpdated:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageAttachmentsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageRecipientsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getPudData()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getThreadId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_8
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 1

    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageType()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x16f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageType()Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasBody()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x26c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageAttachmentsUpdated()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x2b6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageAttachmentsUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasCreateDate()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x39d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getCreateDate()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageAttachmentsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/16 v2, 0x3cc

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x405

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getPudData()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasHasViewed()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x4b4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getHasViewed()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x57a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getThreadId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageRecipientsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/16 v2, 0x58f

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageRecipientsUpdated()Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x62b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageRecipientsUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x692

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getStatus()Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasSubject()Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x768

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    return-void
.end method
