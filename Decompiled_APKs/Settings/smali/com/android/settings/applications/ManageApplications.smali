.class public Lcom/android/settings/applications/ManageApplications;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/widget/TabHost$TabContentFactory;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/ManageApplications$AppViewHolder;
    }
.end annotation


# static fields
.field public static final APP_CHG:Ljava/lang/String; = "chg"

.field static final DEBUG:Z = false

.field public static final FILTER_APPS_ALL:I = 0x0

.field public static final FILTER_APPS_SDCARD:I = 0x2

.field public static final FILTER_APPS_THIRD_PARTY:I = 0x1

.field private static final INSTALLED_APP_DETAILS:I = 0x1

.field private static final MENU_OPTIONS_BASE:I = 0x0

.field private static final MSG_CreateView:I = 0x1

.field private static final MSG_ResumeAdapter:I = 0x2

.field public static final SHOW_BACKGROUND_PROCESSES:I = 0x7

.field public static final SHOW_RUNNING_SERVICES:I = 0x6

.field public static final SIZE_EXTERNAL:I = 0x2

.field public static final SIZE_INTERNAL:I = 0x1

.field public static final SIZE_TOTAL:I = 0x0

.field public static final SORT_ORDER_ALPHA:I = 0x4

.field public static final SORT_ORDER_SIZE:I = 0x5

.field static final TAB_ALL:Ljava/lang/String; = "All"

.field static final TAB_DOWNLOADED:Ljava/lang/String; = "Downloaded"

.field static final TAB_RUNNING:Ljava/lang/String; = "Running"

.field static final TAB_SDCARD:Ljava/lang/String; = "OnSdCard"

.field static final TAG:Ljava/lang/String; = "ManageApplications"

.field static final VIEW_LIST:I = 0x1

.field static final VIEW_NOTHING:I = 0x0

.field static final VIEW_RUNNING:I = 0x2


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityResumed:Z

.field private mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

.field mColorBar:Lcom/android/settings/applications/LinearColorBar;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private mCreatedRunning:Z

.field private mCurView:I

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDataFileStats:Landroid/os/StatFs;

.field private mDefaultTab:Ljava/lang/String;

.field private mEmptyView:Landroid/view/View;

.field private mFilterApps:I

.field mFreeStorageText:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mIsViewReady:Z

.field private mLastAppStorage:J

.field private mLastFreeStorage:J

.field private mLastShowedInternalStorage:Z

.field private mLastUsedStorage:J

.field private mListContainer:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mResumedRunning:Z

.field private mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

.field private mSDCardFileStats:Landroid/os/StatFs;

.field private mShowBackground:Z

.field private mSortOrder:I

.field mStorageChartLabel:Landroid/widget/TextView;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabWidget:Landroid/widget/TabWidget;

.field mUsedStorageText:Landroid/widget/TextView;

.field mViewContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    .line 155
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 157
    iput v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 192
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 196
    iput-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    .line 205
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    .line 229
    new-instance v0, Lcom/android/settings/applications/ManageApplications$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$1;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 678
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mIsViewReady:Z

    return-void
.end method

.method private PostCreateView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 707
    new-instance v6, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {v6, p0, v7}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;)V

    iput-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 709
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v6}, Lcom/android/settings/applications/ApplicationsState;->createMainHandler()V

    .line 711
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040049

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 712
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v7, 0x7f0800d6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    .line 713
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v7, 0x7f0800d0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    .line 715
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v7, 0x102000a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 716
    .local v2, lv:Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "list_selector_background"

    invoke-static {v6, v7, v10}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 717
    .local v4, selector:I
    if-eqz v4, :cond_0

    .line 718
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSelector(I)V

    .line 720
    :cond_0
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v7, 0x1020004

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 721
    .local v1, emptyView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 724
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mEmptyView:Landroid/view/View;

    .line 728
    :cond_1
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 729
    invoke-virtual {v2, v9}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 730
    invoke-virtual {v2, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 731
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 732
    invoke-virtual {v2, v9}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 733
    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    .line 734
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 735
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 736
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v7, 0x7f0800d1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/LinearColorBar;

    iput-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    .line 737
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v7, 0x7f0800d3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mStorageChartLabel:Landroid/widget/TextView;

    .line 738
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v7, 0x7f0800d2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    .line 739
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v7, 0x7f0800d4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    .line 740
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v7, 0x7f0800d5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningProcessesView;

    iput-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    .line 743
    iput-boolean v10, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    iput-boolean v10, p0, Lcom/android/settings/applications/ManageApplications;->mCreatedRunning:Z

    .line 744
    iput v10, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    .line 750
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x109009c

    iget-object v8, p0, Lcom/android/settings/applications/ManageApplications;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TabHost;

    iput-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    .line 751
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 752
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->setup()V

    .line 753
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    .line 754
    .local v5, tabHost:Landroid/widget/TabHost;
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mTabWidget:Landroid/widget/TabWidget;

    .line 756
    const-string v6, "Downloaded"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    const v7, 0x7f0c0afe

    const v8, 0x7f0200a7

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/ManageApplications;->createIndicatorView(II)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 762
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-nez v6, :cond_4

    .line 764
    const v3, 0x7f0c0b00

    .line 765
    .local v3, resId:I
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 766
    const v3, 0x7f0c00f1

    .line 770
    :cond_2
    const v0, 0x7f0200aa

    .line 771
    .local v0, drawableRes:I
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 772
    const v0, 0x7f0200a8

    .line 774
    :cond_3
    const-string v6, "OnSdCard"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-direct {p0, v3, v0}, Lcom/android/settings/applications/ManageApplications;->createIndicatorView(II)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 782
    .end local v0           #drawableRes:I
    .end local v3           #resId:I
    :cond_4
    const-string v6, "Running"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    const v7, 0x7f0c0aff

    const v8, 0x7f0200a9

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/ManageApplications;->createIndicatorView(II)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 788
    const-string v6, "All"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    const v7, 0x7f0c0afd

    const v8, 0x7f0200a4

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/ManageApplications;->createIndicatorView(II)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 793
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v5, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 797
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v6, v9}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 813
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-static {v6, v7, v8, v10}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 816
    iput-boolean v9, p0, Lcom/android/settings/applications/ManageApplications;->mIsViewReady:Z

    .line 819
    iget-boolean v6, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    if-nez v6, :cond_5

    .line 820
    iput-boolean v9, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 821
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->showCurrentTab()V

    .line 822
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 825
    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/ManageApplications;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private createIndicatorView(II)Landroid/view/View;
    .locals 8
    .parameter "lableRes"
    .parameter "drawableRes"

    .prologue
    .line 1226
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1227
    .local v0, context:Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1228
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x109009d

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1230
    .local v3, tabIndicator:Landroid/view/View;
    const v5, 0x1020016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1231
    .local v4, tv:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1233
    const v5, 0x1020006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1234
    .local v1, iconView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1236
    const-string v5, "tab_indicator"

    const v6, 0x108057c

    invoke-static {v0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1237
    return-object v3
.end method

.method private getInternalActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private selectView(I)V
    .locals 8
    .parameter "which"

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1138
    if-ne p1, v6, :cond_4

    .line 1139
    iget-boolean v3, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    if-eqz v3, :cond_0

    .line 1140
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v3}, Lcom/android/settings/applications/RunningProcessesView;->doPause()V

    .line 1141
    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    .line 1143
    :cond_0
    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    if-eq v3, p1, :cond_1

    .line 1144
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v3, v7}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 1145
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1147
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v3, :cond_2

    .line 1150
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1151
    .local v2, uiHandler:Landroid/os/Handler;
    if-eqz v2, :cond_2

    .line 1152
    invoke-static {v2, v4, p1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1177
    .end local v2           #uiHandler:Landroid/os/Handler;
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    .line 1178
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1179
    .local v1, host:Landroid/app/Activity;
    if-eqz v1, :cond_3

    .line 1180
    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1182
    :cond_3
    return-void

    .line 1156
    .end local v1           #host:Landroid/app/Activity;
    :cond_4
    if-ne p1, v4, :cond_2

    .line 1157
    iget-boolean v3, p0, Lcom/android/settings/applications/ManageApplications;->mCreatedRunning:Z

    if-nez v3, :cond_5

    .line 1158
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V

    .line 1159
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v3, v3, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    .line 1160
    iput-boolean v6, p0, Lcom/android/settings/applications/ManageApplications;->mCreatedRunning:Z

    .line 1162
    :cond_5
    const/4 v0, 0x1

    .line 1163
    .local v0, haveData:Z
    iget-boolean v3, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    if-nez v3, :cond_6

    .line 1164
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v3, p0, v4}, Lcom/android/settings/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 1165
    iput-boolean v6, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    .line 1167
    :cond_6
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 1168
    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    if-eq v3, p1, :cond_2

    .line 1169
    if-eqz v0, :cond_7

    .line 1170
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v3, v5}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 1174
    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1172
    :cond_7
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 932
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 933
    .local v2, args:Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    .line 936
    .local v0, pa:Lcom/htc/preference/HtcPreferenceActivity;
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0adb

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 938
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method handleRunningProcessesAvail()V
    .locals 3

    .prologue
    .line 1185
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1188
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1190
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 1191
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1193
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 924
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 927
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 593
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 597
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mActivity:Landroid/app/Activity;

    .line 602
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 603
    return-void
.end method

.method public onCreateInBackground(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 612
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_0

    .line 613
    const-string v5, "ManageApplications"

    const-string v6, "Activity is destroyed"

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :goto_0
    return-void

    .line 618
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    .line 623
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 624
    const-string v5, "ManageApplications"

    const-string v6, "Activity is destroyed"

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 627
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 628
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, action:Ljava/lang/String;
    const-string v2, "Downloaded"

    .line 630
    .local v2, defaultTabTag:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "classname"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, className:Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_2

    .line 633
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 635
    :cond_2
    const-class v5, Lcom/android/settings/Settings$RunningServicesActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 636
    const-string v2, "Running"

    .line 647
    :cond_3
    :goto_2
    if-eqz p1, :cond_5

    .line 648
    const-string v5, "sortOrder"

    iget v6, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 649
    const-string v5, "filterApps"

    iget v6, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 650
    const-string v5, "defaultTabTag"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 651
    .local v4, tmp:Ljava/lang/String;
    if-eqz v4, :cond_4

    move-object v2, v4

    .line 652
    :cond_4
    const-string v5, "showBackground"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 655
    .end local v4           #tmp:Ljava/lang/String;
    :cond_5
    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    .line 657
    new-instance v5, Landroid/os/StatFs;

    const-string v6, "/data"

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    .line 658
    new-instance v5, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    .line 661
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_a

    .line 662
    const-string v5, "ManageApplications"

    const-string v6, "Activity is destroyed"

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 630
    .end local v1           #className:Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 637
    .restart local v1       #className:Ljava/lang/String;
    :cond_7
    const-class v5, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 639
    :cond_8
    const/4 v5, 0x5

    iput v5, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 640
    iput v7, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 641
    const-string v2, "All"

    goto :goto_2

    .line 642
    :cond_9
    const-string v5, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 644
    const-string v2, "All"

    goto :goto_2

    .line 665
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0c0b13

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 666
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0c0b12

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 669
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 942
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 946
    const/4 v0, 0x4

    const/4 v1, 0x1

    const v2, 0x7f0c0af6

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 949
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f0c0af7

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 952
    const/4 v0, 0x6

    const v1, 0x7f0c0af8

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 954
    const/4 v0, 0x7

    const v1, 0x7f0c0af9

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 963
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 964
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 833
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 843
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mViewContainer:Landroid/widget/LinearLayout;

    .line 847
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 852
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mViewContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    .line 914
    .local v0, uiHandler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 915
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 916
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 918
    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onDestroy()V

    .line 919
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 973
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 974
    return-void
.end method

.method public onHandleUIMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 684
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 686
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->PostCreateView()V

    goto :goto_0

    .line 689
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->resume(II)V

    .line 693
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 684
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1021
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1022
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 1023
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 1024
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1242
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1247
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1252
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 1257
    const/16 v0, 0x54

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1258
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 1259
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 1262
    :cond_0
    const/4 v0, 0x1

    .line 1264
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1002
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1003
    .local v0, menuId:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1004
    :cond_0
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 1005
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1006
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(II)V

    .line 1015
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1016
    return v4

    .line 1008
    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 1009
    iput-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 1010
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1011
    :cond_3
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1012
    iput-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 1013
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 892
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onPause()V

    .line 895
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v0, :cond_0

    .line 896
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->resetFragmentKeyListener()V

    .line 901
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v0, :cond_1

    .line 902
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 903
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 904
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    if-eqz v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView;->doPause()V

    .line 906
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    .line 909
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 969
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 863
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onResume()V

    .line 866
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v0, :cond_0

    .line 867
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->setFragmentKeyListener(Landroid/view/KeyEvent$Callback;)V

    .line 872
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mIsViewReady:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    if-nez v0, :cond_1

    .line 873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 874
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->showCurrentTab()V

    .line 875
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 877
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 881
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 882
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 883
    const-string v0, "filterApps"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 884
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 885
    const-string v0, "defautTabTag"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 888
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 858
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onStart()V

    .line 859
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "tabId"

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->showCurrentTab()V

    .line 1223
    return-void
.end method

.method public showCurrentTab()V
    .locals 5

    .prologue
    .line 1196
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    .line 1198
    .local v1, tabId:Ljava/lang/String;
    const-string v2, "Downloaded"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1199
    const/4 v0, 0x1

    .line 1215
    .local v0, newOption:I
    :goto_0
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 1216
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/applications/ManageApplications;->selectView(I)V

    .line 1217
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateStorageUsage()V

    .line 1218
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1219
    .end local v0           #newOption:I
    :cond_0
    :goto_1
    return-void

    .line 1200
    :cond_1
    const-string v2, "All"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1201
    const/4 v0, 0x0

    .restart local v0       #newOption:I
    goto :goto_0

    .line 1202
    .end local v0           #newOption:I
    :cond_2
    const-string v2, "OnSdCard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1203
    const/4 v0, 0x2

    .restart local v0       #newOption:I
    goto :goto_0

    .line 1204
    .end local v0           #newOption:I
    :cond_3
    const-string v2, "Running"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1205
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1208
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings/applications/ManageApplications;->selectView(I)V

    goto :goto_1
.end method

.method updateOptionsMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 977
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3}, Landroid/view/Menu;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 986
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v3, v3, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 988
    .local v0, showingBackground:Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 989
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 990
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 991
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0           #showingBackground:Z
    :cond_3
    move v0, v1

    .line 986
    goto :goto_1

    .line 993
    :cond_4
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v3, v5, :cond_5

    move v3, v2

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 994
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v6, :cond_6

    :goto_3
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 995
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 996
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_5
    move v3, v1

    .line 993
    goto :goto_2

    :cond_6
    move v2, v1

    .line 994
    goto :goto_3
.end method

.method updateStorageUsage()V
    .locals 23

    .prologue
    .line 1035
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1135
    :goto_0
    return-void

    .line 1039
    :cond_0
    const-wide/16 v8, 0x0

    .line 1040
    .local v8, freeStorage:J
    const-wide/16 v5, 0x0

    .line 1041
    .local v5, appStorage:J
    const-wide/16 v14, 0x0

    .line 1042
    .local v14, totalStorage:J
    const/4 v11, 0x0

    .line 1044
    .local v11, newLabel:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1045
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1046
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    .line 1052
    :cond_1
    const v12, 0x7f0c0b04

    .line 1053
    .local v12, resId:I
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportInternalStorage()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1054
    const v12, 0x7f0c00fb

    .line 1057
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 1060
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockCount()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v14, v18, v20

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v8, v18, v20

    .line 1067
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v3

    .line 1068
    .local v3, N:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v3, :cond_7

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    .line 1070
    .local v4, ae:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    move-wide/from16 v18, v0

    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    add-long v5, v5, v18

    .line 1068
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1073
    .end local v3           #N:I
    .end local v4           #ae:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v10           #i:I
    .end local v12           #resId:I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 1074
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    .line 1076
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v18

    const v19, 0x7f0c0b03

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    const-string v19, "/data"

    invoke-virtual/range {v18 .. v19}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 1079
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockCount()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v14, v18, v20

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v8, v18, v20

    .line 1085
    :goto_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v7

    .line 1086
    .local v7, emulatedStorage:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v3

    .line 1087
    .restart local v3       #N:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_4
    if-ge v10, v3, :cond_6

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    .line 1089
    .restart local v4       #ae:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    move-wide/from16 v18, v0

    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    add-long v5, v5, v18

    .line 1090
    if-eqz v7, :cond_5

    .line 1091
    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    move-wide/from16 v18, v0

    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    add-long v5, v5, v18

    .line 1087
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1094
    .end local v4           #ae:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/applications/ApplicationsState;->sumCacheSizes()J

    move-result-wide v18

    add-long v8, v8, v18

    .line 1096
    .end local v7           #emulatedStorage:Z
    :cond_7
    if-eqz v11, :cond_8

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mStorageChartLabel:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    :cond_8
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-lez v18, :cond_d

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    move-object/from16 v18, v0

    sub-long v19, v14, v8

    sub-long v19, v19, v5

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move/from16 v19, v0

    long-to-float v0, v14

    move/from16 v20, v0

    div-float v19, v19, v20

    long-to-float v0, v5

    move/from16 v20, v0

    long-to-float v0, v14

    move/from16 v21, v0

    div-float v20, v20, v21

    long-to-float v0, v8

    move/from16 v21, v0

    long-to-float v0, v14

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-virtual/range {v18 .. v21}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 1102
    sub-long v16, v14, v8

    .line 1103
    .local v16, usedStorage:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v16

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1104
    :cond_9
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    .line 1105
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    .line 1106
    .local v13, sizeStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c0b31

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v13, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1109
    .end local v13           #sizeStr:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v8

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1110
    :cond_b
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    .line 1111
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    .line 1112
    .restart local v13       #sizeStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getInternalActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c0b30

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v13, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    .end local v13           #sizeStr:Ljava/lang/String;
    .end local v16           #usedStorage:J
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v18

    if-gtz v18, :cond_f

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mEmptyView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1116
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 1117
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_e

    .line 1118
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1121
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_c

    .line 1122
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1132
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mEmptyView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1083
    .end local v3           #N:I
    .end local v10           #i:I
    :catch_0
    move-exception v18

    goto/16 :goto_3

    .line 1064
    .restart local v12       #resId:I
    :catch_1
    move-exception v18

    goto/16 :goto_1
.end method
