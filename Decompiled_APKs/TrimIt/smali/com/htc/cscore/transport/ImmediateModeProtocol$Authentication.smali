.class public final Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "ImmediateModeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ImmediateModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Authentication"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
    }
.end annotation


# static fields
.field public static final AUTHTICKET_FIELD_NUMBER:I = 0x1

.field public static final EMAIL_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;


# instance fields
.field private authTicket_:Ljava/lang/String;

.field private email_:Ljava/lang/String;

.field private hasAuthTicket:Z

.field private hasEmail:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 631
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    .line 932
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 936
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internalForceInit()V

    .line 937
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 653
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->authTicket_:Ljava/lang/String;

    .line 660
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->email_:Ljava/lang/String;

    .line 681
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->memoizedSerializedSize:I

    .line 629
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/ImmediateModeProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;-><init>()V

    return-void
.end method

.method static synthetic access$1902(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 626
    iput-boolean p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->hasAuthTicket:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 626
    iput-object p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->authTicket_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 626
    iput-boolean p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->hasEmail:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 626
    iput-object p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->email_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    .locals 1

    .prologue
    .line 633
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 642
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$1400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
    .locals 1

    .prologue
    .line 758
    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->create()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->access$1700()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 761
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->access$1600(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->access$1600(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 703
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->access$1600(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 709
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->access$1600(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->access$1600(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 754
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->access$1600(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->access$1600(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->access$1600(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 714
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->access$1600(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 720
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->access$1600(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthTicket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->authTicket_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    .locals 1

    .prologue
    .line 637
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 683
    iget v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->memoizedSerializedSize:I

    .line 684
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 697
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 686
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 687
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->hasAuthTicket()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 688
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getAuthTicket()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 691
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->hasEmail()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 692
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 695
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 696
    iput v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->memoizedSerializedSize:I

    move v1, v0

    .line 697
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasAuthTicket()Z
    .locals 1

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->hasAuthTicket:Z

    return v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->hasEmail:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 647
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$1500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 665
    iget-boolean v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->hasAuthTicket:Z

    if-nez v1, :cond_1

    .line 667
    :cond_0
    :goto_0
    return v0

    .line 666
    :cond_1
    iget-boolean v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->hasEmail:Z

    if-eqz v1, :cond_0

    .line 667
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
    .locals 1

    .prologue
    .line 759
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->newBuilderForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->newBuilderForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
    .locals 1

    .prologue
    .line 763
    invoke-static {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->newBuilder(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->toBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->toBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

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
    .line 672
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->hasAuthTicket()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getAuthTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 678
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 679
    return-void
.end method
