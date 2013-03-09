.class public Lcom/futuredial/ui/ViewIsMyPhoneSupported;
.super Lcom/futuredial/ui/GeneralViewCtrl;
.source "ViewIsMyPhoneSupported.java"


# instance fields
.field m_bOtherMaker:Ljava/lang/Boolean;

.field m_bOtherModel:Ljava/lang/Boolean;

.field m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

.field m_phoneMaker:Ljava/lang/String;

.field m_phoneModel:Ljava/lang/String;

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

.field final other_xpathName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/futuredial/ui/GeneralViewCtrl;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_phoneMaker:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_phoneModel:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_xmlDoc:Lorg/w3c/dom/Document;

    .line 18
    const-string v0, "Others"

    iput-object v0, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->other_xpathName:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    .line 20
    iput-object v1, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->makerTypeDict:Ljava/util/HashMap;

    .line 21
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_bOtherMaker:Ljava/lang/Boolean;

    .line 22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_bOtherModel:Ljava/lang/Boolean;

    .line 27
    const-string v0, "[is my phone supported]"

    iput-object v0, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->ViewName:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method on_back_key()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/CBtnListener;->onClick(Landroid/view/View;)V

    .line 147
    return-void
.end method

.method public bridge synthetic setTitleText()V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0}, Lcom/futuredial/ui/GeneralViewCtrl;->setTitleText()V

    return-void
.end method

.method set_in_arg([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 9
    .parameter "args"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 34
    const-string v3, "phoneModelSelector"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->has_mem(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 85
    :goto_0
    return-object v3

    .line 36
    :cond_0
    const-string v3, "phoneModels"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->has_mem(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 37
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 38
    :cond_1
    const-string v3, "selPhoneMaker"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->has_mem(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 39
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 40
    :cond_2
    const-string v3, "phonetipxml"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->has_mem(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 41
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 42
    :cond_3
    const-string v3, "makerExtType"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->has_mem(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 43
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 46
    :cond_4
    const-string v3, "bOtherMarker"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->has_mem(Ljava/lang/String;)Z

    move-result v3

    if-ne v8, v3, :cond_5

    const-string v3, "bOtherMarker"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v8, v3, :cond_5

    .line 47
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_bOtherMaker:Ljava/lang/Boolean;

    .line 49
    :cond_5
    const-string v3, "phoneModelSelector"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/ui/CSingleSelectHandle;

    .line 50
    .local v2, prevSelected:Lcom/futuredial/ui/CSingleSelectHandle;
    const-string v3, "phoneModels"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 51
    .local v1, prevArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v3, v2, Lcom/futuredial/ui/CSingleSelectHandle;->m_pos:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 52
    .local v0, i:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 53
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 54
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_phoneModel:Ljava/lang/String;

    .line 55
    const-string v3, "selPhoneModel"

    iget-object v4, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_phoneModel:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    iget-object v3, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->ViewName:Ljava/lang/String;

    const-string v4, "model:%d,%d"

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

    .line 58
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_7

    .line 60
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_bOtherModel:Ljava/lang/Boolean;

    .line 61
    const-string v3, "bOtherModel"

    iget-object v4, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_bOtherModel:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    :goto_1
    const-string v3, "selPhoneMaker"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_phoneMaker:Ljava/lang/String;

    .line 70
    const-string v3, "phonetipxml"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Document;

    iput-object v3, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_xmlDoc:Lorg/w3c/dom/Document;

    .line 71
    const-string v3, "makerExtType"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->makerTypeDict:Ljava/util/HashMap;

    .line 73
    iget-object v3, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->ViewName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "coming arg:(phone maker:)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_phoneMaker:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (phone model:)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_phoneModel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v3, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_bOtherMaker:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 78
    new-instance v3, Lcom/futuredial/ui/CBtnListener;

    const-string v4, "com.futuredial.ui.ViewSelectOldPhoneMaker"

    invoke-direct {v3, v4}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    .line 79
    const-string v3, "Others"

    iput-object v3, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_phoneMaker:Ljava/lang/String;

    .line 85
    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0

    .line 65
    :cond_7
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_bOtherModel:Ljava/lang/Boolean;

    .line 66
    const-string v3, "bOtherModel"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->del_mem(Ljava/lang/String;)Z

    goto :goto_1

    .line 82
    :cond_8
    new-instance v3, Lcom/futuredial/ui/CBtnListener;

    const-string v4, "com.futuredial.ui.ViewSelectOldPhoneModel"

    invoke-direct {v3, v4}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    goto :goto_2
.end method

.method set_view()Ljava/lang/Boolean;
    .locals 9

    .prologue
    const v5, 0x7f060255

    const v8, 0x7f060242

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 91
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->ViewName:Ljava/lang/String;

    const-string v3, "set_view()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->set_step(I)V

    .line 93
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_text2:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    iget-object v3, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v0, Lcom/futuredial/ui/CBtnListener;

    const-string v2, "com.futuredial.ui.ViewHowToEnableBT"

    invoke-direct {v0, v2}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, goNextPage:Lcom/futuredial/ui/CBtnListener;
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_bOtherMaker:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 104
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_bOtherModel:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->makerTypeDict:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_phoneMaker:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->makerTypeDict:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_phoneMaker:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "pbap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->ViewName:Ljava/lang/String;

    const-string v3, "brand in list, model not in list, support pbap"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->headerText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {p0, v5}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->get_resource_string(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_phoneMaker:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_text1:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->get_resource_string(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_phoneMaker:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->ViewName:Ljava/lang/String;

    const-string v3, "brand in list, model not in list, not support pbap"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x7f060211

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 118
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    new-instance v3, Lcom/futuredial/ui/CBtnListener;

    const-string v4, "com.futuredial.ui.ViewAppFinish"

    invoke-direct {v3, v4}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->headerText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {p0, v5}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->get_resource_string(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_phoneMaker:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_text1:Landroid/widget/TextView;

    const v3, 0x7f060261

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->get_resource_string(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_phoneMaker:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->ViewName:Ljava/lang/String;

    const-string v3, "brand in list, model in list"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/futuredial/ui/CBtnListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->ViewName:Ljava/lang/String;

    const-string v3, "brand not in list"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->headerText:Lcom/htc/widget/HeaderBarText;

    const v3, 0x7f0601f2

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->get_resource_string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v8}, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->get_resource_string(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, strText:Ljava/lang/String;
    const-string v2, "  "

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/futuredial/ui/ViewIsMyPhoneSupported;->m_text1:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
