.class public Lcom/futuredial/ui/ViewNotSupportedModel;
.super Lcom/futuredial/ui/GeneralViewCtrl;
.source "ViewNotSupportedModel.java"


# instance fields
.field m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

.field m_phone:Lcom/futuredial/service/DMIPhone;

.field m_showName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/futuredial/ui/GeneralViewCtrl;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_showName:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/futuredial/ui/CBtnListener;

    const-string v1, "com.futuredial.ui.ViewAppFinish"

    invoke-direct {v0, v1}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    .line 24
    const-string v0, "[not supported model]"

    iput-object v0, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->ViewName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method on_back_key()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/CBtnListener;->onClick(Landroid/view/View;)V

    .line 117
    return-void
.end method

.method public bridge synthetic setTitleText()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lcom/futuredial/ui/GeneralViewCtrl;->setTitleText()V

    return-void
.end method

.method set_in_arg([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .parameter "args"

    .prologue
    .line 30
    const-string v0, "phone_info"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewNotSupportedModel;->has_mem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v0, "phone_info"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewNotSupportedModel;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/service/DMIPhone;

    iput-object v0, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_phone:Lcom/futuredial/service/DMIPhone;

    .line 33
    iget-object v0, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v0, v0, Lcom/futuredial/service/DMIPhone;->m_phonemodel:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v0, v0, Lcom/futuredial/service/DMIPhone;->m_phonemodel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v0, v0, Lcom/futuredial/service/DMIPhone;->m_phonemodel:Ljava/lang/String;

    iput-object v0, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_showName:Ljava/lang/String;

    .line 38
    :goto_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v0, v0, Lcom/futuredial/service/DMIPhone;->m_bt:Lcom/futuredial/service/DMIBTDevice;

    iget-object v0, v0, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_showName:Ljava/lang/String;

    goto :goto_1
.end method

.method set_view()Ljava/lang/Boolean;
    .locals 15

    .prologue
    .line 44
    iget-object v10, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->ViewName:Ljava/lang/String;

    const-string v11, "set_view()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/futuredial/ui/ViewNotSupportedModel;->setup_footer_buttons(I)V

    .line 48
    iget-object v10, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const v11, 0x7f060211

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 49
    iget-object v10, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 53
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/futuredial/ui/ViewNotSupportedModel;->set_step(I)V

    .line 54
    iget-object v10, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v10}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060257

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, title:Ljava/lang/String;
    iget-object v10, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->headerText:Lcom/htc/widget/HeaderBarText;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_showName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 58
    iget-object v10, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v10}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060244

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_showName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, tip_1:Ljava/lang/String;
    iget-object v10, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_text1:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v10, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_text2:Landroid/widget/TextView;

    const v11, 0x7f060245

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 65
    iget-object v10, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    iget-object v11, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v10, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v11, 0x7f09000f

    invoke-virtual {v10, v11}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 68
    .local v3, textLink:Landroid/widget/TextView;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    const v10, 0x7f060243

    invoke-virtual {p0, v10}, Lcom/futuredial/ui/ViewNotSupportedModel;->get_resource_string(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, lan:Ljava/lang/String;
    const-string v10, "http://www.htc.com/Transfer_Data/%s/index.html"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, htcLink:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<a href=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f06022b

    invoke-virtual {p0, v11}, Lcom/futuredial/ui/ViewNotSupportedModel;->get_resource_string(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</a>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 72
    .local v9, urlSource:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 76
    const-string v7, "Other"

    .line 77
    .local v7, uploadPhoneMaker:Ljava/lang/String;
    const-string v8, "Other"

    .line 78
    .local v8, uploadPhoneModel:Ljava/lang/String;
    iget-object v10, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v10, v10, Lcom/futuredial/service/DMIPhone;->m_cfgPhoneInfo:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 80
    const-string v10, "selPhoneMaker"

    invoke-virtual {p0, v10}, Lcom/futuredial/ui/ViewNotSupportedModel;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #uploadPhoneMaker:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 81
    .restart local v7       #uploadPhoneMaker:Ljava/lang/String;
    const-string v10, "selPhoneModel"

    invoke-virtual {p0, v10}, Lcom/futuredial/ui/ViewNotSupportedModel;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #uploadPhoneModel:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 95
    .restart local v8       #uploadPhoneModel:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v6

    .line 97
    .local v6, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v10, "com.futuredial"

    invoke-virtual {v6, v10}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v10

    const-string v11, "transfer_data"

    invoke-interface {v10, v11}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v10

    const-string v11, "transfer_source"

    invoke-interface {v10, v11, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v10

    const-string v11, "model"

    invoke-interface {v10, v11, v8}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v10

    const-string v11, "import1"

    const-string v12, "Null,0"

    invoke-interface {v10, v11, v12}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 105
    invoke-static {v6}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 108
    invoke-virtual {v6}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 111
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    return-object v10

    .line 86
    .end local v6           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_1
    iget-object v10, p0, Lcom/futuredial/ui/ViewNotSupportedModel;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v10, v10, Lcom/futuredial/service/DMIPhone;->m_cfgPhoneInfo:Ljava/lang/String;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, ar:[Ljava/lang/String;
    array-length v10, v0

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    .line 89
    const/4 v10, 0x0

    aget-object v7, v0, v10

    .line 90
    const/4 v10, 0x1

    aget-object v8, v0, v10

    goto :goto_0
.end method
