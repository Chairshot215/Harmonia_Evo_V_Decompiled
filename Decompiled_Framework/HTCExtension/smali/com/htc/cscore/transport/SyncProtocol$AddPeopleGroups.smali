.class public final Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddPeopleGroups"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    }
.end annotation


# static fields
.field public static final PEOPLEGROUPS_FIELD_NUMBER:I = 0x671

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;


# instance fields
.field private memoizedSerializedSize:I

.field private peopleGroups_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;-><init>()V

    return-void
.end method

.method static synthetic access$69600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$69602(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$69100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    .locals 1

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->access$69400()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->access$69300(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->access$69300(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->access$69300(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->access$69300(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->access$69300(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->access$69300(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->access$69300(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->access$69300(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->access$69300(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->access$69300(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleGroups(I)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    return-object v0
.end method

.method public getPeopleGroupsCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPeopleGroupsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v2, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->memoizedSerializedSize:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    :goto_0
    return v3

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->getPeopleGroupsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/16 v4, 0x671

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->memoizedSerializedSize:I

    move v3, v2

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$69200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->getPeopleGroupsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    .locals 1

    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->getPeopleGroupsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/16 v2, 0x671

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    return-void
.end method
