.class public Lcom/htc/opensense/pluginmanager/data/PluginPackage;
.super Ljava/lang/Object;
.source "PluginPackage.java"


# static fields
.field private static final ATTR_CERTIFICATION:Ljava/lang/String; = "certification"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final LOG_TAG:Ljava/lang/String; = "PluginManager"

.field private static final TAG_META_DATA:Ljava/lang/String; = "meta_data"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pluginpackage"

.field private static final TAG_PLUGIN:Ljava/lang/String; = "plugin"


# instance fields
.field certification:Ljava/lang/String;

.field name:Ljava/lang/String;

.field plugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/pluginmanager/data/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/pluginmanager/data/MetaData;",
            ">;"
        }
    .end annotation
.end field

.field version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->plugins:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->services:Ljava/util/ArrayList;

    return-void
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/htc/opensense/pluginmanager/data/PluginPackage;
    .locals 9
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 28
    new-instance v3, Lcom/htc/opensense/pluginmanager/data/PluginPackage;

    invoke-direct {v3}, Lcom/htc/opensense/pluginmanager/data/PluginPackage;-><init>()V

    .line 29
    .local v3, p:Lcom/htc/opensense/pluginmanager/data/PluginPackage;
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_6

    .line 30
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-ne v6, v8, :cond_4

    .line 31
    const-string v6, "pluginpackage"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 32
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 33
    .local v0, attrCnt:I
    if-ge v0, v8, :cond_0

    .line 34
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "Number of attributes is not match (2)"

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 35
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 36
    const-string v6, "version"

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 38
    :try_start_0
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->version:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 42
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v6, "certification"

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 43
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->certification:Ljava/lang/String;

    goto :goto_2

    .line 46
    .end local v0           #attrCnt:I
    .end local v2           #i:I
    :cond_3
    const-string v6, "plugin"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 47
    invoke-static {p0}, Lcom/htc/opensense/pluginmanager/data/Plugin;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/htc/opensense/pluginmanager/data/Plugin;

    move-result-object v4

    .line 48
    .local v4, plugin:Lcom/htc/opensense/pluginmanager/data/Plugin;
    iget-object v6, v3, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->plugins:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v4           #plugin:Lcom/htc/opensense/pluginmanager/data/Plugin;
    :cond_4
    :goto_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 49
    :cond_5
    const-string v6, "meta_data"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 50
    invoke-static {p0}, Lcom/htc/opensense/pluginmanager/data/MetaData;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/htc/opensense/pluginmanager/data/MetaData;

    move-result-object v5

    .line 51
    .local v5, service:Lcom/htc/opensense/pluginmanager/data/MetaData;
    iget-object v6, v3, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 56
    .end local v5           #service:Lcom/htc/opensense/pluginmanager/data/MetaData;
    :cond_6
    return-object v3
.end method


# virtual methods
.method public getCertification()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->certification:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugins()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/pluginmanager/data/Plugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->plugins:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getServices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/pluginmanager/data/MetaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->services:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->version:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->name:Ljava/lang/String;

    .line 81
    return-void
.end method
