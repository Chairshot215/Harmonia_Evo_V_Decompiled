.class public final Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    }
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;


# instance fields
.field private hasName:Z

.field private hasOptions:Z

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;

.field private options_:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

.field private value_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2989
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 3401
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 3405
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    .line 3406
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2987
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 3011
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/String;

    .line 3017
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    .line 3030
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    .line 3058
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->memoizedSerializedSize:I

    .line 2987
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2984
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>()V

    return-void
.end method

.method static synthetic access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2984
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2984
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7202(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2984
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName:Z

    return p1
.end method

.method static synthetic access$7302(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2984
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7402(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2984
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions:Z

    return p1
.end method

.method static synthetic access$7500(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2984
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    return-object v0
.end method

.method static synthetic access$7502(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2984
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 2991
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3000
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$6600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 3139
    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->access$6900()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 3142
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3117
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->access$6800(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3123
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->access$6800(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3084
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->access$6800(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3090
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->access$6800(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3129
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->access$6800(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3135
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->access$6800(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3106
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->access$6800(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3112
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->access$6800(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3095
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->access$6800(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3101
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->access$6800(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 2995
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2984
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2984
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3013
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 3032
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 3060
    iget v2, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->memoizedSerializedSize:I

    .line 3061
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 3078
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 3063
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 3064
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3065
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3068
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 3069
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    const/4 v4, 0x2

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 3072
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3073
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3076
    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 3077
    iput v2, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->memoizedSerializedSize:I

    move v3, v2

    .line 3078
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public getValue(I)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 3024
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public getValueCount()I
    .locals 1

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3020
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 3012
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName:Z

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 3031
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3005
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$6700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3035
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueList()Ljava/util/List;

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

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 3036
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3041
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    :cond_1
    :goto_0
    return v2

    .line 3038
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3039
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3041
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 3140
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2984
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2984
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 3144
    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2984
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2984
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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
    .line 3046
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3047
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3049
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 3050
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 3052
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3053
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 3055
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 3056
    return-void
.end method
