.class abstract Lcom/futuredial/ui/ListViewCtrl;
.super Lcom/futuredial/ui/GeneralViewCtrl;
.source "ViewController.java"


# instance fields
.field m_selectView:Lcom/htc/widget/HtcListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/futuredial/ui/GeneralViewCtrl;-><init>()V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/ui/ListViewCtrl;->m_selectView:Lcom/htc/widget/HtcListView;

    .line 282
    const v0, 0x7f030003

    iput v0, p0, Lcom/futuredial/ui/ListViewCtrl;->m_frameworkLayoutID:I

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/ui/ListViewCtrl;->m_layoutID:I

    .line 285
    return-void
.end method


# virtual methods
.method init_ctrl()Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 289
    invoke-super {p0}, Lcom/futuredial/ui/GeneralViewCtrl;->init_ctrl()Ljava/lang/Boolean;

    move-result-object v2

    .line 291
    .local v2, r:Ljava/lang/Boolean;
    iget-object v4, p0, Lcom/futuredial/ui/ListViewCtrl;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/futuredial/ui/DMIUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    move-object v1, v4

    check-cast v1, Landroid/view/LayoutInflater;

    .line 292
    .local v1, mInflater:Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/futuredial/ui/ListViewCtrl;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v5, 0x7f090013

    invoke-virtual {v4, v5}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListView;

    iput-object v4, p0, Lcom/futuredial/ui/ListViewCtrl;->m_selectView:Lcom/htc/widget/HtcListView;

    .line 293
    iget v4, p0, Lcom/futuredial/ui/ListViewCtrl;->m_layoutID:I

    if-eqz v4, :cond_0

    .line 294
    iget v4, p0, Lcom/futuredial/ui/ListViewCtrl;->m_layoutID:I

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 295
    .local v3, v:Landroid/view/View;
    iget-object v4, p0, Lcom/futuredial/ui/ListViewCtrl;->m_selectView:Lcom/htc/widget/HtcListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v6, v5}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 297
    .end local v3           #v:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/futuredial/ui/ListViewCtrl;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const-string v5, "list_selector_background"

    const v6, 0x1080062

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 298
    .local v0, bkgId:I
    if-eqz v0, :cond_1

    .line 299
    iget-object v4, p0, Lcom/futuredial/ui/ListViewCtrl;->m_selectView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListView;->setSelector(I)V

    .line 302
    :cond_1
    return-object v2
.end method
