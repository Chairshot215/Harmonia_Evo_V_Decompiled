.class public Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;
.super Ljava/lang/Object;
.source "FeatureList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/pluginmanager/data/FeatureList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"


# instance fields
.field application_pkg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field description:Ljava/lang/String;

.field name:Ljava/lang/String;

.field type:Ljava/lang/String;

.field version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->version:I

    .line 21
    iput-object v1, p0, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->name:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->type:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->description:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->application_pkg:Ljava/util/ArrayList;

    return-void
.end method

.method static parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;
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

    .line 27
    new-instance v2, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;

    invoke-direct {v2}, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;-><init>()V

    .line 29
    .local v2, feature:Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, v7, :cond_0

    const-string v5, "feature"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 30
    :cond_0
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Illegal access"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 32
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 33
    .local v1, attributeCount:I
    if-lez v1, :cond_4

    .line 34
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 35
    const-string v5, "name"

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 36
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->name:Ljava/lang/String;

    .line 34
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37
    :cond_3
    const-string v5, "version"

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 38
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->version:I

    goto :goto_1

    .line 42
    .end local v3           #i:I
    :cond_4
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Must have attr name"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 44
    .restart local v3       #i:I
    :cond_5
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    const-string v5, "feature"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 45
    :cond_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, v7, :cond_7

    .line 46
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, tagName:Ljava/lang/String;
    const-string v5, "FeatureList"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v5, "type"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 50
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->type:Ljava/lang/String;

    .line 59
    .end local v4           #tagName:Ljava/lang/String;
    :cond_7
    :goto_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_2

    .line 51
    .restart local v4       #tagName:Ljava/lang/String;
    :cond_8
    const-string v5, "description"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 52
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->description:Ljava/lang/String;

    goto :goto_3

    .line 53
    :cond_9
    const-string v5, "application_package"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 54
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, app_pkg:Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 56
    iget-object v5, v2, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->application_pkg:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 62
    .end local v0           #app_pkg:Ljava/lang/String;
    .end local v4           #tagName:Ljava/lang/String;
    :cond_a
    iget-object v5, v2, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->type:Ljava/lang/String;

    if-nez v5, :cond_b

    .line 63
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Feature type is not specified"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 64
    :cond_b
    return-object v2
.end method


# virtual methods
.method public getApplication_pkg()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->application_pkg:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->version:I

    return v0
.end method
