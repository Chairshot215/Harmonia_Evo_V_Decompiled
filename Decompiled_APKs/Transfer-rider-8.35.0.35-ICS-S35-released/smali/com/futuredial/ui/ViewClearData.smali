.class public Lcom/futuredial/ui/ViewClearData;
.super Lcom/futuredial/ui/ListViewCtrl;
.source "ViewClearData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/ui/ViewClearData$CDelStartListener;,
        Lcom/futuredial/ui/ViewClearData$ViewProcessor;
    }
.end annotation


# instance fields
.field m_Handler:Landroid/os/Handler;

.field m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

.field m_delModSelector:Lcom/futuredial/ui/CMultiCheckHandle;

.field m_importedMod:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/service/DMIPhone$DMIPhoneModule;",
            ">;"
        }
    .end annotation
.end field

.field m_pdDeling:Landroid/app/ProgressDialog;

.field m_phone:Lcom/futuredial/service/DMIPhone;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Lcom/futuredial/ui/ListViewCtrl;-><init>()V

    .line 22
    new-instance v0, Lcom/futuredial/ui/CBtnListener;

    const-string v1, "com.futuredial.ui.ViewSelectYourPhone"

    invoke-direct {v0, v1}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewClearData;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    .line 23
    iput-object v2, p0, Lcom/futuredial/ui/ViewClearData;->m_importedMod:Ljava/util/ArrayList;

    .line 26
    iput-object v2, p0, Lcom/futuredial/ui/ViewClearData;->m_phone:Lcom/futuredial/service/DMIPhone;

    .line 30
    new-instance v0, Lcom/futuredial/ui/CMultiCheckHandle;

    invoke-direct {v0}, Lcom/futuredial/ui/CMultiCheckHandle;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewClearData;->m_delModSelector:Lcom/futuredial/ui/CMultiCheckHandle;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewClearData;->m_Handler:Landroid/os/Handler;

    .line 34
    iput-object v2, p0, Lcom/futuredial/ui/ViewClearData;->m_pdDeling:Landroid/app/ProgressDialog;

    .line 45
    const-string v0, "[Clear data on this phone]"

    iput-object v0, p0, Lcom/futuredial/ui/ViewClearData;->ViewName:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/futuredial/ui/ViewClearData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 245
    return-void
.end method

.method init_ctrl()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/futuredial/ui/ViewClearData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewClearData;->m_pdDeling:Landroid/app/ProgressDialog;

    .line 40
    invoke-super {p0}, Lcom/futuredial/ui/ListViewCtrl;->init_ctrl()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method on_back_key()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/futuredial/ui/ViewClearData;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/CBtnListener;->onClick(Landroid/view/View;)V

    .line 241
    return-void
.end method

.method public bridge synthetic setTitleText()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lcom/futuredial/ui/ListViewCtrl;->setTitleText()V

    return-void
.end method

.method set_in_arg([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 53
    new-instance v0, Lcom/futuredial/ui/CMultiCheckHandle;

    invoke-direct {v0}, Lcom/futuredial/ui/CMultiCheckHandle;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewClearData;->m_delModSelector:Lcom/futuredial/ui/CMultiCheckHandle;

    .line 54
    const-string v0, "importedMod"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewClearData;->has_mem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 57
    :cond_0
    const-string v0, "phone_info"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewClearData;->has_mem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_1
    const-string v0, "importedMod"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewClearData;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/futuredial/ui/ViewClearData;->m_importedMod:Ljava/util/ArrayList;

    .line 61
    const-string v0, "phone_info"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewClearData;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/service/DMIPhone;

    iput-object v0, p0, Lcom/futuredial/ui/ViewClearData;->m_phone:Lcom/futuredial/service/DMIPhone;

    .line 74
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method set_view()Ljava/lang/Boolean;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 172
    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->ViewName:Ljava/lang/String;

    const-string v5, "set_view()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->m_selectView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 176
    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->m_selectView:Lcom/htc/widget/HtcListView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 179
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/futuredial/ui/ViewClearData;->set_step(I)V

    .line 180
    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->headerText:Lcom/htc/widget/HeaderBarText;

    const v5, 0x7f06024d

    invoke-virtual {p0, v5}, Lcom/futuredial/ui/ViewClearData;->get_resource_string(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 181
    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v4, v4, Lcom/futuredial/ui/DMIUI;->m_gHandler:Lcom/futuredial/ui/UIHandler;

    new-instance v5, Lcom/futuredial/ui/ViewClearData$ViewProcessor;

    invoke-direct {v5, p0}, Lcom/futuredial/ui/ViewClearData$ViewProcessor;-><init>(Lcom/futuredial/ui/ViewClearData;)V

    invoke-virtual {v4, v5}, Lcom/futuredial/ui/UIHandler;->set_processor(Lcom/futuredial/ui/UIProcessor;)V

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v2, moduleNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->m_importedMod:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 187
    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->m_importedMod:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    invoke-virtual {v4}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->get_moduleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v5, 0x7f030007

    invoke-direct {v0, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 191
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->m_selectView:Lcom/htc/widget/HtcListView;

    invoke-static {v4}, Lcom/futuredial/ui/DMIStyle;->format_listview(Lcom/htc/widget/HtcListView;)V

    .line 192
    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->m_selectView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->m_selectView:Lcom/htc/widget/HtcListView;

    iget-object v5, p0, Lcom/futuredial/ui/ViewClearData;->m_delModSelector:Lcom/futuredial/ui/CMultiCheckHandle;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 197
    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    iget-object v5, p0, Lcom/futuredial/ui/ViewClearData;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    new-instance v5, Lcom/futuredial/ui/ViewClearData$CDelStartListener;

    invoke-direct {v5, p0}, Lcom/futuredial/ui/ViewClearData$CDelStartListener;-><init>(Lcom/futuredial/ui/ViewClearData;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v4, v4, Lcom/futuredial/ui/DMIUI;->m_wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 204
    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v4, v4, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    invoke-virtual {v4}, Lcom/futuredial/ui/DialogManager;->getSize()I

    move-result v4

    if-lez v4, :cond_1

    .line 205
    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v4, v4, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    invoke-virtual {v4}, Lcom/futuredial/ui/DialogManager;->showAll()V

    .line 206
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 236
    :goto_1
    return-object v4

    .line 209
    :cond_1
    const-string v4, "rmModing"

    invoke-virtual {p0, v4}, Lcom/futuredial/ui/ViewClearData;->has_mem(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "rmModing"

    invoke-virtual {p0, v4}, Lcom/futuredial/ui/ViewClearData;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v8, :cond_2

    .line 211
    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->m_pdDeling:Landroid/app/ProgressDialog;

    const v5, 0x7f060185

    invoke-virtual {p0, v5}, Lcom/futuredial/ui/ViewClearData;->get_resource_string(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->m_pdDeling:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 213
    iget-object v4, p0, Lcom/futuredial/ui/ViewClearData;->m_pdDeling:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 236
    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    .line 220
    :cond_2
    const v4, 0x7f060199

    invoke-virtual {p0, v4}, Lcom/futuredial/ui/ViewClearData;->get_resource_string(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/futuredial/ui/ViewClearData;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v6, v6, Lcom/futuredial/service/DMIPhone;->m_bt:Lcom/futuredial/service/DMIBTDevice;

    iget-object v6, v6, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, msg:Ljava/lang/String;
    new-instance v4, Lcom/futuredial/ui/DialogManager$Builder;

    iget-object v5, p0, Lcom/futuredial/ui/ViewClearData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v4, v5}, Lcom/futuredial/ui/DialogManager$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f06020e

    invoke-virtual {v4, v5}, Lcom/futuredial/ui/DialogManager$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f06018b

    new-instance v6, Lcom/futuredial/ui/ViewClearData$1;

    invoke-direct {v6, p0}, Lcom/futuredial/ui/ViewClearData$1;-><init>(Lcom/futuredial/ui/ViewClearData;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_2
.end method
