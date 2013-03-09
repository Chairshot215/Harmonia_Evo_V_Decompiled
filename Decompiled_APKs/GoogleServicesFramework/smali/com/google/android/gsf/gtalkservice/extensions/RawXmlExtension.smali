.class public Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
.super Ljava/lang/Object;
.source "RawXmlExtension.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# instance fields
.field private mElementName:Ljava/lang/String;

.field private mExtension:Ljava/lang/String;

.field private mNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->mElementName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->mNamespace:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->mElementName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0
    .parameter "extension"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->mExtension:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->toXML()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, xml:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 59
    :cond_0
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->EXTENSION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 60
    .local v0, extension:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 62
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public toXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->mExtension:Ljava/lang/String;

    return-object v0
.end method
