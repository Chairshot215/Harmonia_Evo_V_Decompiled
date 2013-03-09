.class public Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;
.super Landroid/app/Activity;
.source "HtcActivity.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"


# instance fields
.field mCommandBar:Lcom/htc/widget/HtcFooter;

.field mContentView:Landroid/view/ViewGroup;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mScreenLayout:Landroid/view/ViewGroup;

.field mTitleBar:Lcom/htc/widget/HeaderBarShort;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mScreenLayout:Landroid/view/ViewGroup;

    .line 28
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mTitleBar:Lcom/htc/widget/HeaderBarShort;

    .line 29
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mContentView:Landroid/view/ViewGroup;

    .line 30
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mCommandBar:Lcom/htc/widget/HtcFooter;

    return-void
.end method

.method private ensureScreenLayout()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mScreenLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mScreenLayout:Landroid/view/ViewGroup;

    .line 117
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mScreenLayout:Landroid/view/ViewGroup;

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarShort;

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mTitleBar:Lcom/htc/widget/HeaderBarShort;

    .line 118
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mScreenLayout:Landroid/view/ViewGroup;

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mContentView:Landroid/view/ViewGroup;

    goto :goto_0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->ensureScreenLayout()V

    .line 44
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void
.end method

.method protected getCommandBar()Lcom/htc/widget/HtcFooter;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mScreenLayout:Landroid/view/ViewGroup;

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooter;

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mCommandBar:Lcom/htc/widget/HtcFooter;

    .line 100
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mCommandBar:Lcom/htc/widget/HtcFooter;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mCommandBar:Lcom/htc/widget/HtcFooter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mCommandBar:Lcom/htc/widget/HtcFooter;

    return-object v0

    .line 103
    :cond_0
    const-string v0, "HtcBookmarkWidget"

    const-string v1, "No command bar found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->requestWindowFeature(I)Z

    .line 39
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .parameter "layoutResID"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->ensureScreenLayout()V

    .line 53
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 55
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mScreenLayout:Landroid/view/ViewGroup;

    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 61
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "view"
    .parameter "params"

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    const-string v0, "HtcBookmarkWidget"

    const-string v1, "null view, abort setContentView"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->ensureScreenLayout()V

    .line 72
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 74
    if-eqz p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mScreenLayout:Landroid/view/ViewGroup;

    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->ensureScreenLayout()V

    .line 84
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mTitleBar:Lcom/htc/widget/HeaderBarShort;

    if-eqz v1, :cond_0

    .line 85
    new-instance v0, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, text:Lcom/htc/widget/HeaderBarText;
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->mTitleBar:Lcom/htc/widget/HeaderBarShort;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarShort;->addLeftView(Landroid/view/View;)V

    move-object v1, p1

    .line 87
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 88
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 91
    .end local v0           #text:Lcom/htc/widget/HeaderBarText;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method
