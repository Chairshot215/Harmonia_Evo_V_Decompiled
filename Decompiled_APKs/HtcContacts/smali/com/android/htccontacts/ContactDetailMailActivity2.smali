.class public Lcom/android/htccontacts/ContactDetailMailActivity2;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "ContactDetailMailActivity2.java"


# instance fields
.field private mContactUri:Landroid/net/Uri;

.field private mHasHeaderBarView:Z

.field private mHeaderBarView:Lcom/android/htccontacts/widget/title/DetailHeaderBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected ensureHeaderBarView()V
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailMailActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity2;->mHeaderBarView:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 31
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity2;->mHeaderBarView:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity2;->mHasHeaderBarView:Z

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity2;->mHasHeaderBarView:Z

    goto :goto_0
.end method

.method protected getHeaderBarType()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity2;->mContactUri:Landroid/net/Uri;

    .line 21
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailMailActivity2;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity2;->ensureHeaderBarView()V

    .line 23
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity2;->mHeaderBarView:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity2;->getHeaderBarType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->buildHeaderBar(I)V

    .line 24
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity2;->mHeaderBarView:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    const v1, 0x7f0a0122

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setCategory(I)V

    .line 25
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity2;->mHeaderBarView:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setIsToShowLinkButton(Z)V

    .line 26
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity2;->updateHeaderBar()V

    .line 27
    return-void
.end method

.method protected updateHeaderBar()V
    .locals 3

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity2;->mHasHeaderBarView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity2;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity2;->mHeaderBarView:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity2;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity2;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->queryTitleBarData(Landroid/net/Uri;Landroid/os/Handler;)V

    .line 47
    :cond_0
    return-void
.end method
