.class public final Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
.super Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$ExtendableMessage",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$ServiceOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/google/protobuf/DescriptorProtos$ServiceOptions;


# instance fields
.field private memoizedSerializedSize:I

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7514
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    .line 7515
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->internalForceInit()V

    .line 7516
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->initFields()V

    .line 7517
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7184
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 7210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 7242
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedSerializedSize:I

    .line 7185
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->initFields()V

    .line 7186
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 7180
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 7187
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 7210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 7242
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedSerializedSize:I

    .line 7187
    return-void
.end method

.method static synthetic access$17100(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7180
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17102(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7180
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 7191
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7200
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$16600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 7221
    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1

    .prologue
    .line 7325
    #calls: Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16900()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 7328
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7294
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    .line 7295
    .local v0, builder:Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7296
    #calls: Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16800(Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v1

    .line 7298
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7305
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    .line 7306
    .local v0, builder:Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7307
    #calls: Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16800(Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v1

    .line 7309
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7261
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    #calls: Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16800(Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7267
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    #calls: Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16800(Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7315
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    #calls: Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16800(Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7321
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    #calls: Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16800(Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7283
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    #calls: Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16800(Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7289
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    #calls: Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16800(Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7272
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    #calls: Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16800(Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7278
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    #calls: Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16800(Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 7195
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7180
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7180
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 7244
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedSerializedSize:I

    .line 7245
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 7255
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 7247
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 7248
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOptionList()Ljava/util/List;

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

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 7249
    .local v0, element:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    const/16 v4, 0x3e7

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 7252
    .end local v0           #element:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->extensionsSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 7253
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 7254
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedSerializedSize:I

    move v3, v2

    .line 7255
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 7217
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 7215
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

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
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7213
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 7205
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$16700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 7223
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOptionList()Ljava/util/List;

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

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 7224
    .local v0, element:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7227
    .end local v0           #element:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_1
    :goto_0
    return v2

    .line 7226
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->extensionsAreInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7227
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1

    .prologue
    .line 7326
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7180
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7180
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1

    .prologue
    .line 7330
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilder(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7180
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7180
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7232
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getSerializedSize()I

    .line 7234
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v1

    .line 7235
    .local v1, extensionWriter:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOptionList()Ljava/util/List;

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

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 7236
    .local v0, element:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0

    .line 7238
    .end local v0           #element:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_0
    const/high16 v3, 0x2000

    invoke-virtual {v1, v3, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 7239
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 7240
    return-void
.end method
