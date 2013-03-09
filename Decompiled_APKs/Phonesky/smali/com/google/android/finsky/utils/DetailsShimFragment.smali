.class public Lcom/google/android/finsky/utils/DetailsShimFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "DetailsShimFragment.java"


# instance fields
.field private mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/utils/DetailsShimFragment;
    .locals 6
    .parameter "url"
    .parameter "cookie"
    .parameter "referrer"
    .parameter "externalReferrer"
    .parameter "continueUrl"

    .prologue
    .line 41
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/utils/DetailsShimFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/utils/DetailsShimFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/utils/DetailsShimFragment;
    .locals 2
    .parameter "url"
    .parameter "cookie"
    .parameter "referrer"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "returnAfterPurchase"

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/finsky/utils/DetailsShimFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/DetailsShimFragment;-><init>()V

    .line 47
    .local v0, fragment:Lcom/google/android/finsky/utils/DetailsShimFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 48
    const-string v1, "finsky.DetailsFragment.cookie"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/utils/DetailsShimFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "finsky.DetailsFragment.referrerUrl"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/utils/DetailsShimFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "finsky.DetailsFragment.externalUrl"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/utils/DetailsShimFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "finsky.DetailsFragment.continueUrl"

    invoke-virtual {v0, v1, p4}, Lcom/google/android/finsky/utils/DetailsShimFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "finsky.DetailsFragment.returnAfterPurchase"

    invoke-virtual {v0, v1, p5}, Lcom/google/android/finsky/utils/DetailsShimFragment;->setArgument(Ljava/lang/String;Z)V

    .line 53
    return-object v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->requestData()V

    .line 60
    return-void
.end method

.method public onDataChanged()V
    .locals 9

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f070111

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/PageFragmentHost;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "finsky.DetailsFragment.cookie"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "finsky.DetailsFragment.referrerUrl"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "finsky.DetailsFragment.externalUrl"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "finsky.DetailsFragment.continueUrl"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "finsky.DetailsFragment.returnAfterPurchase"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->replaceDetailsShimWithDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDestroyView()V

    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 69
    :cond_0
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method protected rebindViews()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method protected requestData()V
    .locals 5

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 96
    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "finsky.DetailsFragment.cookie"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 97
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->switchToBlank()V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->switchToLoading()V

    .line 105
    return-void
.end method
