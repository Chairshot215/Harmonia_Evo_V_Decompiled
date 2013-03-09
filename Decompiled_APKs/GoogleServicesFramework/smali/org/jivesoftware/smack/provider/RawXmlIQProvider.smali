.class public Lorg/jivesoftware/smack/provider/RawXmlIQProvider;
.super Ljava/lang/Object;
.source "RawXmlIQProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not get called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "should not get called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "use parseRawXml()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseRawXml(Ljava/lang/String;Ljava/lang/String;[B)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .parameter "elementName"
    .parameter "namespace"
    .parameter "xmlBytes"

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .local v0, iq:Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->setExtension(Ljava/lang/String;)V

    .line 41
    return-object v0
.end method
