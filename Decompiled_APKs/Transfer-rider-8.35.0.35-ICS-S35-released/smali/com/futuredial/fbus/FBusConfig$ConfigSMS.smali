.class public Lcom/futuredial/fbus/FBusConfig$ConfigSMS;
.super Ljava/lang/Object;
.source "FBusConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/fbus/FBusConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigSMS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;
    }
.end annotation


# instance fields
.field public m_arSMSBox:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;",
            ">;"
        }
    .end annotation
.end field

.field public m_strFBusGuid:Ljava/lang/String;

.field public m_strFolderGuid:Ljava/lang/String;

.field public m_strFolderType:Ljava/lang/String;

.field public m_strObexCapability:Ljava/lang/String;

.field public m_strObexGuid:Ljava/lang/String;

.field public m_strObexWho:Ljava/lang/String;

.field public m_strSMSType:Ljava/lang/String;

.field final synthetic this$0:Lcom/futuredial/fbus/FBusConfig;


# direct methods
.method public constructor <init>(Lcom/futuredial/fbus/FBusConfig;)V
    .locals 1
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->this$0:Lcom/futuredial/fbus/FBusConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strFBusGuid:Ljava/lang/String;

    .line 298
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strObexGuid:Ljava/lang/String;

    .line 299
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strSMSType:Ljava/lang/String;

    .line 300
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strObexWho:Ljava/lang/String;

    .line 301
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strObexCapability:Ljava/lang/String;

    .line 302
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strFolderGuid:Ljava/lang/String;

    .line 303
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strFolderType:Ljava/lang/String;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_arSMSBox:Ljava/util/ArrayList;

    .line 305
    return-void
.end method


# virtual methods
.method public InitializeConfigSMS(Lorg/w3c/dom/Node;)V
    .locals 8
    .parameter "ndSMS"

    .prologue
    const/4 v7, 0x1

    .line 335
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v7, v5, :cond_1

    .line 391
    :cond_0
    return-void

    .line 340
    :cond_1
    iget-object v5, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_arSMSBox:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 342
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 343
    .local v3, nlOfGroup:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 345
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 346
    .local v2, ndOfGroup:Lorg/w3c/dom/Node;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v7, v5, :cond_3

    .line 343
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    :cond_3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fbus_guid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    .line 353
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :goto_2
    iput-object v5, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strFBusGuid:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v5, ""

    goto :goto_2

    .line 355
    :cond_5
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "obex_guid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    .line 357
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :goto_3
    iput-object v5, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strObexGuid:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v5, ""

    goto :goto_3

    .line 359
    :cond_7
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "param"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_11

    .line 361
    iget-object v5, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->this$0:Lcom/futuredial/fbus/FBusConfig;

    const-string v6, "name"

    #calls: Lcom/futuredial/fbus/FBusConfig;->GetNodeAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v2, v6}, Lcom/futuredial/fbus/FBusConfig;->access$000(Lcom/futuredial/fbus/FBusConfig;Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, strAttrName:Ljava/lang/String;
    const-string v5, "sms_type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_9

    .line 364
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :goto_4
    iput-object v5, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strSMSType:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v5, ""

    goto :goto_4

    .line 366
    :cond_9
    const-string v5, "who"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_b

    .line 368
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :goto_5
    iput-object v5, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strObexWho:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const-string v5, ""

    goto :goto_5

    .line 370
    :cond_b
    const-string v5, "obex_capability"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_d

    .line 372
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :goto_6
    iput-object v5, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strObexCapability:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    const-string v5, ""

    goto :goto_6

    .line 374
    :cond_d
    const-string v5, "folder_list_guid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_f

    .line 376
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :goto_7
    iput-object v5, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strFolderGuid:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    const-string v5, ""

    goto :goto_7

    .line 378
    :cond_f
    const-string v5, "folder_list_type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 380
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :goto_8
    iput-object v5, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strFolderType:Ljava/lang/String;

    goto/16 :goto_1

    :cond_10
    const-string v5, ""

    goto :goto_8

    .line 383
    .end local v4           #strAttrName:Ljava/lang/String;
    :cond_11
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "box"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 385
    new-instance v0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;

    invoke-direct {v0, p0}, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;-><init>(Lcom/futuredial/fbus/FBusConfig$ConfigSMS;)V

    .line 386
    .local v0, box:Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;
    invoke-virtual {v0, v2}, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;->InitSMSBox(Lorg/w3c/dom/Node;)V

    .line 387
    iget-object v5, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_arSMSBox:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
