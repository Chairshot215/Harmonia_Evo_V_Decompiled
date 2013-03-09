.class public final Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClearMissedCallsByPhoneNumber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
    }
.end annotation


# static fields
.field public static final PHONENUMBER_FIELD_NUMBER:I = 0x69e

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;


# instance fields
.field private hasPhoneNumber:Z

.field private memoizedSerializedSize:I

.field private phoneNumber_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43937
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    .line 44195
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 44199
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 44200
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43935
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 43959
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->phoneNumber_:Ljava/lang/String;

    .line 43976
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->memoizedSerializedSize:I

    .line 43935
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43932
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;-><init>()V

    return-void
.end method

.method static synthetic access$128802(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43932
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->hasPhoneNumber:Z

    return p1
.end method

.method static synthetic access$128902(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43932
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->phoneNumber_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1

    .prologue
    .line 43939
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 43948
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$128300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
    .locals 1

    .prologue
    .line 44049
    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->access$128600()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 44052
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44027
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->access$128500(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44033
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->access$128500(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43994
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->access$128500(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44000
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->access$128500(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44039
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->access$128500(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44045
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->access$128500(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44016
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->access$128500(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44022
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->access$128500(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44005
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->access$128500(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44011
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->access$128500(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1

    .prologue
    .line 43943
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 43932
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 43932
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43961
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->phoneNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 43978
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->memoizedSerializedSize:I

    .line 43979
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 43988
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 43981
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 43982
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->hasPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43983
    const/16 v2, 0x69e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 43986
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 43987
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->memoizedSerializedSize:I

    move v1, v0

    .line 43988
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasPhoneNumber()Z
    .locals 1

    .prologue
    .line 43960
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->hasPhoneNumber:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 43953
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$128400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 43964
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->hasPhoneNumber:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 43965
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
    .locals 1

    .prologue
    .line 44050
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 43932
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 43932
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
    .locals 1

    .prologue
    .line 44054
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 43932
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 43932
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

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
    .line 43970
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43971
    const/16 v0, 0x69e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 43973
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 43974
    return-void
.end method
