.class public abstract Lcom/google/android/finsky/activities/DetailsDataBasedFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "DetailsDataBasedFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferResolutionListener;


# instance fields
.field private mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mHaveLoggedBefore:Z

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mNfcHandler:Lcom/google/android/finsky/utils/Nfc$NfcHandler;

.field private mPageCreationTime:J

.field private mReferrer:Ljava/lang/String;

.field protected mSavedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mHaveLoggedBefore:Z

    .line 66
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 67
    return-void
.end method

.method private logPageView()V
    .locals 4

    .prologue
    .line 247
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mHaveLoggedBefore:Z

    if-nez v1, :cond_1

    .line 249
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mUrl:Ljava/lang/String;

    .line 250
    .local v0, currentPage:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&availability="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getAvailabilityRestriction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mReferrer:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mHaveLoggedBefore:Z

    .line 258
    .end local v0           #currentPage:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getDetailsData()Lcom/google/android/finsky/api/model/DfeDetails;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    return-object v0
.end method

.method public getDocument()Lcom/google/android/finsky/api/model/Document;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method protected final getLibraries()Lcom/google/android/finsky/library/Libraries;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    return-object v0
.end method

.method protected getReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mReferrer:Ljava/lang/String;

    return-object v0
.end method

.method protected hasDetailsDataLoaded()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isDataReady()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 134
    invoke-static {p0}, Lcom/google/android/finsky/utils/Nfc;->getHandler(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;)Lcom/google/android/finsky/utils/Nfc$NfcHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mNfcHandler:Lcom/google/android/finsky/utils/Nfc$NfcHandler;

    .line 136
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.DetailsDataBasedFragment.document"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 139
    if-eqz p1, :cond_0

    .line 140
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->switchToBlank()V

    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-nez v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->requestData()V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->rebindActionBar()V

    .line 153
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDataChanged()V

    .line 154
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mPageCreationTime:J

    .line 127
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    return-void
.end method

.method public onDataChanged()V
    .locals 4

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->hasDetailsDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-nez v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f070111

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/PageFragmentHost;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 216
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mNfcHandler:Lcom/google/android/finsky/utils/Nfc$NfcHandler;

    invoke-interface {v0}, Lcom/google/android/finsky/utils/Nfc$NfcHandler;->onDataChanged()V

    .line 218
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDataChanged()V

    .line 220
    :cond_1
    return-void

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->updateDocument(Lcom/google/android/finsky/api/model/Document;)V

    .line 212
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->logPageView()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mHaveLoggedBefore:Z

    .line 234
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 236
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 239
    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDestroyView()V

    .line 240
    return-void
.end method

.method public onOfferSelected(Lcom/google/android/finsky/api/model/Document;I)V
    .locals 8
    .parameter "document"
    .parameter "offerType"

    .prologue
    const/4 v5, 0x0

    .line 262
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v1}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getReferrer()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buy(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 264
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onPause()V

    .line 163
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {v0}, Lcom/google/android/finsky/previews/PreviewController;->setupOnBackStackChangedListener(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mNfcHandler:Lcom/google/android/finsky/utils/Nfc$NfcHandler;

    invoke-interface {v0}, Lcom/google/android/finsky/utils/Nfc$NfcHandler;->onPause()V

    .line 166
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onResume()V

    .line 171
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mNfcHandler:Lcom/google/android/finsky/utils/Nfc$NfcHandler;

    invoke-interface {v0}, Lcom/google/android/finsky/utils/Nfc$NfcHandler;->onResume()V

    .line 172
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->recordState(Landroid/os/Bundle;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 180
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 181
    return-void
.end method

.method protected final rebindViews()V
    .locals 7

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->rebindViews(Landroid/os/Bundle;)V

    .line 110
    const-string v0, "Page [class=%s] loaded in [%s ms] (partial? %b)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mPageCreationTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->hasDetailsDataLoaded()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method protected abstract rebindViews(Landroid/os/Bundle;)V
.end method

.method protected final recordState()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->recordState(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method protected abstract recordState(Landroid/os/Bundle;)V
.end method

.method protected requestData()V
    .locals 5

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 194
    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "finsky.DetailsDataBasedFragment.cookie"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 195
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsk.DetailsDatabasedFragment.referrer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mReferrer:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 198
    return-void
.end method

.method protected setInitialDocument(Lcom/google/android/finsky/api/model/Document;)V
    .locals 1
    .parameter "document"

    .prologue
    .line 88
    const-string v0, "finsky.DetailsDataBasedFragment.document"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->setArgument(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 89
    return-void
.end method

.method protected updateDocument(Lcom/google/android/finsky/api/model/Document;)V
    .locals 3
    .parameter "document"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 95
    const/high16 v0, -0x8000

    .line 96
    .local v0, streamType:I
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 97
    const/4 v0, 0x3

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 100
    return-void
.end method
