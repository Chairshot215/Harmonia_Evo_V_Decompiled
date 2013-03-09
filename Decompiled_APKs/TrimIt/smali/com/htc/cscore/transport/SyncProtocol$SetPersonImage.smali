.class public final Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetPersonImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    }
.end annotation


# static fields
.field public static final PERSONIMAGE_FIELD_NUMBER:I = 0x232

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;


# instance fields
.field private hasPersonImage:Z

.field private memoizedSerializedSize:I

.field private personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3113
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    .line 3393
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 3397
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 3398
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3111
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 3135
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    .line 3153
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->memoizedSerializedSize:I

    .line 3111
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3108
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;-><init>()V

    return-void
.end method

.method static synthetic access$8502(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3108
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->hasPersonImage:Z

    return p1
.end method

.method static synthetic access$8600(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3108
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    return-object v0
.end method

.method static synthetic access$8602(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3108
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1

    .prologue
    .line 3115
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3124
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$8000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    .locals 1

    .prologue
    .line 3226
    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->access$8300()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 3229
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3204
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->access$8200(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3210
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->access$8200(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3171
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->access$8200(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3177
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->access$8200(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3216
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->access$8200(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3222
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->access$8200(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3193
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->access$8200(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3199
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->access$8200(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3182
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->access$8200(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3188
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->access$8200(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1

    .prologue
    .line 3119
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3108
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3108
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1

    .prologue
    .line 3137
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 3155
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->memoizedSerializedSize:I

    .line 3156
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3165
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 3158
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 3159
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->hasPersonImage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3160
    const/16 v2, 0x232

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3163
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 3164
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->memoizedSerializedSize:I

    move v1, v0

    .line 3165
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasPersonImage()Z
    .locals 1

    .prologue
    .line 3136
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->hasPersonImage:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3129
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$8100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3140
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->hasPersonImage:Z

    if-nez v1, :cond_1

    .line 3142
    :cond_0
    :goto_0
    return v0

    .line 3141
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3142
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    .locals 1

    .prologue
    .line 3227
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3108
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3108
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    .locals 1

    .prologue
    .line 3231
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3108
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3108
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3147
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->hasPersonImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3148
    const/16 v0, 0x232

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 3150
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 3151
    return-void
.end method
