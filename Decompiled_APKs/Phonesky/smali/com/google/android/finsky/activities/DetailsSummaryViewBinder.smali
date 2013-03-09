.class public Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
.super Ljava/lang/Object;
.source "DetailsSummaryViewBinder.java"


# static fields
.field private static final NUMBER_FORMATTER:Ljava/text/NumberFormat;


# instance fields
.field protected final mAccount:Landroid/accounts/Account;

.field private mBadgeOverrideRes:I

.field protected mBindingDynamicSection:Z

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field protected mButtonSection:Landroid/view/ViewGroup;

.field protected mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

.field protected mContext:Landroid/content/Context;

.field protected mContinueUrl:Ljava/lang/String;

.field protected mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field protected mDoc:Lcom/google/android/finsky/api/model/Document;

.field protected mDynamicSection:Landroid/view/ViewGroup;

.field protected mExternalReferrer:Ljava/lang/String;

.field protected mHideDynamicFeatures:Z

.field protected mIsPendingRefund:Z

.field private mLayouts:[Landroid/view/View;

.field protected mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field protected mReferrer:Ljava/lang/String;

.field protected mReturnAfterPurchase:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->NUMBER_FORMATTER:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V
    .locals 1
    .parameter "dfeToc"
    .parameter "account"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBadgeOverrideRes:I

    .line 99
    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccount:Landroid/accounts/Account;

    .line 100
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 101
    return-void
.end method

.method private setupOfferNote()V
    .locals 3

    .prologue
    .line 223
    const v2, 0x7f0800c7

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 224
    .local v0, extraOfferDesciptionView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->shouldDisplayOfferNote()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getOfferNote()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, offerNote:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    .end local v1           #offerNote:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public varargs bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V
    .locals 1
    .parameter "document"
    .parameter "bindDynamicSection"
    .parameter "views"

    .prologue
    .line 117
    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mLayouts:[Landroid/view/View;

    .line 118
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 119
    iput-boolean p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBindingDynamicSection:Z

    .line 121
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupItemDetails()V

    .line 122
    if-eqz p2, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupOfferNote()V

    .line 125
    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    .line 126
    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mButtonSection:Landroid/view/ViewGroup;

    .line 127
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->syncDynamicSection()V

    .line 129
    :cond_0
    return-void
.end method

.method protected configureLaunchButton(Landroid/widget/Button;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V
    .locals 1
    .parameter "launchButton"
    .parameter "doc"
    .parameter "owner"

    .prologue
    .line 384
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 385
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getOpenButtonStringId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 386
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getOpenClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    return-void
.end method

.method protected displayActionButtonsIfNecessary(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)Z
    .locals 11
    .parameter "launchButton"
    .parameter "buyButton"
    .parameter "buyButton2"
    .parameter "tryButton"

    .prologue
    .line 345
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v8

    .line 346
    .local v8, libraries:Lcom/google/android/finsky/library/Libraries;
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v8, v0}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v9

    .line 347
    .local v9, library:Lcom/google/android/finsky/library/Library;
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-static {v0, v8, v1}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v10

    .line 348
    .local v10, owner:Landroid/accounts/Account;
    if-eqz v10, :cond_0

    .line 349
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0, p1, v0, v10}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->configureLaunchButton(Landroid/widget/Button;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    .line 350
    const/4 v0, 0x1

    .line 377
    :goto_0
    return v0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-static {v0, v1, v9}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v7

    .line 355
    .local v7, isAvailable:Z
    if-nez v7, :cond_1

    .line 356
    const/4 v0, 0x0

    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccount:Landroid/accounts/Account;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupBuyButtons(Landroid/accounts/Account;Landroid/widget/Button;Landroid/widget/Button;Z)V

    .line 363
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasSample()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    .line 364
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v1, 0x2

    invoke-static {v0, v9, v1}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getOpenClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mReferrer:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mExternalReferrer:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContinueUrl:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method protected findViewById(I)Landroid/view/View;
    .locals 5
    .parameter "id"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mLayouts:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 137
    .local v3, layout:Landroid/view/View;
    if-nez v3, :cond_1

    .line 136
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 141
    .local v1, found:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 145
    .end local v1           #found:Landroid/view/View;
    .end local v3           #layout:Landroid/view/View;
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected getBuyButtonString(ZI)Ljava/lang/String;
    .locals 4
    .parameter "isOwnedByUser"
    .parameter "offerType"

    .prologue
    const v3, 0x7f070106

    const/4 v2, 0x1

    .line 267
    if-eqz p1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, p2}, Lcom/google/android/finsky/api/model/Document;->needsCheckoutFlow(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 274
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 278
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v1, 0x7f07012f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hideDynamicFeatures()V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mHideDynamicFeatures:Z

    .line 437
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "context"
    .parameter "navManager"
    .parameter "bitmapLoader"
    .parameter "fragment"
    .parameter "trackPackageStatus"
    .parameter "referrer"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "returnAfterPurchase"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 108
    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 109
    iput-object p4, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    .line 110
    iput-object p6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mReferrer:Ljava/lang/String;

    .line 111
    iput-object p7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mExternalReferrer:Ljava/lang/String;

    .line 112
    iput-object p8, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContinueUrl:Ljava/lang/String;

    .line 113
    iput-boolean p9, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mReturnAfterPurchase:Z

    .line 114
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 455
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 448
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBindingDynamicSection:Z

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mLayouts:[Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    .line 150
    return-void
.end method

.method protected resetDynamicStatus()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 391
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 392
    .local v0, dynChildCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 393
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 396
    return-void
.end method

.method public setBadgeOverride(I)V
    .locals 0
    .parameter "badgeOverrideRes"

    .prologue
    .line 440
    iput p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBadgeOverrideRes:I

    .line 441
    return-void
.end method

.method protected setupActionButtons(Z)V
    .locals 7
    .parameter "isInTransientState"

    .prologue
    const/16 v6, 0x8

    .line 293
    const v5, 0x7f0800b3

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 294
    .local v4, tryButton:Landroid/widget/Button;
    const v5, 0x7f0800b1

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 295
    .local v0, buyButton:Landroid/widget/Button;
    const v5, 0x7f0800b2

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 296
    .local v1, buyButton2:Landroid/widget/Button;
    const v5, 0x7f0800b4

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 299
    .local v3, launchButton:Landroid/widget/Button;
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 300
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 301
    if-eqz v4, :cond_0

    .line 302
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 304
    :cond_0
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    if-eqz v1, :cond_1

    .line 306
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 309
    :cond_1
    iget-boolean v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mHideDynamicFeatures:Z

    if-eqz v5, :cond_3

    .line 334
    :cond_2
    :goto_0
    return-void

    .line 316
    :cond_3
    if-nez p1, :cond_2

    .line 320
    invoke-virtual {p0, v3, v0, v1, v4}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->displayActionButtonsIfNecessary(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)Z

    move-result v2

    .line 322
    .local v2, isShowingActionButtons:Z
    if-eqz v2, :cond_2

    .line 326
    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mButtonSection:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 328
    if-eqz v4, :cond_4

    .line 329
    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 331
    :cond_4
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setupBuyButtons(Landroid/accounts/Account;Landroid/widget/Button;Landroid/widget/Button;Z)V
    .locals 7
    .parameter "account"
    .parameter "buyButton"
    .parameter "buyButtonSecondary"
    .parameter "isOwnedByUser"

    .prologue
    const/4 v3, 0x1

    .line 253
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 255
    invoke-virtual {p0, p4, v3}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->getBuyButtonString(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mReferrer:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mExternalReferrer:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContinueUrl:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    :cond_0
    return-void
.end method

.method protected setupCreator(Lcom/google/android/finsky/layout/DecoratedTextView;)V
    .locals 3
    .parameter "creator"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBadgeOverrideRes:I

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;I)V

    .line 220
    return-void
.end method

.method protected setupItemDetails()V
    .locals 13

    .prologue
    .line 158
    const v9, 0x7f0800ed

    invoke-virtual {p0, v9}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 159
    .local v8, title:Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 160
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 166
    :cond_0
    const v9, 0x7f0800ee

    invoke-virtual {p0, v9}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 167
    .local v1, creator:Lcom/google/android/finsky/layout/DecoratedTextView;
    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupCreator(Lcom/google/android/finsky/layout/DecoratedTextView;)V

    .line 172
    :cond_1
    const v9, 0x7f0800f4

    invoke-virtual {p0, v9}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 173
    .local v2, creatorArrow:Landroid/widget/ImageView;
    if-eqz v2, :cond_2

    .line 174
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->useWhitescale()Z

    move-result v9

    if-eqz v9, :cond_6

    const v0, 0x7f020097

    .line 176
    .local v0, arrowResourceId:I
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    .end local v0           #arrowResourceId:I
    :cond_2
    const v9, 0x7f0800c4

    invoke-virtual {p0, v9}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 181
    .local v4, ratingGroup:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 182
    const v9, 0x7f0800c5

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    .line 183
    .local v3, ratingBar:Landroid/widget/RatingBar;
    const v9, 0x7f0800c6

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 185
    .local v5, reviewNumberView:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_7

    .line 186
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/RatingBar;->setRating(F)V

    .line 188
    sget-object v9, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->NUMBER_FORMATTER:Ljava/text/NumberFormat;

    iget-object v10, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v10}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    .end local v3           #ratingBar:Landroid/widget/RatingBar;
    .end local v5           #reviewNumberView:Landroid/widget/TextView;
    :cond_3
    :goto_1
    const v9, 0x7f0800bd

    invoke-virtual {p0, v9}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/layout/DocImageView;

    .line 196
    .local v7, thumbnailView:Lcom/google/android/finsky/layout/DocImageView;
    invoke-virtual {v7}, Lcom/google/android/finsky/layout/DocImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 197
    .local v6, thumbnailLp:Landroid/view/ViewGroup$LayoutParams;
    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v9, :cond_4

    .line 198
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v10}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getRegularDetailsIconHeight(Landroid/content/Context;I)I

    move-result v9

    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 201
    :cond_4
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v10, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v7, v9, v10}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 202
    iget-boolean v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBindingDynamicSection:Z

    invoke-virtual {v7, v9}, Lcom/google/android/finsky/layout/DocImageView;->setFocusable(Z)V

    .line 203
    iget-boolean v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBindingDynamicSection:Z

    if-eqz v9, :cond_5

    .line 204
    new-instance v9, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$1;

    invoke-direct {v9, p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;)V

    invoke-virtual {v7, v9}, Lcom/google/android/finsky/layout/DocImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    :cond_5
    return-void

    .line 174
    .end local v4           #ratingGroup:Landroid/view/View;
    .end local v6           #thumbnailLp:Landroid/view/ViewGroup$LayoutParams;
    .end local v7           #thumbnailView:Lcom/google/android/finsky/layout/DocImageView;
    :cond_6
    const v0, 0x7f020096

    goto/16 :goto_0

    .line 190
    .restart local v3       #ratingBar:Landroid/widget/RatingBar;
    .restart local v4       #ratingGroup:Landroid/view/View;
    .restart local v5       #reviewNumberView:Landroid/widget/TextView;
    :cond_7
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected shouldDisplayOfferNote()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method protected showDynamicStatus(I)V
    .locals 1
    .parameter "statusStringId"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->showDynamicStatus(Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method protected showDynamicStatus(Ljava/lang/String;)V
    .locals 4
    .parameter "statusString"

    .prologue
    const/4 v3, 0x0

    .line 422
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    const v2, 0x7f0800f2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 425
    .local v0, dynamicStatus:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mButtonSection:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 426
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 427
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    return-void
.end method

.method protected syncDynamicSection()V
    .locals 4

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->resetDynamicStatus()V

    .line 401
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v0

    .line 402
    .local v0, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-static {v1, v2, v0}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->hideDynamicFeatures()V

    .line 407
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mHideDynamicFeatures:Z

    if-eqz v1, :cond_1

    .line 419
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 414
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mIsPendingRefund:Z

    if-eqz v1, :cond_2

    .line 415
    const v1, 0x7f0701aa

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->showDynamicStatus(I)V

    goto :goto_0

    .line 418
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupActionButtons(Z)V

    goto :goto_0
.end method
