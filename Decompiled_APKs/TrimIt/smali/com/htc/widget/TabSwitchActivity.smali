.class public Lcom/htc/widget/TabSwitchActivity;
.super Landroid/app/ActivityGroup;
.source "TabSwitchActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTab:Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTabIndex:I

    .line 36
    const-string v0, "TabSwitchActivity"

    iput-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->TAG:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private ensureTabHost()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    if-nez v0, :cond_0

    .line 157
    const v0, 0x20900b3

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchActivity;->setContentView(I)V

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public getTabHost()Lcom/htc/widget/TabSwitchHost;
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchActivity;->ensureTabHost()V

    .line 180
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    return-object v0
.end method

.method public getTabWidget()Lcom/htc/widget/TabSwitchWidget;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchHost;->getTabWidget()Lcom/htc/widget/TabSwitchWidget;

    move-result-object v0

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "childActivity"
    .parameter "title"

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, tabView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 168
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #tabView:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    .line 144
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    if-nez v0, :cond_0

    .line 145
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/TabSwitchHost;

    iput-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 153
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchActivity;->ensureTabHost()V

    .line 105
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchHost;->getCurrentTab()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchHost;->setCurrentTab(I)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    new-instance v1, Lcom/htc/widget/TabSwitchActivity$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/TabSwitchActivity$1;-><init>(Lcom/htc/widget/TabSwitchActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchHost;->setWidgetTouchListener(Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;)V

    .line 122
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchActivity;->ensureTabHost()V

    .line 65
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v1, v0}, Lcom/htc/widget/TabSwitchHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    iget-object v2, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/TabSwitchHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    iget v1, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    iget v2, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/TabSwitchHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    iget-object v1, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, currentTabTag:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 129
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method public onTabTouchDown()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onTabTouchMove()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onTabTouchUp()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public setDefaultTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTab:Ljava/lang/String;

    .line 58
    iput p1, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTabIndex:I

    .line 59
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTab:Ljava/lang/String;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTabIndex:I

    .line 49
    return-void
.end method
