.class public Lcom/futuredial/ui/ViewHowToEnableBT;
.super Lcom/futuredial/ui/GeneralViewCtrl;
.source "ViewHowToEnableBT.java"


# instance fields
.field m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

.field m_phoneMaker:Ljava/lang/String;

.field m_phoneModel:Ljava/lang/String;

.field m_titleText:Ljava/lang/String;

.field m_xmlDoc:Lorg/w3c/dom/Document;

.field makerTypeDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final other_general:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/futuredial/ui/GeneralViewCtrl;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneMaker:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneModel:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_xmlDoc:Lorg/w3c/dom/Document;

    .line 23
    iput-object v1, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_titleText:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    .line 26
    const-string v0, "Others"

    iput-object v0, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->other_general:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->makerTypeDict:Ljava/util/HashMap;

    .line 32
    const-string v0, "[how to enable bluetooth]"

    iput-object v0, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->ViewName:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method on_back_key()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/CBtnListener;->onClick(Landroid/view/View;)V

    .line 217
    return-void
.end method

.method public bridge synthetic setTitleText()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lcom/futuredial/ui/GeneralViewCtrl;->setTitleText()V

    return-void
.end method

.method set_in_arg([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 13
    .parameter "args"

    .prologue
    const v12, 0x7f06024b

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 62
    const-string v8, "phoneModelSelector"

    invoke-virtual {p0, v8}, Lcom/futuredial/ui/ViewHowToEnableBT;->has_mem(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 63
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 132
    :goto_0
    return-object v8

    .line 64
    :cond_0
    const-string v8, "phoneModels"

    invoke-virtual {p0, v8}, Lcom/futuredial/ui/ViewHowToEnableBT;->has_mem(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 65
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_0

    .line 66
    :cond_1
    const-string v8, "selPhoneMaker"

    invoke-virtual {p0, v8}, Lcom/futuredial/ui/ViewHowToEnableBT;->has_mem(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 67
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_0

    .line 68
    :cond_2
    const-string v8, "phonetipxml"

    invoke-virtual {p0, v8}, Lcom/futuredial/ui/ViewHowToEnableBT;->has_mem(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 69
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_0

    .line 70
    :cond_3
    const-string v8, "makerExtType"

    invoke-virtual {p0, v8}, Lcom/futuredial/ui/ViewHowToEnableBT;->has_mem(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 71
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_0

    .line 74
    :cond_4
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 75
    .local v0, bOtherMaker:Ljava/lang/Boolean;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 76
    .local v1, bOtherModel:Ljava/lang/Boolean;
    const-string v8, "bOtherMarker"

    invoke-virtual {p0, v8}, Lcom/futuredial/ui/ViewHowToEnableBT;->has_mem(Ljava/lang/String;)Z

    move-result v8

    if-ne v11, v8, :cond_5

    const-string v8, "bOtherMarker"

    invoke-virtual {p0, v8}, Lcom/futuredial/ui/ViewHowToEnableBT;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v11, v8, :cond_5

    .line 77
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 78
    :cond_5
    const-string v8, "bOtherModel"

    invoke-virtual {p0, v8}, Lcom/futuredial/ui/ViewHowToEnableBT;->has_mem(Ljava/lang/String;)Z

    move-result v8

    if-ne v11, v8, :cond_6

    const-string v8, "bOtherModel"

    invoke-virtual {p0, v8}, Lcom/futuredial/ui/ViewHowToEnableBT;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v11, v8, :cond_6

    .line 79
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 81
    :cond_6
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v8, v8, Lcom/futuredial/ui/DMIUI;->m_innerMem:Ljava/util/HashMap;

    const-string v9, "phoneModelSelector"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/futuredial/ui/CSingleSelectHandle;

    .line 82
    .local v5, prevSelected:Lcom/futuredial/ui/CSingleSelectHandle;
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v8, v8, Lcom/futuredial/ui/DMIUI;->m_innerMem:Ljava/util/HashMap;

    const-string v9, "phoneModels"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 83
    .local v4, prevArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v8, v5, Lcom/futuredial/ui/CSingleSelectHandle;->m_pos:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 84
    .local v2, i:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    .line 85
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_0

    .line 86
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneModel:Ljava/lang/String;

    .line 88
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v8, v8, Lcom/futuredial/ui/DMIUI;->m_innerMem:Ljava/util/HashMap;

    const-string v9, "selPhoneMaker"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneMaker:Ljava/lang/String;

    .line 89
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v8, v8, Lcom/futuredial/ui/DMIUI;->m_innerMem:Ljava/util/HashMap;

    const-string v9, "phonetipxml"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Document;

    iput-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_xmlDoc:Lorg/w3c/dom/Document;

    .line 90
    const-string v8, "makerExtType"

    invoke-virtual {p0, v8}, Lcom/futuredial/ui/ViewHowToEnableBT;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    iput-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->makerTypeDict:Ljava/util/HashMap;

    .line 92
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->ViewName:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "coming arg:(phone maker:)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneMaker:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (phone model:)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneModel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 100
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->ViewName:Ljava/lang/String;

    const-string v9, "other maker"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v8, Lcom/futuredial/ui/CBtnListener;

    const-string v9, "com.futuredial.ui.ViewSelectOldPhoneMaker"

    invoke-direct {v8, v9}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    .line 102
    const-string v8, "Others"

    iput-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneMaker:Ljava/lang/String;

    .line 111
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 113
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->ViewName:Ljava/lang/String;

    const-string v9, "other model"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v8, "Others"

    iput-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneModel:Ljava/lang/String;

    .line 115
    invoke-virtual {p0, v12}, Lcom/futuredial/ui/ViewHowToEnableBT;->get_resource_string(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_titleText:Ljava/lang/String;

    .line 132
    :goto_2
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_0

    .line 105
    :cond_8
    new-instance v8, Lcom/futuredial/ui/CBtnListener;

    const-string v9, "com.futuredial.ui.ViewSelectOldPhoneModel"

    invoke-direct {v8, v9}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    goto :goto_1

    .line 119
    :cond_9
    iget-object v7, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneModel:Ljava/lang/String;

    .line 122
    .local v7, uiPhoneModel:Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneMaker:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneModel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    const/16 v10, 0x5f

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, idModelName:Ljava/lang/String;
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v8}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "string"

    iget-object v10, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v10}, Lcom/futuredial/ui/DMIUI;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v3, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 125
    .local v6, resourceID:Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/futuredial/ui/ViewHowToEnableBT;->get_resource_string(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 128
    .end local v3           #idModelName:Ljava/lang/String;
    .end local v6           #resourceID:Ljava/lang/Integer;
    :goto_3
    invoke-virtual {p0, v12}, Lcom/futuredial/ui/ViewHowToEnableBT;->get_resource_string(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_titleText:Ljava/lang/String;

    goto :goto_2

    .line 127
    :catch_0
    move-exception v8

    goto :goto_3
.end method

.method set_view()Ljava/lang/Boolean;
    .locals 15

    .prologue
    .line 138
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->ViewName:Ljava/lang/String;

    const-string v9, "set_view()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/futuredial/ui/ViewHowToEnableBT;->set_step(I)V

    .line 144
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->headerText:Lcom/htc/widget/HeaderBarText;

    iget-object v9, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_titleText:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 146
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_text2:Landroid/widget/TextView;

    const v9, 0x7f06024c

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 149
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    iget-object v9, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    new-instance v9, Lcom/futuredial/ui/CBtnListener;

    const-string v10, "com.futuredial.ui.ViewSelectYourPhone"

    invoke-direct {v9, v10}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    :try_start_0
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v7

    .line 156
    .local v7, xpath:Ljavax/xml/xpath/XPath;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PhoneTips/Manufacturer[@name=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneMaker:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\']/Model[@name=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneModel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\']"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_xmlDoc:Lorg/w3c/dom/Document;

    sget-object v10, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v7, v8, v9, v10}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    .line 161
    .local v4, node:Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, resourceName:Ljava/lang/String;
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v8}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "string"

    iget-object v10, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v10}, Lcom/futuredial/ui/DMIUI;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v6, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 166
    .local v5, resourceID:Ljava/lang/Integer;
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneMaker:Ljava/lang/String;

    const-string v9, "Others"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 167
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_text1:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f060246

    invoke-virtual {p0, v10}, Lcom/futuredial/ui/ViewHowToEnableBT;->get_resource_string(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const v13, 0x7f0601f2

    invoke-virtual {p0, v13}, Lcom/futuredial/ui/ViewHowToEnableBT;->get_resource_string(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/futuredial/ui/ViewHowToEnableBT;->get_resource_string(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f06020c

    invoke-virtual {p0, v14}, Lcom/futuredial/ui/ViewHowToEnableBT;->get_resource_string(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    .end local v4           #node:Lorg/w3c/dom/Node;
    .end local v5           #resourceID:Ljava/lang/Integer;
    .end local v6           #resourceName:Ljava/lang/String;
    .end local v7           #xpath:Ljavax/xml/xpath/XPath;
    :cond_0
    :goto_0
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_1
    return-object v8

    .line 171
    .restart local v4       #node:Lorg/w3c/dom/Node;
    .restart local v5       #resourceID:Ljava/lang/Integer;
    .restart local v6       #resourceName:Ljava/lang/String;
    .restart local v7       #xpath:Ljavax/xml/xpath/XPath;
    :cond_1
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneMaker:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneModel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    const/16 v10, 0x5f

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 173
    .local v2, idModelName:Ljava/lang/String;
    :try_start_2
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v8}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "string"

    iget-object v10, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v10}, Lcom/futuredial/ui/DMIUI;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v2, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 175
    .local v1, id:Ljava/lang/Integer;
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_text1:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f060246

    invoke-virtual {p0, v10}, Lcom/futuredial/ui/ViewHowToEnableBT;->get_resource_string(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneMaker:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {p0, v14}, Lcom/futuredial/ui/ViewHowToEnableBT;->get_resource_string(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/futuredial/ui/ViewHowToEnableBT;->get_resource_string(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f06020c

    invoke-virtual {p0, v14}, Lcom/futuredial/ui/ViewHowToEnableBT;->get_resource_string(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 178
    .end local v1           #id:Ljava/lang/Integer;
    :catch_0
    move-exception v3

    .line 179
    .local v3, noRes:Ljava/lang/Exception;
    :try_start_3
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_text1:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f060246

    invoke-virtual {p0, v10}, Lcom/futuredial/ui/ViewHowToEnableBT;->get_resource_string(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneMaker:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneModel:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/futuredial/ui/ViewHowToEnableBT;->get_resource_string(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f06020c

    invoke-virtual {p0, v14}, Lcom/futuredial/ui/ViewHowToEnableBT;->get_resource_string(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 185
    .end local v2           #idModelName:Ljava/lang/String;
    .end local v3           #noRes:Ljava/lang/Exception;
    .end local v4           #node:Lorg/w3c/dom/Node;
    .end local v5           #resourceID:Ljava/lang/Integer;
    .end local v6           #resourceName:Ljava/lang/String;
    .end local v7           #xpath:Ljavax/xml/xpath/XPath;
    :catch_1
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneModel:Ljava/lang/String;

    const-string v9, "Others"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 191
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->makerTypeDict:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneMaker:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->makerTypeDict:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneMaker:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "pbap"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 194
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_text1:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_text2:Landroid/widget/TextView;

    const v9, 0x7f060261

    invoke-virtual {p0, v9}, Lcom/futuredial/ui/ViewHowToEnableBT;->get_resource_string(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneMaker:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const v9, 0x7f060211

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 197
    iget-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    new-instance v9, Lcom/futuredial/ui/CBtnListener;

    const-string v10, "com.futuredial.ui.ViewAppFinish"

    invoke-direct {v9, v10}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 201
    :cond_2
    const-string v8, "Others"

    iput-object v8, p0, Lcom/futuredial/ui/ViewHowToEnableBT;->m_phoneMaker:Ljava/lang/String;

    .line 202
    invoke-virtual {p0}, Lcom/futuredial/ui/ViewHowToEnableBT;->set_view()Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_1
.end method
