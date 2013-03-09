.class public final Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddMyProfile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    }
.end annotation


# static fields
.field public static final MYPROFILE_FIELD_NUMBER:I = 0x3f6

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;


# instance fields
.field private hasMyProfile:Z

.field private memoizedSerializedSize:I

.field private myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16137
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    .line 16417
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 16421
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 16422
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16135
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 16159
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 16177
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->memoizedSerializedSize:I

    .line 16135
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16132
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;-><init>()V

    return-void
.end method

.method static synthetic access$46602(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16132
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->hasMyProfile:Z

    return p1
.end method

.method static synthetic access$46700(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16132
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    return-object v0
.end method

.method static synthetic access$46702(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16132
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1

    .prologue
    .line 16139
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 16148
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$46100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    .locals 1

    .prologue
    .line 16250
    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->access$46400()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 16253
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16228
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->access$46300(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16234
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->access$46300(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16195
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->access$46300(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16201
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->access$46300(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16240
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->access$46300(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16246
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->access$46300(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16217
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->access$46300(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16223
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->access$46300(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16206
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->access$46300(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16212
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->access$46300(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1

    .prologue
    .line 16143
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 16132
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16132
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1

    .prologue
    .line 16161
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 16179
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->memoizedSerializedSize:I

    .line 16180
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 16189
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 16182
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 16183
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->hasMyProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16184
    const/16 v2, 0x3f6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 16187
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 16188
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->memoizedSerializedSize:I

    move v1, v0

    .line 16189
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasMyProfile()Z
    .locals 1

    .prologue
    .line 16160
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->hasMyProfile:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 16153
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$46200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 16164
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->hasMyProfile:Z

    if-nez v1, :cond_1

    .line 16166
    :cond_0
    :goto_0
    return v0

    .line 16165
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16166
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    .locals 1

    .prologue
    .line 16251
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 16132
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16132
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    .locals 1

    .prologue
    .line 16255
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 16132
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16132
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

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
    .line 16171
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->hasMyProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16172
    const/16 v0, 0x3f6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 16174
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 16175
    return-void
.end method
