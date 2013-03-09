.class public final Lcom/futuredial/serializer/PhoneSetting$SettingModule;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PhoneSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/serializer/PhoneSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingModule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    }
.end annotation


# static fields
.field public static final COM_CLASS_NAME_FIELD_NUMBER:I = 0x2

.field public static final COM_POLICY_FIELD_NUMBER:I = 0x3

.field public static final COM_UUID_FIELD_NUMBER:I = 0x4

.field public static final MODULE_TYPE_FIELD_NUMBER:I = 0x1

.field public static final PARSER_CLASS_NAME_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/futuredial/serializer/PhoneSetting$SettingModule;


# instance fields
.field private comClassName_:Ljava/lang/String;

.field private comPolicy_:Ljava/lang/String;

.field private comUuid_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasComClassName:Z

.field private hasComPolicy:Z

.field private hasModuleType:Z

.field private hasParserClassName:Z

.field private memoizedSerializedSize:I

.field private moduleType_:Ljava/lang/String;

.field private parserClassName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 495
    new-instance v0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;-><init>(Z)V

    sput-object v0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->defaultInstance:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 496
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting;->internalForceInit()V

    .line 497
    sget-object v0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->defaultInstance:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-direct {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->initFields()V

    .line 498
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->moduleType_:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comClassName_:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comPolicy_:Ljava/lang/String;

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->parserClassName_:Ljava/lang/String;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->memoizedSerializedSize:I

    .line 15
    invoke-direct {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/futuredial/serializer/PhoneSetting$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->moduleType_:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comClassName_:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comPolicy_:Ljava/lang/String;

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->parserClassName_:Ljava/lang/String;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->memoizedSerializedSize:I

    .line 17
    return-void
.end method

.method static synthetic access$1002(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasComPolicy:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comPolicy_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasParserClassName:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->parserClassName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasModuleType:Z

    return p1
.end method

.method static synthetic access$702(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->moduleType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasComClassName:Z

    return p1
.end method

.method static synthetic access$902(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comClassName_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->defaultInstance:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public static newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 1

    .prologue
    .line 209
    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->create()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->access$300()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 212
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    .line 179
    .local v0, builder:Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->access$200(Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    .line 182
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    .line 190
    .local v0, builder:Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->access$200(Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    .line 193
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->access$200(Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->access$200(Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->access$200(Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->access$200(Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->access$200(Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->access$200(Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->access$200(Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->access$200(Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getComClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comClassName_:Ljava/lang/String;

    return-object v0
.end method

.method public getComPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comPolicy_:Ljava/lang/String;

    return-object v0
.end method

.method public getComUuid(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getComUuidCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getComUuidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->defaultInstance:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstanceForType()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstanceForType()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public getModuleType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->moduleType_:Ljava/lang/String;

    return-object v0
.end method

.method public getParserClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->parserClassName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 108
    iget v3, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->memoizedSerializedSize:I

    .line 109
    .local v3, size:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    move v4, v3

    .line 139
    .end local v3           #size:I
    .local v4, size:I
    :goto_0
    return v4

    .line 111
    .end local v4           #size:I
    .restart local v3       #size:I
    :cond_0
    const/4 v3, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasModuleType()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 113
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getModuleType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasComClassName()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 117
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasComPolicy()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 121
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComPolicy()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 125
    :cond_3
    const/4 v0, 0x0

    .line 126
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComUuidList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    .line 130
    .end local v1           #element:Ljava/lang/String;
    :cond_4
    add-int/2addr v3, v0

    .line 131
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComUuidList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    .line 133
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasParserClassName()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 134
    const/4 v5, 0x5

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getParserClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 137
    :cond_5
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v5

    add-int/2addr v3, v5

    .line 138
    iput v3, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->memoizedSerializedSize:I

    move v4, v3

    .line 139
    .end local v3           #size:I
    .restart local v4       #size:I
    goto :goto_0
.end method

.method public hasComClassName()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasComClassName:Z

    return v0
.end method

.method public hasComPolicy()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasComPolicy:Z

    return v0
.end method

.method public hasModuleType()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasModuleType:Z

    return v0
.end method

.method public hasParserClassName()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasParserClassName:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasModuleType:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilderForType()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilderForType()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 1

    .prologue
    .line 214
    invoke-static {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->newBuilder(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->toBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->toBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

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
    .line 87
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getSerializedSize()I

    .line 88
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasModuleType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getModuleType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasComClassName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasComPolicy()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComUuidList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v0           #element:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasParserClassName()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getParserClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 103
    :cond_4
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 104
    return-void
.end method
