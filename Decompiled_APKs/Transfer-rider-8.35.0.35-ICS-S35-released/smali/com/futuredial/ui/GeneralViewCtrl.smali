.class abstract Lcom/futuredial/ui/GeneralViewCtrl;
.super Lcom/futuredial/ui/ViewController;
.source "ViewController.java"


# instance fields
.field headerText:Lcom/htc/widget/HeaderBarText;

.field headerbar:Lcom/htc/widget/HeaderBar;

.field m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

.field m_ibtnMid:Lcom/htc/widget/HtcFooterButton;

.field m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

.field m_text1:Landroid/widget/TextView;

.field m_text2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 266
    invoke-direct {p0}, Lcom/futuredial/ui/ViewController;-><init>()V

    .line 189
    iput-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->headerbar:Lcom/htc/widget/HeaderBar;

    .line 190
    iput-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->headerText:Lcom/htc/widget/HeaderBarText;

    .line 191
    iput-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_text1:Landroid/widget/TextView;

    .line 192
    iput-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_text2:Landroid/widget/TextView;

    .line 194
    iput-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    .line 195
    iput-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    .line 196
    iput-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnMid:Lcom/htc/widget/HtcFooterButton;

    .line 267
    const v0, 0x7f030004

    iput v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_layoutID:I

    .line 268
    return-void
.end method


# virtual methods
.method init_ctrl()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->headerbar:Lcom/htc/widget/HeaderBar;

    .line 245
    new-instance v0, Lcom/htc/widget/HeaderBarShort;

    iget-object v1, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/htc/widget/HeaderBarShort;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->headerbar:Lcom/htc/widget/HeaderBar;

    .line 246
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/futuredial/ui/GeneralViewCtrl;->headerbar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    new-instance v0, Lcom/htc/widget/HeaderBarText;

    iget-object v1, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->headerText:Lcom/htc/widget/HeaderBarText;

    .line 250
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->headerbar:Lcom/htc/widget/HeaderBar;

    iget-object v1, p0, Lcom/futuredial/ui/GeneralViewCtrl;->headerText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->addCenterView(Landroid/view/View;)V

    .line 251
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->headerText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->headerText:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f06020e

    invoke-virtual {p0, v1}, Lcom/futuredial/ui/GeneralViewCtrl;->get_resource_string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->headerText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v0}, Lcom/futuredial/ui/DMIUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20806b7

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 257
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_text1:Landroid/widget/TextView;

    .line 258
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_text2:Landroid/widget/TextView;

    .line 260
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/GeneralViewCtrl;->setup_footer_buttons(I)V

    .line 261
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setTitleText()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method setup_footer_buttons(I)V
    .locals 4
    .parameter "num"

    .prologue
    const v3, 0x7f090010

    const v1, 0x7f090012

    const/4 v2, 0x0

    .line 200
    packed-switch p1, :pswitch_data_0

    .line 222
    :pswitch_0
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v0, v3}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    .line 223
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    .line 225
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f060188

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f060212

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 234
    :cond_1
    return-void

    .line 205
    :pswitch_1
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    .line 206
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    goto :goto_0

    .line 212
    :pswitch_2
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v0, v3}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    .line 213
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    .line 215
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnMid:Lcom/htc/widget/HtcFooterButton;

    .line 217
    iget-object v0, p0, Lcom/futuredial/ui/GeneralViewCtrl;->m_ibtnMid:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
