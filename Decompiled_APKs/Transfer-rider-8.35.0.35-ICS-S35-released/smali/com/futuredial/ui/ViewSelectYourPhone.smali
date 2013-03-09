.class public Lcom/futuredial/ui/ViewSelectYourPhone;
.super Lcom/futuredial/ui/ListViewCtrl;
.source "ViewSelectYourPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;,
        Lcom/futuredial/ui/ViewSelectYourPhone$preViewProcessor;,
        Lcom/futuredial/ui/ViewSelectYourPhone$CBTBtnListener;
    }
.end annotation


# static fields
.field public static final DMI_SETTING_SCAN_ACTION:I = 0x9e


# instance fields
.field m_adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_bMidBtnReScan:Ljava/lang/Boolean;

.field m_bWaitForOSSetting:Z

.field m_btDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/service/DMIBTDevice;",
            ">;"
        }
    .end annotation
.end field

.field m_btInitStatus:Ljava/lang/Boolean;

.field m_btnBackPress:Lcom/futuredial/ui/ViewSelectYourPhone$CBTBtnListener;

.field m_devicesAround:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_rescanCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-direct {p0}, Lcom/futuredial/ui/ListViewCtrl;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v4}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_btInitStatus:Ljava/lang/Boolean;

    .line 27
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_bMidBtnReScan:Ljava/lang/Boolean;

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_rescanCount:Ljava/lang/Integer;

    .line 33
    new-instance v0, Lcom/futuredial/ui/ViewSelectYourPhone$CBTBtnListener;

    const-string v1, "com.futuredial.ui.ViewHowToEnableBT"

    invoke-direct {v0, p0, v1}, Lcom/futuredial/ui/ViewSelectYourPhone$CBTBtnListener;-><init>(Lcom/futuredial/ui/ViewSelectYourPhone;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_btnBackPress:Lcom/futuredial/ui/ViewSelectYourPhone$CBTBtnListener;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_devicesAround:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    sget-object v2, Lcom/futuredial/ui/DMIUI;->LV_LAYOUT_ID:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_devicesAround:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_adapter:Landroid/widget/ArrayAdapter;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_btDeviceList:Ljava/util/ArrayList;

    .line 182
    iput-boolean v4, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_bWaitForOSSetting:Z

    .line 60
    const-string v0, "[select your phone]"

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->ViewName:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method declared-synchronized alert_cannot_open_bt()V
    .locals 2

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_bWaitForOSSetting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    monitor-exit p0

    return-void

    .line 189
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->ViewName:Ljava/lang/String;

    const-string v1, "msgbox"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_gHandler:Lcom/futuredial/ui/UIHandler;

    new-instance v1, Lcom/futuredial/ui/ViewSelectYourPhone$1;

    invoke-direct {v1, p0}, Lcom/futuredial/ui/ViewSelectYourPhone$1;-><init>(Lcom/futuredial/ui/ViewSelectYourPhone;)V

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/UIHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method do_scan()V
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/futuredial/ui/ViewSelectYourPhone;->set_stop_status()V

    .line 242
    sget-object v0, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    invoke-interface {v0}, Lcom/futuredial/service/DMISrvInterface;->dmi_bt_start_scan()Z

    .line 243
    return-void
.end method

.method on_back_key()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_btnBackPress:Lcom/futuredial/ui/ViewSelectYourPhone$CBTBtnListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/ViewSelectYourPhone$CBTBtnListener;->onClick(Landroid/view/View;)V

    .line 381
    return-void
.end method

.method op_wnd_resume()V
    .locals 0

    .prologue
    .line 384
    invoke-super {p0}, Lcom/futuredial/ui/ListViewCtrl;->op_wnd_resume()V

    .line 391
    return-void
.end method

.method re_scan()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_btDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 248
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_devicesAround:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 249
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 250
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_selectView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->clearChoices()V

    .line 252
    invoke-virtual {p0}, Lcom/futuredial/ui/ViewSelectYourPhone;->do_scan()V

    .line 253
    return-void
.end method

.method public bridge synthetic setTitleText()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Lcom/futuredial/ui/ListViewCtrl;->setTitleText()V

    return-void
.end method

.method set_in_arg([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .parameter "args"

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method set_mid_button()V
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    invoke-interface {v0}, Lcom/futuredial/service/DMISrvInterface;->dmi_bt_is_open()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_btInitStatus:Ljava/lang/Boolean;

    .line 96
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_ibtnMid:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_btInitStatus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 97
    return-void
.end method

.method set_rescan_status()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->ViewName:Ljava/lang/String;

    const-string v1, "re-scan mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->headerText:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f060260

    invoke-virtual {p0, v1}, Lcom/futuredial/ui/ViewSelectYourPhone;->get_resource_string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_ibtnMid:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f060213

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 76
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_bMidBtnReScan:Ljava/lang/Boolean;

    .line 77
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->headerbar:Lcom/htc/widget/HeaderBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    .line 78
    return-void
.end method

.method set_stop_status()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->ViewName:Ljava/lang/String;

    const-string v1, "stop-scan mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/futuredial/ui/ViewSelectYourPhone;->set_mid_button()V

    .line 85
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->headerText:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f06025b

    invoke-virtual {p0, v1}, Lcom/futuredial/ui/ViewSelectYourPhone;->get_resource_string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_ibtnMid:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f060214

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 87
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_bMidBtnReScan:Ljava/lang/Boolean;

    .line 89
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setClickable(Z)V

    .line 90
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->headerbar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    .line 92
    return-void
.end method

.method set_view()Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 263
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->ViewName:Ljava/lang/String;

    const-string v2, "set_view()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewSelectYourPhone;->setup_footer_buttons(I)V

    .line 267
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_selectView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 268
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcFooterButton;->setClickable(Z)V

    .line 269
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 273
    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewSelectYourPhone;->set_step(I)V

    .line 275
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->headerText:Lcom/htc/widget/HeaderBarText;

    const v2, 0x7f06025b

    invoke-virtual {p0, v2}, Lcom/futuredial/ui/ViewSelectYourPhone;->get_resource_string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_selectView:Lcom/htc/widget/HtcListView;

    invoke-static {v1}, Lcom/futuredial/ui/DMIStyle;->format_listview(Lcom/htc/widget/HtcListView;)V

    .line 279
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v1, v1, Lcom/futuredial/ui/DMIUI;->m_cfgChg:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    sget-object v3, Lcom/futuredial/ui/DMIUI;->LV_LAYOUT_ID:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_devicesAround:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_adapter:Landroid/widget/ArrayAdapter;

    .line 281
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/futuredial/ui/DMIUI;->m_cfgChg:Ljava/lang/Boolean;

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_selectView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 286
    sget-object v1, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    invoke-interface {v1}, Lcom/futuredial/service/DMISrvInterface;->dmi_bt_is_open()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_btInitStatus:Ljava/lang/Boolean;

    .line 288
    const-string v1, "btInitStatus"

    invoke-virtual {p0, v1}, Lcom/futuredial/ui/ViewSelectYourPhone;->has_mem(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->ViewName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt init status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_btInitStatus:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v1, "btInitStatus"

    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_btInitStatus:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Lcom/futuredial/ui/ViewSelectYourPhone;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v1, v1, Lcom/futuredial/ui/DMIUI;->m_gHandler:Lcom/futuredial/ui/UIHandler;

    new-instance v2, Lcom/futuredial/ui/ViewSelectYourPhone$preViewProcessor;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewSelectYourPhone$preViewProcessor;-><init>(Lcom/futuredial/ui/ViewSelectYourPhone;)V

    invoke-virtual {v1, v2}, Lcom/futuredial/ui/UIHandler;->set_processor(Lcom/futuredial/ui/UIProcessor;)V

    .line 297
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v1, v1, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    invoke-virtual {v1}, Lcom/futuredial/ui/DialogManager;->getSize()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_bWaitForOSSetting:Z

    if-nez v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->ViewName:Ljava/lang/String;

    const-string v2, "start new scan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Lcom/futuredial/ui/ViewSelectYourPhone;->do_scan()V

    .line 314
    :goto_0
    new-instance v0, Lcom/futuredial/ui/ViewSelectYourPhone$1CBTSelectHandle;

    invoke-direct {v0, p0}, Lcom/futuredial/ui/ViewSelectYourPhone$1CBTSelectHandle;-><init>(Lcom/futuredial/ui/ViewSelectYourPhone;)V

    .line 315
    .local v0, targetPhoneSelector:Lcom/futuredial/ui/CSingleSelectHandle;
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_selectView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 318
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_btnBackPress:Lcom/futuredial/ui/ViewSelectYourPhone$CBTBtnListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/futuredial/ui/ViewSelectYourPhone$CBTBtnListener;

    const-string v3, "com.futuredial.ui.ViewPairingWith"

    invoke-direct {v2, p0, v3}, Lcom/futuredial/ui/ViewSelectYourPhone$CBTBtnListener;-><init>(Lcom/futuredial/ui/ViewSelectYourPhone;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_ibtnMid:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewSelectYourPhone$1CRescanStopListener;-><init>(Lcom/futuredial/ui/ViewSelectYourPhone;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    const-string v1, "targetPhoneSelector"

    invoke-virtual {p0, v1, v0}, Lcom/futuredial/ui/ViewSelectYourPhone;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    const-string v1, "rmtBTDevices"

    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_btDeviceList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lcom/futuredial/ui/ViewSelectYourPhone;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v1, v1, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    invoke-virtual {v1}, Lcom/futuredial/ui/DialogManager;->showAll()V

    .line 373
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 301
    .end local v0           #targetPhoneSelector:Lcom/futuredial/ui/CSingleSelectHandle;
    :cond_2
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_ibtnMid:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f060213

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    goto :goto_0
.end method

.method stop_scan()V
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    invoke-interface {v0}, Lcom/futuredial/service/DMISrvInterface;->dmi_bt_stop_scan()Z

    .line 257
    return-void
.end method
