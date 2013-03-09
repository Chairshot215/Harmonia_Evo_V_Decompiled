.class public Lcom/futuredial/fbus/FBusConfig$CfgPBField;
.super Ljava/lang/Object;
.source "FBusConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/fbus/FBusConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CfgPBField"
.end annotation


# static fields
.field public static final INVALID_HEADLEN:I = -0x1


# instance fields
.field private m_csDesc:Ljava/lang/String;

.field private m_csEncodingType:Ljava/lang/String;

.field private m_iHeadLen:I

.field private m_iPhoneID:I

.field private m_iPimID:I

.field final synthetic this$0:Lcom/futuredial/fbus/FBusConfig;


# direct methods
.method public constructor <init>(Lcom/futuredial/fbus/FBusConfig;Lorg/w3c/dom/Node;)V
    .locals 2
    .parameter
    .parameter "ndFieldID"

    .prologue
    const/4 v1, 0x0

    .line 64
    iput-object p1, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->this$0:Lcom/futuredial/fbus/FBusConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->m_csDesc:Ljava/lang/String;

    .line 66
    iput v1, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->m_iPhoneID:I

    .line 67
    iput v1, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->m_iPimID:I

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->m_csEncodingType:Ljava/lang/String;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->m_iHeadLen:I

    .line 71
    invoke-direct {p0, p2}, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->InitializeFieldCfgPB(Lorg/w3c/dom/Node;)V

    .line 72
    return-void
.end method

.method private InitializeFieldCfgPB(Lorg/w3c/dom/Node;)V
    .locals 7
    .parameter "ndFieldID"

    .prologue
    .line 89
    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 95
    .local v0, attrMap:Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_0

    .line 100
    const-string v6, "desc"

    invoke-interface {v0, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 101
    .local v1, ndDesc:Lorg/w3c/dom/Node;
    if-eqz v1, :cond_2

    .line 103
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->m_csDesc:Ljava/lang/String;

    .line 106
    :cond_2
    const-string v6, "phoneid"

    invoke-interface {v0, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 107
    .local v3, ndPhoneID:Lorg/w3c/dom/Node;
    if-eqz v3, :cond_3

    .line 109
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->m_iPhoneID:I

    .line 112
    :cond_3
    const-string v6, "pimid"

    invoke-interface {v0, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 113
    .local v4, ndPimID:Lorg/w3c/dom/Node;
    if-eqz v4, :cond_4

    .line 115
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->m_iPimID:I

    .line 118
    :cond_4
    const-string v6, "type"

    invoke-interface {v0, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 119
    .local v5, ndType:Lorg/w3c/dom/Node;
    if-eqz v5, :cond_5

    .line 121
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->m_csEncodingType:Ljava/lang/String;

    .line 124
    :cond_5
    const-string v6, "headlen"

    invoke-interface {v0, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 125
    .local v2, ndHeadLen:Lorg/w3c/dom/Node;
    if-eqz v2, :cond_0

    .line 127
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->m_iHeadLen:I

    goto :goto_0
.end method


# virtual methods
.method public GetEncodingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->m_csEncodingType:Ljava/lang/String;

    return-object v0
.end method

.method public GetHeadLen()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->m_iHeadLen:I

    return v0
.end method

.method public GetPhoneID()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->m_iPhoneID:I

    return v0
.end method

.method public GetPimID()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->m_iPimID:I

    return v0
.end method
