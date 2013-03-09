.class Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;
.super Ljava/lang/Object;
.source "FBusConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/fbus/FBusConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CfgPBFieldType"
.end annotation


# instance fields
.field private m_csIDList:Ljava/lang/String;

.field private m_csName:Ljava/lang/String;

.field private m_hmFieldIDToCfg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/futuredial/fbus/FBusConfig$CfgPBField;",
            ">;"
        }
    .end annotation
.end field

.field private m_iFieldType:I

.field final synthetic this$0:Lcom/futuredial/fbus/FBusConfig;


# direct methods
.method public constructor <init>(Lcom/futuredial/fbus/FBusConfig;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->this$0:Lcom/futuredial/fbus/FBusConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_csName:Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_iFieldType:I

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_csIDList:Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_hmFieldIDToCfg:Ljava/util/HashMap;

    .line 140
    return-void
.end method

.method static synthetic access$200(Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_csIDList:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_csName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget v0, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_iFieldType:I

    return v0
.end method

.method static synthetic access$500(Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_hmFieldIDToCfg:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public InitializePBFieldType(Lorg/w3c/dom/Node;)V
    .locals 10
    .parameter "ndType"

    .prologue
    const/4 v9, 0x1

    .line 149
    if-nez p1, :cond_1

    .line 192
    :cond_0
    return-void

    .line 154
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 155
    .local v0, attrMapType:Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_3

    .line 158
    const-string v7, "name"

    invoke-interface {v0, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 159
    .local v5, ndName:Lorg/w3c/dom/Node;
    if-eqz v5, :cond_2

    .line 161
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_csName:Ljava/lang/String;

    .line 162
    iget-object v7, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_csName:Ljava/lang/String;

    const-string v8, "number"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5

    .line 164
    iput v9, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_iFieldType:I

    .line 172
    :cond_2
    :goto_0
    const-string v7, "idlist"

    invoke-interface {v0, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 173
    .local v4, ndIDList:Lorg/w3c/dom/Node;
    if-eqz v4, :cond_3

    .line 175
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_csIDList:Ljava/lang/String;

    .line 179
    .end local v4           #ndIDList:Lorg/w3c/dom/Node;
    .end local v5           #ndName:Lorg/w3c/dom/Node;
    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 180
    .local v6, nlOfType:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 182
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 184
    .local v3, ndField:Lorg/w3c/dom/Node;
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v9, v7, :cond_6

    .line 180
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 166
    .end local v2           #i:I
    .end local v3           #ndField:Lorg/w3c/dom/Node;
    .end local v6           #nlOfType:Lorg/w3c/dom/NodeList;
    .restart local v5       #ndName:Lorg/w3c/dom/Node;
    :cond_5
    iget-object v7, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_csName:Ljava/lang/String;

    const-string v8, "general"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 168
    const/4 v7, 0x2

    iput v7, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_iFieldType:I

    goto :goto_0

    .line 189
    .end local v5           #ndName:Lorg/w3c/dom/Node;
    .restart local v2       #i:I
    .restart local v3       #ndField:Lorg/w3c/dom/Node;
    .restart local v6       #nlOfType:Lorg/w3c/dom/NodeList;
    :cond_6
    new-instance v1, Lcom/futuredial/fbus/FBusConfig$CfgPBField;

    iget-object v7, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->this$0:Lcom/futuredial/fbus/FBusConfig;

    invoke-direct {v1, v7, v3}, Lcom/futuredial/fbus/FBusConfig$CfgPBField;-><init>(Lcom/futuredial/fbus/FBusConfig;Lorg/w3c/dom/Node;)V

    .line 190
    .local v1, field:Lcom/futuredial/fbus/FBusConfig$CfgPBField;
    iget-object v7, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_hmFieldIDToCfg:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->GetPhoneID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
