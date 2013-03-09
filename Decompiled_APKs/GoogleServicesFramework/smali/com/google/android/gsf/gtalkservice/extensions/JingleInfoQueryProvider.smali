.class public Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQueryProvider;
.super Lorg/jivesoftware/smack/provider/RawXmlIQProvider;
.source "JingleInfoQueryProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
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
    .line 11
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;-><init>()V

    .line 12
    .local v0, query:Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;->setRawXml(Ljava/lang/String;)V

    .line 13
    return-object v0
.end method
