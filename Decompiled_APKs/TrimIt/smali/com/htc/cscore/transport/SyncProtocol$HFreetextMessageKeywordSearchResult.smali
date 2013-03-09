.class public final Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HFreetextMessageKeywordSearchResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final KEY_FIELD_NUMBER:I = 0x25c

.field public static final RANK_FIELD_NUMBER:I = 0x33d

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;


# instance fields
.field private hasId:Z

.field private hasKEY:Z

.field private hasRANK:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private kEY_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private rANK_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10149
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    .line 10535
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 10539
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 10540
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10147
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 10171
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 10178
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->kEY_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 10185
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->rANK_:I

    .line 10213
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->memoizedSerializedSize:I

    .line 10147
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10144
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;-><init>()V

    return-void
.end method

.method static synthetic access$30002(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10144
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasId:Z

    return p1
.end method

.method static synthetic access$30100(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10144
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$30102(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10144
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$30202(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10144
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasKEY:Z

    return p1
.end method

.method static synthetic access$30300(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10144
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->kEY_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$30302(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10144
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->kEY_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$30402(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10144
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasRANK:Z

    return p1
.end method

.method static synthetic access$30502(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10144
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->rANK_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1

    .prologue
    .line 10151
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10160
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$29500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 1

    .prologue
    .line 10294
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29800()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 10297
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10272
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10278
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10239
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10245
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10284
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10290
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10261
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10267
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10250
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10256
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1

    .prologue
    .line 10155
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 10144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 10173
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getKEY()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 10180
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->kEY_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getRANK()I
    .locals 1

    .prologue
    .line 10187
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->rANK_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 10215
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->memoizedSerializedSize:I

    .line 10216
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 10233
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 10218
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 10219
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasKEY()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10220
    const/16 v2, 0x25c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getKEY()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10223
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasRANK()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10224
    const/16 v2, 0x33d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getRANK()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10227
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10228
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10231
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 10232
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->memoizedSerializedSize:I

    move v1, v0

    .line 10233
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 10172
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasId:Z

    return v0
.end method

.method public hasKEY()Z
    .locals 1

    .prologue
    .line 10179
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasKEY:Z

    return v0
.end method

.method public hasRANK()Z
    .locals 1

    .prologue
    .line 10186
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasRANK:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 10165
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$29600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10190
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10191
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10196
    :cond_0
    :goto_0
    return v0

    .line 10193
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasKEY()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10194
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getKEY()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10196
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 1

    .prologue
    .line 10295
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 1

    .prologue
    .line 10299
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10144
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

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
    .line 10201
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasKEY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10202
    const/16 v0, 0x25c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getKEY()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 10204
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasRANK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10205
    const/16 v0, 0x33d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getRANK()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10207
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10208
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 10210
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 10211
    return-void
.end method
