.class public Lcom/futuredial/ui/ViewReadWriteData;
.super Lcom/futuredial/ui/ListViewCtrl;
.source "ViewReadWriteData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;,
        Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;
    }
.end annotation


# instance fields
.field m_CurrentModuleName:Landroid/widget/TextView;

.field m_adapter:Landroid/widget/SimpleAdapter;

.field m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

.field m_curModuleName:Ljava/lang/String;

.field m_curcancelable:Z

.field m_curmoduleID:I

.field m_curprogress:I

.field m_curwrotecount:Ljava/lang/String;

.field m_dealMod:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_delProgressDlg:Landroid/app/ProgressDialog;

.field m_importingNotice:Landroid/widget/TextView;

.field m_importingProgressBar:Landroid/widget/ProgressBar;

.field m_opHistory:Lcom/futuredial/ui/DataStructures$SerialOpHistory;

.field m_phone:Lcom/futuredial/service/DMIPhone;

.field m_progressImgLayout:Landroid/widget/LinearLayout;

.field m_worker:Lcom/futuredial/DmiHandler;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Lcom/futuredial/ui/ListViewCtrl;-><init>()V

    .line 34
    iput-object v2, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_progressImgLayout:Landroid/widget/LinearLayout;

    .line 35
    iput-object v2, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_importingNotice:Landroid/widget/TextView;

    .line 36
    iput-object v2, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_CurrentModuleName:Landroid/widget/TextView;

    .line 37
    iput-object v2, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_importingProgressBar:Landroid/widget/ProgressBar;

    .line 40
    iput-object v2, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_delProgressDlg:Landroid/app/ProgressDialog;

    .line 42
    new-instance v0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    const-string v1, "com.futuredial.ui.ViewAppFinish"

    invoke-direct {v0, p0, v1}, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;-><init>(Lcom/futuredial/ui/ViewReadWriteData;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    .line 45
    iput-object v2, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_adapter:Landroid/widget/SimpleAdapter;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_dealMod:Ljava/util/ArrayList;

    .line 49
    iput-object v2, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_phone:Lcom/futuredial/service/DMIPhone;

    .line 50
    new-instance v0, Lcom/futuredial/DmiHandler;

    invoke-direct {v0}, Lcom/futuredial/DmiHandler;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_worker:Lcom/futuredial/DmiHandler;

    .line 51
    iput-object v2, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_opHistory:Lcom/futuredial/ui/DataStructures$SerialOpHistory;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_curmoduleID:I

    .line 53
    iput v3, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_curprogress:I

    .line 54
    iput-boolean v3, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_curcancelable:Z

    .line 55
    const-string v0, " "

    iput-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_curwrotecount:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_curModuleName:Ljava/lang/String;

    .line 61
    const-string v0, "[reading/writing data]"

    iput-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    .line 62
    const v0, 0x7f030005

    iput v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_layoutID:I

    .line 63
    return-void
.end method


# virtual methods
.method add_modules_to_listview(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/service/DMIPhone$DMIPhoneModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, ms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/service/DMIPhone$DMIPhoneModule;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 384
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    .line 385
    .local v1, m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    iget-object v3, p0, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add module: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->get_moduleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_bSelected:Z

    .line 388
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 389
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "string"

    invoke-virtual {v1}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->get_moduleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v3, "image"

    const v4, 0x7f020001

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v3, "id"

    iget-object v4, v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v3, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_dealMod:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    .end local v1           #m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method bb_pin_request()V
    .locals 3

    .prologue
    .line 255
    new-instance v0, Lcom/futuredial/ui/DialogManager$Builder;

    iget-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0601a0

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060196

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/futuredial/ui/ViewReadWriteData$3;

    invoke-direct {v1, p0}, Lcom/futuredial/ui/ViewReadWriteData$3;-><init>(Lcom/futuredial/ui/ViewReadWriteData;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06018b

    new-instance v2, Lcom/futuredial/ui/ViewReadWriteData$2;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewReadWriteData$2;-><init>(Lcom/futuredial/ui/ViewReadWriteData;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060189

    new-instance v2, Lcom/futuredial/ui/ViewReadWriteData$1;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewReadWriteData$1;-><init>(Lcom/futuredial/ui/ViewReadWriteData;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 289
    return-void
.end method

.method cleanup()V
    .locals 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v2, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_opHistory:Lcom/futuredial/ui/DataStructures$SerialOpHistory;

    invoke-static {v0, v1, v2}, Lcom/futuredial/service/CHistoryManager;->writeback_history_file(Landroid/content/Context;Lcom/futuredial/service/DMIPhone;Lcom/futuredial/ui/DataStructures$SerialOpHistory;)V

    .line 614
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 616
    return-void
.end method

.method clear_module_status_in_listview(Ljava/lang/Integer;)V
    .locals 5
    .parameter "m"

    .prologue
    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_dealMod:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_dealMod:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 93
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 94
    .local v1, id:Ljava/lang/Integer;
    if-ne v1, p1, :cond_2

    .line 96
    const-string v3, "image"

    const v4, 0x7f020001

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v3, "err_status"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    const-string v3, "err_status"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    iget-object v3, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v3}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 105
    .end local v1           #id:Ljava/lang/Integer;
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void

    .line 90
    .restart local v1       #id:Ljava/lang/Integer;
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method error_c1_process()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 507
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    const-string v1, "enter c1 error process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v0, Lcom/futuredial/ui/DialogManager$Builder;

    iget-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0601a1

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v1}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060187

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v4, v4, Lcom/futuredial/service/DMIPhone;->m_bt:Lcom/futuredial/service/DMIBTDevice;

    iget-object v4, v4, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06018b

    new-instance v2, Lcom/futuredial/ui/ViewReadWriteData$4;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewReadWriteData$4;-><init>(Lcom/futuredial/ui/ViewReadWriteData;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 523
    return-void
.end method

.method init_ctrl()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 370
    invoke-super {p0}, Lcom/futuredial/ui/ListViewCtrl;->init_ctrl()Ljava/lang/Boolean;

    .line 371
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_importingNotice:Landroid/widget/TextView;

    .line 372
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_importingProgressBar:Landroid/widget/ProgressBar;

    .line 373
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_importingProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 374
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_CurrentModuleName:Landroid/widget/TextView;

    .line 376
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method on_back_key()V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFooterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFooterButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/CBtnListener;->onClick(Landroid/view/View;)V

    .line 503
    :cond_0
    return-void
.end method

.method resume_process()Z
    .locals 3

    .prologue
    .line 527
    new-instance v0, Lcom/futuredial/ui/DialogManager$Builder;

    iget-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0601a1

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060191

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/futuredial/ui/ViewReadWriteData$7;

    invoke-direct {v1, p0}, Lcom/futuredial/ui/ViewReadWriteData$7;-><init>(Lcom/futuredial/ui/ViewReadWriteData;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06018d

    new-instance v2, Lcom/futuredial/ui/ViewReadWriteData$6;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewReadWriteData$6;-><init>(Lcom/futuredial/ui/ViewReadWriteData;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060189

    new-instance v2, Lcom/futuredial/ui/ViewReadWriteData$5;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewReadWriteData$5;-><init>(Lcom/futuredial/ui/ViewReadWriteData;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 591
    const/4 v0, 0x1

    return v0
.end method

.method resume_times_out()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 595
    new-instance v0, Lcom/futuredial/ui/DialogManager$Builder;

    iget-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0601a1

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06019d

    invoke-virtual {p0, v1}, Lcom/futuredial/ui/ViewReadWriteData;->get_resource_string(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v3, v3, Lcom/futuredial/service/DMIPhone;->m_bt:Lcom/futuredial/service/DMIBTDevice;

    iget-object v3, v3, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06018b

    new-instance v2, Lcom/futuredial/ui/ViewReadWriteData$8;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewReadWriteData$8;-><init>(Lcom/futuredial/ui/ViewReadWriteData;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 610
    return-void
.end method

.method public bridge synthetic setTitleText()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/futuredial/ui/ListViewCtrl;->setTitleText()V

    return-void
.end method

.method set_in_arg([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 403
    const-string v1, "selectedMods"

    invoke-virtual {p0, v1}, Lcom/futuredial/ui/ViewReadWriteData;->has_mem(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 430
    :goto_0
    return-object v1

    .line 406
    :cond_0
    const-string v1, "phone_info"

    invoke-virtual {p0, v1}, Lcom/futuredial/ui/ViewReadWriteData;->has_mem(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 407
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 408
    :cond_1
    const-string v1, "opHistory"

    invoke-virtual {p0, v1}, Lcom/futuredial/ui/ViewReadWriteData;->has_mem(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 409
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 411
    :cond_2
    const-string v1, "opHistory"

    invoke-virtual {p0, v1}, Lcom/futuredial/ui/ViewReadWriteData;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/ui/DataStructures$SerialOpHistory;

    iput-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_opHistory:Lcom/futuredial/ui/DataStructures$SerialOpHistory;

    .line 414
    const-string v1, "selectedMods"

    invoke-virtual {p0, v1}, Lcom/futuredial/ui/ViewReadWriteData;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 416
    .local v0, selectedMods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/service/DMIPhone$DMIPhoneModule;>;"
    const-string v1, "phone_info"

    invoke-virtual {p0, v1}, Lcom/futuredial/ui/ViewReadWriteData;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/service/DMIPhone;

    iput-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_phone:Lcom/futuredial/service/DMIPhone;

    .line 421
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 422
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 424
    :cond_3
    iget-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v1, v1, Lcom/futuredial/ui/DMIUI;->m_cfgChg:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 425
    iget-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_dealMod:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 426
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 427
    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewReadWriteData;->add_modules_to_listview(Ljava/util/ArrayList;)V

    .line 430
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method set_module_status_in_listview(Ljava/lang/Integer;Z)V
    .locals 7
    .parameter "m"
    .parameter "bOK"

    .prologue
    .line 67
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_dealMod:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 69
    iget-object v4, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_dealMod:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 70
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "string"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 71
    .local v3, modNameInList:Ljava/lang/String;
    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 72
    .local v1, id:Ljava/lang/Integer;
    if-ne v1, p1, :cond_2

    .line 74
    iget-object v4, p0, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "module: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "string"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-eqz p2, :cond_1

    .line 76
    const-string v4, "image"

    const v5, 0x7f020003

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :goto_1
    iget-object v4, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v4}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 86
    .end local v1           #id:Ljava/lang/Integer;
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #modNameInList:Ljava/lang/String;
    :cond_0
    return-void

    .line 79
    .restart local v1       #id:Ljava/lang/Integer;
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3       #modNameInList:Ljava/lang/String;
    :cond_1
    const-string v4, "image"

    const v5, 0x7f020002

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v4, "err_status"

    const v5, 0x7f060215

    invoke-virtual {p0, v5}, Lcom/futuredial/ui/ViewReadWriteData;->get_resource_string(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 67
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method set_view()Ljava/lang/Boolean;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 440
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    const-string v1, "set_view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p0, v10}, Lcom/futuredial/ui/ViewReadWriteData;->setup_footer_buttons(I)V

    .line 443
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 444
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_importingProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_curprogress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 445
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_importingNotice:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_curwrotecount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->headerbar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v9}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    .line 449
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewReadWriteData;->set_step(I)V

    .line 450
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f060189

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 451
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_gHandler:Lcom/futuredial/ui/UIHandler;

    new-instance v1, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;

    invoke-direct {v1, p0}, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;-><init>(Lcom/futuredial/ui/ViewReadWriteData;)V

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/UIHandler;->set_processor(Lcom/futuredial/ui/UIProcessor;)V

    .line 455
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_dealMod:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_dealMod:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 457
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    const-string v0, "id"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 459
    .local v7, id:Ljava/lang/Integer;
    const-string v0, "err_status"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    const-string v0, "err_status"

    const v1, 0x7f060215

    invoke-virtual {p0, v1}, Lcom/futuredial/ui/ViewReadWriteData;->get_resource_string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_0
    const-string v0, "string"

    iget-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_phone:Lcom/futuredial/service/DMIPhone;

    invoke-virtual {v1, v7}, Lcom/futuredial/service/DMIPhone;->get_modulebyID(Ljava/lang/Integer;)Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->get_moduleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .end local v7           #id:Ljava/lang/Integer;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 465
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v2, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_dealMod:Ljava/util/ArrayList;

    const v3, 0x7f03000c

    new-array v4, v12, [Ljava/lang/String;

    const-string v5, "string"

    aput-object v5, v4, v9

    const-string v5, "err_status"

    aput-object v5, v4, v10

    const-string v5, "image"

    aput-object v5, v4, v11

    new-array v5, v12, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_adapter:Landroid/widget/SimpleAdapter;

    .line 471
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_selectView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 472
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_selectView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListView;->setHeaderDividersEnabled(Z)V

    .line 474
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_selectView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 475
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_selectView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListView;->setClickable(Z)V

    .line 476
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_selectView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListView;->setFocusable(Z)V

    .line 478
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    iget-boolean v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_curcancelable:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setClickable(Z)V

    .line 479
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    iget-boolean v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_curcancelable:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 480
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->headerText:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f060253

    invoke-virtual {p0, v1}, Lcom/futuredial/ui/ViewReadWriteData;->get_resource_string(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    invoke-virtual {v0}, Lcom/futuredial/ui/DialogManager;->showAll()V

    .line 486
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_cfgChg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 487
    sget-object v0, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    iget-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_worker:Lcom/futuredial/DmiHandler;

    iget-object v2, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_phone:Lcom/futuredial/service/DMIPhone;

    invoke-interface {v0, v1, v2}, Lcom/futuredial/service/DMISrvInterface;->dmi_start_rw(Lcom/futuredial/DmiHandler;Lcom/futuredial/service/DMIPhone;)V

    .line 496
    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 489
    :cond_3
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_curModuleName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 490
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_curmoduleID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/futuredial/service/DMIPhone;->get_modulebyID(Ljava/lang/Integer;)Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->get_moduleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_curModuleName:Ljava/lang/String;

    .line 491
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_CurrentModuleName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_curModuleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    :cond_4
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/futuredial/ui/DMIUI;->m_cfgChg:Ljava/lang/Boolean;

    goto :goto_1

    .line 465
    :array_0
    .array-data 0x4
        0x29t 0x0t 0x9t 0x7ft
        0x2ct 0x0t 0x9t 0x7ft
        0x2at 0x0t 0x9t 0x7ft
    .end array-data
.end method
