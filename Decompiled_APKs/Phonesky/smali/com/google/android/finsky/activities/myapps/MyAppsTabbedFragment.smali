.class public Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "MyAppsTabbedFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;
.implements Lcom/google/android/finsky/utils/AppSupport$RefundListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$6;
    }
.end annotation


# static fields
.field private static sLastSelectedTabType:I


# instance fields
.field private mAccountSelector:Lcom/google/android/finsky/layout/AccountSelectorView;

.field private mArchiveProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

.field private mBreadcrumb:Ljava/lang/String;

.field private mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

.field mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

.field mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private mListContainer:Landroid/view/ViewGroup;

.field mMobileDataState:Z

.field mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private final mTabListener:Lcom/google/android/finsky/layout/CustomActionBar$TabListener;

.field private mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

.field private mUseActionBarTabs:Z

.field private mUseTwoColumnLayout:Z

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    sput v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 113
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$1;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabListener:Lcom/google/android/finsky/layout/CustomActionBar$TabListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->switchSelectedTab(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->refundDocument(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/activities/myapps/DocumentView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/api/DfeApi;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->dismissArchiveProgressDialog()V

    return-void
.end method

.method private archiveDocs(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 708
    .local p1, docids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const v0, 0x7f070294

    invoke-static {v0}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->newInstance(I)Lcom/google/android/finsky/billing/ProgressDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mArchiveProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    .line 709
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mArchiveProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "archive_progress_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$4;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$4;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V

    new-instance v3, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$5;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$5;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/android/finsky/api/DfeApi;->archiveFromLibrary(Ljava/util/Collection;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 737
    return-void
.end method

.method private clearState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 358
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f08017e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 360
    .local v0, tabStrip:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 361
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    .end local v0           #tabStrip:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 366
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 367
    iput-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 369
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v1}, Lcom/google/android/finsky/layout/CustomActionBar;->clearTabs()V

    .line 370
    return-void
.end method

.method private configureViewPager(ZZ)V
    .locals 6
    .parameter "shouldShowHeader"
    .parameter "hasSubscriptions"

    .prologue
    const/16 v5, 0x8

    .line 641
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f08017d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 642
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v2, :cond_0

    .line 674
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 647
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 649
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 651
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f08017e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/PagerTabStrip;

    .line 654
    .local v1, tabStrip:Landroid/support/v4/view/PagerTabStrip;
    invoke-virtual {v1, v5}, Landroid/support/v4/view/PagerTabStrip;->setVisibility(I)V

    .line 656
    if-eqz p1, :cond_1

    .line 657
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerTabStrip;->setVisibility(I)V

    .line 659
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v0

    .line 661
    .local v0, appColor:I
    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerTabStrip;->setTextColor(I)V

    .line 662
    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 663
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerTabStrip;->setDrawFullUnderline(Z)V

    .line 666
    const/high16 v2, 0x42a0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerTabStrip;->setTextSpacing(I)V

    .line 668
    const v2, 0x3f333333

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerTabStrip;->setNonPrimaryAlpha(F)V

    .line 673
    .end local v0           #appColor:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_0

    .line 670
    :cond_1
    invoke-virtual {v1, v5}, Landroid/support/v4/view/PagerTabStrip;->setVisibility(I)V

    goto :goto_1
.end method

.method private dismissArchiveProgressDialog()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mArchiveProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mArchiveProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->dismiss()V

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mArchiveProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    .line 681
    :cond_0
    return-void
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
    .locals 1
    .parameter "dfeToc"

    .prologue
    .line 144
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;-><init>()V

    .line 146
    .local v0, fragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->setDfeToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 148
    return-object v0
.end method

.method private recordState()V
    .locals 5

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    if-eqz v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 389
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    .line 391
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getTabType(I)I

    move-result v2

    sput v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    .line 392
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "MyAppsTabbedAdapter.CurrentTabType"

    sget v4, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 411
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 396
    const/4 v1, -0x1

    .line 397
    .local v1, indexOfVisibleChild:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 398
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 399
    move v1, v0

    .line 404
    :cond_3
    if-ltz v1, :cond_1

    .line 405
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getTabType(I)I

    move-result v2

    sput v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    .line 406
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "MyAppsTabbedAdapter.CurrentTabType"

    sget v4, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 397
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private refundDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "packageName"
    .parameter "accountName"

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 568
    .local v2, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v3, "refund_confirm"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 580
    :goto_0
    return-void

    .line 572
    :cond_0
    const v3, 0x7f0701a7

    const v4, 0x7f0700da

    const v5, 0x7f0700db

    invoke-static {v3, v4, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 574
    .local v0, dialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 575
    .local v1, extraArguments:Landroid/os/Bundle;
    const-string v3, "package_name"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v3, "account_name"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const/4 v3, 0x4

    invoke-virtual {v0, p0, v3, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 579
    const-string v3, "refund_confirm"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showAccountSelectorIfNecessary(I)V
    .locals 3
    .parameter "selectedTabIndex"

    .prologue
    .line 633
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mAccountSelector:Lcom/google/android/finsky/layout/AccountSelectorView;

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getTabType(I)I

    move-result v0

    .line 635
    .local v0, selectedTabType:I
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mAccountSelector:Lcom/google/android/finsky/layout/AccountSelectorView;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/android/finsky/layout/AccountSelectorView;->setVisibility(I)V

    .line 638
    .end local v0           #selectedTabType:I
    :cond_0
    return-void

    .line 635
    .restart local v0       #selectedTabType:I
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private switchSelectedTab(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 606
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    .line 607
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    if-eqz v6, :cond_0

    .line 611
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/activities/myapps/DocumentView;->setVisibility(I)V

    .line 613
    :cond_0
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v6, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->setSelectedTab(I)V

    .line 614
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 615
    if-ne p1, v1, :cond_2

    const/4 v2, 0x1

    .line 616
    .local v2, selectedTab:Z
    :goto_1
    if-eqz v2, :cond_3

    move v4, v5

    .line 617
    .local v4, visibility:I
    :goto_2
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 618
    .local v0, container:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 620
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/activities/ViewPagerTab;

    .line 621
    .local v3, tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    if-nez v3, :cond_1

    .line 622
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v7, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    check-cast v3, Lcom/google/android/finsky/activities/ViewPagerTab;

    .line 623
    .restart local v3       #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 625
    :cond_1
    invoke-interface {v3, v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->setTabSelected(Z)V

    .line 614
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #container:Landroid/view/View;
    .end local v2           #selectedTab:Z
    .end local v3           #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    .end local v4           #visibility:I
    :cond_2
    move v2, v5

    .line 615
    goto :goto_1

    .line 616
    .restart local v2       #selectedTab:Z
    :cond_3
    const/16 v4, 0x8

    goto :goto_2

    .line 629
    .end local v1           #i:I
    .end local v2           #selectedTab:Z
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->showAccountSelectorIfNecessary(I)V

    .line 630
    return-void
.end method


# virtual methods
.method public adjustMenu(Ljava/util/List;Landroid/view/Menu;)V
    .locals 5
    .parameter
    .parameter "menu"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Landroid/view/Menu;",
            ")V"
        }
    .end annotation

    .prologue
    .line 755
    .local p1, checkedDocuments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    const/4 v1, 0x1

    .line 756
    .local v1, canRemoveFromLibrary:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    .line 757
    .local v2, checkedDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v2}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->canRemoveFromLibrary(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 758
    const/4 v1, 0x0

    .line 762
    .end local v2           #checkedDocument:Lcom/google/android/finsky/api/model/Document;
    :cond_1
    const v4, 0x7f08023e

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 763
    .local v0, archiveItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 764
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 766
    :cond_2
    return-void
.end method

.method public confirmArchiveDocs(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, docs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 688
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 689
    const v7, 0x7f070295

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 694
    .local v4, message:Ljava/lang/String;
    :goto_0
    const v6, 0x7f07019f

    const v7, 0x7f070059

    invoke-static {v4, v6, v7}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(Ljava/lang/String;II)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 695
    .local v0, dialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 696
    .local v2, docids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    .line 697
    .local v1, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 692
    .end local v0           #dialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .end local v1           #doc:Lcom/google/android/finsky/api/model/Document;
    .end local v2           #docids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #message:Ljava/lang/String;
    :cond_0
    const v6, 0x7f070296

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #message:Ljava/lang/String;
    goto :goto_0

    .line 699
    .restart local v0       #dialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .restart local v2       #docids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 700
    .local v5, params:Landroid/os/Bundle;
    const-string v6, "docid_list"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 701
    const/4 v6, 0x6

    invoke-virtual {v0, p0, v6, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 702
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    const-string v7, "archive_confirm"

    invoke-virtual {v0, v6, v7}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 246
    const v0, 0x7f0400a1

    return v0
.end method

.method handleMenuItem(Ljava/util/List;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter
    .parameter "menuItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Landroid/view/MenuItem;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 743
    .local p1, documents:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 748
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 745
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->confirmArchiveDocs(Ljava/util/List;)V

    .line 746
    const/4 v0, 0x1

    goto :goto_0

    .line 743
    :pswitch_data_0
    .packed-switch 0x7f08023e
        :pswitch_0
    .end packed-switch
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 161
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusMyCollectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, breadcrumbText:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f070176

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_0
    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mBreadcrumb:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/MainActivity;->getCustomActionBar()Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    .line 170
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 171
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f090007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseActionBarTabs:Z

    .line 172
    const v3, 0x7f090006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseTwoColumnLayout:Z

    .line 175
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 182
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 183
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    .line 184
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v3}, Lcom/google/android/finsky/installer/InstallPolicies;->isMobileNetwork()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mMobileDataState:Z

    .line 185
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 186
    new-instance v3, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V

    iput-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v1

    .line 203
    .local v1, notifier:Lcom/google/android/finsky/utils/Notifier;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/finsky/utils/Notifier;->hideAllMessagesForAccount(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->isDataReady()Z

    move-result v3

    if-nez v3, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->switchToLoading()V

    .line 207
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->requestData()V

    .line 208
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->rebindActionBar()V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->rebindViews()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->setRetainInstance(Z)V

    .line 155
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->recordState()V

    .line 416
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->clearState()V

    .line 417
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroyView()V

    .line 418
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 546
    packed-switch p1, :pswitch_data_0

    .line 556
    :goto_0
    return-void

    .line 548
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->onNegativeClick(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 551
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->refresh()V

    goto :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "scrollState"

    .prologue
    .line 422
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 426
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseActionBarTabs:Z

    if-eqz v0, :cond_0

    .line 431
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->switchSelectedTab(I)V

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->onPageSelected(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onPause()V

    .line 231
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 232
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 8
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 518
    packed-switch p1, :pswitch_data_0

    .line 538
    :pswitch_0
    const-string v4, "Unexpected requestCode %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    :goto_0
    return-void

    .line 521
    :pswitch_1
    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->onPositiveClick(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 525
    :pswitch_2
    const-string v4, "package_name"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v4, v1}, Lcom/google/android/finsky/receivers/Installer;->uninstallAssetSilently(Ljava/lang/String;)V

    goto :goto_0

    .line 529
    .end local v1           #packageName:Ljava/lang/String;
    :pswitch_3
    const-string v4, "package_name"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 530
    .local v3, refundPackage:Ljava/lang/String;
    const-string v4, "account_name"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, refundAccount:Ljava/lang/String;
    invoke-static {v3, v2, p0}, Lcom/google/android/finsky/utils/AppSupport;->silentRefund(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/AppSupport$RefundListener;)V

    goto :goto_0

    .line 534
    .end local v2           #refundAccount:Ljava/lang/String;
    .end local v3           #refundPackage:Ljava/lang/String;
    :pswitch_4
    const-string v4, "docid_list"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 535
    .local v0, docids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->archiveDocs(Ljava/util/List;)V

    goto :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onRefundComplete(Lcom/google/android/finsky/utils/AppSupport$RefundResult;Ljava/lang/String;)V
    .locals 2
    .parameter "result"
    .parameter "packageName"

    .prologue
    .line 590
    sget-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$6;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 603
    :goto_0
    :pswitch_0
    return-void

    .line 592
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p2}, Lcom/google/android/finsky/receivers/Installer;->uninstallAssetSilently(Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/AppSupport;->showRefundFailureDialog(Landroid/support/v4/app/FragmentManager;)V

    .line 600
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->refresh()V

    goto :goto_0

    .line 590
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onRefundStart()V
    .locals 0

    .prologue
    .line 585
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 224
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onResume()V

    .line 225
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->recordState()V

    .line 375
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 376
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 377
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onStart()V

    .line 217
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "archive_progress_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/ProgressDialogFragment;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mArchiveProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    .line 219
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->dismissArchiveProgressDialog()V

    .line 220
    return-void
.end method

.method public openDocDetails(Lcom/google/android/finsky/api/model/Document;)V
    .locals 6
    .parameter "document"

    .prologue
    const/4 v2, 0x0

    .line 439
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    const-string v3, "myApps"

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->setVisibility(I)V

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    new-instance v3, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;

    invoke-direct {v3, p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;Lcom/google/android/finsky/api/model/Document;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bind(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;Landroid/os/Bundle;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    goto :goto_0
.end method

.method public rebindActionBar()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mBreadcrumb:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 345
    return-void
.end method

.method public rebindViews()V
    .locals 24

    .prologue
    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->switchToData()V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->rebindActionBar()V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    if-eqz v2, :cond_0

    .line 338
    :goto_0
    return-void

    .line 265
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v12

    .line 267
    .local v12, backendHintColor:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendDarkColor(Landroid/content/Context;I)I

    move-result v11

    .line 270
    .local v11, backendDarkColor:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getView()Landroid/view/View;

    move-result-object v15

    .line 272
    .local v15, fragmentView:Landroid/view/View;
    const v2, 0x7f0800a4

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 273
    .local v21, topBanner:Landroid/view/View;
    if-eqz v21, :cond_1

    .line 274
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 275
    const v2, 0x7f0800a5

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 276
    .local v18, pinstripeOverlay:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 278
    .local v13, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v13, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 279
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    const v2, 0x7f0800a3

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 282
    .local v22, topBannerLeading:Landroid/view/View;
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 285
    .end local v13           #backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    .end local v18           #pinstripeOverlay:Landroid/view/View;
    .end local v22           #topBannerLeading:Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseActionBarTabs:Z

    if-nez v2, :cond_3

    const/16 v19, 0x1

    .line 286
    .local v19, shouldShowHeader:Z
    :goto_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/library/Libraries;->hasSubscriptions()Z

    move-result v8

    .line 288
    .local v8, hasSubscriptions:Z
    new-instance v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    move-object/from16 v10, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/os/Bundle;Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    .line 292
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v8}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->configureViewPager(ZZ)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "MyAppsTabbedAdapter.CurrentTabType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "MyAppsTabbedAdapter.CurrentTabType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 300
    .local v14, defaultTabType:I
    :goto_2
    const/4 v2, 0x1

    sput v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    .line 301
    const/16 v17, 0x0

    .line 302
    .local v17, indexOfSelectedItem:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getTabType(I)I

    move-result v2

    if-ne v2, v14, :cond_5

    .line 304
    move/from16 v17, v16

    .line 309
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseActionBarTabs:Z

    if-eqz v2, :cond_a

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f080184

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v2}, Lcom/google/android/finsky/layout/CustomActionBar;->clearTabs()V

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 313
    const/16 v16, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_8

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabListener:Lcom/google/android/finsky/layout/CustomActionBar$TabListener;

    invoke-interface {v2, v3, v4}, Lcom/google/android/finsky/layout/CustomActionBar;->addTab(Ljava/lang/String;Lcom/google/android/finsky/layout/CustomActionBar$TabListener;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/finsky/activities/ViewPagerTab;

    .line 317
    .local v20, tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    const/16 v23, 0x0

    .line 318
    .local v23, visibility:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 321
    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->setTabSelected(Z)V

    .line 313
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 285
    .end local v8           #hasSubscriptions:Z
    .end local v14           #defaultTabType:I
    .end local v16           #i:I
    .end local v17           #indexOfSelectedItem:I
    .end local v19           #shouldShowHeader:Z
    .end local v20           #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    .end local v23           #visibility:I
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 297
    .restart local v8       #hasSubscriptions:Z
    .restart local v19       #shouldShowHeader:Z
    :cond_4
    sget v14, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    goto/16 :goto_2

    .line 302
    .restart local v14       #defaultTabType:I
    .restart local v16       #i:I
    .restart local v17       #indexOfSelectedItem:I
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 317
    .restart local v20       #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    :cond_6
    const/16 v23, 0x8

    goto :goto_5

    .line 321
    .restart local v23       #visibility:I
    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    .line 324
    .end local v20           #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    .end local v23           #visibility:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/google/android/finsky/layout/CustomActionBar;->setSelectedTab(I)V

    .line 331
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseTwoColumnLayout:Z

    if-eqz v2, :cond_9

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f080113

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/AccountSelectorView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mAccountSelector:Lcom/google/android/finsky/layout/AccountSelectorView;

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mAccountSelector:Lcom/google/android/finsky/layout/AccountSelectorView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v3, v2}, Lcom/google/android/finsky/layout/AccountSelectorView;->configure(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    .line 334
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->showAccountSelectorIfNecessary(I)V

    .line 337
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f080185

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/activities/myapps/DocumentView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    goto/16 :goto_0

    .line 326
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    .line 327
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->onPageScrolled(IFI)V

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_7
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->rebindViews()V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    goto :goto_0
.end method

.method protected requestData()V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->clearState()V

    .line 354
    return-void
.end method
