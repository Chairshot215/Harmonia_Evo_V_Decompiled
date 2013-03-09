.class public Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "ExtensibleIQ.java"


# instance fields
.field private mElementName:Ljava/lang/String;

.field private mExtension:Ljava/lang/String;

.field private mNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->setElementName(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->setNamespace(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->mExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->mElementName:Ljava/lang/String;

    return-object v0
.end method

.method protected getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lorg/jivesoftware/smack/packet/IQ;->getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public setElementName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->mElementName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0
    .parameter "extension"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->mExtension:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .parameter "ns"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->mNamespace:Ljava/lang/String;

    .line 44
    return-void
.end method
