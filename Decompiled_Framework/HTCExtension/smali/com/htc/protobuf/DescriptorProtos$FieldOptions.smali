.class public final Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
.super Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;,
        Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$FieldOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final CTYPE_FIELD_NUMBER:I = 0x1

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x3

.field public static final EXPERIMENTAL_MAP_KEY_FIELD_NUMBER:I = 0x9

.field public static final PACKED_FIELD_NUMBER:I = 0x2

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;


# instance fields
.field private ctype_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

.field private deprecated_:Z

.field private experimentalMapKey_:Ljava/lang/String;

.field private hasCtype:Z

.field private hasDeprecated:Z

.field private hasExperimentalMapKey:Z

.field private hasPacked:Z

.field private memoizedSerializedSize:I

.field private packed_:Z

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

    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->CORD:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->ctype_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    iput-boolean v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->packed_:Z

    iput-boolean v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->deprecated_:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;-><init>()V

    return-void
.end method

.method static synthetic access$13900(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13902(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14002(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasCtype:Z

    return p1
.end method

.method static synthetic access$14102(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 0

    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->ctype_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    return-object p1
.end method

.method static synthetic access$14202(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasPacked:Z

    return p1
.end method

.method static synthetic access$14302(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->packed_:Z

    return p1
.end method

.method static synthetic access$14402(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated:Z

    return p1
.end method

.method static synthetic access$14502(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->deprecated_:Z

    return p1
.end method

.method static synthetic access$14602(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasExperimentalMapKey:Z

    return p1
.end method

.method static synthetic access$14702(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$13400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13700()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCtype()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->ctype_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->deprecated_:Z

    return v0
.end method

.method public getExperimentalMapKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getPacked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->packed_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    iget v2, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->memoizedSerializedSize:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    :goto_0
    return v3

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasCtype()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getCtype()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDeprecated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasExperimentalMapKey()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getExperimentalMapKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_4
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const/16 v4, 0x3e7

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->extensionsSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->memoizedSerializedSize:I

    move v3, v2

    goto :goto_0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public hasCtype()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasCtype:Z

    return v0
.end method

.method public hasDeprecated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated:Z

    return v0
.end method

.method public hasExperimentalMapKey()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasExperimentalMapKey:Z

    return v0
.end method

.method public hasPacked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasPacked:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$13500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOptionList()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->extensionsAreInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

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

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newExtensionWriter()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasCtype()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getCtype()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->getNumber()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDeprecated()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasExperimentalMapKey()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getExperimentalMapKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    :cond_4
    const/high16 v3, 0x2000

    invoke-virtual {v1, v3, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/htc/protobuf/CodedOutputStream;)V

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    return-void
.end method
