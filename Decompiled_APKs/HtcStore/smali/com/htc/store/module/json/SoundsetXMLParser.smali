.class public Lcom/htc/store/module/json/SoundsetXMLParser;
.super Ljava/lang/Object;
.source "SoundsetXMLParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;,
        Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;
    }
.end annotation


# instance fields
.field private mAssetSound:Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;

.field private mAssetSoundArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;",
            ">;"
        }
    .end annotation
.end field

.field private mAssetSoundList:Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseAssetSound(Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;Ljava/util/HashMap;)V
    .locals 1
    .parameter "sound"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "refType"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->refType:Ljava/lang/String;

    .line 111
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->type:Ljava/lang/String;

    .line 112
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->id:Ljava/lang/String;

    .line 113
    const-string v0, "GUID"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->GUID:Ljava/lang/String;

    .line 114
    const-string v0, "size"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->size:Ljava/lang/String;

    .line 115
    const-string v0, "cat"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->cat:Ljava/lang/String;

    .line 116
    const-string v0, "preUrl"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->preUrl:Ljava/lang/String;

    .line 117
    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->url:Ljava/lang/String;

    .line 118
    const-string v0, "timestamp"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->timestamp:Ljava/lang/String;

    .line 119
    const-string v0, "aui"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->aui:Ljava/lang/String;

    .line 120
    const-string v0, "reldate"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->reldate:Ljava/lang/String;

    .line 121
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->name:Ljava/lang/String;

    .line 122
    const-string v0, "desc"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->desc:Ljava/lang/String;

    .line 123
    const-string v0, "corporation"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->corporation:Ljava/lang/String;

    .line 124
    return-void
.end method

.method private parseAssetSoundList(Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;Ljava/util/HashMap;)V
    .locals 1
    .parameter "list"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "catFlag"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;->catFlag:Ljava/lang/String;

    .line 102
    const-string v0, "timestamp"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;->timestamp:Ljava/lang/String;

    .line 103
    const-string v0, "en"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;->lang:Ljava/lang/String;

    .line 104
    const-string v0, "sort"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;->sort:Ljava/lang/String;

    .line 105
    const-string v0, "dversion"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;->dversion:Ljava/lang/String;

    .line 106
    const-string v0, "listsize"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;->listsize:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public getAssetSound()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/store/module/json/SoundsetXMLParser;->mAssetSoundArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAssetSoundList()Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/store/module/json/SoundsetXMLParser;->mAssetSoundList:Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 10
    .parameter "srcURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 30
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 31
    .local v3, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3, v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 32
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 34
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 35
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 36
    .local v2, eventType:I
    const/4 v1, 0x0

    .line 37
    .local v1, curTag:Ljava/lang/String;
    const/4 v0, 0x0

    .line 39
    .local v0, amount:I
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v6, valueMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;

    invoke-direct {v7, p0}, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;-><init>(Lcom/htc/store/module/json/SoundsetXMLParser;)V

    iput-object v7, p0, Lcom/htc/store/module/json/SoundsetXMLParser;->mAssetSoundList:Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;

    .line 41
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/htc/store/module/json/SoundsetXMLParser;->mAssetSoundArrayList:Ljava/util/ArrayList;

    .line 43
    :goto_0
    if-eq v2, v9, :cond_7

    .line 44
    if-nez v2, :cond_1

    .line 80
    :cond_0
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 46
    :cond_1
    if-eq v2, v9, :cond_0

    .line 48
    const/4 v7, 0x2

    if-ne v2, v7, :cond_6

    .line 49
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 50
    const-string v7, "AssetSoundList"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 51
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 52
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 53
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v0, :cond_2

    .line 54
    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 56
    :cond_2
    iget-object v7, p0, Lcom/htc/store/module/json/SoundsetXMLParser;->mAssetSoundList:Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;

    invoke-direct {p0, v7, v6}, Lcom/htc/store/module/json/SoundsetXMLParser;->parseAssetSoundList(Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;Ljava/util/HashMap;)V

    goto :goto_1

    .line 57
    .end local v4           #i:I
    :cond_3
    const-string v7, "AssetSound"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 58
    new-instance v7, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;

    invoke-direct {v7, p0}, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;-><init>(Lcom/htc/store/module/json/SoundsetXMLParser;)V

    iput-object v7, p0, Lcom/htc/store/module/json/SoundsetXMLParser;->mAssetSound:Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;

    .line 59
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 60
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 61
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    if-ge v4, v0, :cond_4

    .line 62
    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 64
    :cond_4
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 65
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string v7, "Info"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 67
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 68
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v0, :cond_5

    .line 69
    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 71
    :cond_5
    iget-object v7, p0, Lcom/htc/store/module/json/SoundsetXMLParser;->mAssetSound:Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;

    invoke-direct {p0, v7, v6}, Lcom/htc/store/module/json/SoundsetXMLParser;->parseAssetSound(Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;Ljava/util/HashMap;)V

    .line 72
    iget-object v7, p0, Lcom/htc/store/module/json/SoundsetXMLParser;->mAssetSoundArrayList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/store/module/json/SoundsetXMLParser;->mAssetSound:Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 76
    .end local v4           #i:I
    :cond_6
    const/4 v7, 0x4

    if-eq v2, v7, :cond_0

    .line 78
    const/4 v7, 0x3

    if-ne v2, v7, :cond_0

    goto/16 :goto_1

    .line 82
    :cond_7
    return-void
.end method
