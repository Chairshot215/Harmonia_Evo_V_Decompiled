.class public Lcom/futuredial/syncml/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field protected DataStore:Lcom/futuredial/xmlbuild/XmlElement;

.field protected alertStatus:Ljava/lang/String;

.field protected bFinalEleEveryMsg:Z

.field protected commandID:I

.field protected errorCode:Ljava/lang/String;

.field protected getCmdID:Ljava/lang/String;

.field protected includeCTCap:Z

.field protected itemStorage:Lcom/futuredial/syncml/ItemStorage;

.field protected parameter:Lcom/futuredial/syncml/Parameter;

.field protected statusList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/xmlbuild/XmlElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v2, p0, Lcom/futuredial/syncml/Parser;->bFinalEleEveryMsg:Z

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/Parser;->errorCode:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/futuredial/syncml/Parser;->includeCTCap:Z

    .line 25
    const-string v0, "508"

    iput-object v0, p0, Lcom/futuredial/syncml/Parser;->alertStatus:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/syncml/Parser;->DataStore:Lcom/futuredial/xmlbuild/XmlElement;

    .line 27
    iput v2, p0, Lcom/futuredial/syncml/Parser;->commandID:I

    .line 28
    new-instance v0, Lcom/futuredial/syncml/ItemStorage;

    invoke-direct {v0}, Lcom/futuredial/syncml/ItemStorage;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/Parser;->itemStorage:Lcom/futuredial/syncml/ItemStorage;

    .line 29
    new-instance v0, Lcom/futuredial/syncml/Parameter;

    invoke-direct {v0}, Lcom/futuredial/syncml/Parameter;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/Parser;->statusList:Ljava/util/ArrayList;

    .line 32
    iget-object v0, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v0, v1}, Lcom/futuredial/syncml/Parameter;->setAppStatus(I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected BuildBodyAlert()Lcom/futuredial/xmlbuild/XmlElement;
    .locals 7

    .prologue
    .line 499
    new-instance v2, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v4, "Alert"

    invoke-direct {v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 501
    .local v2, xmlRet:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v4, "CmdID"

    iget v5, p0, Lcom/futuredial/syncml/Parser;->commandID:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/futuredial/syncml/Parser;->commandID:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 502
    const-string v4, "Data"

    const-string v5, "222"

    invoke-virtual {v2, v4, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 504
    iget-object v4, p0, Lcom/futuredial/syncml/Parser;->itemStorage:Lcom/futuredial/syncml/ItemStorage;

    invoke-virtual {v4}, Lcom/futuredial/syncml/ItemStorage;->GetLastInItemID()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, strLastItemID:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 507
    const-string v4, "Item"

    invoke-virtual {v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v1

    .line 508
    .local v1, xmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v4, "Source"

    invoke-virtual {v1, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 509
    .local v3, xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v4, "LocURI"

    invoke-virtual {v3, v4, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 512
    .end local v1           #xmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v3           #xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_0
    return-object v2
.end method

.method protected BuildDevInf()Lcom/futuredial/xmlbuild/XmlElement;
    .locals 4

    .prologue
    .line 1006
    iget-object v2, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const-string v3, "DevInf"

    invoke-virtual {v2, v3}, Lcom/futuredial/syncml/Parameter;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, strDevInf:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/futuredial/syncml/Parser;->DataStore:Lcom/futuredial/xmlbuild/XmlElement;

    if-nez v2, :cond_1

    .line 1009
    :cond_0
    const/4 v1, 0x0

    .line 1037
    :goto_0
    return-object v1

    .line 1011
    :cond_1
    new-instance v1, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v2, "DevInf"

    invoke-direct {v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 1012
    .local v1, xmlRet:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v2, "xmlns"

    const-string v3, "syncml:devinf"

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 1014
    const-string v2, "VerDTD"

    iget-object v3, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v3}, Lcom/futuredial/syncml/Parameter;->getVerDTD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1015
    const-string v2, "Man"

    const-string v3, "Futuredial"

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1016
    const-string v2, "Mod"

    const-string v3, "2.0"

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1017
    const-string v2, "FwV"

    const-string v3, "2.0"

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1018
    const-string v2, "SwV"

    const-string v3, "2.0"

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1019
    const-string v2, "HwV"

    const-string v3, "2.0"

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1020
    const-string v2, "DevID"

    iget-object v3, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v3}, Lcom/futuredial/syncml/Parameter;->getAppServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1021
    const-string v2, "DevTyp"

    const-string v3, "server"

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1023
    iget-object v2, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v2}, Lcom/futuredial/syncml/Parameter;->isSupportMoreData()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1025
    const-string v2, "SupportLargeObjs"

    invoke-virtual {v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1028
    :cond_2
    iget-object v2, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v2}, Lcom/futuredial/syncml/Parameter;->isSupportNumberOfChange()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1030
    const-string v2, "SupportNumberOfChanges"

    invoke-virtual {v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1032
    :cond_3
    iget-object v2, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v2}, Lcom/futuredial/syncml/Parameter;->isSupportUTC()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1034
    const-string v2, "UTC"

    invoke-virtual {v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1036
    :cond_4
    iget-object v2, p0, Lcom/futuredial/syncml/Parser;->DataStore:Lcom/futuredial/xmlbuild/XmlElement;

    invoke-virtual {v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    goto :goto_0
.end method

.method protected BuildResult()Lcom/futuredial/xmlbuild/XmlElement;
    .locals 12

    .prologue
    .line 966
    new-instance v5, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v9, "Results"

    invoke-direct {v5, v9}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 967
    .local v5, xmlResult:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "CmdID"

    iget v10, p0, Lcom/futuredial/syncml/Parser;->commandID:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/futuredial/syncml/Parser;->commandID:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 968
    const-string v9, "MsgRef"

    iget-object v10, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v10}, Lcom/futuredial/syncml/Parameter;->getMessageID()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 969
    const-string v9, "CmdRef"

    iget-object v10, p0, Lcom/futuredial/syncml/Parser;->getCmdID:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 971
    iget-object v9, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const-string v10, "DevInf"

    invoke-virtual {v9, v10}, Lcom/futuredial/syncml/Parameter;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 977
    .local v1, strInf:Ljava/lang/String;
    iget-object v9, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const-string v10, "DevInfContentType"

    invoke-virtual {v9, v10}, Lcom/futuredial/syncml/Parameter;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, strDevInfContentType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 980
    const-string v9, "Meta"

    invoke-virtual {v5, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 981
    .local v4, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "Type"

    invoke-virtual {v4, v9, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v8

    .line 982
    .local v8, xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "xmlns"

    const-string v10, "syncml:metinf"

    invoke-virtual {v8, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 985
    .end local v4           #xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v8           #xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_0
    const-string v9, "Item"

    invoke-virtual {v5, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v6

    .line 987
    .local v6, xmlResultItem:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "Source"

    invoke-virtual {v6, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v7

    .line 988
    .local v7, xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "Data"

    invoke-virtual {v6, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v2

    .line 989
    .local v2, xmlData:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v1, :cond_1

    .line 991
    const-string v9, "LocURI"

    invoke-virtual {v7, v9, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 994
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/syncml/Parser;->BuildDevInf()Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 995
    .local v3, xmlDevInf:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v3, :cond_2

    .line 997
    const/4 v5, 0x0

    .line 1001
    .end local v5           #xmlResult:Lcom/futuredial/xmlbuild/XmlElement;
    :goto_0
    return-object v5

    .line 999
    .restart local v5       #xmlResult:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_2
    invoke-virtual {v2, v3}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    goto :goto_0
.end method

.method protected BuildSync()Lcom/futuredial/xmlbuild/XmlElement;
    .locals 8

    .prologue
    .line 474
    new-instance v2, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v5, "Sync"

    invoke-direct {v2, v5}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 475
    .local v2, xmlRet:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "CmdID"

    iget v6, p0, Lcom/futuredial/syncml/Parser;->commandID:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/futuredial/syncml/Parser;->commandID:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 477
    iget-object v5, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v5}, Lcom/futuredial/syncml/Parameter;->isSupportNumberOfChange()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 479
    const-string v5, "NumberOfChanges"

    const-string v6, "0"

    invoke-virtual {v2, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 481
    :cond_0
    iget-object v5, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v5}, Lcom/futuredial/syncml/Parameter;->isSupportMaxObjectSize()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 483
    const-string v5, "Meta"

    invoke-virtual {v2, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v1

    .line 484
    .local v1, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "MaxObjSize"

    iget-object v6, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v6}, Lcom/futuredial/syncml/Parameter;->getMaxObjectSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v0

    .line 485
    .local v0, xmlMaxObjSize:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "xmlns"

    const-string v6, "syncml:metinf"

    invoke-virtual {v0, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 487
    .end local v0           #xmlMaxObjSize:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v1           #xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_1
    const-string v5, "Target"

    invoke-virtual {v2, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 488
    .local v4, xmlTarget:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "Source"

    invoke-virtual {v2, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 489
    .local v3, xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "LocURI"

    iget-object v6, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v6}, Lcom/futuredial/syncml/Parameter;->getPhoneDBName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 490
    const-string v5, "LocURI"

    iget-object v6, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v6}, Lcom/futuredial/syncml/Parameter;->getAppDBName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 492
    iget-object v5, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/16 v6, 0x23

    invoke-virtual {v5, v6}, Lcom/futuredial/syncml/Parameter;->setAppStatus(I)V

    .line 493
    return-object v2
.end method

.method protected BuildSyncAlert()Lcom/futuredial/xmlbuild/XmlElement;
    .locals 11

    .prologue
    .line 518
    new-instance v4, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v8, "Alert"

    invoke-direct {v4, v8}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 520
    .local v4, xmlRet:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v8, "CmdID"

    iget v9, p0, Lcom/futuredial/syncml/Parser;->commandID:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/futuredial/syncml/Parser;->commandID:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 521
    const-string v8, "Data"

    const-string v9, "201"

    invoke-virtual {v4, v8, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 523
    const-string v8, "Item"

    invoke-virtual {v4, v8}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v2

    .line 525
    .local v2, xmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v8, "Target"

    invoke-virtual {v2, v8}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v6

    .line 526
    .local v6, xmlTarget:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v8, "Source"

    invoke-virtual {v2, v8}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v5

    .line 528
    .local v5, xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v8, "LocURI"

    iget-object v9, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v9}, Lcom/futuredial/syncml/Parameter;->getPhoneDBName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 529
    const-string v8, "LocURI"

    iget-object v9, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v9}, Lcom/futuredial/syncml/Parameter;->getAppDBName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 531
    const-string v8, "Meta"

    invoke-virtual {v2, v8}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 532
    .local v3, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v8, "Anchor"

    invoke-virtual {v3, v8}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v1

    .line 533
    .local v1, xmlAnchor:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v8, "xmlns"

    const-string v9, "syncml:metinf"

    invoke-virtual {v1, v8, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 535
    iget-object v8, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v8}, Lcom/futuredial/syncml/Parameter;->getIsSNE()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, IsSNE:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v8, "true"

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_0

    .line 538
    const-string v8, "Next"

    const-string v9, "0"

    invoke-virtual {v1, v8, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 548
    :goto_0
    return-object v4

    .line 542
    :cond_0
    const-string v8, "Next"

    const-string v9, "0"

    invoke-virtual {v1, v8, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 543
    const-string v8, "Last"

    const-string v9, "0"

    invoke-virtual {v1, v8, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 544
    const-string v8, "Type"

    iget-object v9, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v9}, Lcom/futuredial/syncml/Parameter;->getContentType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v7

    .line 545
    .local v7, xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v8, "xmlns"

    const-string v9, "syncml:metinf"

    invoke-virtual {v7, v8, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    goto :goto_0
.end method

.method protected BuildSyncHdr()Lcom/futuredial/xmlbuild/XmlElement;
    .locals 7

    .prologue
    .line 207
    new-instance v2, Lcom/futuredial/xmlbuild/XmlElement;

    invoke-direct {v2}, Lcom/futuredial/xmlbuild/XmlElement;-><init>()V

    .line 209
    .local v2, xmlRet:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "SyncHdr"

    invoke-virtual {v2, v5}, Lcom/futuredial/xmlbuild/XmlElement;->setName(Ljava/lang/String;)V

    .line 211
    const-string v5, "VerDTD"

    iget-object v6, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v6}, Lcom/futuredial/syncml/Parameter;->getVerDTD()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 212
    const-string v5, "VerProto"

    iget-object v6, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v6}, Lcom/futuredial/syncml/Parameter;->getVerProto()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 213
    const-string v5, "SessionID"

    iget-object v6, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v6}, Lcom/futuredial/syncml/Parameter;->getSessionID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 214
    const-string v5, "MsgID"

    iget-object v6, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v6}, Lcom/futuredial/syncml/Parameter;->getMessageID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 216
    const-string v5, "Target"

    invoke-virtual {v2, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 218
    .local v4, xmlTarget:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "Source"

    invoke-virtual {v2, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 219
    .local v3, xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "LocURI"

    iget-object v6, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v6}, Lcom/futuredial/syncml/Parameter;->getPhoneServerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 220
    const-string v5, "LocURI"

    iget-object v6, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v6}, Lcom/futuredial/syncml/Parameter;->getAppServerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 222
    iget-object v5, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v5}, Lcom/futuredial/syncml/Parameter;->isSupportMaxMessageSize()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    const-string v5, "Meta"

    invoke-virtual {v2, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v1

    .line 225
    .local v1, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "MaxMsgSize"

    iget-object v6, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v6}, Lcom/futuredial/syncml/Parameter;->getMaxMessageSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v0

    .line 226
    .local v0, xmlMaxMsgSize:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "xmlns"

    const-string v6, "syncml:metinf"

    invoke-virtual {v0, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 228
    .end local v0           #xmlMaxMsgSize:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v1           #xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_0
    return-object v2
.end method

.method protected ParseAdd(Lcom/futuredial/xmlbuild/XmlElement;)Z
    .locals 23
    .parameter "xmlElement"

    .prologue
    .line 675
    const/4 v6, 0x0

    .local v6, strSource:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, strSourceParent:Ljava/lang/String;
    const/4 v5, 0x0

    .line 676
    .local v5, strData:Ljava/lang/String;
    const/4 v8, 0x0

    .line 677
    .local v8, bMoreData:Z
    const-string v2, "CmdID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v11

    .line 679
    .local v11, xmlCmdID:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v2, "Item"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v13

    .line 680
    .local v13, xmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v11, :cond_0

    if-nez v13, :cond_1

    .line 682
    :cond_0
    const/4 v2, 0x0

    .line 758
    :goto_0
    return v2

    .line 686
    :cond_1
    new-instance v20, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v2, "Status"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 687
    .local v20, xmlStatus:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v2, "CmdID"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/futuredial/syncml/Parser;->commandID:I

    add-int/lit8 v22, v4, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/syncml/Parser;->commandID:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 688
    const-string v2, "MsgRef"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v4}, Lcom/futuredial/syncml/Parameter;->getMessageID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 689
    const-string v2, "CmdRef"

    invoke-virtual {v11}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 690
    const-string v2, "Cmd"

    const-string v4, "Add"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 692
    const/4 v3, 0x0

    .line 693
    .local v3, strDataType:Ljava/lang/String;
    const-string v2, "Meta"

    invoke-virtual {v13, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v15

    .line 694
    .local v15, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v15, :cond_2

    .line 696
    const-string v2, "Type"

    invoke-virtual {v15, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v21

    .line 697
    .local v21, xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v21, :cond_2

    .line 699
    invoke-virtual/range {v21 .. v21}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 703
    .end local v21           #xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_2
    const-string v2, "Source"

    invoke-virtual {v13, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v18

    .line 704
    .local v18, xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v18, :cond_4

    .line 706
    const-string v2, "LocURI"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v17

    .line 707
    .local v17, xmlSLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v17, :cond_3

    .line 709
    const/4 v2, 0x0

    goto :goto_0

    .line 711
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 712
    const-string v2, "SourceRef"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 716
    .end local v17           #xmlSLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_4
    const-string v2, "SourceParent"

    invoke-virtual {v13, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v19

    .line 717
    .local v19, xmlSourceParent:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v19, :cond_6

    .line 719
    const-string v2, "LocURI"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v14

    .line 720
    .local v14, xmlLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v14, :cond_5

    .line 722
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 724
    :cond_5
    invoke-virtual {v14}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 728
    .end local v14           #xmlLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_6
    const-string v2, "MoreData"

    invoke-virtual {v13, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v16

    .line 729
    .local v16, xmlMoreData:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v16, :cond_9

    .line 731
    const-string v2, "Data"

    const-string v4, "213"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 732
    const/4 v8, 0x1

    .line 740
    :goto_1
    const-string v2, "Data"

    invoke-virtual {v13, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v12

    .line 741
    .local v12, xmlData:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v12, :cond_8

    .line 743
    const/4 v9, 0x0

    .line 744
    .local v9, bIsBinHex:Z
    const-string v2, "coding"

    invoke-virtual {v12, v2}, Lcom/futuredial/xmlbuild/XmlElement;->findAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 745
    .local v10, strCoding:Ljava/lang/String;
    if-eqz v10, :cond_7

    .line 747
    const-string v2, "binhex"

    invoke-virtual {v2, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 749
    const/4 v9, 0x1

    .line 753
    :cond_7
    invoke-virtual {v12}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/syncml/Parser;->itemStorage:Lcom/futuredial/syncml/ItemStorage;

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/futuredial/syncml/ItemStorage;->OnDataRecved(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    .line 757
    .end local v9           #bIsBinHex:Z
    .end local v10           #strCoding:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/syncml/Parser;->statusList:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 736
    .end local v12           #xmlData:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_9
    const-string v2, "Data"

    const-string v4, "201"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    goto :goto_1
.end method

.method protected ParseAlert(Lcom/futuredial/xmlbuild/XmlElement;)Z
    .locals 20
    .parameter "xmlElement"

    .prologue
    .line 1613
    const-string v17, "CmdID"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v6

    .line 1614
    .local v6, xmlCmdID:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v6, :cond_0

    .line 1616
    const/16 v17, 0x0

    .line 1702
    :goto_0
    return v17

    .line 1620
    :cond_0
    new-instance v14, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v17, "Status"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 1621
    .local v14, xmlStatus:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v17, "CmdID"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/syncml/Parser;->commandID:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/syncml/Parser;->commandID:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1622
    const-string v17, "MsgRef"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/futuredial/syncml/Parameter;->getMessageID()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1623
    const-string v17, "CmdRef"

    invoke-virtual {v6}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1624
    const-string v17, "Cmd"

    const-string v18, "Alert"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1625
    const-string v17, "Data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/Parser;->alertStatus:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1627
    const-string v17, "Data"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v7

    .line 1628
    .local v7, xmlData:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v7, :cond_1

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v17, v0

    const-string v18, "Alert"

    invoke-virtual {v7}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/futuredial/syncml/Parameter;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    :cond_1
    const-string v17, "Item"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v8

    .line 1635
    .local v8, xmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v8, :cond_8

    .line 1638
    const-string v17, "Target"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v16

    .line 1639
    .local v16, xmlTarget:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v16, :cond_3

    .line 1641
    const-string v17, "LocURI"

    invoke-virtual/range {v16 .. v17}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v15

    .line 1642
    .local v15, xmlTLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v15, :cond_2

    .line 1644
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1646
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v17, v0

    invoke-virtual {v15}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setAppDBName(Ljava/lang/String;)V

    .line 1647
    const-string v17, "TargetRef"

    invoke-virtual {v15}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1651
    .end local v15           #xmlTLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_3
    const-string v17, "Source"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v13

    .line 1652
    .local v13, xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v13, :cond_5

    .line 1654
    const-string v17, "LocURI"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v12

    .line 1655
    .local v12, xmlSLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v12, :cond_4

    .line 1657
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1659
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setPhoneDBName(Ljava/lang/String;)V

    .line 1660
    const-string v17, "SourceRef"

    invoke-virtual {v12}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1665
    .end local v12           #xmlSLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_5
    const-string v17, "Meta"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v10

    .line 1666
    .local v10, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v10, :cond_8

    .line 1669
    const-string v17, "Anchor"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v5

    .line 1670
    .local v5, xmlAnchor:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v5, :cond_7

    .line 1673
    const-string v17, "Next"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v11

    .line 1674
    .local v11, xmlNext:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v11, :cond_6

    .line 1676
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1679
    :cond_6
    const-string v17, "Item"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 1680
    .local v4, retXmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v17, "Data"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 1681
    .local v3, retData:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v17, "Anchor"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v2

    .line 1682
    .local v2, retAnchor:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v17, "xmlns"

    const-string v18, "syncml:metinf"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 1683
    const-string v17, "Next"

    invoke-virtual {v11}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1687
    .end local v2           #retAnchor:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v3           #retData:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v4           #retXmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v11           #xmlNext:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_7
    const-string v17, "MaxObjSize"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v9

    .line 1688
    .local v9, xmlMaxObjSize:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v9, :cond_8

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v17, v0

    invoke-virtual {v9}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setMaxObjectSize(I)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setSupportMaxObjectSize(Z)V

    .line 1695
    .end local v5           #xmlAnchor:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v9           #xmlMaxObjSize:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v10           #xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v13           #xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v16           #xmlTarget:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/Parser;->statusList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parameter;->getAppStatus()I

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v17, v0

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setAppStatus(I)V

    .line 1702
    :cond_9
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method protected ParseAndBuildDataStore(Lcom/futuredial/xmlbuild/XmlElement;)Lcom/futuredial/xmlbuild/XmlElement;
    .locals 39
    .parameter "xmlElement"

    .prologue
    .line 1207
    const-string v37, "SourceRef"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v25

    .line 1208
    .local v25, xmlSourceRef:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v37, "Rx-Pref"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v20

    .line 1209
    .local v20, xmlRxPref:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v37, "Tx-Pref"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v32

    .line 1210
    .local v32, xmlTxPref:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v37, "CTCap"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChildList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1211
    .local v7, xmlCTCapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    const-string v37, "SyncCap"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v27

    .line 1219
    .local v27, xmlSyncCap:Lcom/futuredial/xmlbuild/XmlElement;
    const/4 v3, 0x0

    .line 1220
    .local v3, bRx:Z
    const/4 v4, 0x0

    .line 1221
    .local v4, bTx:Z
    new-instance v10, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v37, "DataStore"

    move-object/from16 v0, v37

    invoke-direct {v10, v0}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 1223
    .local v10, xmlRet:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v37, "SourceRef"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/futuredial/syncml/Parameter;->getAppDBName()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v10, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1225
    const-string v37, "MaxGUIDSize"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v9

    .line 1226
    .local v9, xmlMaxGUIDSize:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v9, :cond_0

    .line 1228
    const-string v37, "MaxGUIDSize"

    invoke-virtual {v9}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v10, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1232
    :cond_0
    const-string v37, "Rx"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChildList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 1233
    .local v19, xmlRxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    if-eqz v19, :cond_4

    .line 1235
    const/4 v5, 0x0

    .local v5, i:I
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, nCount:I
    :goto_0
    if-ge v5, v6, :cond_4

    .line 1237
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/futuredial/xmlbuild/XmlElement;

    .line 1238
    .local v18, xmlRx:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v18, :cond_1

    .line 1235
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1242
    :cond_1
    const-string v37, "Rx"

    move-object/from16 v0, v37

    invoke-virtual {v10, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v13

    .line 1243
    .local v13, xmlRetRx:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v37, "CTType"

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v23

    .line 1244
    .local v23, xmlRx_CTType:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v37, "VerCT"

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v24

    .line 1245
    .local v24, xmlRx_VerCT:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v23, :cond_2

    if-nez v24, :cond_3

    .line 1247
    :cond_2
    const-string v37, "ParseAndBuildDataStore"

    const-string v38, "(xmlRx_CTType == null) || (xmlRx_VerCT == null)"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    const/4 v10, 0x0

    .line 1371
    .end local v5           #i:I
    .end local v6           #nCount:I
    .end local v10           #xmlRet:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v13           #xmlRetRx:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v18           #xmlRx:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v23           #xmlRx_CTType:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v24           #xmlRx_VerCT:Lcom/futuredial/xmlbuild/XmlElement;
    :goto_2
    return-object v10

    .line 1250
    .restart local v5       #i:I
    .restart local v6       #nCount:I
    .restart local v10       #xmlRet:Lcom/futuredial/xmlbuild/XmlElement;
    .restart local v13       #xmlRetRx:Lcom/futuredial/xmlbuild/XmlElement;
    .restart local v18       #xmlRx:Lcom/futuredial/xmlbuild/XmlElement;
    .restart local v23       #xmlRx_CTType:Lcom/futuredial/xmlbuild/XmlElement;
    .restart local v24       #xmlRx_VerCT:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_3
    const-string v37, "CTType"

    invoke-virtual/range {v23 .. v23}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v13, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1251
    const-string v37, "VerCT"

    invoke-virtual/range {v24 .. v24}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v13, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1252
    const/4 v3, 0x1

    goto :goto_1

    .line 1257
    .end local v5           #i:I
    .end local v6           #nCount:I
    .end local v13           #xmlRetRx:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v18           #xmlRx:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v23           #xmlRx_CTType:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v24           #xmlRx_VerCT:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_4
    const-string v37, "Tx"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChildList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v31

    .line 1258
    .local v31, xmlTxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    if-eqz v31, :cond_8

    .line 1260
    const/4 v5, 0x0

    .restart local v5       #i:I
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v6

    .restart local v6       #nCount:I
    :goto_3
    if-ge v5, v6, :cond_8

    .line 1262
    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/futuredial/xmlbuild/XmlElement;

    .line 1263
    .local v30, xmlTx:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v30, :cond_5

    .line 1260
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1267
    :cond_5
    const-string v37, "Tx"

    move-object/from16 v0, v37

    invoke-virtual {v10, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v16

    .line 1268
    .local v16, xmlRetTx:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v37, "CTType"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v35

    .line 1269
    .local v35, xmlTx_CTType:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v37, "VerCT"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v36

    .line 1270
    .local v36, xmlTx_VerCT:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v35, :cond_6

    if-nez v36, :cond_7

    .line 1272
    :cond_6
    const-string v37, "ParseAndBuildDataStore"

    const-string v38, "(xmlTx_CTType == null) || (xmlTx_VerCT == null)"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const/4 v10, 0x0

    goto :goto_2

    .line 1275
    :cond_7
    const-string v37, "CTType"

    invoke-virtual/range {v35 .. v35}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1276
    const-string v37, "VerCT"

    invoke-virtual/range {v36 .. v36}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1277
    const/4 v4, 0x1

    goto :goto_4

    .line 1282
    .end local v5           #i:I
    .end local v6           #nCount:I
    .end local v16           #xmlRetTx:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v30           #xmlTx:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v35           #xmlTx_CTType:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v36           #xmlTx_VerCT:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_8
    if-eqz v20, :cond_b

    .line 1284
    const-string v37, "Rx-Pref"

    move-object/from16 v0, v37

    invoke-virtual {v10, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v14

    .line 1285
    .local v14, xmlRetRxPref:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v37, "CTType"

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v21

    .line 1286
    .local v21, xmlRxPref_CTType:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v37, "VerCT"

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v22

    .line 1287
    .local v22, xmlRxPref_VerCT:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v21, :cond_9

    if-nez v22, :cond_a

    .line 1289
    :cond_9
    const-string v37, "DataStore"

    const-string v38, "<!ELEMENT Rx-Pref (CTType, VerCT)>"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1292
    :cond_a
    const-string v37, "CTType"

    invoke-virtual/range {v21 .. v21}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1293
    const-string v37, "VerCT"

    invoke-virtual/range {v22 .. v22}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1294
    if-nez v3, :cond_b

    .line 1296
    const-string v37, "Rx"

    move-object/from16 v0, v37

    invoke-virtual {v10, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v18

    .line 1297
    .restart local v18       #xmlRx:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v37, "CTType"

    invoke-virtual/range {v21 .. v21}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1298
    const-string v37, "VerCT"

    invoke-virtual/range {v22 .. v22}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1303
    .end local v14           #xmlRetRxPref:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v18           #xmlRx:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v21           #xmlRxPref_CTType:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v22           #xmlRxPref_VerCT:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_b
    if-eqz v32, :cond_e

    .line 1305
    const-string v37, "Tx-Pref"

    move-object/from16 v0, v37

    invoke-virtual {v10, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v17

    .line 1306
    .local v17, xmlRetTxPref:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v37, "CTType"

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v33

    .line 1307
    .local v33, xmlTxPref_CTType:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v37, "VerCT"

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v34

    .line 1308
    .local v34, xmlTxPref_VerCT:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v33, :cond_c

    if-nez v34, :cond_d

    .line 1310
    :cond_c
    const-string v37, "DataStore"

    const-string v38, "<!ELEMENT Tx-Pref (CTType, VerCT)>"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1313
    :cond_d
    const-string v37, "CTType"

    invoke-virtual/range {v33 .. v33}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1314
    const-string v37, "VerCT"

    invoke-virtual/range {v34 .. v34}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1315
    if-nez v4, :cond_e

    .line 1317
    const-string v37, "Tx"

    move-object/from16 v0, v37

    invoke-virtual {v10, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v30

    .line 1318
    .restart local v30       #xmlTx:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v37, "CTType"

    invoke-virtual/range {v33 .. v33}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1319
    const-string v37, "VerCT"

    invoke-virtual/range {v34 .. v34}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1324
    .end local v17           #xmlRetTxPref:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v30           #xmlTx:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v33           #xmlTxPref_CTType:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v34           #xmlTxPref_VerCT:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/syncml/Parser;->includeCTCap:Z

    move/from16 v37, v0

    if-eqz v37, :cond_10

    if-eqz v7, :cond_10

    .line 1326
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/futuredial/syncml/Parser;->ParseCTCap(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1327
    .local v11, xmlRetCTCapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    if-nez v11, :cond_f

    .line 1329
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1331
    :cond_f
    invoke-virtual {v10, v11}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/util/ArrayList;)V

    .line 1335
    .end local v11           #xmlRetCTCapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    :cond_10
    const-string v37, "DSMem"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v8

    .line 1336
    .local v8, xmlDSMem:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v8, :cond_12

    .line 1338
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/futuredial/syncml/Parser;->ParseDSMem(Lcom/futuredial/xmlbuild/XmlElement;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v12

    .line 1339
    .local v12, xmlRetDSMem:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v12, :cond_11

    .line 1341
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1343
    :cond_11
    invoke-virtual {v10, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    .line 1347
    .end local v12           #xmlRetDSMem:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_12
    const-string v37, "SupportHierarchicalSync"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v26

    .line 1348
    .local v26, xmlSupportHierarchicalSync:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v26, :cond_13

    .line 1350
    const-string v37, "SupportHierarchicalSync"

    move-object/from16 v0, v37

    invoke-virtual {v10, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1354
    :cond_13
    new-instance v15, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v37, "SyncCap"

    move-object/from16 v0, v37

    invoke-direct {v15, v0}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 1355
    .local v15, xmlRetSyncCap:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v37, "SyncType"

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChildList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v29

    .line 1356
    .local v29, xmlSyncTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    if-nez v29, :cond_14

    .line 1358
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1360
    :cond_14
    const/4 v5, 0x0

    .restart local v5       #i:I
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v6

    .restart local v6       #nCount:I
    :goto_5
    if-ge v5, v6, :cond_16

    .line 1362
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/futuredial/xmlbuild/XmlElement;

    .line 1363
    .local v28, xmlSyncType:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v28, :cond_15

    .line 1360
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1367
    :cond_15
    const-string v37, "SyncType"

    invoke-virtual/range {v28 .. v28}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v15, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    goto :goto_6

    .line 1369
    .end local v28           #xmlSyncType:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_16
    invoke-virtual {v10, v15}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    goto/16 :goto_2
.end method

.method protected ParseAndBuildSyncBody(Lcom/futuredial/xmlbuild/XmlElement;)Lcom/futuredial/xmlbuild/XmlElement;
    .locals 14
    .parameter "xmlElement"

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, bMoreCmd:Z
    invoke-virtual {p1}, Lcom/futuredial/xmlbuild/XmlElement;->getChildXmlElementList()Ljava/util/ArrayList;

    move-result-object v2

    .line 301
    .local v2, childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    if-nez v2, :cond_1

    .line 303
    const/4 v10, 0x0

    .line 468
    :cond_0
    :goto_0
    return-object v10

    .line 305
    :cond_1
    const/4 v1, 0x0

    .line 307
    .local v1, bNeedReturnDevInf:Z
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, nCount:I
    :goto_1
    if-ge v3, v4, :cond_e

    .line 309
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/futuredial/xmlbuild/XmlElement;

    .line 310
    .local v8, xmlCommand:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v8, :cond_3

    .line 307
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 314
    :cond_3
    invoke-virtual {v8}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v6

    .line 315
    .local v6, strTag:Ljava/lang/String;
    const-string v12, "Status"

    invoke-virtual {v12, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_4

    .line 317
    invoke-virtual {p0, v8}, Lcom/futuredial/syncml/Parser;->ParseStatus(Lcom/futuredial/xmlbuild/XmlElement;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 319
    const/4 v10, 0x0

    goto :goto_0

    .line 322
    :cond_4
    const-string v12, "Sync"

    invoke-virtual {v12, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_6

    .line 324
    invoke-virtual {p0, v8}, Lcom/futuredial/syncml/Parser;->ParseSync(Lcom/futuredial/xmlbuild/XmlElement;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 326
    const/4 v10, 0x0

    goto :goto_0

    .line 328
    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    .line 330
    :cond_6
    const-string v12, "Alert"

    invoke-virtual {v12, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_8

    .line 332
    invoke-virtual {p0, v8}, Lcom/futuredial/syncml/Parser;->ParseAlert(Lcom/futuredial/xmlbuild/XmlElement;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 334
    const/4 v10, 0x0

    goto :goto_0

    .line 336
    :cond_7
    const/4 v0, 0x1

    goto :goto_2

    .line 338
    :cond_8
    const-string v12, "Get"

    invoke-virtual {v12, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_a

    .line 340
    invoke-virtual {p0, v8}, Lcom/futuredial/syncml/Parser;->ParseGet(Lcom/futuredial/xmlbuild/XmlElement;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 342
    const/4 v10, 0x0

    goto :goto_0

    .line 344
    :cond_9
    const/4 v1, 0x1

    .line 345
    const/4 v0, 0x1

    goto :goto_2

    .line 347
    :cond_a
    const-string v12, "Put"

    invoke-virtual {v12, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_c

    .line 349
    invoke-virtual {p0, v8}, Lcom/futuredial/syncml/Parser;->ParsePut(Lcom/futuredial/xmlbuild/XmlElement;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 351
    const/4 v10, 0x0

    goto :goto_0

    .line 353
    :cond_b
    const/4 v0, 0x1

    goto :goto_2

    .line 355
    :cond_c
    const-string v12, "Final"

    invoke-virtual {v12, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_d

    .line 357
    invoke-virtual {p0, v8}, Lcom/futuredial/syncml/Parser;->ParseFinal(Lcom/futuredial/xmlbuild/XmlElement;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 359
    const/4 v10, 0x0

    goto :goto_0

    .line 362
    :cond_d
    const-string v12, "Atomic"

    invoke-virtual {v12, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_2

    .line 366
    const-string v12, "Copy"

    invoke-virtual {v12, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_2

    .line 370
    const-string v12, "Exec"

    invoke-virtual {v12, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_2

    .line 374
    const-string v12, "Map"

    invoke-virtual {v12, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_2

    .line 378
    const-string v12, "Results"

    invoke-virtual {v12, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_2

    .line 382
    const-string v12, "Search"

    invoke-virtual {v12, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_2

    .line 386
    const-string v12, "Sequence"

    invoke-virtual {v12, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_2

    .line 390
    const-string v12, "Add"

    invoke-virtual {v12, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_2

    .line 394
    const-string v12, "Move"

    invoke-virtual {v12, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_2

    .line 398
    const-string v12, "Replace"

    invoke-virtual {v12, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_2

    .line 402
    const-string v12, "Delete"

    invoke-virtual {v12, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_2

    .line 408
    const-string v12, "SYNCML"

    const-string v13, "ParseAndBuildSyncBody"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 412
    .end local v6           #strTag:Ljava/lang/String;
    .end local v8           #xmlCommand:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_e
    new-instance v10, Lcom/futuredial/xmlbuild/XmlElement;

    invoke-direct {v10}, Lcom/futuredial/xmlbuild/XmlElement;-><init>()V

    .line 413
    .local v10, xmlRet:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v12, "SyncBody"

    invoke-virtual {v10, v12}, Lcom/futuredial/xmlbuild/XmlElement;->setName(Ljava/lang/String;)V

    .line 415
    iget-object v12, p0, Lcom/futuredial/syncml/Parser;->statusList:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/util/ArrayList;)V

    .line 417
    if-eqz v1, :cond_10

    .line 419
    invoke-virtual {p0}, Lcom/futuredial/syncml/Parser;->BuildResult()Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v9

    .line 420
    .local v9, xmlResult:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v9, :cond_f

    .line 422
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 424
    :cond_f
    invoke-virtual {v10, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    .line 425
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/futuredial/syncml/Parser;->DataStore:Lcom/futuredial/xmlbuild/XmlElement;

    .line 427
    .end local v9           #xmlResult:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_10
    iget-object v12, p0, Lcom/futuredial/syncml/Parser;->statusList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 429
    iget-object v12, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v12}, Lcom/futuredial/syncml/Parameter;->getAppStatus()I

    move-result v12

    const/16 v13, 0xa

    if-ne v12, v13, :cond_11

    .line 431
    invoke-virtual {p0}, Lcom/futuredial/syncml/Parser;->BuildSyncAlert()Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v7

    .line 432
    .local v7, xmlAlert:Lcom/futuredial/xmlbuild/XmlElement;
    iget-object v12, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/16 v13, 0x14

    invoke-virtual {v12, v13}, Lcom/futuredial/syncml/Parameter;->setAppStatus(I)V

    .line 433
    invoke-virtual {v10, v7}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    .line 440
    .end local v7           #xmlAlert:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_11
    iget-object v12, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const-string v13, "Final"

    invoke-virtual {v12, v13}, Lcom/futuredial/syncml/Parameter;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 441
    .local v5, strFinal:Ljava/lang/String;
    iget-object v12, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v12}, Lcom/futuredial/syncml/Parameter;->getAppStatus()I

    move-result v12

    const/16 v13, 0x19

    if-ne v12, v13, :cond_13

    .line 443
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_13

    .line 445
    :cond_12
    invoke-virtual {p0}, Lcom/futuredial/syncml/Parser;->BuildBodyAlert()Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v7

    .line 446
    .restart local v7       #xmlAlert:Lcom/futuredial/xmlbuild/XmlElement;
    invoke-virtual {v10, v7}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    .line 450
    .end local v7           #xmlAlert:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_13
    iget-object v12, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v12}, Lcom/futuredial/syncml/Parameter;->getAppStatus()I

    move-result v12

    const/16 v13, 0x1b

    if-ne v12, v13, :cond_14

    .line 452
    iget-object v12, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/16 v13, 0x1e

    invoke-virtual {v12, v13}, Lcom/futuredial/syncml/Parameter;->setAppStatus(I)V

    .line 453
    invoke-virtual {p0}, Lcom/futuredial/syncml/Parser;->BuildSync()Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v11

    .line 454
    .local v11, xmlSync:Lcom/futuredial/xmlbuild/XmlElement;
    invoke-virtual {v10, v11}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    .line 457
    .end local v11           #xmlSync:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_14
    iget-object v12, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v12}, Lcom/futuredial/syncml/Parameter;->getAppStatus()I

    move-result v12

    const/16 v13, 0x23

    if-ne v12, v13, :cond_15

    if-nez v0, :cond_15

    .line 459
    iget-object v12, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/16 v13, 0x28

    invoke-virtual {v12, v13}, Lcom/futuredial/syncml/Parameter;->setAppStatus(I)V

    .line 463
    :cond_15
    iget-boolean v12, p0, Lcom/futuredial/syncml/Parser;->bFinalEleEveryMsg:Z

    if-nez v12, :cond_16

    if-eqz v5, :cond_0

    const-string v12, "true"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 465
    :cond_16
    const-string v12, "Final"

    invoke-virtual {v10, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    goto/16 :goto_0
.end method

.method public ParseAndBuildSyncMLDoc(Lcom/futuredial/xmlbuild/XmlDoc;)Lcom/futuredial/xmlbuild/XmlDoc;
    .locals 7
    .parameter "xmldoc"

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 80
    iget-object v5, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v5}, Lcom/futuredial/syncml/Parameter;->resetParameter()V

    .line 81
    iput v6, p0, Lcom/futuredial/syncml/Parser;->commandID:I

    .line 82
    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :cond_1
    invoke-virtual {p1}, Lcom/futuredial/xmlbuild/XmlDoc;->getDocTypeString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, strDocType:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/futuredial/xmlbuild/XmlDoc;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, strFormat:Ljava/lang/String;
    const-string v5, "-//SYNCML//DTD_DevInf_1.2//EN"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_2

    const-string v5, "-//SYNCML//DTD_SyncML_1.2//EN"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 91
    :cond_2
    iget-object v5, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/futuredial/syncml/Parameter;->setSyncMLVersion(I)V

    .line 103
    :goto_1
    invoke-virtual {p1}, Lcom/futuredial/xmlbuild/XmlDoc;->getRootElement()Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 104
    .local v4, xmlRoot:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v4, :cond_0

    .line 108
    const-string v5, "SyncML"

    invoke-virtual {v4}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 112
    invoke-virtual {p0, v4}, Lcom/futuredial/syncml/Parser;->ParseAndBuildSyncMLElement(Lcom/futuredial/xmlbuild/XmlElement;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v1

    .line 113
    .local v1, retRoot:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v1, :cond_0

    .line 119
    new-instance v0, Lcom/futuredial/xmlbuild/XmlDoc;

    invoke-direct {v0}, Lcom/futuredial/xmlbuild/XmlDoc;-><init>()V

    .line 120
    .local v0, retDoc:Lcom/futuredial/xmlbuild/XmlDoc;
    invoke-virtual {v0, v2}, Lcom/futuredial/xmlbuild/XmlDoc;->setDocTypeString(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v3}, Lcom/futuredial/xmlbuild/XmlDoc;->setFormat(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlDoc;->setRootElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    goto :goto_0

    .line 93
    .end local v0           #retDoc:Lcom/futuredial/xmlbuild/XmlDoc;
    .end local v1           #retRoot:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v4           #xmlRoot:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_3
    const-string v5, "-//SYNCML//DTD_DevInf_1.1//EN"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_4

    const-string v5, "-//SYNCML//DTD_SyncML_1.1//EN"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 95
    :cond_4
    iget-object v5, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v5, v6}, Lcom/futuredial/syncml/Parameter;->setSyncMLVersion(I)V

    goto :goto_1
.end method

.method protected ParseAndBuildSyncMLElement(Lcom/futuredial/xmlbuild/XmlElement;)Lcom/futuredial/xmlbuild/XmlElement;
    .locals 11
    .parameter "xmlElement"

    .prologue
    const/4 v10, 0x5

    const/4 v7, 0x0

    .line 130
    iget-object v8, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/futuredial/syncml/Parameter;->setSyncMLVersion(I)V

    .line 131
    const-string v8, "xmlns"

    invoke-virtual {p1, v8}, Lcom/futuredial/xmlbuild/XmlElement;->findAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, strCodePage:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 134
    const-string v8, "syncml:SYNCML1.2"

    invoke-virtual {v8, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    .line 136
    iget-object v8, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/futuredial/syncml/Parameter;->setSyncMLVersion(I)V

    .line 143
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v8}, Lcom/futuredial/syncml/Parameter;->getSyncMLVersion()I

    move-result v8

    if-nez v8, :cond_3

    .line 201
    :cond_1
    :goto_1
    return-object v7

    .line 138
    :cond_2
    const-string v8, "syncml:SYNCML1.1"

    invoke-virtual {v8, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_0

    .line 140
    iget-object v8, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/futuredial/syncml/Parameter;->setSyncMLVersion(I)V

    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {p1}, Lcom/futuredial/xmlbuild/XmlElement;->getChildXmlElementList()Ljava/util/ArrayList;

    move-result-object v1

    .line 149
    .local v1, childElenentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    if-eqz v1, :cond_1

    .line 154
    const/4 v5, 0x0

    .line 155
    .local v5, retHdr:Lcom/futuredial/xmlbuild/XmlElement;
    const/4 v4, 0x0

    .line 157
    .local v4, retBody:Lcom/futuredial/xmlbuild/XmlElement;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, nCount:I
    :goto_2
    if-ge v2, v3, :cond_7

    .line 159
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/xmlbuild/XmlElement;

    .line 160
    .local v0, childElement:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v0, :cond_5

    .line 157
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 165
    :cond_5
    const-string v8, "SyncHdr"

    invoke-virtual {v0}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    .line 167
    invoke-virtual {p0, v0}, Lcom/futuredial/syncml/Parser;->ParseSyncHdr(Lcom/futuredial/xmlbuild/XmlElement;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/futuredial/syncml/Parser;->BuildSyncHdr()Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v5

    .line 172
    if-eqz v5, :cond_1

    .line 176
    iget-object v8, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v8}, Lcom/futuredial/syncml/Parameter;->getAppStatus()I

    move-result v8

    if-ge v8, v10, :cond_4

    .line 178
    iget-object v8, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v8, v10}, Lcom/futuredial/syncml/Parameter;->setAppStatus(I)V

    goto :goto_3

    .line 181
    :cond_6
    const-string v8, "SyncBody"

    invoke-virtual {v0}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 183
    invoke-virtual {p0, v0}, Lcom/futuredial/syncml/Parser;->ParseAndBuildSyncBody(Lcom/futuredial/xmlbuild/XmlElement;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 184
    if-nez v4, :cond_4

    goto :goto_1

    .line 196
    .end local v0           #childElement:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_7
    new-instance v7, Lcom/futuredial/xmlbuild/XmlElement;

    invoke-direct {v7}, Lcom/futuredial/xmlbuild/XmlElement;-><init>()V

    .line 197
    .local v7, xmlRet:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v8, "SyncML"

    invoke-virtual {v7, v8}, Lcom/futuredial/xmlbuild/XmlElement;->setName(Ljava/lang/String;)V

    .line 198
    const-string v8, "xmlns"

    invoke-virtual {v7, v8, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 199
    invoke-virtual {v7, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    .line 200
    invoke-virtual {v7, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    goto :goto_1
.end method

.method protected ParseCTCap(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/xmlbuild/XmlElement;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/xmlbuild/XmlElement;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, xmlCTCapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    const/4 v10, 0x0

    .line 1564
    const/4 v7, 0x0

    .line 1566
    .local v7, xmlRetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, nLen:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1568
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/xmlbuild/XmlElement;

    .line 1569
    .local v2, xmlCTCap:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v2, :cond_0

    .line 1566
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1574
    :cond_0
    const-string v11, "CTType"

    invoke-virtual {v2, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 1575
    .local v3, xmlCTType:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v11, "VerCT"

    invoke-virtual {v2, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v9

    .line 1576
    .local v9, xmlVerCT:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v11, "Property"

    invoke-virtual {v2, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChildList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1578
    .local v5, xmlPropertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    if-eqz v3, :cond_1

    if-eqz v9, :cond_1

    if-nez v5, :cond_3

    .line 1580
    :cond_1
    const-string v11, "CTCap"

    const-string v12, "<!ELEMENT CTCap (CTType, VerCT, FieldLevel?, Property+)>"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v10

    .line 1607
    .end local v2           #xmlCTCap:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v3           #xmlCTType:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v5           #xmlPropertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    .end local v7           #xmlRetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    .end local v9           #xmlVerCT:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_2
    :goto_2
    return-object v7

    .line 1583
    .restart local v2       #xmlCTCap:Lcom/futuredial/xmlbuild/XmlElement;
    .restart local v3       #xmlCTType:Lcom/futuredial/xmlbuild/XmlElement;
    .restart local v5       #xmlPropertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    .restart local v7       #xmlRetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    .restart local v9       #xmlVerCT:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_3
    new-instance v6, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v11, "CTCap"

    invoke-direct {v6, v11}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 1584
    .local v6, xmlRetCTCap:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v11, "CTType"

    invoke-virtual {v3}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1585
    const-string v11, "VerCT"

    invoke-virtual {v9}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1587
    const-string v11, "FieldLevel"

    invoke-virtual {v2, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 1588
    .local v4, xmlFieldLevel:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v4, :cond_4

    .line 1590
    const-string v11, "FieldLevel"

    invoke-virtual {v6, v11}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1593
    :cond_4
    invoke-virtual {p0, v5}, Lcom/futuredial/syncml/Parser;->ParsePropertyList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1594
    .local v8, xmlRetProtertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    if-nez v8, :cond_5

    .line 1596
    const-string v11, "ParseCTCat"

    const-string v12, "xmlRetProtertyList == null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v10

    .line 1597
    goto :goto_2

    .line 1599
    :cond_5
    invoke-virtual {v6, v8}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/util/ArrayList;)V

    .line 1601
    if-nez v7, :cond_6

    .line 1603
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #xmlRetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1605
    .restart local v7       #xmlRetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    :cond_6
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected ParseDSMem(Lcom/futuredial/xmlbuild/XmlElement;)Lcom/futuredial/xmlbuild/XmlElement;
    .locals 6
    .parameter "xmlElement"

    .prologue
    .line 1376
    new-instance v2, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v4, "DSMem"

    invoke-direct {v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 1379
    .local v2, xmlRet:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v4, "SharedMem"

    invoke-virtual {p1, v4}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 1380
    .local v3, xmlSharedMem:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v3, :cond_0

    .line 1382
    const-string v4, "SharedMem"

    invoke-virtual {v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1385
    :cond_0
    const-string v4, "MaxMem"

    invoke-virtual {p1, v4}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v1

    .line 1386
    .local v1, xmlMaxMem:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v1, :cond_1

    .line 1388
    const-string v4, "MaxMem"

    invoke-virtual {v1}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1391
    :cond_1
    const-string v4, "MaxID"

    invoke-virtual {p1, v4}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v0

    .line 1392
    .local v0, xmlMaxID:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v0, :cond_2

    .line 1394
    const-string v4, "MaxID"

    invoke-virtual {v0}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1397
    :cond_2
    return-object v2
.end method

.method protected ParseDelete(Lcom/futuredial/xmlbuild/XmlElement;)Z
    .locals 18
    .parameter "xmlElement"

    .prologue
    .line 763
    const-string v1, "CmdID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v9

    .line 765
    .local v9, xmlCmdID:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v1, "Item"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v10

    .line 766
    .local v10, xmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v9, :cond_0

    if-nez v10, :cond_1

    .line 768
    :cond_0
    const/4 v1, 0x0

    .line 819
    :goto_0
    return v1

    .line 772
    :cond_1
    new-instance v16, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v1, "Status"

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 773
    .local v16, xmlStatus:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v1, "CmdID"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/futuredial/syncml/Parser;->commandID:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/futuredial/syncml/Parser;->commandID:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 774
    const-string v1, "MsgRef"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v3}, Lcom/futuredial/syncml/Parameter;->getMessageID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 775
    const-string v1, "CmdRef"

    invoke-virtual {v9}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 776
    const-string v1, "Cmd"

    const-string v3, "Delete"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 777
    const-string v1, "Data"

    const-string v3, "201"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 780
    const/4 v5, 0x0

    .local v5, strSource:Ljava/lang/String;
    const/4 v6, 0x0

    .line 782
    .local v6, strSourceParent:Ljava/lang/String;
    const-string v1, "Source"

    invoke-virtual {v10, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v14

    .line 783
    .local v14, xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v14, :cond_3

    .line 785
    const-string v1, "LocURI"

    invoke-virtual {v14, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v13

    .line 786
    .local v13, xmlSLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v13, :cond_2

    .line 788
    const/4 v1, 0x0

    goto :goto_0

    .line 790
    :cond_2
    invoke-virtual {v13}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 791
    const-string v1, "SourceRef"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 795
    .end local v13           #xmlSLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_3
    const-string v1, "SourceParent"

    invoke-virtual {v10, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v15

    .line 796
    .local v15, xmlSourceParent:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v15, :cond_5

    .line 798
    const-string v1, "LocURI"

    invoke-virtual {v15, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v11

    .line 799
    .local v11, xmlLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v11, :cond_4

    .line 801
    const/4 v1, 0x0

    goto :goto_0

    .line 803
    :cond_4
    invoke-virtual {v11}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 806
    .end local v11           #xmlLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_5
    const/4 v2, 0x0

    .line 807
    .local v2, strDataType:Ljava/lang/String;
    const-string v1, "Meta"

    invoke-virtual {v10, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v12

    .line 808
    .local v12, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v12, :cond_6

    .line 810
    const-string v1, "Type"

    invoke-virtual {v12, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v17

    .line 811
    .local v17, xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v17, :cond_6

    .line 813
    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 817
    .end local v17           #xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/syncml/Parser;->itemStorage:Lcom/futuredial/syncml/ItemStorage;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/futuredial/syncml/ItemStorage;->OnDataRecved(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    .line 818
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/syncml/Parser;->statusList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method protected ParseDevInf(Lcom/futuredial/xmlbuild/XmlElement;)Z
    .locals 14
    .parameter "xmlElement"

    .prologue
    .line 1144
    const-string v12, "VerDTD"

    invoke-virtual {p1, v12}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v11

    .line 1145
    .local v11, xmlVerDTD:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v12, "Man"

    invoke-virtual {p1, v12}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v5

    .line 1146
    .local v5, xmlMan:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v12, "Mod"

    invoke-virtual {p1, v12}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v6

    .line 1147
    .local v6, xmlMod:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v12, "FwV"

    invoke-virtual {p1, v12}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 1148
    .local v3, xmlFwV:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v12, "SwV"

    invoke-virtual {p1, v12}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v9

    .line 1149
    .local v9, xmlSwV:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v12, "HwV"

    invoke-virtual {p1, v12}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 1150
    .local v4, xmlHwV:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v12, "DevID"

    invoke-virtual {p1, v12}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v1

    .line 1151
    .local v1, xmlDevID:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v12, "DevTyp"

    invoke-virtual {p1, v12}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v2

    .line 1152
    .local v2, xmlDevTyp:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v12, "DataStore"

    invoke-virtual {p1, v12}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v0

    .line 1162
    .local v0, xmlDataStore:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v12, "SupportLargeObjs"

    invoke-virtual {p1, v12}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v7

    .line 1163
    .local v7, xmlSupportLargeObjs:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v7, :cond_0

    .line 1165
    iget-object v12, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/futuredial/syncml/Parameter;->setSupportMoreData(Z)V

    .line 1172
    :goto_0
    const-string v12, "SupportNumberOfChanges"

    invoke-virtual {p1, v12}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v8

    .line 1173
    .local v8, xmlSupportNumberOfChanges:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v8, :cond_1

    .line 1175
    iget-object v12, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/futuredial/syncml/Parameter;->setSupportNumberOfChange(Z)V

    .line 1182
    :goto_1
    const-string v12, "UTC"

    invoke-virtual {p1, v12}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v10

    .line 1183
    .local v10, xmlUTC:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v10, :cond_2

    .line 1185
    iget-object v12, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/futuredial/syncml/Parameter;->setSupportUTC(Z)V

    .line 1192
    :goto_2
    if-eqz v0, :cond_3

    .line 1194
    invoke-virtual {p0, v0}, Lcom/futuredial/syncml/Parser;->ParseAndBuildDataStore(Lcom/futuredial/xmlbuild/XmlElement;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v12

    iput-object v12, p0, Lcom/futuredial/syncml/Parser;->DataStore:Lcom/futuredial/xmlbuild/XmlElement;

    .line 1195
    iget-object v12, p0, Lcom/futuredial/syncml/Parser;->DataStore:Lcom/futuredial/xmlbuild/XmlElement;

    if-nez v12, :cond_3

    .line 1197
    const/4 v12, 0x0

    .line 1201
    :goto_3
    return v12

    .line 1169
    .end local v8           #xmlSupportNumberOfChanges:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v10           #xmlUTC:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_0
    iget-object v12, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/futuredial/syncml/Parameter;->setSupportMoreData(Z)V

    goto :goto_0

    .line 1179
    .restart local v8       #xmlSupportNumberOfChanges:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_1
    iget-object v12, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/futuredial/syncml/Parameter;->setSupportNumberOfChange(Z)V

    goto :goto_1

    .line 1189
    .restart local v10       #xmlUTC:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_2
    iget-object v12, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/futuredial/syncml/Parameter;->setSupportUTC(Z)V

    goto :goto_2

    .line 1201
    :cond_3
    const/4 v12, 0x1

    goto :goto_3
.end method

.method protected ParseFinal(Lcom/futuredial/xmlbuild/XmlElement;)Z
    .locals 4
    .parameter "xmlElement"

    .prologue
    const/16 v3, 0x1b

    .line 945
    iget-object v0, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const-string v1, "Final"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/syncml/Parameter;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v0}, Lcom/futuredial/syncml/Parameter;->getAppStatus()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    .line 948
    iget-object v0, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v0}, Lcom/futuredial/syncml/Parameter;->isSupportNumberOfChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 950
    iget-object v0, p0, Lcom/futuredial/syncml/Parser;->itemStorage:Lcom/futuredial/syncml/ItemStorage;

    invoke-virtual {v0}, Lcom/futuredial/syncml/ItemStorage;->InItemFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v0, v3}, Lcom/futuredial/syncml/Parameter;->setAppStatus(I)V

    .line 960
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 957
    :cond_1
    iget-object v0, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v0, v3}, Lcom/futuredial/syncml/Parameter;->setAppStatus(I)V

    goto :goto_0
.end method

.method protected ParseGet(Lcom/futuredial/xmlbuild/XmlElement;)Z
    .locals 9
    .parameter "xmlElement"

    .prologue
    const/4 v6, 0x0

    .line 1043
    const-string v7, "CmdID"

    invoke-virtual {p1, v7}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v0

    .line 1045
    .local v0, xmlCmdID:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v7, "Item"

    invoke-virtual {p1, v7}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v1

    .line 1046
    .local v1, xmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return v6

    .line 1051
    :cond_1
    invoke-virtual {v0}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/futuredial/syncml/Parser;->getCmdID:Ljava/lang/String;

    .line 1062
    const-string v7, "Target"

    invoke-virtual {v1, v7}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 1063
    .local v4, xmlTarget:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v4, :cond_2

    .line 1065
    const-string v7, "LocURI"

    invoke-virtual {v4, v7}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 1066
    .local v3, xmlTLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v3, :cond_0

    .line 1071
    iget-object v6, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const-string v7, "DevInf"

    invoke-virtual {v3}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/futuredial/syncml/Parameter;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    .end local v3           #xmlTLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_2
    const-string v6, "Meta"

    invoke-virtual {p1, v6}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v2

    .line 1076
    .local v2, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v2, :cond_3

    .line 1078
    const-string v6, "Type"

    invoke-virtual {v2, v6}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v5

    .line 1079
    .local v5, xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v5, :cond_3

    .line 1081
    iget-object v6, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const-string v7, "DevInfContentType"

    invoke-virtual {v5}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/futuredial/syncml/Parameter;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    .end local v5           #xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_3
    const/4 v6, 0x1

    goto :goto_0
.end method

.method protected ParsePropParamList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/xmlbuild/XmlElement;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/xmlbuild/XmlElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1503
    .local p1, xmlPropParamList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    const/4 v8, 0x0

    .line 1504
    .local v8, xmlRetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, nCount:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1506
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/futuredial/xmlbuild/XmlElement;

    .line 1507
    .local v7, xmlPropParam:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v7, :cond_0

    .line 1504
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1513
    :cond_0
    const-string v12, "ParamName"

    invoke-virtual {v7, v12}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v6

    .line 1514
    .local v6, xmlParamName:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v6, :cond_2

    .line 1516
    const-string v12, "ParsePropParamList"

    const-string v13, "xmlParamName == null"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    const/4 v8, 0x0

    .line 1558
    .end local v6           #xmlParamName:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v7           #xmlPropParam:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v8           #xmlRetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    :cond_1
    return-object v8

    .line 1520
    .restart local v6       #xmlParamName:Lcom/futuredial/xmlbuild/XmlElement;
    .restart local v7       #xmlPropParam:Lcom/futuredial/xmlbuild/XmlElement;
    .restart local v8       #xmlRetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    :cond_2
    new-instance v9, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v12, "PropParam"

    invoke-direct {v9, v12}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 1521
    .local v9, xmlRetPropParam:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v12, "ParamName"

    invoke-virtual {v6}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1524
    const-string v12, "DataType"

    invoke-virtual {v7, v12}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 1525
    .local v4, xmlDataType:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v4, :cond_3

    .line 1527
    const-string v12, "DataType"

    invoke-virtual {v4}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1531
    :cond_3
    const-string v12, "ValEnum"

    invoke-virtual {v7, v12}, Lcom/futuredial/xmlbuild/XmlElement;->getChildList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1532
    .local v11, xmlValEnumList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    if-eqz v11, :cond_5

    .line 1534
    const/4 v0, 0x0

    .local v0, a:I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, nLen:I
    :goto_2
    if-ge v0, v3, :cond_5

    .line 1536
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/futuredial/xmlbuild/XmlElement;

    .line 1537
    .local v10, xmlValEnum:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v10, :cond_4

    .line 1534
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1541
    :cond_4
    const-string v12, "ValEnum"

    invoke-virtual {v10}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    goto :goto_3

    .line 1546
    .end local v0           #a:I
    .end local v3           #nLen:I
    .end local v10           #xmlValEnum:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_5
    const-string v12, "DisplayName"

    invoke-virtual {v9, v12}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v5

    .line 1547
    .local v5, xmlDisplayName:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v5, :cond_6

    .line 1549
    const-string v12, "DisplayName"

    invoke-virtual {v5}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1552
    :cond_6
    if-nez v8, :cond_7

    .line 1554
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #xmlRetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1556
    .restart local v8       #xmlRetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    :cond_7
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected ParsePropertyList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 23
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/xmlbuild/XmlElement;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/xmlbuild/XmlElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1402
    .local p1, xmlPropertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    const/4 v15, 0x0

    .line 1403
    .local v15, xmlRetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    const/4 v4, 0x0

    .local v4, i:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, nCount:I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 1405
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/futuredial/xmlbuild/XmlElement;

    .line 1406
    .local v14, xmlProperty:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v14, :cond_0

    .line 1403
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1412
    :cond_0
    const-string v21, "PropName"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v12

    .line 1413
    .local v12, xmlPropName:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v12, :cond_2

    .line 1415
    const-string v21, "ParsePropertyList"

    const-string v22, "xmlPropName == null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    const/4 v15, 0x0

    .line 1497
    .end local v12           #xmlPropName:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v14           #xmlProperty:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v15           #xmlRetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    :cond_1
    :goto_2
    return-object v15

    .line 1418
    .restart local v12       #xmlPropName:Lcom/futuredial/xmlbuild/XmlElement;
    .restart local v14       #xmlProperty:Lcom/futuredial/xmlbuild/XmlElement;
    .restart local v15       #xmlRetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    :cond_2
    new-instance v17, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v21, "Property"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 1419
    .local v17, xmlRetProperty:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v21, "PropName"

    invoke-virtual {v12}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1422
    const-string v21, "Size"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v18

    .line 1423
    .local v18, xmlSize:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v18, :cond_3

    .line 1425
    const-string v21, "Size"

    invoke-virtual/range {v18 .. v18}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1429
    :cond_3
    const-string v21, "DataType"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v7

    .line 1430
    .local v7, xmlDataType:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v7, :cond_4

    .line 1432
    const-string v21, "DataType"

    invoke-virtual {v7}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1436
    :cond_4
    const-string v21, "MaxOccur"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v9

    .line 1437
    .local v9, xmlMaxOccur:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v9, :cond_5

    .line 1439
    const-string v21, "MaxOccur"

    invoke-virtual {v9}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1443
    :cond_5
    const-string v21, "MaxSize"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v10

    .line 1444
    .local v10, xmlMaxSize:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v10, :cond_6

    .line 1446
    const-string v21, "MaxSize"

    invoke-virtual {v10}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1450
    :cond_6
    const-string v21, "NoTruncate"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v11

    .line 1451
    .local v11, xmlNoTruncate:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v11, :cond_7

    .line 1453
    const-string v21, "NoTruncate"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1457
    :cond_7
    const-string v21, "ValEnum"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChildList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 1458
    .local v20, xmlValEnumList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    if-eqz v20, :cond_9

    .line 1460
    const/4 v3, 0x0

    .local v3, a:I
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, nCountsize:I
    :goto_3
    if-ge v3, v6, :cond_9

    .line 1462
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/futuredial/xmlbuild/XmlElement;

    .line 1463
    .local v19, xmlValEnum:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v19, :cond_8

    .line 1460
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1467
    :cond_8
    const-string v21, "ValEnum"

    invoke-virtual/range {v19 .. v19}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    goto :goto_4

    .line 1472
    .end local v3           #a:I
    .end local v6           #nCountsize:I
    .end local v19           #xmlValEnum:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_9
    const-string v21, "DisplayName"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v8

    .line 1473
    .local v8, xmlDisplayName:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v8, :cond_a

    .line 1475
    const-string v21, "DisplayName"

    invoke-virtual {v8}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1479
    :cond_a
    const-string v21, "PropParam"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChildList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1480
    .local v13, xmlPropParamList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    if-eqz v13, :cond_c

    .line 1482
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/futuredial/syncml/Parser;->ParsePropParamList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v16

    .line 1483
    .local v16, xmlRetPropParamList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    if-nez v16, :cond_b

    .line 1485
    const-string v21, "ParsePropertyList"

    const-string v22, "xmlRetPropParamList == null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1488
    :cond_b
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/util/ArrayList;)V

    .line 1491
    .end local v16           #xmlRetPropParamList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    :cond_c
    if-nez v15, :cond_d

    .line 1493
    new-instance v15, Ljava/util/ArrayList;

    .end local v15           #xmlRetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1495
    .restart local v15       #xmlRetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    :cond_d
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method protected ParsePut(Lcom/futuredial/xmlbuild/XmlElement;)Z
    .locals 11
    .parameter "xmlElement"

    .prologue
    const/4 v7, 0x0

    .line 1096
    const-string v8, "CmdID"

    invoke-virtual {p1, v8}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v0

    .line 1098
    .local v0, xmlCmdID:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v8, "Item"

    invoke-virtual {p1, v8}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 1099
    .local v3, xmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    .line 1138
    :cond_0
    :goto_0
    return v7

    .line 1105
    :cond_1
    new-instance v6, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v8, "Status"

    invoke-direct {v6, v8}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 1106
    .local v6, xmlStatus:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v8, "CmdID"

    iget v9, p0, Lcom/futuredial/syncml/Parser;->commandID:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/futuredial/syncml/Parser;->commandID:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1107
    const-string v8, "MsgRef"

    iget-object v9, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v9}, Lcom/futuredial/syncml/Parameter;->getMessageID()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1108
    const-string v8, "CmdRef"

    invoke-virtual {v0}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1109
    const-string v8, "Cmd"

    const-string v9, "Put"

    invoke-virtual {v6, v8, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1110
    const-string v8, "Data"

    const-string v9, "200"

    invoke-virtual {v6, v8, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1113
    const-string v8, "Source"

    invoke-virtual {v3, v8}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v5

    .line 1114
    .local v5, xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v5, :cond_2

    .line 1116
    const-string v8, "LocURI"

    invoke-virtual {v5, v8}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 1117
    .local v4, xmlSLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v4, :cond_0

    .line 1121
    const-string v8, "SourceRef"

    invoke-virtual {v4}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 1125
    .end local v4           #xmlSLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_2
    const-string v8, "Data"

    invoke-virtual {v3, v8}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v1

    .line 1126
    .local v1, xmlData:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v1, :cond_3

    .line 1128
    const-string v8, "DevInf"

    invoke-virtual {v1, v8}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v2

    .line 1129
    .local v2, xmlDevInf:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v2, :cond_3

    .line 1131
    invoke-virtual {p0, v2}, Lcom/futuredial/syncml/Parser;->ParseDevInf(Lcom/futuredial/xmlbuild/XmlElement;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1137
    .end local v2           #xmlDevInf:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_3
    iget-object v7, p0, Lcom/futuredial/syncml/Parser;->statusList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    const/4 v7, 0x1

    goto :goto_0
.end method

.method protected ParseReplace(Lcom/futuredial/xmlbuild/XmlElement;)Z
    .locals 23
    .parameter "xmlElement"

    .prologue
    .line 824
    const/4 v6, 0x0

    .local v6, strSource:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, strSourceParent:Ljava/lang/String;
    const/4 v5, 0x0

    .line 825
    .local v5, strData:Ljava/lang/String;
    const/4 v8, 0x0

    .line 827
    .local v8, bMoreData:Z
    const-string v2, "CmdID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v11

    .line 829
    .local v11, xmlCmdID:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v2, "Item"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v13

    .line 830
    .local v13, xmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v11, :cond_0

    if-nez v13, :cond_1

    .line 832
    :cond_0
    const/4 v2, 0x0

    .line 910
    :goto_0
    return v2

    .line 836
    :cond_1
    new-instance v20, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v2, "Status"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 837
    .local v20, xmlStatus:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v2, "CmdID"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/futuredial/syncml/Parser;->commandID:I

    add-int/lit8 v22, v4, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/syncml/Parser;->commandID:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 838
    const-string v2, "MsgRef"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v4}, Lcom/futuredial/syncml/Parameter;->getMessageID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 839
    const-string v2, "CmdRef"

    invoke-virtual {v11}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 840
    const-string v2, "Cmd"

    const-string v4, "Replace"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 843
    const-string v2, "Source"

    invoke-virtual {v13, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v18

    .line 844
    .local v18, xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v18, :cond_3

    .line 846
    const-string v2, "LocURI"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v17

    .line 847
    .local v17, xmlSLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v17, :cond_2

    .line 849
    const/4 v2, 0x0

    goto :goto_0

    .line 851
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 852
    const-string v2, "SourceRef"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 856
    .end local v17           #xmlSLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_3
    const-string v2, "SourceParent"

    invoke-virtual {v13, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v19

    .line 857
    .local v19, xmlSourceParent:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v19, :cond_5

    .line 859
    const-string v2, "LocURI"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v14

    .line 860
    .local v14, xmlLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v14, :cond_4

    .line 862
    const/4 v2, 0x0

    goto :goto_0

    .line 864
    :cond_4
    invoke-virtual {v14}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 868
    .end local v14           #xmlLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_5
    const-string v2, "MoreData"

    invoke-virtual {v13, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v16

    .line 869
    .local v16, xmlMoreData:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v16, :cond_9

    .line 871
    const-string v2, "Data"

    const-string v4, "213"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 872
    const/4 v8, 0x1

    .line 879
    :goto_1
    const/4 v3, 0x0

    .line 880
    .local v3, strDataType:Ljava/lang/String;
    const-string v2, "Meta"

    invoke-virtual {v13, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v15

    .line 881
    .local v15, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v15, :cond_6

    .line 883
    const-string v2, "Type"

    invoke-virtual {v15, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v21

    .line 884
    .local v21, xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v21, :cond_6

    .line 886
    invoke-virtual/range {v21 .. v21}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 891
    .end local v21           #xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_6
    const-string v2, "Data"

    invoke-virtual {v13, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v12

    .line 892
    .local v12, xmlData:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v12, :cond_8

    .line 894
    const/4 v9, 0x0

    .line 895
    .local v9, bIsBinHex:Z
    const-string v2, "coding"

    invoke-virtual {v12, v2}, Lcom/futuredial/xmlbuild/XmlElement;->findAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 896
    .local v10, strCoding:Ljava/lang/String;
    if-eqz v10, :cond_7

    .line 898
    const-string v2, "binhex"

    invoke-virtual {v2, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 900
    const/4 v9, 0x1

    .line 904
    :cond_7
    invoke-virtual {v12}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/syncml/Parser;->itemStorage:Lcom/futuredial/syncml/ItemStorage;

    const/4 v4, 0x3

    invoke-virtual/range {v2 .. v9}, Lcom/futuredial/syncml/ItemStorage;->OnDataRecved(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    .line 909
    .end local v9           #bIsBinHex:Z
    .end local v10           #strCoding:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/syncml/Parser;->statusList:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 876
    .end local v3           #strDataType:Ljava/lang/String;
    .end local v12           #xmlData:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v15           #xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_9
    const-string v2, "Data"

    const-string v4, "201"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    goto :goto_1
.end method

.method protected ParseStatus(Lcom/futuredial/xmlbuild/XmlElement;)Z
    .locals 9
    .parameter "xmlElement"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 915
    const-string v7, "CmdID"

    invoke-virtual {p1, v7}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v1

    .line 916
    .local v1, eleCmdID:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v7, "MsgRef"

    invoke-virtual {p1, v7}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 917
    .local v4, eleMsgRef:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v7, "CmdRef"

    invoke-virtual {p1, v7}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v2

    .line 918
    .local v2, eleCmdRef:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v7, "Cmd"

    invoke-virtual {p1, v7}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v0

    .line 919
    .local v0, eleCmd:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v7, "Data"

    invoke-virtual {p1, v7}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 921
    .local v3, eleData:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    .line 939
    :cond_0
    :goto_0
    return v5

    .line 930
    :cond_1
    invoke-virtual {v3}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v6, :cond_0

    .line 934
    invoke-virtual {v3}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x32

    if-eq v7, v8, :cond_2

    .line 936
    invoke-virtual {v3}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/futuredial/syncml/Parser;->errorCode:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v5, v6

    .line 939
    goto :goto_0
.end method

.method protected ParseSync(Lcom/futuredial/xmlbuild/XmlElement;)Z
    .locals 16
    .parameter "xmlElement"

    .prologue
    .line 553
    const-string v13, "CmdID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 554
    .local v3, xmlCmdID:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v3, :cond_0

    .line 556
    const/4 v13, 0x0

    .line 669
    :goto_0
    return v13

    .line 560
    :cond_0
    new-instance v9, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v13, "Status"

    invoke-direct {v9, v13}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 561
    .local v9, xmlStatus:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v13, "CmdID"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/futuredial/syncml/Parser;->commandID:I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/futuredial/syncml/Parser;->commandID:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 562
    const-string v13, "MsgRef"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v14}, Lcom/futuredial/syncml/Parameter;->getMessageID()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 563
    const-string v13, "CmdRef"

    invoke-virtual {v3}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 564
    const-string v13, "Cmd"

    const-string v14, "Sync"

    invoke-virtual {v9, v13, v14}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 565
    const-string v13, "Data"

    const-string v14, "200"

    invoke-virtual {v9, v13, v14}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 568
    const-string v13, "Target"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v11

    .line 569
    .local v11, xmlTarget:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v11, :cond_2

    .line 571
    const-string v13, "LocURI"

    invoke-virtual {v11, v13}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v10

    .line 572
    .local v10, xmlTLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v10, :cond_1

    .line 574
    const/4 v13, 0x0

    goto :goto_0

    .line 576
    :cond_1
    const-string v13, "TargetRef"

    invoke-virtual {v10}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 580
    .end local v10           #xmlTLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_2
    const-string v13, "Source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v8

    .line 581
    .local v8, xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v8, :cond_4

    .line 583
    const-string v13, "LocURI"

    invoke-virtual {v8, v13}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v7

    .line 584
    .local v7, xmlSLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v7, :cond_3

    .line 586
    const/4 v13, 0x0

    goto :goto_0

    .line 588
    :cond_3
    const-string v13, "SourceRef"

    invoke-virtual {v7}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 590
    .end local v7           #xmlSLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/syncml/Parser;->statusList:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    const-string v13, "NumberOfChanges"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v6

    .line 593
    .local v6, xmlNumberOfChanges:Lcom/futuredial/xmlbuild/XmlElement;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v13}, Lcom/futuredial/syncml/Parameter;->isSupportNumberOfChange()Z

    move-result v13

    if-eqz v13, :cond_5

    if-eqz v6, :cond_5

    .line 595
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/syncml/Parser;->itemStorage:Lcom/futuredial/syncml/ItemStorage;

    invoke-virtual {v6}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/futuredial/syncml/ItemStorage;->setInNumberOfItems(I)V

    .line 596
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/futuredial/syncml/Parameter;->setSupportNumberOfChange(Z)V

    .line 600
    :cond_5
    const-string v13, "Meta"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v5

    .line 601
    .local v5, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v5, :cond_6

    .line 604
    const-string v13, "MaxObjSize"

    invoke-virtual {v5, v13}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 605
    .local v4, xmlMaxObjSize:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v4, :cond_6

    .line 607
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v4}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/futuredial/syncml/Parameter;->setMaxObjectSize(I)V

    .line 608
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/futuredial/syncml/Parameter;->setSupportMaxObjectSize(Z)V

    .line 612
    .end local v4           #xmlMaxObjSize:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/xmlbuild/XmlElement;->getChildXmlElementList()Ljava/util/ArrayList;

    move-result-object v1

    .line 613
    .local v1, childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    if-eqz v1, :cond_c

    .line 615
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_c

    .line 617
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/futuredial/xmlbuild/XmlElement;

    .line 618
    .local v12, xmlTmp:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v12, :cond_8

    .line 615
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 622
    :cond_8
    const-string v13, "Add"

    invoke-virtual {v12}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_9

    .line 624
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/futuredial/syncml/Parser;->ParseAdd(Lcom/futuredial/xmlbuild/XmlElement;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 626
    const-string v13, "ParseSync"

    const-string v14, "ParseAdd"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 630
    :cond_9
    const-string v13, "Replace"

    invoke-virtual {v12}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_a

    .line 632
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/futuredial/syncml/Parser;->ParseReplace(Lcom/futuredial/xmlbuild/XmlElement;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 634
    const-string v13, "ParseSync"

    const-string v14, "ParseReplace"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 638
    :cond_a
    const-string v13, "Delete"

    invoke-virtual {v12}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_b

    .line 640
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/futuredial/syncml/Parser;->ParseDelete(Lcom/futuredial/xmlbuild/XmlElement;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 642
    const-string v13, "ParseSync"

    const-string v14, "ParseDelete"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 646
    :cond_b
    const-string v13, "Atomic"

    invoke-virtual {v12}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_7

    .line 650
    const-string v13, "Copy"

    invoke-virtual {v12}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_7

    .line 654
    const-string v13, "Move"

    invoke-virtual {v12}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_7

    .line 658
    const-string v13, "Sequence"

    invoke-virtual {v12}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_7

    goto/16 :goto_2

    .line 664
    .end local v2           #i:I
    .end local v12           #xmlTmp:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v13}, Lcom/futuredial/syncml/Parameter;->getAppStatus()I

    move-result v13

    const/16 v14, 0x19

    if-ge v13, v14, :cond_d

    .line 666
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/16 v14, 0x19

    invoke-virtual {v13, v14}, Lcom/futuredial/syncml/Parameter;->setAppStatus(I)V

    .line 669
    :cond_d
    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method protected ParseSyncHdr(Lcom/futuredial/xmlbuild/XmlElement;)Z
    .locals 14
    .parameter "xmlElement"

    .prologue
    .line 234
    const-string v11, "VerDTD"

    invoke-virtual {p1, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 235
    .local v4, eleVerDTD:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v11, "VerProto"

    invoke-virtual {p1, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v5

    .line 236
    .local v5, eleVerProto:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v11, "SessionID"

    invoke-virtual {p1, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v1

    .line 237
    .local v1, eleSessionID:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v11, "MsgID"

    invoke-virtual {p1, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v0

    .line 239
    .local v0, eleMsgID:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v11, "Target"

    invoke-virtual {p1, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 241
    .local v3, eleTarget:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v11, "Source"

    invoke-virtual {p1, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v2

    .line 243
    .local v2, eleSource:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 250
    :cond_0
    const/4 v11, 0x0

    .line 293
    :goto_0
    return v11

    .line 253
    :cond_1
    const-string v11, "LocURI"

    invoke-virtual {v3, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v10

    .line 254
    .local v10, xmlTargetLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v11, "LocURI"

    invoke-virtual {v2, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v8

    .line 255
    .local v8, xmlSourceLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v10, :cond_2

    if-nez v8, :cond_3

    .line 257
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 260
    :cond_3
    iget-object v11, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v0}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/futuredial/syncml/Parameter;->setMessageID(I)V

    .line 261
    iget-object v11, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v11}, Lcom/futuredial/syncml/Parameter;->getAppStatus()I

    move-result v11

    if-nez v11, :cond_4

    .line 263
    iget-object v11, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v4}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/futuredial/syncml/Parameter;->setVerDTD(Ljava/lang/String;)V

    .line 264
    iget-object v11, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v5}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/futuredial/syncml/Parameter;->setVerProto(Ljava/lang/String;)V

    .line 265
    iget-object v11, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v1}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/futuredial/syncml/Parameter;->setSessionID(Ljava/lang/String;)V

    .line 266
    iget-object v11, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v8}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/futuredial/syncml/Parameter;->setPhoneServerName(Ljava/lang/String;)V

    .line 267
    iget-object v11, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v10}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/futuredial/syncml/Parameter;->setAppServerName(Ljava/lang/String;)V

    .line 271
    :cond_4
    new-instance v9, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v11, "Status"

    invoke-direct {v9, v11}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 272
    .local v9, xmlStatus:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v11, "CmdID"

    iget v12, p0, Lcom/futuredial/syncml/Parser;->commandID:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/futuredial/syncml/Parser;->commandID:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 273
    const-string v11, "MsgRef"

    invoke-virtual {v0}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 274
    const-string v11, "CmdRef"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 275
    const-string v11, "Cmd"

    const-string v12, "SyncHdr"

    invoke-virtual {v9, v11, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 276
    const-string v11, "TargetRef"

    invoke-virtual {v10}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 277
    const-string v11, "SourceRef"

    invoke-virtual {v8}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 278
    const-string v11, "Data"

    const-string v12, "200"

    invoke-virtual {v9, v11, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 280
    iget-object v11, p0, Lcom/futuredial/syncml/Parser;->statusList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    const-string v11, "Meta"

    invoke-virtual {p1, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v7

    .line 284
    .local v7, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v7, :cond_5

    .line 286
    const-string v11, "MaxMsgSize"

    invoke-virtual {v7, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v6

    .line 287
    .local v6, xmlMaxMsgSize:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v6, :cond_5

    .line 289
    iget-object v11, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v6}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/futuredial/syncml/Parameter;->setMaxMessageSize(I)V

    .line 290
    iget-object v11, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/futuredial/syncml/Parameter;->setSupportMaxMessageSize(Z)V

    .line 293
    .end local v6           #xmlMaxMsgSize:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_5
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public SyncFinished()Z
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v0}, Lcom/futuredial/syncml/Parameter;->getAppStatus()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlertStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/futuredial/syncml/Parser;->alertStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/futuredial/syncml/Parser;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getItemStorage()Lcom/futuredial/syncml/ItemStorage;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/futuredial/syncml/Parser;->itemStorage:Lcom/futuredial/syncml/ItemStorage;

    return-object v0
.end method

.method public getParameter()Lcom/futuredial/syncml/Parameter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/futuredial/syncml/Parser;->parameter:Lcom/futuredial/syncml/Parameter;

    return-object v0
.end method

.method public setAlertStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "alertStatus"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/futuredial/syncml/Parser;->alertStatus:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setFinalEleEveryMsg(Z)V
    .locals 0
    .parameter "finalEleWithEveryMsg"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/futuredial/syncml/Parser;->bFinalEleEveryMsg:Z

    .line 55
    return-void
.end method

.method public setIncludeCTCap(Z)V
    .locals 0
    .parameter "includeCTCap"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/futuredial/syncml/Parser;->includeCTCap:Z

    .line 42
    return-void
.end method

.method public setItemStorage(Lcom/futuredial/syncml/ItemStorage;)V
    .locals 0
    .parameter "itemStorage"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/futuredial/syncml/Parser;->itemStorage:Lcom/futuredial/syncml/ItemStorage;

    .line 63
    return-void
.end method
