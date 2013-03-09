.class public Lcom/htc/opensense/pluginmanager/data/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# static fields
.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final TAG_CLASS:Ljava/lang/String; = "class"

.field private static final TAG_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final TAG_FEATURE:Ljava/lang/String; = "feature"

.field private static final TAG_PLUGIN:Ljava/lang/String; = "plugin"

.field private static final TAG_PLUGIN_META:Ljava/lang/String; = "plugin_meta"


# instance fields
.field className:Ljava/lang/String;

.field description:Ljava/lang/String;

.field feature:Ljava/lang/String;

.field pluginMeta:Ljava/lang/String;

.field version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/pluginmanager/data/Plugin;->version:I

    .line 16
    iput-object v1, p0, Lcom/htc/opensense/pluginmanager/data/Plugin;->feature:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/htc/opensense/pluginmanager/data/Plugin;->className:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/htc/opensense/pluginmanager/data/Plugin;->description:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/htc/opensense/pluginmanager/data/Plugin;->pluginMeta:Ljava/lang/String;

    return-void
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/htc/opensense/pluginmanager/data/Plugin;
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 24
    new-instance v3, Lcom/htc/opensense/pluginmanager/data/Plugin;

    invoke-direct {v3}, Lcom/htc/opensense/pluginmanager/data/Plugin;-><init>()V

    .line 26
    .local v3, p:Lcom/htc/opensense/pluginmanager/data/Plugin;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, v7, :cond_0

    const-string v5, "plugin"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 28
    :cond_0
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Illegal access"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 30
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 31
    .local v0, attributeCount:I
    if-lez v0, :cond_3

    .line 32
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 33
    const-string v5, "version"

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 35
    :try_start_0
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/htc/opensense/pluginmanager/data/Plugin;->version:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 43
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #i:I
    :cond_3
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    const-string v5, "plugin"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 44
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 45
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, tagName:Ljava/lang/String;
    const-string v5, "feature"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 48
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/opensense/pluginmanager/data/Plugin;->feature:Ljava/lang/String;

    .line 58
    .end local v4           #tagName:Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1

    .line 49
    .restart local v4       #tagName:Ljava/lang/String;
    :cond_6
    const-string v5, "class"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 50
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/opensense/pluginmanager/data/Plugin;->className:Ljava/lang/String;

    goto :goto_2

    .line 51
    :cond_7
    const-string v5, "description"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 52
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/opensense/pluginmanager/data/Plugin;->description:Ljava/lang/String;

    goto :goto_2

    .line 54
    :cond_8
    const-string v5, "plugin_meta"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 55
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/opensense/pluginmanager/data/Plugin;->pluginMeta:Ljava/lang/String;

    goto :goto_2

    .line 61
    .end local v4           #tagName:Ljava/lang/String;
    :cond_9
    iget-object v5, v3, Lcom/htc/opensense/pluginmanager/data/Plugin;->className:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, v3, Lcom/htc/opensense/pluginmanager/data/Plugin;->feature:Ljava/lang/String;

    if-nez v5, :cond_b

    .line 62
    :cond_a
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Class or Feature is not specified"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 65
    :cond_b
    return-object v3
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/opensense/pluginmanager/data/Plugin;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/opensense/pluginmanager/data/Plugin;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFeature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/opensense/pluginmanager/data/Plugin;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginMeta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/opensense/pluginmanager/data/Plugin;->pluginMeta:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/opensense/pluginmanager/data/Plugin;->version:I

    return v0
.end method
