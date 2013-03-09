.class public Lcom/htc/widget/HtcTabActivity;
.super Landroid/app/ActivityGroup;
.source "HtcTabActivity.java"


# instance fields
.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mTabHost:Lcom/htc/widget/HtcTabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTabActivity;->mDefaultTabIndex:I

    .line 36
    return-void
.end method

.method private ensureTabHost()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/widget/HtcTabActivity;->mTabHost:Lcom/htc/widget/HtcTabHost;

    if-nez v0, :cond_0

    .line 116
    const v0, 0x2090095

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabActivity;->setContentView(I)V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public getTabHost()Lcom/htc/widget/HtcTabHost;
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/htc/widget/HtcTabActivity;->ensureTabHost()V

    .line 139
    iget-object v0, p0, Lcom/htc/widget/HtcTabActivity;->mTabHost:Lcom/htc/widget/HtcTabHost;

    return-object v0
.end method

.method public getTabWidget()Lcom/htc/widget/HtcTabWidget;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/widget/HtcTabActivity;->mTabHost:Lcom/htc/widget/HtcTabHost;

    invoke-virtual {v0}, Lcom/htc/widget/HtcTabHost;->getTabWidget()Lcom/htc/widget/HtcTabWidget;

    move-result-object v0

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "childActivity"
    .parameter "title"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/htc/widget/HtcTabActivity;->mTabHost:Lcom/htc/widget/HtcTabHost;

    invoke-virtual {v1}, Lcom/htc/widget/HtcTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, tabView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 127
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #tabView:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    .line 104
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcTabHost;

    iput-object v0, p0, Lcom/htc/widget/HtcTabActivity;->mTabHost:Lcom/htc/widget/HtcTabHost;

    .line 106
    iget-object v0, p0, Lcom/htc/widget/HtcTabActivity;->mTabHost:Lcom/htc/widget/HtcTabHost;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcTabActivity;->mTabHost:Lcom/htc/widget/HtcTabHost;

    invoke-virtual {p0}, Lcom/htc/widget/HtcTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 112
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-direct {p0}, Lcom/htc/widget/HtcTabActivity;->ensureTabHost()V

    .line 81
    iget-object v0, p0, Lcom/htc/widget/HtcTabActivity;->mTabHost:Lcom/htc/widget/HtcTabHost;

    invoke-virtual {v0}, Lcom/htc/widget/HtcTabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/htc/widget/HtcTabActivity;->mTabHost:Lcom/htc/widget/HtcTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTabHost;->setCurrentTab(I)V

    .line 84
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lcom/htc/widget/HtcTabActivity;->ensureTabHost()V

    .line 62
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/htc/widget/HtcTabActivity;->mTabHost:Lcom/htc/widget/HtcTabHost;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcTabActivity;->mTabHost:Lcom/htc/widget/HtcTabHost;

    invoke-virtual {v1}, Lcom/htc/widget/HtcTabHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/htc/widget/HtcTabActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/htc/widget/HtcTabActivity;->mTabHost:Lcom/htc/widget/HtcTabHost;

    iget-object v2, p0, Lcom/htc/widget/HtcTabActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    iget v1, p0, Lcom/htc/widget/HtcTabActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/htc/widget/HtcTabActivity;->mTabHost:Lcom/htc/widget/HtcTabHost;

    iget v2, p0, Lcom/htc/widget/HtcTabActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcTabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    iget-object v1, p0, Lcom/htc/widget/HtcTabActivity;->mTabHost:Lcom/htc/widget/HtcTabHost;

    invoke-virtual {v1}, Lcom/htc/widget/HtcTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, currentTabTag:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 91
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setDefaultTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 55
    iput p1, p0, Lcom/htc/widget/HtcTabActivity;->mDefaultTabIndex:I

    .line 56
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/widget/HtcTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTabActivity;->mDefaultTabIndex:I

    .line 46
    return-void
.end method
