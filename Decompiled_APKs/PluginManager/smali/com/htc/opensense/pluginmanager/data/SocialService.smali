.class public Lcom/htc/opensense/pluginmanager/data/SocialService;
.super Ljava/lang/Object;
.source "SocialService.java"


# static fields
.field public static final ACCOUNTTYPE:Ljava/lang/String; = "accountType"

.field public static final CLAZZ:Ljava/lang/String; = "class"

.field private static final TAG_META:Ljava/lang/String; = "meta_data"


# instance fields
.field account_type:Ljava/lang/String;

.field private clazz:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/pluginmanager/data/SocialService;->account_type:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/pluginmanager/data/SocialService;->clazz:Ljava/lang/String;

    return-void
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/htc/opensense/pluginmanager/data/SocialService;
    .locals 7
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 20
    new-instance v2, Lcom/htc/opensense/pluginmanager/data/SocialService;

    invoke-direct {v2}, Lcom/htc/opensense/pluginmanager/data/SocialService;-><init>()V

    .line 22
    .local v2, service:Lcom/htc/opensense/pluginmanager/data/SocialService;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v4, v6, :cond_0

    const-string v4, "meta_data"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 24
    :cond_0
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Illegal access"

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 26
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 27
    .local v0, attributeCount:I
    if-nez v0, :cond_2

    .line 28
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Service name must be specified!"

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 30
    :cond_2
    if-lez v0, :cond_4

    .line 31
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 32
    const-string v4, "name"

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 33
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/opensense/pluginmanager/data/SocialService;->name:Ljava/lang/String;

    .line 31
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v1           #i:I
    :cond_4
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    const-string v4, "meta_data"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 40
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v4, v6, :cond_6

    .line 41
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, tagName:Ljava/lang/String;
    const-string v4, "accountType"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 44
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/opensense/pluginmanager/data/SocialService;->account_type:Ljava/lang/String;

    .line 49
    .end local v3           #tagName:Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1

    .line 45
    .restart local v3       #tagName:Ljava/lang/String;
    :cond_7
    const-string v4, "class"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 46
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/opensense/pluginmanager/data/SocialService;->clazz:Ljava/lang/String;

    goto :goto_2

    .line 52
    .end local v3           #tagName:Ljava/lang/String;
    :cond_8
    return-object v2
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/pluginmanager/data/SocialService;->account_type:Ljava/lang/String;

    return-object v0
.end method

.method public getClazz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/opensense/pluginmanager/data/SocialService;->clazz:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/opensense/pluginmanager/data/SocialService;->name:Ljava/lang/String;

    return-object v0
.end method
