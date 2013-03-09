.class public final Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
.super Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$EnumOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;


# instance fields
.field private memoizedSerializedSize:I

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

    .prologue
    .line 6159
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    .line 6470
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 6474
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    .line 6475
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6157
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 6180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    .line 6209
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->memoizedSerializedSize:I

    .line 6157
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6153
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;-><init>()V

    return-void
.end method

.method static synthetic access$15300(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6153
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$15302(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6153
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 6161
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6170
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$14800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .prologue
    .line 6283
    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15100()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 6286
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6261
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6267
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6228
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6234
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6273
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6279
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6250
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6256
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6239
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6245
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 6165
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 6153
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6153
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 6211
    iget v2, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->memoizedSerializedSize:I

    .line 6212
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 6222
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 6214
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 6215
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    .line 6216
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    const/16 v4, 0x3e7

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 6219
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->extensionsSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 6220
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 6221
    iput v2, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->memoizedSerializedSize:I

    move v3, v2

    .line 6222
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 6187
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 6185
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

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

    .prologue
    .line 6183
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6175
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$14900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 6191
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    .line 6192
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6195
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_1
    :goto_0
    return v2

    .line 6194
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->extensionsAreInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6195
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .prologue
    .line 6284
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6153
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6153
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .prologue
    .line 6288
    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6153
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6153
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6201
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newExtensionWriter()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v1

    .line 6202
    .local v1, extensionWriter:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    .line 6203
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 6205
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_0
    const/high16 v3, 0x2000

    invoke-virtual {v1, v3, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/htc/protobuf/CodedOutputStream;)V

    .line 6206
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 6207
    return-void
.end method
