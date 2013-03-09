.class public Lcom/futuredial/fbus/FBusConfig$ConfigCal;
.super Ljava/lang/Object;
.source "FBusConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/fbus/FBusConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigCal"
.end annotation


# instance fields
.field public m_strFBusGuid:Ljava/lang/String;

.field private m_strID:Ljava/lang/String;

.field final synthetic this$0:Lcom/futuredial/fbus/FBusConfig;


# direct methods
.method public constructor <init>(Lcom/futuredial/fbus/FBusConfig;)V
    .locals 1
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/futuredial/fbus/FBusConfig$ConfigCal;->this$0:Lcom/futuredial/fbus/FBusConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigCal;->m_strID:Ljava/lang/String;

    .line 254
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigCal;->m_strFBusGuid:Ljava/lang/String;

    .line 255
    return-void
.end method


# virtual methods
.method public InitializeConfigCal(Lorg/w3c/dom/Node;)V
    .locals 8
    .parameter "ndCal"

    .prologue
    const/4 v7, 0x1

    .line 261
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v7, v5, :cond_1

    .line 289
    :cond_0
    return-void

    .line 265
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 266
    .local v0, attrMap:Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_2

    .line 268
    const-string v5, "id"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 269
    .local v2, ndID:Lorg/w3c/dom/Node;
    if-eqz v2, :cond_2

    .line 271
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/futuredial/fbus/FBusConfig$ConfigCal;->m_strID:Ljava/lang/String;

    .line 275
    .end local v2           #ndID:Lorg/w3c/dom/Node;
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 276
    .local v4, nlOfGroup:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 278
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 279
    .local v3, ndOfGroup:Lorg/w3c/dom/Node;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v7, v5, :cond_4

    .line 276
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_4
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fbus_guid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 286
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :goto_2
    iput-object v5, p0, Lcom/futuredial/fbus/FBusConfig$ConfigCal;->m_strFBusGuid:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v5, ""

    goto :goto_2
.end method
