.class public Lcom/futuredial/ui/ViewAppFinish;
.super Lcom/futuredial/ui/ViewController;
.source "ViewAppFinish.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/ui/ViewAppFinish$ViewProcessor;
    }
.end annotation


# instance fields
.field m_initStatus:Ljava/lang/Boolean;

.field m_pdWait:Landroid/app/ProgressDialog;

.field m_phone:Lcom/futuredial/service/DMIPhone;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lcom/futuredial/ui/ViewController;-><init>()V

    .line 22
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ui/ViewAppFinish;->m_initStatus:Ljava/lang/Boolean;

    .line 23
    iput-object v1, p0, Lcom/futuredial/ui/ViewAppFinish;->m_pdWait:Landroid/app/ProgressDialog;

    .line 24
    iput-object v1, p0, Lcom/futuredial/ui/ViewAppFinish;->m_phone:Lcom/futuredial/service/DMIPhone;

    .line 28
    const-string v0, "[dmi finish]"

    iput-object v0, p0, Lcom/futuredial/ui/ViewAppFinish;->ViewName:Ljava/lang/String;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/ui/ViewAppFinish;->m_layoutID:I

    .line 30
    return-void
.end method


# virtual methods
.method init_ctrl()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/futuredial/ui/ViewAppFinish;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewAppFinish;->m_pdWait:Landroid/app/ProgressDialog;

    .line 59
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method set_in_arg([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .parameter "args"

    .prologue
    const/4 v2, 0x1

    .line 66
    iget-object v0, p0, Lcom/futuredial/ui/ViewAppFinish;->ViewName:Ljava/lang/String;

    const-string v1, "set_in_arg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v0, "btInitStatus"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewAppFinish;->has_mem(Ljava/lang/String;)Z

    move-result v0

    if-ne v2, v0, :cond_0

    .line 75
    const-string v0, "btInitStatus"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewAppFinish;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/futuredial/ui/ViewAppFinish;->m_initStatus:Ljava/lang/Boolean;

    .line 77
    :cond_0
    const-string v0, "phone_info"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewAppFinish;->has_mem(Ljava/lang/String;)Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 78
    const-string v0, "phone_info"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewAppFinish;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/service/DMIPhone;

    iput-object v0, p0, Lcom/futuredial/ui/ViewAppFinish;->m_phone:Lcom/futuredial/service/DMIPhone;

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/futuredial/ui/ViewAppFinish;->m_phone:Lcom/futuredial/service/DMIPhone;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/futuredial/ui/ViewAppFinish;->m_phone:Lcom/futuredial/service/DMIPhone;

    invoke-virtual {v0}, Lcom/futuredial/service/DMIPhone;->get_failed_mods()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/futuredial/ui/ViewAppFinish;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DMIUI;->setResult(I)V

    .line 88
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/futuredial/ui/ViewAppFinish;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DMIUI;->setResult(I)V

    goto :goto_0
.end method

.method set_view()Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 94
    iget-object v2, p0, Lcom/futuredial/ui/ViewAppFinish;->m_pdWait:Landroid/app/ProgressDialog;

    invoke-static {v2}, Lcom/futuredial/ui/DialogManager;->reg_dialog(Landroid/app/Dialog;)V

    .line 95
    iget-object v2, p0, Lcom/futuredial/ui/ViewAppFinish;->ViewName:Ljava/lang/String;

    const-string v3, "set_view()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v2, p0, Lcom/futuredial/ui/ViewAppFinish;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Lcom/futuredial/ui/DMIUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 98
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 99
    .local v1, orientation:I
    if-nez v1, :cond_0

    .line 100
    iget-object v2, p0, Lcom/futuredial/ui/ViewAppFinish;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v2, v4}, Lcom/futuredial/ui/DMIUI;->setRequestedOrientation(I)V

    .line 101
    :cond_0
    if-ne v1, v4, :cond_1

    .line 102
    iget-object v2, p0, Lcom/futuredial/ui/ViewAppFinish;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v2, v5}, Lcom/futuredial/ui/DMIUI;->setRequestedOrientation(I)V

    .line 103
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 104
    iget-object v2, p0, Lcom/futuredial/ui/ViewAppFinish;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/futuredial/ui/DMIUI;->setRequestedOrientation(I)V

    .line 105
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 106
    iget-object v2, p0, Lcom/futuredial/ui/ViewAppFinish;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/futuredial/ui/DMIUI;->setRequestedOrientation(I)V

    .line 107
    :cond_3
    iget-object v2, p0, Lcom/futuredial/ui/ViewAppFinish;->m_pdWait:Landroid/app/ProgressDialog;

    const v3, 0x7f060186

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewAppFinish;->get_resource_string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v2, p0, Lcom/futuredial/ui/ViewAppFinish;->m_pdWait:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 110
    iget-object v2, p0, Lcom/futuredial/ui/ViewAppFinish;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v2, v2, Lcom/futuredial/ui/DMIUI;->m_gHandler:Lcom/futuredial/ui/UIHandler;

    new-instance v3, Lcom/futuredial/ui/ViewAppFinish$ViewProcessor;

    invoke-direct {v3, p0}, Lcom/futuredial/ui/ViewAppFinish$ViewProcessor;-><init>(Lcom/futuredial/ui/ViewAppFinish;)V

    invoke-virtual {v2, v3}, Lcom/futuredial/ui/UIHandler;->set_processor(Lcom/futuredial/ui/UIProcessor;)V

    .line 112
    iget-object v2, p0, Lcom/futuredial/ui/ViewAppFinish;->m_initStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 113
    sget-object v2, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    invoke-interface {v2}, Lcom/futuredial/service/DMISrvInterface;->dmi_bt_close_bt()V

    .line 118
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 115
    :cond_4
    iget-object v2, p0, Lcom/futuredial/ui/ViewAppFinish;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v2}, Lcom/futuredial/ui/DMIUI;->finish()V

    goto :goto_0
.end method
