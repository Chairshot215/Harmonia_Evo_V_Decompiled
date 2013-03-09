.class public Lcom/htc/store/activity/preview/PreviewItem;
.super Lcom/htc/store/activity/BaseActivity;
.source "PreviewItem.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionButtonCenter:Lcom/htc/widget/HtcFooterButton;

.field private mActionButtonLeft:Lcom/htc/widget/HtcFooterButton;

.field private mActionButtonRight:Lcom/htc/widget/HtcFooterButton;

.field private mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

.field private mEmptyLayout:Landroid/view/View;

.field private mEmptyText:Landroid/widget/TextView;

.field private mPreviewHeader:Lcom/htc/widget/HeaderBar;

.field private mPreviewTitle:Lcom/htc/widget/HeaderBarText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/htc/store/activity/preview/PreviewItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/preview/PreviewItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/store/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private hideEmptyLayout()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mEmptyLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mEmptyLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    const v0, 0x7f0c0051

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/preview/PreviewItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar;

    iput-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mPreviewHeader:Lcom/htc/widget/HeaderBar;

    .line 80
    iget-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mPreviewHeader:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mPreviewHeader:Lcom/htc/widget/HeaderBar;

    const v1, 0x7f0c0052

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mPreviewTitle:Lcom/htc/widget/HeaderBarText;

    .line 82
    iget-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mPreviewTitle:Lcom/htc/widget/HeaderBarText;

    iget-object v1, p0, Lcom/htc/store/activity/preview/PreviewItem;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v1}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mPreviewTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 85
    const v0, 0x7f0c004e

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/preview/PreviewItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mActionButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 86
    const v0, 0x7f0c004f

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/preview/PreviewItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mActionButtonCenter:Lcom/htc/widget/HtcFooterButton;

    .line 87
    const v0, 0x7f0c0050

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/preview/PreviewItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mActionButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mActionButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 89
    iget-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mActionButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mActionButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mActionButtonRight:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 92
    iget-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mActionButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mActionButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 95
    const v0, 0x7f0a0069

    invoke-direct {p0, v0}, Lcom/htc/store/activity/preview/PreviewItem;->showEmptyLayout(I)V

    .line 96
    return-void
.end method

.method private showEmptyLayout(I)V
    .locals 2
    .parameter "str"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mEmptyLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 100
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/preview/PreviewItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mEmptyLayout:Landroid/view/View;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mEmptyText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 102
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/preview/PreviewItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mEmptyText:Landroid/widget/TextView;

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mEmptyLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 106
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/store/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/preview/PreviewItem;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/htc/store/activity/preview/PreviewItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "category_item"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/store/module/vo/CategoryItem;

    iput-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    .line 33
    iget-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Lcom/htc/store/activity/preview/PreviewItem;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Category item is null."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Lcom/htc/store/activity/preview/PreviewItem;->finish()V

    .line 37
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onDestroy()V

    .line 76
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onPause()V

    .line 57
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onResume()V

    .line 42
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mFirstCreate:Z

    if-nez v0, :cond_0

    .line 45
    :cond_0
    return-void
.end method

.method protected onWindowFirstFocused()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/store/activity/preview/PreviewItem;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/htc/store/activity/preview/PreviewItem;->initViews()V

    .line 52
    :cond_0
    return-void
.end method
