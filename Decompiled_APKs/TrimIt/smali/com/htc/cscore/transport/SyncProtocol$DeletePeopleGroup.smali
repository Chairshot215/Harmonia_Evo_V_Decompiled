.class public final Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeletePeopleGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    }
.end annotation


# static fields
.field public static final PEOPLEGROUPID_FIELD_NUMBER:I = 0x7f7

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x732

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;


# instance fields
.field private hasPeopleGroupId:Z

.field private hasTimestamp:Z

.field private memoizedSerializedSize:I

.field private peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24649
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    .line 24969
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 24973
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 24974
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24647
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 24671
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 24678
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->timestamp_:J

    .line 24700
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->memoizedSerializedSize:I

    .line 24647
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24644
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;-><init>()V

    return-void
.end method

.method static synthetic access$71402(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24644
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId:Z

    return p1
.end method

.method static synthetic access$71500(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24644
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$71502(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24644
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$71602(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24644
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$71702(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24644
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1

    .prologue
    .line 24651
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 24660
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$70900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 1

    .prologue
    .line 24777
    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71200()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 24780
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24755
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24761
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24722
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24728
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24767
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24773
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24744
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24750
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24733
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24739
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1

    .prologue
    .line 24655
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 24644
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 24644
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 24673
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 24702
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->memoizedSerializedSize:I

    .line 24703
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 24716
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 24705
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 24706
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 24707
    const/16 v2, 0x732

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 24710
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24711
    const/16 v2, 0x7f7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24714
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 24715
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->memoizedSerializedSize:I

    move v1, v0

    .line 24716
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 24680
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->timestamp_:J

    return-wide v0
.end method

.method public hasPeopleGroupId()Z
    .locals 1

    .prologue
    .line 24672
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 24679
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 24665
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$71000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 24683
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId:Z

    if-nez v1, :cond_1

    .line 24686
    :cond_0
    :goto_0
    return v0

    .line 24684
    :cond_1
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasTimestamp:Z

    if-eqz v1, :cond_0

    .line 24685
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24686
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 1

    .prologue
    .line 24778
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 24644
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 24644
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 1

    .prologue
    .line 24782
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 24644
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 24644
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

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
    .line 24691
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24692
    const/16 v0, 0x732

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 24694
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24695
    const/16 v0, 0x7f7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 24697
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 24698
    return-void
.end method
