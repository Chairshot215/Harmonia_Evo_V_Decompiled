.class public Lcom/futuredial/ui/ViewPairingWith;
.super Lcom/futuredial/ui/GeneralViewCtrl;
.source "ViewPairingWith.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;,
        Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field m_btnBackPress:Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;

.field m_phone:Lcom/futuredial/service/DMIPhone;

.field m_rmtDevice:Lcom/futuredial/service/DMIBTDevice;

.field pairkey:Ljava/lang/String;

.field sTipId:I

.field sTitleId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 380
    invoke-direct {p0}, Lcom/futuredial/ui/GeneralViewCtrl;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/ui/ViewPairingWith;->m_rmtDevice:Lcom/futuredial/service/DMIBTDevice;

    .line 22
    new-instance v0, Lcom/futuredial/service/DMIPhone;

    invoke-direct {v0}, Lcom/futuredial/service/DMIPhone;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewPairingWith;->m_phone:Lcom/futuredial/service/DMIPhone;

    .line 25
    iget-object v0, p0, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_gHandler:Lcom/futuredial/ui/UIHandler;

    iput-object v0, p0, Lcom/futuredial/ui/ViewPairingWith;->mHandler:Landroid/os/Handler;

    .line 26
    iput v1, p0, Lcom/futuredial/ui/ViewPairingWith;->sTitleId:I

    .line 27
    iput v1, p0, Lcom/futuredial/ui/ViewPairingWith;->sTipId:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/ui/ViewPairingWith;->pairkey:Ljava/lang/String;

    .line 376
    new-instance v0, Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;

    const-string v1, "com.futuredial.ui.ViewAppFinish"

    invoke-direct {v0, p0, v1}, Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;-><init>(Lcom/futuredial/ui/ViewPairingWith;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewPairingWith;->m_btnBackPress:Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;

    .line 381
    const-string v0, "[pairing with x]"

    iput-object v0, p0, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    .line 382
    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v0}, Lcom/futuredial/ui/DMIUI;->dmi_notify_close()V

    .line 482
    return-void
.end method

.method fetchUUIDFail()V
    .locals 5

    .prologue
    .line 211
    new-instance v0, Lcom/futuredial/ui/DialogManager$Builder;

    iget-object v1, p0, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0601a4

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06019e

    invoke-virtual {p0, v1}, Lcom/futuredial/ui/ViewPairingWith;->get_resource_string(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/futuredial/ui/ViewPairingWith;->m_rmtDevice:Lcom/futuredial/service/DMIBTDevice;

    iget-object v4, v4, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06018b

    new-instance v2, Lcom/futuredial/ui/ViewPairingWith$1;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewPairingWith$1;-><init>(Lcom/futuredial/ui/ViewPairingWith;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 223
    return-void
.end method

.method getStringByResid(I)Ljava/lang/String;
    .locals 6
    .parameter "resid"

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    const-string v0, ""

    .line 32
    .local v0, str_ret:Ljava/lang/String;
    if-lez p1, :cond_0

    .line 33
    const v1, 0x7f060247

    if-ne p1, v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v1}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/futuredial/ui/ViewPairingWith;->pairkey:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/futuredial/ui/ViewPairingWith;->m_rmtDevice:Lcom/futuredial/service/DMIBTDevice;

    iget-object v3, v3, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_0
    :goto_0
    return-object v0

    .line 35
    :cond_1
    const v1, 0x7f060235

    if-ne p1, v1, :cond_2

    .line 36
    iget-object v1, p0, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v1}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/futuredial/ui/ViewPairingWith;->pairkey:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/futuredial/ui/ViewPairingWith;->m_rmtDevice:Lcom/futuredial/service/DMIBTDevice;

    iget-object v3, v3, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_2
    const v1, 0x7f060250

    if-ne p1, v1, :cond_3

    .line 38
    iget-object v1, p0, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v1}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/futuredial/ui/ViewPairingWith;->m_rmtDevice:Lcom/futuredial/service/DMIBTDevice;

    iget-object v3, v3, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_3
    iget-object v1, p0, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v1}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method on_back_key()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/futuredial/ui/ViewPairingWith;->m_btnBackPress:Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;->onClick(Landroid/view/View;)V

    .line 477
    return-void
.end method

.method resume_process(Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/ui/ViewController;Lcom/futuredial/ui/ViewController;)V
    .locals 3
    .parameter "dlgTitle"
    .parameter "dlgContent"
    .parameter "resumeto"
    .parameter "noquit"

    .prologue
    .line 250
    new-instance v0, Lcom/futuredial/ui/DialogManager$Builder;

    iget-object v1, p0, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/futuredial/ui/DialogManager$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/futuredial/ui/ViewPairingWith$5;

    invoke-direct {v1, p0}, Lcom/futuredial/ui/ViewPairingWith$5;-><init>(Lcom/futuredial/ui/ViewPairingWith;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06018d

    new-instance v2, Lcom/futuredial/ui/ViewPairingWith$4;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewPairingWith$4;-><init>(Lcom/futuredial/ui/ViewPairingWith;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060189

    new-instance v2, Lcom/futuredial/ui/ViewPairingWith$3;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewPairingWith$3;-><init>(Lcom/futuredial/ui/ViewPairingWith;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 315
    return-void
.end method

.method resume_times_out(Ljava/lang/String;)V
    .locals 5
    .parameter "dlgTitle"

    .prologue
    const/4 v4, 0x0

    .line 227
    new-instance v0, Lcom/futuredial/ui/DialogManager$Builder;

    iget-object v1, p0, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/futuredial/ui/DialogManager$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06019d

    invoke-virtual {p0, v1}, Lcom/futuredial/ui/ViewPairingWith;->get_resource_string(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/futuredial/ui/ViewPairingWith;->m_rmtDevice:Lcom/futuredial/service/DMIBTDevice;

    iget-object v3, v3, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06018b

    new-instance v2, Lcom/futuredial/ui/ViewPairingWith$2;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewPairingWith$2;-><init>(Lcom/futuredial/ui/ViewPairingWith;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 240
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
    .locals 6
    .parameter "args"

    .prologue
    const/4 v5, 0x0

    .line 389
    const-string v3, "targetPhoneSelector"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewPairingWith;->has_mem(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 390
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 402
    :goto_0
    return-object v3

    .line 391
    :cond_0
    const-string v3, "rmtBTDevices"

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewPairingWith;->has_mem(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 392
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 395
    :cond_1
    iget-object v3, p0, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v3, v3, Lcom/futuredial/ui/DMIUI;->m_innerMem:Ljava/util/HashMap;

    const-string v4, "targetPhoneSelector"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/ui/CSingleSelectHandle;

    .line 396
    .local v1, prevSelected:Lcom/futuredial/ui/CSingleSelectHandle;
    iget-object v3, p0, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v3, v3, Lcom/futuredial/ui/DMIUI;->m_innerMem:Ljava/util/HashMap;

    const-string v4, "rmtBTDevices"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 397
    .local v2, rmtBTDevices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/service/DMIBTDevice;>;"
    iget v3, v1, Lcom/futuredial/ui/CSingleSelectHandle;->m_pos:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 398
    .local v0, i:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 399
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/futuredial/service/DMIBTDevice;

    iput-object v3, p0, Lcom/futuredial/ui/ViewPairingWith;->m_rmtDevice:Lcom/futuredial/service/DMIBTDevice;

    .line 400
    iget-object v3, p0, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith;->m_rmtDevice:Lcom/futuredial/service/DMIBTDevice;

    iget-object v5, v5, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; device address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith;->m_rmtDevice:Lcom/futuredial/service/DMIBTDevice;

    iget-object v5, v5, Lcom/futuredial/service/DMIBTDevice;->m_address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v3, p0, Lcom/futuredial/ui/ViewPairingWith;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v4, p0, Lcom/futuredial/ui/ViewPairingWith;->m_rmtDevice:Lcom/futuredial/service/DMIBTDevice;

    iput-object v4, v3, Lcom/futuredial/service/DMIPhone;->m_bt:Lcom/futuredial/service/DMIBTDevice;

    .line 402
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method set_view()Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 409
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    const-string v3, "set_view()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {p0, v4}, Lcom/futuredial/ui/ViewPairingWith;->setup_footer_buttons(I)V

    .line 413
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x7f060189

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 414
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 415
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->m_text1:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 416
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->headerbar:Lcom/htc/widget/HeaderBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    .line 418
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v2, v2, Lcom/futuredial/ui/DMIUI;->m_gHandler:Lcom/futuredial/ui/UIHandler;

    new-instance v3, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;

    invoke-direct {v3, p0}, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;-><init>(Lcom/futuredial/ui/ViewPairingWith;)V

    invoke-virtual {v2, v3}, Lcom/futuredial/ui/UIHandler;->set_processor(Lcom/futuredial/ui/UIProcessor;)V

    .line 421
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/futuredial/ui/ViewPairingWith;->set_step(I)V

    .line 423
    sget-object v2, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    iget-object v3, p0, Lcom/futuredial/ui/ViewPairingWith;->m_rmtDevice:Lcom/futuredial/service/DMIBTDevice;

    invoke-interface {v2, v3}, Lcom/futuredial/service/DMISrvInterface;->dmi_bt_pair_target(Lcom/futuredial/service/DMIBTDevice;)V

    .line 425
    iget v2, p0, Lcom/futuredial/ui/ViewPairingWith;->sTitleId:I

    invoke-virtual {p0, v2}, Lcom/futuredial/ui/ViewPairingWith;->getStringByResid(I)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, title:Ljava/lang/String;
    iget v2, p0, Lcom/futuredial/ui/ViewPairingWith;->sTipId:I

    invoke-virtual {p0, v2}, Lcom/futuredial/ui/ViewPairingWith;->getStringByResid(I)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, tip:Ljava/lang/String;
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v2, v2, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    invoke-virtual {v2}, Lcom/futuredial/ui/DialogManager;->getSize()I

    move-result v2

    if-lez v2, :cond_3

    .line 429
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 430
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->headerText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 431
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 432
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->m_text1:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    :cond_1
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v2, v2, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    invoke-virtual {v2}, Lcom/futuredial/ui/DialogManager;->showAll()V

    .line 468
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    iget-object v3, p0, Lcom/futuredial/ui/ViewPairingWith;->m_btnBackPress:Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 436
    :cond_3
    sget-object v2, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    invoke-interface {v2}, Lcom/futuredial/service/DMISrvInterface;->dmi_bt_is_paired()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 438
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    const-string v3, "paired yet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 445
    :goto_1
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->headerText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 446
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v2, v2, Lcom/futuredial/ui/DMIUI;->m_cfgChg:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 447
    sget-object v2, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    iget-object v3, p0, Lcom/futuredial/ui/ViewPairingWith;->m_rmtDevice:Lcom/futuredial/service/DMIBTDevice;

    invoke-interface {v2, v3}, Lcom/futuredial/service/DMISrvInterface;->dmi_bt_query_phone_model(Lcom/futuredial/service/DMIBTDevice;)Z

    goto :goto_0

    .line 442
    :cond_4
    const v2, 0x7f060250

    iput v2, p0, Lcom/futuredial/ui/ViewPairingWith;->sTitleId:I

    .line 443
    iget v2, p0, Lcom/futuredial/ui/ViewPairingWith;->sTitleId:I

    invoke-virtual {p0, v2}, Lcom/futuredial/ui/ViewPairingWith;->getStringByResid(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 452
    :cond_5
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    const-string v3, "start pair"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const v2, 0x7f060258

    iput v2, p0, Lcom/futuredial/ui/ViewPairingWith;->sTitleId:I

    .line 455
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->headerText:Lcom/htc/widget/HeaderBarText;

    iget v3, p0, Lcom/futuredial/ui/ViewPairingWith;->sTitleId:I

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewPairingWith;->getStringByResid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 457
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->m_text1:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :goto_2
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v2, v2, Lcom/futuredial/ui/DMIUI;->m_cfgChg:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 463
    sget-object v2, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    invoke-interface {v2}, Lcom/futuredial/service/DMISrvInterface;->dmi_bt_pair()Z

    goto :goto_0

    .line 460
    :cond_6
    iget-object v2, p0, Lcom/futuredial/ui/ViewPairingWith;->m_text1:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
