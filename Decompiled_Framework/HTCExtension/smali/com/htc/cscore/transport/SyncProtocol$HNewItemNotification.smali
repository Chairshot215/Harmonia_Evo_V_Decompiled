.class public final Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HNewItemNotification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    }
.end annotation


# static fields
.field public static final LASTVIEWDASHBOARDS_FIELD_NUMBER:I = 0x10b

.field public static final LASTVIEWFOOTPRINTS_FIELD_NUMBER:I = 0x40e

.field public static final LASTVIEWRECOMMENDS_FIELD_NUMBER:I = 0xee

.field public static final NEWDASHBOARDCOUNT_FIELD_NUMBER:I = 0x657

.field public static final NEWFOOTPRINTCOUNT_FIELD_NUMBER:I = 0xeb

.field public static final NEWMESSAGESCOUNT_FIELD_NUMBER:I = 0x3d7

.field public static final NEWPEOPLECOUNT_FIELD_NUMBER:I = 0x12

.field public static final NEWRECOMMENDSCOUNT_FIELD_NUMBER:I = 0x4bc

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;


# instance fields
.field private hasLastViewDashboards:Z

.field private hasLastViewFootprints:Z

.field private hasLastViewRecommends:Z

.field private hasNewDashboardCount:Z

.field private hasNewFootprintCount:Z

.field private hasNewMessagesCount:Z

.field private hasNewPeopleCount:Z

.field private hasNewRecommendsCount:Z

.field private lastViewDashboards_:J

.field private lastViewFootprints_:J

.field private lastViewRecommends_:J

.field private memoizedSerializedSize:I

.field private newDashboardCount_:I

.field private newFootprintCount_:I

.field private newMessagesCount_:I

.field private newPeopleCount_:I

.field private newRecommendsCount_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewDashboards_:J

    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewFootprints_:J

    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewRecommends_:J

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newDashboardCount_:I

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newFootprintCount_:I

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newMessagesCount_:I

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newPeopleCount_:I

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newRecommendsCount_:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;-><init>()V

    return-void
.end method

.method static synthetic access$64902(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewDashboards:Z

    return p1
.end method

.method static synthetic access$65002(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;J)J
    .locals 0

    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewDashboards_:J

    return-wide p1
.end method

.method static synthetic access$65102(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewFootprints:Z

    return p1
.end method

.method static synthetic access$65202(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;J)J
    .locals 0

    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewFootprints_:J

    return-wide p1
.end method

.method static synthetic access$65302(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewRecommends:Z

    return p1
.end method

.method static synthetic access$65402(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;J)J
    .locals 0

    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewRecommends_:J

    return-wide p1
.end method

.method static synthetic access$65502(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewDashboardCount:Z

    return p1
.end method

.method static synthetic access$65602(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I
    .locals 0

    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newDashboardCount_:I

    return p1
.end method

.method static synthetic access$65702(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewFootprintCount:Z

    return p1
.end method

.method static synthetic access$65802(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I
    .locals 0

    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newFootprintCount_:I

    return p1
.end method

.method static synthetic access$65902(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewMessagesCount:Z

    return p1
.end method

.method static synthetic access$66002(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I
    .locals 0

    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newMessagesCount_:I

    return p1
.end method

.method static synthetic access$66102(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewPeopleCount:Z

    return p1
.end method

.method static synthetic access$66202(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I
    .locals 0

    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newPeopleCount_:I

    return p1
.end method

.method static synthetic access$66302(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewRecommendsCount:Z

    return p1
.end method

.method static synthetic access$66402(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I
    .locals 0

    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newRecommendsCount_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$64400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 1

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64700()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public getLastViewDashboards()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewDashboards_:J

    return-wide v0
.end method

.method public getLastViewFootprints()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewFootprints_:J

    return-wide v0
.end method

.method public getLastViewRecommends()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewRecommends_:J

    return-wide v0
.end method

.method public getNewDashboardCount()I
    .locals 1

    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newDashboardCount_:I

    return v0
.end method

.method public getNewFootprintCount()I
    .locals 1

    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newFootprintCount_:I

    return v0
.end method

.method public getNewMessagesCount()I
    .locals 1

    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newMessagesCount_:I

    return v0
.end method

.method public getNewPeopleCount()I
    .locals 1

    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newPeopleCount_:I

    return v0
.end method

.method public getNewRecommendsCount()I
    .locals 1

    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newRecommendsCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewPeopleCount()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewPeopleCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewFootprintCount()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xeb

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewFootprintCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewRecommends()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xee

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getLastViewRecommends()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewDashboards()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x10b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getLastViewDashboards()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewMessagesCount()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x3d7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewMessagesCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewFootprints()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x40e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getLastViewFootprints()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewRecommendsCount()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x4bc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewRecommendsCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewDashboardCount()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x657

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewDashboardCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->memoizedSerializedSize:I

    move v1, v0

    goto/16 :goto_0
.end method

.method public hasLastViewDashboards()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewDashboards:Z

    return v0
.end method

.method public hasLastViewFootprints()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewFootprints:Z

    return v0
.end method

.method public hasLastViewRecommends()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewRecommends:Z

    return v0
.end method

.method public hasNewDashboardCount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewDashboardCount:Z

    return v0
.end method

.method public hasNewFootprintCount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewFootprintCount:Z

    return v0
.end method

.method public hasNewMessagesCount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewMessagesCount:Z

    return v0
.end method

.method public hasNewPeopleCount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewPeopleCount:Z

    return v0
.end method

.method public hasNewRecommendsCount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewRecommendsCount:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$64500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 1

    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewPeopleCount()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewPeopleCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewFootprintCount()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xeb

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewFootprintCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewRecommends()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xee

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getLastViewRecommends()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewDashboards()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x10b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getLastViewDashboards()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewMessagesCount()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3d7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewMessagesCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewFootprints()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x40e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getLastViewFootprints()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewRecommendsCount()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x4bc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewRecommendsCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewDashboardCount()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x657

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewDashboardCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    return-void
.end method
