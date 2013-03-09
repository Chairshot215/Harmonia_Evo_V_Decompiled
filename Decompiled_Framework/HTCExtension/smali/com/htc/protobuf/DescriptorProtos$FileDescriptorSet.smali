.class public final Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptorSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    }
.end annotation


# static fields
.field public static final FILE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;


# instance fields
.field private file_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1

    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->access$300()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->access$200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->access$200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->access$200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->access$200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->access$200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->access$200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->access$200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->access$200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->access$200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->access$200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1

    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public getFile(I)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public getFileCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->memoizedSerializedSize:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    :goto_0
    return v3

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->getFileList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v4, 0x1

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->memoizedSerializedSize:I

    move v3, v2

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->getFileList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

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

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->getFileList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    return-void
.end method
