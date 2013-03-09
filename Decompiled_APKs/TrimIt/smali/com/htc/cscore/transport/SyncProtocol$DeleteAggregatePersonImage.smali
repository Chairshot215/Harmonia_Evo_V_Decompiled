.class public final Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteAggregatePersonImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    }
.end annotation


# static fields
.field public static final PERSONID_FIELD_NUMBER:I = 0x33c

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;


# instance fields
.field private hasPersonId:Z

.field private memoizedSerializedSize:I

.field private personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1979
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    .line 2259
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 2263
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 2264
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1977
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 2001
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 2019
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->memoizedSerializedSize:I

    .line 1977
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1974
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;-><init>()V

    return-void
.end method

.method static synthetic access$5702(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1974
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->hasPersonId:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1974
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1

    .prologue
    .line 1981
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1990
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$5200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    .locals 1

    .prologue
    .line 2092
    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->access$5500()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2095
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2070
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->access$5400(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2076
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->access$5400(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2037
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->access$5400(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2043
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->access$5400(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2082
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->access$5400(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2088
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->access$5400(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2059
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->access$5400(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2065
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->access$5400(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2048
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->access$5400(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2054
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->access$5400(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1

    .prologue
    .line 1985
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1974
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1974
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2021
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->memoizedSerializedSize:I

    .line 2022
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2031
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 2024
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 2025
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->hasPersonId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2026
    const/16 v2, 0x33c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2029
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 2030
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->memoizedSerializedSize:I

    move v1, v0

    .line 2031
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasPersonId()Z
    .locals 1

    .prologue
    .line 2002
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->hasPersonId:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1995
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$5300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2006
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->hasPersonId:Z

    if-nez v1, :cond_1

    .line 2008
    :cond_0
    :goto_0
    return v0

    .line 2007
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2008
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    .locals 1

    .prologue
    .line 2093
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1974
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1974
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    .locals 1

    .prologue
    .line 2097
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1974
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1974
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2013
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2014
    const/16 v0, 0x33c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 2016
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 2017
    return-void
.end method
