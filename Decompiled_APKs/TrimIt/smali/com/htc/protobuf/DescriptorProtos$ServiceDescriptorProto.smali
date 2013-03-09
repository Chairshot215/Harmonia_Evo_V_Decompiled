.class public final Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    }
.end annotation


# static fields
.field public static final METHOD_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;


# instance fields
.field private hasName:Z

.field private hasOptions:Z

.field private memoizedSerializedSize:I

.field private method_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;

.field private options_:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3789
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 4201
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 4205
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    .line 4206
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3787
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 3811
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/String;

    .line 3817
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    .line 3830
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    .line 3858
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedSerializedSize:I

    .line 3787
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3784
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    return-void
.end method

.method static synthetic access$9200(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3784
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3784
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9302(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3784
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasName:Z

    return p1
.end method

.method static synthetic access$9402(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3784
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9502(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3784
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasOptions:Z

    return p1
.end method

.method static synthetic access$9600(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3784
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method static synthetic access$9602(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3784
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 3791
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3800
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$8700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 3939
    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$9000()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 3942
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3917
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8900(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3923
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8900(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3884
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8900(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3890
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8900(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3929
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8900(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3935
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8900(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3906
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8900(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3912
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8900(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3895
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8900(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3901
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8900(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .prologue
    .line 3795
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3784
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3784
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(I)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 3824
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public getMethodCount()I
    .locals 1

    .prologue
    .line 3822
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMethodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3820
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3813
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 3832
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 3860
    iget v2, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedSerializedSize:I

    .line 3861
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 3878
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 3863
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 3864
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasName()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3865
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3868
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethodList()Ljava/util/List;

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

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 3869
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    const/4 v4, 0x2

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 3872
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasOptions()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3873
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3876
    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 3877
    iput v2, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedSerializedSize:I

    move v3, v2

    .line 3878
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 3812
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasName:Z

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 3831
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasOptions:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3805
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$8800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3835
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethodList()Ljava/util/List;

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

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 3836
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3841
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    :cond_1
    :goto_0
    return v2

    .line 3838
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3839
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3841
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 3940
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3784
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3784
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 3944
    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3784
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3784
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

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
    .line 3846
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3847
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3849
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethodList()Ljava/util/List;

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

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 3850
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 3852
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasOptions()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3853
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 3855
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 3856
    return-void
.end method
