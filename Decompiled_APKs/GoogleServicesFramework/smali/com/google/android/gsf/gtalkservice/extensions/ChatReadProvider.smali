.class public Lcom/google/android/gsf/gtalkservice/extensions/ChatReadProvider;
.super Ljava/lang/Object;
.source "ChatReadProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->CHAT_READ:Lcom/google/common/io/protocol/ProtoBufType;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x6

    return v0
.end method

.method public parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 3
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, user:Ljava/lang/String;
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, read:Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;
    return-object v0
.end method

.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 32
    .local v0, event:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 33
    const/4 v1, 0x0

    .line 42
    :goto_0
    return-object v1

    .line 35
    :cond_1
    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 40
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, user:Ljava/lang/String;
    new-instance v1, Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;

    invoke-direct {v1, v2}, Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, read:Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;
    goto :goto_0
.end method
