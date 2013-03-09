.class public Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "JingleInfoQuery.java"


# instance fields
.field private mRawStanza:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;->mRawStanza:Ljava/lang/String;

    return-object v0
.end method

.method protected getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lorg/jivesoftware/smack/packet/IQ;->getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public makeQuery()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "query"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "google:jingleinfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;->mRawStanza:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setRawXml(Ljava/lang/String;)V
    .locals 0
    .parameter "rawXml"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;->mRawStanza:Ljava/lang/String;

    .line 36
    return-void
.end method
