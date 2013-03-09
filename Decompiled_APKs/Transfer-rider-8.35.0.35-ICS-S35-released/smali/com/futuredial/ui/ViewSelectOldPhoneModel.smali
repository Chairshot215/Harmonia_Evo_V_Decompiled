.class public Lcom/futuredial/ui/ViewSelectOldPhoneModel;
.super Lcom/futuredial/ui/ListViewCtrl;
.source "ViewSelectOldPhoneModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/ui/ViewSelectOldPhoneModel$CModelSelectHandle;
    }
.end annotation


# instance fields
.field m_bOtherMarker:Ljava/lang/Boolean;

.field m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

.field m_btnNextPress:Lcom/futuredial/ui/CBtnListener;

.field m_phoneMaker:Ljava/lang/String;

.field m_phoneModelSelector:Lcom/futuredial/ui/CSingleSelectHandle;

.field m_xmlDoc:Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Lcom/futuredial/ui/ListViewCtrl;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneMaker:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_xmlDoc:Lorg/w3c/dom/Document;

    .line 26
    new-instance v0, Lcom/futuredial/ui/CBtnListener;

    const-string v1, "com.futuredial.ui.ViewSelectOldPhoneMaker"

    invoke-direct {v0, v1}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    .line 27
    new-instance v0, Lcom/futuredial/ui/CBtnListener;

    const-string v1, "com.futuredial.ui.ViewIsMyPhoneSupported"

    invoke-direct {v0, v1}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_btnNextPress:Lcom/futuredial/ui/CBtnListener;

    .line 28
    iput-object v2, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneModelSelector:Lcom/futuredial/ui/CSingleSelectHandle;

    .line 29
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_bOtherMarker:Ljava/lang/Boolean;

    .line 34
    const-string v0, "[select your old phone]"

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->ViewName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method on_back_key()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/CBtnListener;->onClick(Landroid/view/View;)V

    .line 200
    return-void
.end method

.method public bridge synthetic setTitleText()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/futuredial/ui/ListViewCtrl;->setTitleText()V

    return-void
.end method

.method set_in_arg([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 9
    .parameter "args"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 52
    const-string v3, "phoneMakerSelector"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->has_mem(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 84
    :goto_0
    return-object v3

    .line 54
    :cond_0
    const-string v3, "phoneMakers"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->has_mem(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 55
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 56
    :cond_1
    const-string v3, "phonetipxml"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->has_mem(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 57
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 60
    :cond_2
    const-string v3, "phoneMakerSelector"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/ui/CSingleSelectHandle;

    .line 61
    .local v2, prevSelected:Lcom/futuredial/ui/CSingleSelectHandle;
    const-string v3, "phoneMakers"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 62
    .local v1, prevArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v3, v2, Lcom/futuredial/ui/CSingleSelectHandle;->m_pos:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 63
    .local v0, i:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 64
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 65
    :cond_3
    iget-object v3, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v3, v3, Lcom/futuredial/ui/DMIUI;->m_innerMem:Ljava/util/HashMap;

    const-string v4, "phonetipxml"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Document;

    iput-object v3, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_xmlDoc:Lorg/w3c/dom/Document;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneMaker:Ljava/lang/String;

    .line 67
    iget-object v3, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->ViewName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "coming arg:(phone maker:)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneMaker:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v3, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->ViewName:Ljava/lang/String;

    const-string v4, "marker:%d,%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_5

    .line 71
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_bOtherMarker:Ljava/lang/Boolean;

    .line 72
    const-string v3, "bOtherMarker"

    iget-object v4, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_bOtherMarker:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    :goto_1
    new-instance v3, Lcom/futuredial/ui/ViewSelectOldPhoneModel$CModelSelectHandle;

    invoke-direct {v3, p0}, Lcom/futuredial/ui/ViewSelectOldPhoneModel$CModelSelectHandle;-><init>(Lcom/futuredial/ui/ViewSelectOldPhoneModel;)V

    iput-object v3, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneModelSelector:Lcom/futuredial/ui/CSingleSelectHandle;

    .line 81
    const-string v3, "phoneModelSelector"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->has_mem(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 82
    iget-object v4, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneModelSelector:Lcom/futuredial/ui/CSingleSelectHandle;

    const-string v3, "phoneModelSelector"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/futuredial/ui/ViewSelectOldPhoneModel$CModelSelectHandle;

    iget v3, v3, Lcom/futuredial/ui/ViewSelectOldPhoneModel$CModelSelectHandle;->m_pos:I

    iput v3, v4, Lcom/futuredial/ui/CSingleSelectHandle;->m_pos:I

    .line 84
    :cond_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0

    .line 76
    :cond_5
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_bOtherMarker:Ljava/lang/Boolean;

    .line 77
    const-string v3, "bOtherMarker"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->del_mem(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method set_view()Ljava/lang/Boolean;
    .locals 17

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->ViewName:Ljava/lang/String;

    const-string v15, "set_view()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_selectView:Lcom/htc/widget/HtcListView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 94
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_selectView:Lcom/htc/widget/HtcListView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 95
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 98
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->set_step(I)V

    .line 99
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->headerText:Lcom/htc/widget/HeaderBarText;

    const v15, 0x7f06025f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->get_resource_string(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 104
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v10, phoneModels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v11, phoneModelsForUI:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_bOtherMarker:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 113
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->ViewName:Ljava/lang/String;

    const-string v15, "brand: Others ... -> no model -> how to enable/is my phone supported"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v14, Lcom/futuredial/ui/ViewSelectOldPhoneModel$CModelSelectHandle;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/futuredial/ui/ViewSelectOldPhoneModel$CModelSelectHandle;-><init>(Lcom/futuredial/ui/ViewSelectOldPhoneModel;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneModelSelector:Lcom/futuredial/ui/CSingleSelectHandle;

    .line 116
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneModelSelector:Lcom/futuredial/ui/CSingleSelectHandle;

    const/4 v15, 0x1

    iput v15, v14, Lcom/futuredial/ui/CSingleSelectHandle;->m_pos:I

    .line 117
    const v14, 0x7f0601f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->get_resource_string(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v14, "phoneModelSelector"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneModelSelector:Lcom/futuredial/ui/CSingleSelectHandle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    const-string v14, "phoneModels"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    const-string v14, "selPhoneMaker"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneMaker:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    sget-object v14, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneMaker:Ljava/lang/String;

    invoke-interface {v14, v15}, Lcom/futuredial/service/DMISrvInterface;->dmi_set_phone_maker(Ljava/lang/String;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_btnNextPress:Lcom/futuredial/ui/CBtnListener;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/futuredial/ui/CBtnListener;->onClick(Landroid/view/View;)V

    .line 124
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 195
    :goto_0
    return-object v14

    .line 127
    :cond_0
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v13

    .line 128
    .local v13, xpath:Ljavax/xml/xpath/XPath;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PhoneTips/Manufacturer[@name=\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneMaker:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\']/Model"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_xmlDoc:Lorg/w3c/dom/Document;

    sget-object v16, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface/range {v13 .. v16}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/NodeList;

    .line 131
    .local v9, nodeList:Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .line 132
    .local v6, nlSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_1

    .line 134
    invoke-interface {v9, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 135
    .local v8, node:Lorg/w3c/dom/Node;
    move-object v0, v8

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    .line 137
    .local v2, e:Lorg/w3c/dom/Element;
    const-string v14, "name"

    invoke-interface {v2, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, modelName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->ViewName:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "model:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 142
    .end local v2           #e:Lorg/w3c/dom/Element;
    .end local v5           #modelName:Ljava/lang/String;
    .end local v8           #node:Lorg/w3c/dom/Node;
    :cond_1
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 143
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_3

    .line 145
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    .restart local v5       #modelName:Ljava/lang/String;
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneMaker:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x5f

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, idModelName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v14}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "string"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/futuredial/ui/DMIUI;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v4, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 151
    .local v12, resourceID:Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->get_resource_string(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    .end local v4           #idModelName:Ljava/lang/String;
    .end local v12           #resourceID:Ljava/lang/Integer;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 153
    :catch_0
    move-exception v7

    .line 155
    .local v7, noRes:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 161
    .end local v3           #i:I
    .end local v5           #modelName:Ljava/lang/String;
    .end local v6           #nlSize:I
    .end local v7           #noRes:Ljava/lang/Exception;
    .end local v9           #nodeList:Lorg/w3c/dom/NodeList;
    .end local v13           #xpath:Ljavax/xml/xpath/XPath;
    :catch_1
    move-exception v2

    .line 163
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    .end local v2           #e:Ljava/lang/Exception;
    :goto_4
    new-instance v1, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    sget-object v15, Lcom/futuredial/ui/DMIUI;->LV_LAYOUT_ID:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-direct {v1, v14, v15, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 167
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_selectView:Lcom/htc/widget/HtcListView;

    invoke-static {v14}, Lcom/futuredial/ui/DMIStyle;->format_listview(Lcom/htc/widget/HtcListView;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_selectView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v14, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneModelSelector:Lcom/futuredial/ui/CSingleSelectHandle;

    iget v14, v14, Lcom/futuredial/ui/CSingleSelectHandle;->m_pos:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_selectView:Lcom/htc/widget/HtcListView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneModelSelector:Lcom/futuredial/ui/CSingleSelectHandle;

    iget v15, v15, Lcom/futuredial/ui/CSingleSelectHandle;->m_pos:I

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 173
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_selectView:Lcom/htc/widget/HtcListView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneModelSelector:Lcom/futuredial/ui/CSingleSelectHandle;

    iget v15, v15, Lcom/futuredial/ui/CSingleSelectHandle;->m_pos:I

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 180
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_selectView:Lcom/htc/widget/HtcListView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneModelSelector:Lcom/futuredial/ui/CSingleSelectHandle;

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const-string v14, "phoneModelSelector"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneModelSelector:Lcom/futuredial/ui/CSingleSelectHandle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    const-string v14, "phoneModels"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    const-string v14, "selPhoneMaker"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneMaker:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    sget-object v14, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_phoneMaker:Ljava/lang/String;

    invoke-interface {v14, v15}, Lcom/futuredial/service/DMISrvInterface;->dmi_set_phone_maker(Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_btnNextPress:Lcom/futuredial/ui/CBtnListener;

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto/16 :goto_0

    .line 158
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v3       #i:I
    .restart local v6       #nlSize:I
    .restart local v9       #nodeList:Lorg/w3c/dom/NodeList;
    .restart local v13       #xpath:Ljavax/xml/xpath/XPath;
    :cond_3
    const v14, 0x7f0601f2

    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->get_resource_string(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    const v14, 0x7f0601f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->get_resource_string(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4
.end method
