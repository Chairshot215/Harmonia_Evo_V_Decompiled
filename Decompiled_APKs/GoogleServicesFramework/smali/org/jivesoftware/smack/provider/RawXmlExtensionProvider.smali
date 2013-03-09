.class public Lorg/jivesoftware/smack/provider/RawXmlExtensionProvider;
.super Ljava/lang/Object;
.source "RawXmlExtensionProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "should not get called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public parseExtension(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 2
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "should not get called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "use parseRawXml()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseRawXml(Ljava/lang/String;Ljava/lang/String;[B)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 2
    .parameter "elementName"
    .parameter "namespace"
    .parameter "xmlBytes"

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .local v0, extension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->setExtension(Ljava/lang/String;)V

    .line 34
    return-object v0
.end method
