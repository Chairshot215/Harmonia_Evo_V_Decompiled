.class public Lcom/gracenote/mmid/MobileSDK/GNLinkData;
.super Ljava/lang/Object;
.source "GNLinkData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private source:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "inSource"
    .parameter "inId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "source is null"

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "source is empty"

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNLinkData;->source:Ljava/lang/String;

    .line 20
    if-eqz p2, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "id is null"

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    :goto_3
    const-string v0, "id is empty"

    invoke-static {v1, v0}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 22
    iput-object p2, p0, Lcom/gracenote/mmid/MobileSDK/GNLinkData;->uid:Ljava/lang/String;

    .line 23
    return-void

    :cond_0
    move v0, v2

    .line 17
    goto :goto_0

    :cond_1
    move v0, v2

    .line 18
    goto :goto_1

    :cond_2
    move v0, v2

    .line 20
    goto :goto_2

    :cond_3
    move v1, v2

    .line 21
    goto :goto_3
.end method

.method static parseLinkData(Lorg/w3c/dom/Node;)[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    .locals 10
    .parameter "parentNode"

    .prologue
    .line 51
    const-string v8, "XID"

    invoke-static {p0, v8}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 52
    .local v4, linkDataNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 53
    const/4 v0, 0x0

    .line 63
    :cond_0
    return-object v0

    .line 55
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v0, v8, [Lcom/gracenote/mmid/MobileSDK/GNLinkData;

    .line 56
    .local v0, arr:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    const/4 v1, 0x0

    .line 57
    .local v1, i:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;

    .line 58
    .local v5, node:Lorg/w3c/dom/Node;
    const-string v9, "DATASOURCE"

    invoke-static {v5, v9}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, source:Ljava/lang/String;
    invoke-static {v5}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, uid:Ljava/lang/String;
    new-instance v3, Lcom/gracenote/mmid/MobileSDK/GNLinkData;

    invoke-direct {v3, v6, v7}, Lcom/gracenote/mmid/MobileSDK/GNLinkData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v3, linkData:Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aput-object v3, v0, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNLinkData;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNLinkData;->source:Ljava/lang/String;

    return-object v0
.end method
