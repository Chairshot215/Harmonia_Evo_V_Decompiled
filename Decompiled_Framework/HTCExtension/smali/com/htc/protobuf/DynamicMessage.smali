.class public final Lcom/htc/protobuf/DynamicMessage;
.super Lcom/htc/protobuf/AbstractMessage;
.source "DynamicMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DynamicMessage$1;,
        Lcom/htc/protobuf/DynamicMessage$Builder;
    }
.end annotation


# instance fields
.field private final fields:Lcom/htc/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/FieldSet",
            "<",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedSize:I

.field private final type:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private final unknownFields:Lcom/htc/protobuf/UnknownFieldSet;


# direct methods
.method private constructor <init>(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/FieldSet;Lcom/htc/protobuf/UnknownFieldSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/Descriptors$Descriptor;",
            "Lcom/htc/protobuf/FieldSet",
            "<",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            ">;",
            "Lcom/htc/protobuf/UnknownFieldSet;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DynamicMessage;->memoizedSize:I

    iput-object p1, p0, Lcom/htc/protobuf/DynamicMessage;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    iput-object p2, p0, Lcom/htc/protobuf/DynamicMessage;->fields:Lcom/htc/protobuf/FieldSet;

    iput-object p3, p0, Lcom/htc/protobuf/DynamicMessage;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/FieldSet;Lcom/htc/protobuf/UnknownFieldSet;Lcom/htc/protobuf/DynamicMessage$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/protobuf/DynamicMessage;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/FieldSet;Lcom/htc/protobuf/UnknownFieldSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/protobuf/DynamicMessage;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/protobuf/DynamicMessage;)Lcom/htc/protobuf/FieldSet;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage;->fields:Lcom/htc/protobuf/FieldSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/protobuf/DynamicMessage;)Lcom/htc/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/FieldSet;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/htc/protobuf/DynamicMessage;->isInitialized(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public static getDefaultInstance(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/DynamicMessage;
    .locals 3

    new-instance v0, Lcom/htc/protobuf/DynamicMessage;

    invoke-static {}, Lcom/htc/protobuf/FieldSet;->emptySet()Lcom/htc/protobuf/FieldSet;

    move-result-object v1

    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/protobuf/DynamicMessage;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/FieldSet;Lcom/htc/protobuf/UnknownFieldSet;)V

    return-object v0
.end method

.method private static isInitialized(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/FieldSet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/Descriptors$Descriptor;",
            "Lcom/htc/protobuf/FieldSet",
            "<",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/htc/protobuf/FieldSet;->hasField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/FieldSet;->isInitialized()Z

    move-result v2

    goto :goto_0
.end method

.method public static newBuilder(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 2

    new-instance v0, Lcom/htc/protobuf/DynamicMessage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/protobuf/DynamicMessage$Builder;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/DynamicMessage$1;)V

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 3

    new-instance v0, Lcom/htc/protobuf/DynamicMessage$Builder;

    invoke-interface {p0}, Lcom/htc/protobuf/Message;->getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/protobuf/DynamicMessage$Builder;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/DynamicMessage$1;)V

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DynamicMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/htc/protobuf/DynamicMessage;->newBuilder(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DynamicMessage$Builder;

    #calls: Lcom/htc/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/htc/protobuf/DynamicMessage;
    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage$Builder;->access$000(Lcom/htc/protobuf/DynamicMessage$Builder;)Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistry;)Lcom/htc/protobuf/DynamicMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/htc/protobuf/DynamicMessage;->newBuilder(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DynamicMessage$Builder;

    #calls: Lcom/htc/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/htc/protobuf/DynamicMessage;
    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage$Builder;->access$000(Lcom/htc/protobuf/DynamicMessage$Builder;)Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DynamicMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/htc/protobuf/DynamicMessage;->newBuilder(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DynamicMessage$Builder;

    #calls: Lcom/htc/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/htc/protobuf/DynamicMessage;
    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage$Builder;->access$000(Lcom/htc/protobuf/DynamicMessage$Builder;)Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistry;)Lcom/htc/protobuf/DynamicMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/htc/protobuf/DynamicMessage;->newBuilder(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DynamicMessage$Builder;

    #calls: Lcom/htc/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/htc/protobuf/DynamicMessage;
    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage$Builder;->access$000(Lcom/htc/protobuf/DynamicMessage$Builder;)Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/Descriptors$Descriptor;Ljava/io/InputStream;)Lcom/htc/protobuf/DynamicMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/htc/protobuf/DynamicMessage;->newBuilder(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DynamicMessage$Builder;

    #calls: Lcom/htc/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/htc/protobuf/DynamicMessage;
    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage$Builder;->access$000(Lcom/htc/protobuf/DynamicMessage$Builder;)Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/Descriptors$Descriptor;Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistry;)Lcom/htc/protobuf/DynamicMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/htc/protobuf/DynamicMessage;->newBuilder(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DynamicMessage$Builder;

    #calls: Lcom/htc/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/htc/protobuf/DynamicMessage;
    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage$Builder;->access$000(Lcom/htc/protobuf/DynamicMessage$Builder;)Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/Descriptors$Descriptor;[B)Lcom/htc/protobuf/DynamicMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/htc/protobuf/DynamicMessage;->newBuilder(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DynamicMessage$Builder;

    #calls: Lcom/htc/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/htc/protobuf/DynamicMessage;
    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage$Builder;->access$000(Lcom/htc/protobuf/DynamicMessage$Builder;)Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/Descriptors$Descriptor;[BLcom/htc/protobuf/ExtensionRegistry;)Lcom/htc/protobuf/DynamicMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/htc/protobuf/DynamicMessage;->newBuilder(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DynamicMessage$Builder;

    #calls: Lcom/htc/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/htc/protobuf/DynamicMessage;
    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage$Builder;->access$000(Lcom/htc/protobuf/DynamicMessage$Builder;)Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method private verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V
    .locals 2

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/htc/protobuf/FieldSet;->getAllFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DynamicMessage;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage;->getDefaultInstance(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage;->getDefaultInstanceForType()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage;->getDefaultInstanceForType()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v1, p1}, Lcom/htc/protobuf/FieldSet;->getField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/protobuf/DynamicMessage;->getDefaultInstance(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/htc/protobuf/FieldSet;->getRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedFieldCount(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result v0

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/htc/protobuf/DynamicMessage;->memoizedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/htc/protobuf/DynamicMessage;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-virtual {v2}, Lcom/htc/protobuf/Descriptors$Descriptor;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/protobuf/DynamicMessage;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v2}, Lcom/htc/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    iget-object v2, p0, Lcom/htc/protobuf/DynamicMessage;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSizeAsMessageSet()I

    move-result v2

    add-int/2addr v0, v2

    :goto_1
    iput v0, p0, Lcom/htc/protobuf/DynamicMessage;->memoizedSize:I

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/protobuf/DynamicMessage;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v2}, Lcom/htc/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    iget-object v2, p0, Lcom/htc/protobuf/DynamicMessage;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method public getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/FieldSet;->hasField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-static {v0, v1}, Lcom/htc/protobuf/DynamicMessage;->isInitialized(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 3

    new-instance v0, Lcom/htc/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/protobuf/DynamicMessage$Builder;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/DynamicMessage$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage;->newBuilderForType()Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage;->newBuilderForType()Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage;->newBuilderForType()Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage;->toBuilder()Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage;->toBuilder()Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$Descriptor;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/FieldSet;->writeMessageSetTo(Lcom/htc/protobuf/CodedOutputStream;)V

    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeAsMessageSetTo(Lcom/htc/protobuf/CodedOutputStream;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/FieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    goto :goto_0
.end method
