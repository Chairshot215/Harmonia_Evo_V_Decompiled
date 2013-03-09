.class public abstract Lcom/futuredial/ui/ViewController;
.super Ljava/lang/Object;
.source "ViewController.java"


# instance fields
.field ViewName:Ljava/lang/String;

.field protected m_frameworkLayoutID:I

.field protected m_layoutID:I

.field public m_parentWindow:Lcom/futuredial/ui/DMIUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    .line 28
    const-string v0, "ViewController(abstract)"

    iput-object v0, p0, Lcom/futuredial/ui/ViewController;->ViewName:Ljava/lang/String;

    .line 29
    const v0, 0x7f030002

    iput v0, p0, Lcom/futuredial/ui/ViewController;->m_frameworkLayoutID:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/ui/ViewController;->m_layoutID:I

    .line 34
    sget-object v0, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    invoke-interface {v0}, Lcom/futuredial/service/DMISrvInterface;->get_activity()Lcom/futuredial/ui/DMIUI;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    .line 35
    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method del_mem(Ljava/lang/String;)Z
    .locals 1
    .parameter "k"

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/futuredial/ui/ViewController;->has_mem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_innerMem:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method get_mem(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "k"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_innerMem:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get_orientation()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v0}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public get_resource_color(I)I
    .locals 1
    .parameter "iResourceID"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v0}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public get_resource_string(I)Ljava/lang/String;
    .locals 1
    .parameter "iResourceID"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v0}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method has_mem(Ljava/lang/String;)Z
    .locals 1
    .parameter "k"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_innerMem:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract init_ctrl()Ljava/lang/Boolean;
.end method

.method on_back_key()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method op_for_config_change()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method op_on_create_menu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method op_on_menu(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method op_on_prepare_menu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method op_wnd_resume()V
    .locals 6

    .prologue
    .line 133
    sget-object v3, Lcom/futuredial/ui/DialogManager;->m_dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 134
    .local v2, size:I
    const-string v3, "DMI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialogs reged to this view :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 137
    sget-object v3, Lcom/futuredial/ui/DialogManager;->m_dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 138
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    const-string v3, "DMI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recovery dialog :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 142
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 135
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v0           #d:Landroid/app/Dialog;
    :cond_1
    return-void
.end method

.method put_mem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "k"
    .parameter "v"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_innerMem:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method abstract set_in_arg([Ljava/lang/Object;)Ljava/lang/Boolean;
.end method

.method set_step(I)V
    .locals 11
    .parameter "step"

    .prologue
    .line 45
    iget-object v7, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v8, 0x7f090030

    invoke-virtual {v7, v8}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 46
    .local v0, a1:Landroid/widget/ImageButton;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 47
    iget-object v7, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v8, 0x7f090031

    invoke-virtual {v7, v8}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 48
    .local v1, a2:Landroid/widget/ImageButton;
    iget-object v7, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v8, 0x7f090032

    invoke-virtual {v7, v8}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 49
    .local v2, a3:Landroid/widget/ImageButton;
    iget-object v7, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v8, 0x7f090033

    invoke-virtual {v7, v8}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 50
    .local v3, a4:Landroid/widget/ImageButton;
    iget-object v7, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v8, 0x7f090034

    invoke-virtual {v7, v8}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 51
    .local v4, a5:Landroid/widget/ImageButton;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v6, stepIBs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ImageButton;>;"
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, p1, :cond_1

    .line 59
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 62
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iget-object v8, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const-string v9, "oobe_progress_radio_on"

    const v10, 0x7f020006

    invoke-static {v8, v9, v10}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 57
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method

.method abstract set_view()Ljava/lang/Boolean;
.end method

.method public show()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 71
    invoke-virtual {p0, v6}, Lcom/futuredial/ui/ViewController;->set_in_arg([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v2, v3, :cond_3

    .line 73
    const-string v3, "[View Controller]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parent window(mem):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v3, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v3, v3, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    if-eqz v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v3, v3, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    invoke-virtual {v3}, Lcom/futuredial/ui/ViewController;->cleanup()V

    .line 77
    :cond_0
    iget v3, p0, Lcom/futuredial/ui/ViewController;->m_layoutID:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 79
    iget-object v3, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget v4, p0, Lcom/futuredial/ui/ViewController;->m_frameworkLayoutID:I

    invoke-virtual {v3, v4}, Lcom/futuredial/ui/DMIUI;->setContentView(I)V

    .line 80
    iget v3, p0, Lcom/futuredial/ui/ViewController;->m_layoutID:I

    if-eqz v3, :cond_1

    .line 81
    iget-object v3, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v4, 0x7f09000e

    invoke-virtual {v3, v4}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 82
    .local v0, coat:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v3}, Lcom/futuredial/ui/DMIUI;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iget v4, p0, Lcom/futuredial/ui/ViewController;->m_layoutID:I

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, mylayout:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    .end local v0           #coat:Landroid/view/ViewGroup;
    .end local v1           #mylayout:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iput-object p0, v3, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    .line 89
    iget-object v3, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v3, v3, Lcom/futuredial/ui/DMIUI;->m_gHandler:Lcom/futuredial/ui/UIHandler;

    invoke-virtual {v3, v6}, Lcom/futuredial/ui/UIHandler;->set_processor(Lcom/futuredial/ui/UIProcessor;)V

    .line 90
    iget-object v3, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v3, v3, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    iget-object v4, p0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v4, v4, Lcom/futuredial/ui/DMIUI;->m_cfgChg:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_0
    invoke-virtual {v3, v2}, Lcom/futuredial/ui/DialogManager;->dismissAll(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/futuredial/ui/ViewController;->init_ctrl()Ljava/lang/Boolean;

    .line 92
    invoke-virtual {p0}, Lcom/futuredial/ui/ViewController;->set_view()Ljava/lang/Boolean;

    .line 98
    :goto_1
    return-void

    .line 90
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 96
    :cond_3
    iget-object v2, p0, Lcom/futuredial/ui/ViewController;->ViewName:Ljava/lang/String;

    const-string v3, " can not started!(short of args?)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sleep_for_while(I)V
    .locals 3
    .parameter "ms"

    .prologue
    .line 177
    int-to-long v1, p1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
