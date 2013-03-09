.class public Lcom/google/android/videochat/util/IqResponseParser;
.super Ljava/lang/Object;
.source "IqResponseParser.java"


# static fields
.field private static final ATTR_FROM_NS:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mFrom:Ljava/lang/String;

.field public final mRawStanza:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vclib:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/android/videochat/util/IqResponseParser;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/videochat/util/IqResponseParser;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/videochat/util/IqResponseParser;->ATTR_FROM_NS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .parameter "stanza"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/videochat/util/IqResponseParser;->mRawStanza:Ljava/lang/String;

    .line 29
    const/4 v4, 0x0

    .line 31
    .local v4, from:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/google/android/videochat/util/IqResponseParser;->mRawStanza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/videochat/util/IqResponseParser;->makeParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 35
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 36
    .local v3, eventType:I
    :goto_0
    const/4 v6, 0x1

    if-eq v3, v6, :cond_0

    .line 37
    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    .line 38
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, elemName:Ljava/lang/String;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, elemNs:Ljava/lang/String;
    const-string v6, "iq"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "jabber:client"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 42
    sget-object v6, Lcom/google/android/videochat/util/IqResponseParser;->ATTR_FROM_NS:Ljava/lang/String;

    const-string v7, "from"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 51
    .end local v1           #elemName:Ljava/lang/String;
    .end local v2           #elemNs:Ljava/lang/String;
    .end local v3           #eventType:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_1
    iput-object v4, p0, Lcom/google/android/videochat/util/IqResponseParser;->mFrom:Ljava/lang/String;

    .line 52
    return-void

    .line 46
    .restart local v3       #eventType:I
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :try_start_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0

    .line 48
    .end local v3           #eventType:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/Exception;
    sget-object v6, Lcom/google/android/videochat/util/IqResponseParser;->TAG:Ljava/lang/String;

    const-string v7, "Couldn\'t parse stanza"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static makeParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 3
    .parameter "stanza"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 60
    .local v0, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 61
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 63
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 65
    return-object v1
.end method


# virtual methods
.method public isValidIqResponse()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/videochat/util/IqResponseParser;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
