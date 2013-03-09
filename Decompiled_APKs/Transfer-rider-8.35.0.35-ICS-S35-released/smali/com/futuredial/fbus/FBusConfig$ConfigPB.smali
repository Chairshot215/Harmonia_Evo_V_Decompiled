.class public Lcom/futuredial/fbus/FBusConfig$ConfigPB;
.super Ljava/lang/Object;
.source "FBusConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/fbus/FBusConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigPB"
.end annotation


# instance fields
.field private m_arListFieldType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;",
            ">;"
        }
    .end annotation
.end field

.field public m_strFBusGuid:Ljava/lang/String;

.field private m_strID:Ljava/lang/String;

.field final synthetic this$0:Lcom/futuredial/fbus/FBusConfig;


# direct methods
.method public constructor <init>(Lcom/futuredial/fbus/FBusConfig;)V
    .locals 1
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/futuredial/fbus/FBusConfig$ConfigPB;->this$0:Lcom/futuredial/fbus/FBusConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigPB;->m_strID:Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigPB;->m_arListFieldType:Ljava/util/ArrayList;

    .line 202
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigPB;->m_strFBusGuid:Ljava/lang/String;

    .line 203
    return-void
.end method

.method static synthetic access$100(Lcom/futuredial/fbus/FBusConfig$ConfigPB;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigPB;->m_arListFieldType:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public InitializeConfigPB(Lorg/w3c/dom/Node;)V
    .locals 8
    .parameter "ndPB"

    .prologue
    .line 212
    if-nez p1, :cond_1

    .line 245
    :cond_0
    return-void

    .line 216
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 217
    .local v0, attrMap:Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_2

    .line 219
    const-string v6, "id"

    invoke-interface {v0, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 220
    .local v3, ndID:Lorg/w3c/dom/Node;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 222
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/futuredial/fbus/FBusConfig$ConfigPB;->m_strID:Ljava/lang/String;

    .line 226
    .end local v3           #ndID:Lorg/w3c/dom/Node;
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 227
    .local v5, nlOfGroup:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 229
    invoke-interface {v5, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 230
    .local v4, ndType:Lorg/w3c/dom/Node;
    if-eqz v4, :cond_3

    const/4 v6, 0x1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v6, v7, :cond_4

    .line 227
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_4
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fbus_guid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 236
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    :goto_2
    iput-object v6, p0, Lcom/futuredial/fbus/FBusConfig$ConfigPB;->m_strFBusGuid:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v6, ""

    goto :goto_2

    .line 238
    :cond_6
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "type"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 240
    new-instance v1, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;

    iget-object v6, p0, Lcom/futuredial/fbus/FBusConfig$ConfigPB;->this$0:Lcom/futuredial/fbus/FBusConfig;

    invoke-direct {v1, v6}, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;-><init>(Lcom/futuredial/fbus/FBusConfig;)V

    .line 241
    .local v1, fieldType:Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;
    invoke-virtual {v1, v4}, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->InitializePBFieldType(Lorg/w3c/dom/Node;)V

    .line 242
    iget-object v6, p0, Lcom/futuredial/fbus/FBusConfig$ConfigPB;->m_arListFieldType:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
