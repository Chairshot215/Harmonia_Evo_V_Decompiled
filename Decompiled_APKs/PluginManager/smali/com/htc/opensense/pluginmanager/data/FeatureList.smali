.class public Lcom/htc/opensense/pluginmanager/data/FeatureList;
.super Ljava/util/ArrayList;
.source "FeatureList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FeatureList"

.field private static final TAG_FEATURE:Ljava/lang/String; = "feature"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    return-void
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/htc/opensense/pluginmanager/data/FeatureList;
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v1, Lcom/htc/opensense/pluginmanager/data/FeatureList;

    invoke-direct {v1}, Lcom/htc/opensense/pluginmanager/data/FeatureList;-><init>()V

    .line 90
    .local v1, list:Lcom/htc/opensense/pluginmanager/data/FeatureList;
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 91
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 92
    const-string v2, "feature"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-static {p0}, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;

    move-result-object v0

    .line 94
    .local v0, f:Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v1, v0}, Lcom/htc/opensense/pluginmanager/data/FeatureList;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v0           #f:Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 100
    :cond_1
    return-object v1
.end method
