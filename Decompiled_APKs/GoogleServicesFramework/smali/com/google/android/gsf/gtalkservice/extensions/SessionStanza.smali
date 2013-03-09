.class public Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "SessionStanza.java"


# instance fields
.field private mRawStanza:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 43
    return-void
.end method

.method private validateRawXml(Ljava/lang/String;)Z
    .locals 1
    .parameter "stanza"

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;->mRawStanza:Ljava/lang/String;

    return-object v0
.end method

.method protected getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lorg/jivesoftware/smack/packet/IQ;->getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public setSessionRawXml(Ljava/lang/String;)V
    .locals 1
    .parameter "stanza"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;->validateRawXml(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;->mRawStanza:Ljava/lang/String;

    .line 49
    :cond_0
    return-void
.end method
