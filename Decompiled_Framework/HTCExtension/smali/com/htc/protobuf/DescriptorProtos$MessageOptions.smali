.class public final Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
.super Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$MessageOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final MESSAGE_SET_WIRE_FORMAT_FIELD_NUMBER:I = 0x1

.field public static final NO_STANDARD_DESCRIPTOR_ACCESSOR_FIELD_NUMBER:I = 0x2

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;


# instance fields
.field private hasMessageSetWireFormat:Z

.field private hasNoStandardDescriptorAccessor:Z

.field private memoizedSerializedSize:I

.field private messageSetWireFormat_:Z

.field private noStandardDescriptorAccessor_:Z

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    iput-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    iput-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;-><init>()V

    return-void
.end method

.method static synthetic access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12902(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$13002(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat:Z

    return p1
.end method

.method static synthetic access$13102(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    return p1
.end method

.method static synthetic access$13202(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor:Z

    return p1
.end method

.method static synthetic access$13302(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$12400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12700()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public getMessageSetWireFormat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    return v0
.end method

.method public getNoStandardDescriptorAccessor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    iget v2, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->memoizedSerializedSize:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    :goto_0
    return v3

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getNoStandardDescriptorAccessor()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const/16 v4, 0x3e7

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->extensionsSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->memoizedSerializedSize:I

    move v3, v2

    goto :goto_0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public hasMessageSetWireFormat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat:Z

    return v0
.end method

.method public hasNoStandardDescriptorAccessor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$12500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->extensionsAreInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

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

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newExtensionWriter()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getNoStandardDescriptorAccessor()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    :cond_2
    const/high16 v3, 0x2000

    invoke-virtual {v1, v3, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/htc/protobuf/CodedOutputStream;)V

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    return-void
.end method
