.class public Lcom/google/android/gsf/gtalkservice/extensions/SessionStanzaProvider;
.super Lorg/jivesoftware/smack/provider/RawXmlIQProvider;
.source "SessionStanzaProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/RawXmlIQProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public parseRawXml(Ljava/lang/String;Ljava/lang/String;[B)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .parameter "elementName"
    .parameter "namespace"
    .parameter "xmlBytes"

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;-><init>()V

    .line 26
    .local v0, sessionStanza:Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;->setSessionRawXml(Ljava/lang/String;)V

    .line 27
    return-object v0
.end method
