.class public final Lcom/htc/protobuf/DescriptorProtos$FileOptions;
.super Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;,
        Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$FileOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final JAVA_MULTIPLE_FILES_FIELD_NUMBER:I = 0xa

.field public static final JAVA_OUTER_CLASSNAME_FIELD_NUMBER:I = 0x8

.field public static final JAVA_PACKAGE_FIELD_NUMBER:I = 0x1

.field public static final OPTIMIZE_FOR_FIELD_NUMBER:I = 0x9

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FileOptions;


# instance fields
.field private hasJavaMultipleFiles:Z

.field private hasJavaOuterClassname:Z

.field private hasJavaPackage:Z

.field private hasOptimizeFor:Z

.field private javaMultipleFiles_:Z

.field private javaOuterClassname_:Ljava/lang/String;

.field private javaPackage_:Ljava/lang/String;

.field private memoizedSerializedSize:I

.field private optimizeFor_:Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

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
    .line 4635
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .line 5184
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 5188
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    .line 5189
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4633
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 4724
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/String;

    .line 4731
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/String;

    .line 4738
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    .line 4745
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 4751
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 4792
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->memoizedSerializedSize:I

    .line 4633
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4629
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;-><init>()V

    return-void
.end method

.method static synthetic access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4629
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4629
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11602(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4629
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage:Z

    return p1
.end method

.method static synthetic access$11702(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4629
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11802(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4629
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname:Z

    return p1
.end method

.method static synthetic access$11902(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4629
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12002(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4629
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles:Z

    return p1
.end method

.method static synthetic access$12102(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4629
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    return p1
.end method

.method static synthetic access$12202(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4629
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor:Z

    return p1
.end method

.method static synthetic access$12302(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4629
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 4637
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4646
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$11000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 4882
    #calls: Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->access$11300()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 4885
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4860
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->access$11200(Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4866
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->access$11200(Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4827
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->access$11200(Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4833
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->access$11200(Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4872
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->access$11200(Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4878
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->access$11200(Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4849
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->access$11200(Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4855
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->access$11200(Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4838
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->access$11200(Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4844
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->access$11200(Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 4641
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 4629
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4629
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getJavaMultipleFiles()Z
    .locals 1

    .prologue
    .line 4740
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    return v0
.end method

.method public getJavaOuterClassname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4733
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4726
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/String;

    return-object v0
.end method

.method public getOptimizeFor()Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    .prologue
    .line 4747
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 4794
    iget v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->memoizedSerializedSize:I

    .line 4795
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 4821
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 4797
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 4798
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4799
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 4802
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4803
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 4806
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4807
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getOptimizeFor()Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 4810
    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4811
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 4814
    :cond_4
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    .line 4815
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    const/16 v4, 0x3e7

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 4818
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->extensionsSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 4819
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 4820
    iput v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->memoizedSerializedSize:I

    move v3, v2

    .line 4821
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 4758
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 4756
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 4754
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public hasJavaMultipleFiles()Z
    .locals 1

    .prologue
    .line 4739
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles:Z

    return v0
.end method

.method public hasJavaOuterClassname()Z
    .locals 1

    .prologue
    .line 4732
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname:Z

    return v0
.end method

.method public hasJavaPackage()Z
    .locals 1

    .prologue
    .line 4725
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage:Z

    return v0
.end method

.method public hasOptimizeFor()Z
    .locals 1

    .prologue
    .line 4746
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4651
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$11100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4762
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionList()Ljava/util/List;

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

    .line 4763
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4766
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_1
    :goto_0
    return v2

    .line 4765
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->extensionsAreInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4766
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 4883
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4629
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4629
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 4887
    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4629
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4629
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4772
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newExtensionWriter()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v1

    .line 4773
    .local v1, extensionWriter:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4774
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4776
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4777
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4779
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4780
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getOptimizeFor()Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->getNumber()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4782
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4783
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4785
    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    .line 4786
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 4788
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_4
    const/high16 v3, 0x2000

    invoke-virtual {v1, v3, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/htc/protobuf/CodedOutputStream;)V

    .line 4789
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 4790
    return-void
.end method
