.class public Lcom/futuredial/ui/ViewImportData;
.super Lcom/futuredial/ui/GeneralViewCtrl;
.source "ViewImportData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/futuredial/ui/GeneralViewCtrl;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method on_back_key()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/futuredial/ui/CBtnListener;

    const-string v1, "com.futuredial.ui.ViewAppFinish"

    invoke-direct {v0, v1}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, simBtnPress:Lcom/futuredial/ui/CBtnListener;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/CBtnListener;->onClick(Landroid/view/View;)V

    .line 104
    return-void
.end method

.method op_for_config_change()V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/futuredial/ui/ViewImportData;->show()V

    .line 25
    return-void
.end method

.method op_on_create_menu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/futuredial/ui/ViewImportData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v1}, Lcom/futuredial/ui/DMIUI;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 109
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 110
    const/4 v1, 0x1

    return v1
.end method

.method op_on_menu(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 126
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 121
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, it:Landroid/content/Intent;
    iget-object v1, p0, Lcom/futuredial/ui/ViewImportData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const-class v2, Lcom/futuredial/ui/AboutDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/futuredial/ui/ViewImportData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v1, v0}, Lcom/futuredial/ui/DMIUI;->startActivity(Landroid/content/Intent;)V

    .line 124
    const/4 v1, 0x1

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x7f090035
        :pswitch_0
    .end packed-switch
.end method

.method op_on_prepare_menu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic setTitleText()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lcom/futuredial/ui/GeneralViewCtrl;->setTitleText()V

    return-void
.end method

.method set_in_arg([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .parameter "args"

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method set_view()Ljava/lang/Boolean;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 35
    const-string v8, "[import data]"

    iput-object v8, p0, Lcom/futuredial/ui/ViewImportData;->ViewName:Ljava/lang/String;

    .line 36
    iget-object v8, p0, Lcom/futuredial/ui/ViewImportData;->ViewName:Ljava/lang/String;

    const-string v9, "set_view()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v8, p0, Lcom/futuredial/ui/ViewImportData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v9, 0x7f090019

    invoke-virtual {v8, v9}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 38
    .local v3, layout:Landroid/widget/LinearLayout;
    if-eqz v3, :cond_1

    .line 39
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v4

    .line 40
    .local v4, left:I
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    .line 41
    .local v6, right:I
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v7

    .line 42
    .local v7, top:I
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    .line 43
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/futuredial/ui/ViewImportData;->get_orientation()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 44
    iget-object v8, p0, Lcom/futuredial/ui/ViewImportData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v8}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f040009

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    .line 45
    :cond_0
    invoke-virtual {v3, v4, v7, v6, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 48
    .end local v0           #bottom:I
    .end local v4           #left:I
    .end local v6           #right:I
    .end local v7           #top:I
    :cond_1
    iget-object v8, p0, Lcom/futuredial/ui/ViewImportData;->m_text1:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/futuredial/ui/ViewImportData;->get_orientation()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v11, :cond_2

    .line 49
    iget-object v8, p0, Lcom/futuredial/ui/ViewImportData;->m_text1:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    .line 50
    .restart local v4       #left:I
    iget-object v8, p0, Lcom/futuredial/ui/ViewImportData;->m_text1:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    .line 51
    .restart local v6       #right:I
    iget-object v8, p0, Lcom/futuredial/ui/ViewImportData;->m_text1:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    .line 52
    .restart local v0       #bottom:I
    iget-object v8, p0, Lcom/futuredial/ui/ViewImportData;->m_text1:Landroid/widget/TextView;

    invoke-virtual {v8, v4, v10, v6, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 57
    .end local v0           #bottom:I
    .end local v4           #left:I
    .end local v6           #right:I
    :cond_2
    iget-object v8, p0, Lcom/futuredial/ui/ViewImportData;->headerText:Lcom/htc/widget/HeaderBarText;

    const v9, 0x7f06020e

    invoke-virtual {p0, v9}, Lcom/futuredial/ui/ViewImportData;->get_resource_string(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 58
    iget-object v8, p0, Lcom/futuredial/ui/ViewImportData;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 61
    iget-object v8, p0, Lcom/futuredial/ui/ViewImportData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v9, 0x7f090015

    invoke-virtual {v8, v9}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 62
    .local v1, cimg:Landroid/widget/ImageView;
    if-eqz v1, :cond_3

    .line 63
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :cond_3
    invoke-virtual {p0, v11}, Lcom/futuredial/ui/ViewImportData;->set_step(I)V

    .line 74
    iget-object v8, p0, Lcom/futuredial/ui/ViewImportData;->m_text1:Landroid/widget/TextView;

    const v9, 0x7f060239

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v8, p0, Lcom/futuredial/ui/ViewImportData;->m_text2:Landroid/widget/TextView;

    const v9, 0x7f06023c

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget-object v8, p0, Lcom/futuredial/ui/ViewImportData;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    new-instance v9, Lcom/futuredial/ui/CBtnListener;

    const-string v10, "com.futuredial.ui.ViewSelectOldPhoneMaker"

    invoke-direct {v9, v10}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :try_start_0
    iget-object v8, p0, Lcom/futuredial/ui/ViewImportData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v8}, Lcom/futuredial/ui/DMIUI;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/futuredial/ui/ViewImportData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v9}, Lcom/futuredial/ui/DMIUI;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 85
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v8, p0, Lcom/futuredial/ui/ViewImportData;->ViewName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    .line 87
    :catch_0
    move-exception v2

    .line 89
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
