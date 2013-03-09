.class public Lcom/htc/store/activity/list/ListItem;
.super Lcom/htc/store/activity/BaseActivity;
.source "ListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;,
        Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;,
        Lcom/htc/store/activity/list/ListItem$GetItemListTask;,
        Lcom/htc/store/activity/list/ListItem$CheckContentTask;,
        Lcom/htc/store/activity/list/ListItem$ItemAdapter;,
        Lcom/htc/store/activity/list/ListItem$NonUiHandler;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL:I = -0x1

.field private static final ACTION_GET_ITEM_LIST:I = 0x5

.field private static final ACTION_NONE:I = 0x0

.field private static final ACTION_SHOW_DOWNLOAD_COMMENT_LIKE_INFO_ERROR:I = 0x4

.field private static final ACTION_SHOW_EMPTY:I = 0x2

.field private static final ACTION_SHOW_ERROR:I = 0x3

.field private static final ACTION_SHOW_LIST:I = 0x1

.field private static final BUFFER_TO_GET_NEXT:I = 0x3

.field private static final DOWNLOAD_ICON_TASK_COUNT:I = 0x3

.field private static final MESSAGE_CHECK_ICON_TO_DOWNLOAD:I = 0x3

.field private static final MESSAGE_CHECK_PACKAGE_MANAGER:I = 0x2

.field private static final MESSAGE_UPDATE_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field protected mActionOnResume:I

.field protected mAdapter:Lcom/htc/store/activity/list/ListItem$ItemAdapter;

.field protected mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

.field protected mCheckContentTask:Lcom/htc/store/activity/list/ListItem$CheckContentTask;

.field protected mDownloadCommentLikeInfoTaskCount:I

.field protected mEmpty:Landroid/view/View;

.field protected mEmptyProgress:Landroid/widget/ProgressBar;

.field protected mEmptyText:Landroid/widget/TextView;

.field protected mGetItemListTask:Lcom/htc/store/activity/list/ListItem$GetItemListTask;

.field protected mHeaderBar:Lcom/htc/widget/HeaderBar;

.field protected mImageCacheMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/store/module/vo/ImageCacheMappingItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsOperator:Z

.field protected mIsUserCancelled:Z

.field protected mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

.field protected mItemOnlineId2Status:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mItemPackageName2Status:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mList:Lcom/htc/widget/HtcListView;

.field protected mLoadingItem:Landroid/view/View;

.field protected mMyActivityChangedObserver:Landroid/database/ContentObserver;

.field protected mNonUiHandler:Lcom/htc/store/activity/list/ListItem$NonUiHandler;

.field private mOnListScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field private mOnRefreshClickListener:Landroid/view/View$OnClickListener;

.field protected mRefreshMenuItem:Landroid/view/MenuItem;

.field protected mRestHelper:Lcom/htc/store/module/rest/RestHelper;

.field protected mScrollState:I

.field protected mSlidingCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/htc/store/activity/list/ListItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/list/ListItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/htc/store/activity/BaseActivity;-><init>()V

    .line 85
    iput v0, p0, Lcom/htc/store/activity/list/ListItem;->mDownloadCommentLikeInfoTaskCount:I

    .line 86
    iput v0, p0, Lcom/htc/store/activity/list/ListItem;->mActionOnResume:I

    .line 87
    iput v0, p0, Lcom/htc/store/activity/list/ListItem;->mSlidingCounter:I

    .line 89
    iput-boolean v0, p0, Lcom/htc/store/activity/list/ListItem;->mIsUserCancelled:Z

    .line 90
    iput-boolean v0, p0, Lcom/htc/store/activity/list/ListItem;->mIsOperator:Z

    .line 424
    new-instance v0, Lcom/htc/store/activity/list/ListItem$2;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/list/ListItem$2;-><init>(Lcom/htc/store/activity/list/ListItem;)V

    iput-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mOnRefreshClickListener:Landroid/view/View$OnClickListener;

    .line 434
    new-instance v0, Lcom/htc/store/activity/list/ListItem$3;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/list/ListItem$3;-><init>(Lcom/htc/store/activity/list/ListItem;)V

    iput-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mOnListScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 1177
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/htc/store/activity/list/ListItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->isHtcAccountExisted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/store/activity/list/ListItem;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/store/activity/list/ListItem;)Lcom/htc/store/module/PreferenceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/store/activity/list/ListItem;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/store/activity/list/ListItem;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/store/activity/list/ListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->showNoNetworkDialog()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->isHtcAccountExisted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/store/activity/list/ListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/store/activity/list/ListItem;->doRefresh()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/store/activity/list/ListItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/store/activity/list/ListItem;->updateProgressBarAndMenuItem(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/store/activity/list/ListItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/store/activity/list/ListItem;->doAction(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/store/activity/list/ListItem;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->isHtcAccountExisted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/store/activity/list/ListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/store/activity/list/ListItem;->removeLoadingItem()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/store/activity/list/ListItem;->updateProgressBarAndMenuItem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/store/activity/list/ListItem;)Lcom/htc/store/module/PreferenceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/store/activity/list/ListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/store/activity/list/ListItem;->updateItemStatus()V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/store/activity/list/ListItem;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->isHtcAccountExisted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/store/activity/list/ListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/store/activity/list/ListItem;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/store/activity/list/ListItem;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/store/activity/list/ListItem;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private appendLoadingItem()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 280
    sget-object v1, Lcom/htc/store/activity/list/ListItem;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "appendLoadingItem"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mLoadingItem:Landroid/view/View;

    if-nez v1, :cond_0

    .line 282
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030013

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mLoadingItem:Landroid/view/View;

    .line 283
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mLoadingItem:Landroid/view/View;

    const v2, 0x7f0c000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 284
    .local v0, loadingText:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 285
    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 288
    .end local v0           #loadingText:Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v1, :cond_1

    .line 289
    sget-object v1, Lcom/htc/store/activity/list/ListItem;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "addFooterView"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/store/activity/list/ListItem;->mLoadingItem:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;)V

    .line 292
    :cond_1
    return-void
.end method

.method private doAction(I)V
    .locals 5
    .parameter "action"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 304
    sget-object v0, Lcom/htc/store/activity/list/ListItem;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "action: "

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    packed-switch p1, :pswitch_data_0

    .line 343
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 307
    :pswitch_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 308
    invoke-direct {p0, v3, v3}, Lcom/htc/store/activity/list/ListItem;->setListVisibility(ZZ)V

    goto :goto_0

    .line 313
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/store/activity/list/ListItem;->setAdapter()V

    .line 314
    invoke-direct {p0, v4, v3}, Lcom/htc/store/activity/list/ListItem;->setListVisibility(ZZ)V

    goto :goto_0

    .line 318
    :pswitch_3
    invoke-direct {p0, v3, v3}, Lcom/htc/store/activity/list/ListItem;->setListVisibility(ZZ)V

    goto :goto_0

    .line 322
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->showCommonErrorDialog()V

    .line 323
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mAdapter:Lcom/htc/store/activity/list/ListItem$ItemAdapter;

    if-nez v0, :cond_1

    .line 324
    invoke-direct {p0, v3, v3}, Lcom/htc/store/activity/list/ListItem;->setListVisibility(ZZ)V

    goto :goto_0

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mLoadingItem:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/htc/store/activity/list/ListItem;->removeLoadingItem()V

    goto :goto_0

    .line 337
    :pswitch_5
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mGetItemListTask:Lcom/htc/store/activity/list/ListItem$GetItemListTask;

    if-nez v0, :cond_2

    .line 338
    new-instance v0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/list/ListItem$GetItemListTask;-><init>(Lcom/htc/store/activity/list/ListItem;)V

    iput-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mGetItemListTask:Lcom/htc/store/activity/list/ListItem$GetItemListTask;

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mGetItemListTask:Lcom/htc/store/activity/list/ListItem$GetItemListTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private doRefresh()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 346
    const/4 v1, 0x1

    invoke-direct {p0, v5, v1}, Lcom/htc/store/activity/list/ListItem;->setListVisibility(ZZ)V

    .line 347
    iput-boolean v5, p0, Lcom/htc/store/activity/list/ListItem;->mIsUserCancelled:Z

    .line 348
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 350
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mAdapter:Lcom/htc/store/activity/list/ListItem$ItemAdapter;

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mAdapter:Lcom/htc/store/activity/list/ListItem$ItemAdapter;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 352
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 353
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 355
    :cond_0
    iput-object v6, p0, Lcom/htc/store/activity/list/ListItem;->mAdapter:Lcom/htc/store/activity/list/ListItem$ItemAdapter;

    .line 357
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-object v2, p0, Lcom/htc/store/activity/list/ListItem;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v2}, Lcom/htc/store/module/vo/CategoryItem;->getId()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/store/provider/AccessHelper;->removeCategoryTTLItem(JI)I

    .line 358
    new-instance v1, Lcom/htc/store/activity/list/ListItem$CheckContentTask;

    invoke-direct {v1, p0, v6}, Lcom/htc/store/activity/list/ListItem$CheckContentTask;-><init>(Lcom/htc/store/activity/list/ListItem;Lcom/htc/store/activity/list/ListItem$1;)V

    iput-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mCheckContentTask:Lcom/htc/store/activity/list/ListItem$CheckContentTask;

    .line 359
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mCheckContentTask:Lcom/htc/store/activity/list/ListItem$CheckContentTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 360
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 223
    const v1, 0x7f0c0018

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/list/ListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBar;

    iput-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 224
    new-instance v0, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 225
    .local v0, headerText:Lcom/htc/widget/HeaderBarText;
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v1}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBar;->addCenterView(Landroid/view/View;)V

    .line 228
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/list/ListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    .line 229
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListView;->setRoundedCornerEnabled(Z)V

    .line 230
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/list/ListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mEmpty:Landroid/view/View;

    .line 232
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mEmpty:Landroid/view/View;

    const v2, 0x7f0c0029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mEmptyProgress:Landroid/widget/ProgressBar;

    .line 233
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mEmpty:Landroid/view/View;

    const v2, 0x7f0c002a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mEmptyText:Landroid/widget/TextView;

    .line 234
    invoke-direct {p0, v3, v4}, Lcom/htc/store/activity/list/ListItem;->setListVisibility(ZZ)V

    .line 235
    return-void
.end method

.method private removeLoadingItem()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 295
    sget-object v0, Lcom/htc/store/activity/list/ListItem;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "removeLoadingItem"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mLoadingItem:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 297
    sget-object v0, Lcom/htc/store/activity/list/ListItem;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "removeFooterView"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mLoadingItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->removeFooterView(Landroid/view/View;)Z

    .line 300
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mLoadingItem:Landroid/view/View;

    .line 301
    return-void
.end method

.method private setAdapter()V
    .locals 6

    .prologue
    .line 238
    iget-object v4, p0, Lcom/htc/store/activity/list/ListItem;->mAdapter:Lcom/htc/store/activity/list/ListItem$ItemAdapter;

    if-nez v4, :cond_1

    .line 239
    iget-object v4, p0, Lcom/htc/store/activity/list/ListItem;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v4}, Lcom/htc/store/module/vo/CategoryItem;->getId()J

    move-result-wide v0

    .line 240
    .local v0, categoryId:J
    iget-object v4, p0, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v4, v0, v1}, Lcom/htc/store/provider/AccessHelper;->findItemItemsByCategory(J)Landroid/database/Cursor;

    move-result-object v2

    .line 241
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 242
    .local v3, itemCount:I
    const/16 v4, 0x14

    if-lt v3, v4, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/htc/store/activity/list/ListItem;->appendLoadingItem()V

    .line 244
    iget-object v4, p0, Lcom/htc/store/activity/list/ListItem;->mGetItemListTask:Lcom/htc/store/activity/list/ListItem$GetItemListTask;

    if-nez v4, :cond_0

    .line 245
    new-instance v4, Lcom/htc/store/activity/list/ListItem$GetItemListTask;

    invoke-direct {v4, p0, v3}, Lcom/htc/store/activity/list/ListItem$GetItemListTask;-><init>(Lcom/htc/store/activity/list/ListItem;I)V

    iput-object v4, p0, Lcom/htc/store/activity/list/ListItem;->mGetItemListTask:Lcom/htc/store/activity/list/ListItem$GetItemListTask;

    .line 248
    :cond_0
    new-instance v4, Lcom/htc/store/activity/list/ListItem$ItemAdapter;

    const v5, 0x7f030014

    invoke-direct {v4, p0, p0, v5, v2}, Lcom/htc/store/activity/list/ListItem$ItemAdapter;-><init>(Lcom/htc/store/activity/list/ListItem;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v4, p0, Lcom/htc/store/activity/list/ListItem;->mAdapter:Lcom/htc/store/activity/list/ListItem$ItemAdapter;

    .line 249
    iget-object v4, p0, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem;->mAdapter:Lcom/htc/store/activity/list/ListItem$ItemAdapter;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 250
    iget-object v4, p0, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem;->mAdapter:Lcom/htc/store/activity/list/ListItem$ItemAdapter;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 251
    iget-object v4, p0, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem;->mOnListScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 258
    .end local v0           #categoryId:J
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #itemCount:I
    :cond_1
    return-void
.end method

.method private setListVisibility(ZZ)V
    .locals 4
    .parameter "visible"
    .parameter "isLoading"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 261
    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 277
    :goto_0
    return-void

    .line 265
    :cond_0
    if-eqz p2, :cond_1

    .line 266
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mEmptyProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 268
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mEmptyText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    :goto_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mEmptyProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f0a002d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 272
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mEmptyText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mOnRefreshClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private declared-synchronized updateItemStatus()V
    .locals 9

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    if-eqz v5, :cond_4

    .line 395
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v5}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 396
    .local v0, activities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 397
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem;->mItemOnlineId2Status:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    .line 398
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem;->mItemOnlineId2Status:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 402
    :goto_0
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem;->mItemPackageName2Status:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    .line 403
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem;->mItemPackageName2Status:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 407
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/store/module/vo/MyActivityItem;

    .line 408
    .local v2, item:Lcom/htc/store/module/vo/MyActivityItem;
    invoke-virtual {v2}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, onlineId:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/htc/store/module/vo/MyActivityItem;->getItemPackageName()Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, packageName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 411
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem;->mItemOnlineId2Status:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/htc/store/module/vo/MyActivityItem;->getStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 394
    .end local v0           #activities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v3           #onlineId:Ljava/lang/String;
    .end local v4           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 400
    .restart local v0       #activities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    :cond_0
    :try_start_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/htc/store/activity/list/ListItem;->mItemOnlineId2Status:Ljava/util/HashMap;

    goto :goto_0

    .line 405
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/htc/store/activity/list/ListItem;->mItemPackageName2Status:Ljava/util/HashMap;

    goto :goto_1

    .line 413
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #item:Lcom/htc/store/module/vo/MyActivityItem;
    .restart local v3       #onlineId:Ljava/lang/String;
    .restart local v4       #packageName:Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 414
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem;->mItemPackageName2Status:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/htc/store/module/vo/MyActivityItem;->getStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 416
    :cond_3
    sget-object v5, Lcom/htc/store/activity/list/ListItem;->TAG:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Both onlineId and packageName are empty."

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 422
    .end local v0           #activities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v3           #onlineId:Ljava/lang/String;
    .end local v4           #packageName:Ljava/lang/String;
    :cond_4
    monitor-exit p0

    return-void
.end method

.method private updateProgressBarAndMenuItem(Z)V
    .locals 5
    .parameter "inProgress"

    .prologue
    const/4 v4, 0x0

    .line 363
    sget-object v0, Lcom/htc/store/activity/list/ListItem;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "updateProgressBarAndMenuItem: "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    if-eqz p1, :cond_1

    .line 365
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    .line 369
    :goto_0
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mRefreshMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 370
    if-eqz p1, :cond_2

    .line 371
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mRefreshMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0a004b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 372
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mRefreshMenuItem:Landroid/view/MenuItem;

    const v1, 0x2080339

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 378
    :cond_0
    :goto_1
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mRefreshMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0a006c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 375
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mRefreshMenuItem:Landroid/view/MenuItem;

    const v1, 0x208033b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private updateProgressBarAndMenuItem()Z
    .locals 5

    .prologue
    .line 381
    sget-object v1, Lcom/htc/store/activity/list/ListItem;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "updateProgressBarAndMenuItem"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, inProgress:Z
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mCheckContentTask:Lcom/htc/store/activity/list/ListItem$CheckContentTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mCheckContentTask:Lcom/htc/store/activity/list/ListItem$CheckContentTask;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mGetItemListTask:Lcom/htc/store/activity/list/ListItem$GetItemListTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mGetItemListTask:Lcom/htc/store/activity/list/ListItem$GetItemListTask;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/htc/store/activity/list/ListItem;->mDownloadCommentLikeInfoTaskCount:I

    if-lez v1, :cond_4

    .line 387
    :cond_3
    const/4 v0, 0x1

    .line 389
    :cond_4
    invoke-direct {p0, v0}, Lcom/htc/store/activity/list/ListItem;->updateProgressBarAndMenuItem(Z)V

    .line 390
    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/htc/store/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v2, 0x7f030010

    invoke-virtual {p0, v2}, Lcom/htc/store/activity/list/ListItem;->setContentView(I)V

    .line 96
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "category_item"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/htc/store/module/vo/CategoryItem;

    iput-object v2, p0, Lcom/htc/store/activity/list/ListItem;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    .line 98
    const-string v2, "is_operator"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/store/activity/list/ListItem;->mIsOperator:Z

    .line 99
    iget-object v2, p0, Lcom/htc/store/activity/list/ListItem;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    if-nez v2, :cond_0

    .line 100
    sget-object v2, Lcom/htc/store/activity/list/ListItem;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Category item is null."

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->finish()V

    .line 118
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v2, Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 105
    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lcom/htc/store/activity/list/ListItem;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, thread:Landroid/os/HandlerThread;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 107
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v2, Lcom/htc/store/activity/list/ListItem$NonUiHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/store/activity/list/ListItem$NonUiHandler;-><init>(Lcom/htc/store/activity/list/ListItem;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/store/activity/list/ListItem;->mNonUiHandler:Lcom/htc/store/activity/list/ListItem$NonUiHandler;

    .line 109
    new-instance v2, Lcom/htc/store/activity/list/ListItem$1;

    iget-object v3, p0, Lcom/htc/store/activity/list/ListItem;->mNonUiHandler:Lcom/htc/store/activity/list/ListItem$NonUiHandler;

    invoke-direct {v2, p0, v3}, Lcom/htc/store/activity/list/ListItem$1;-><init>(Lcom/htc/store/activity/list/ListItem;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/htc/store/activity/list/ListItem;->mMyActivityChangedObserver:Landroid/database/ContentObserver;

    .line 116
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/store/activity/list/ListItem;->mMyActivityChangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v1}, Lcom/htc/store/module/rest/RestHelper;->destroy()V

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mMyActivityChangedObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mMyActivityChangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1}, Landroid/database/ContentObserver;->releaseContentObserver()Landroid/database/IContentObserver;

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mNonUiHandler:Lcom/htc/store/activity/list/ListItem$NonUiHandler;

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mNonUiHandler:Lcom/htc/store/activity/list/ListItem$NonUiHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->removeMessages(I)V

    .line 158
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mNonUiHandler:Lcom/htc/store/activity/list/ListItem$NonUiHandler;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mAdapter:Lcom/htc/store/activity/list/ListItem$ItemAdapter;

    if-eqz v1, :cond_3

    .line 161
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mAdapter:Lcom/htc/store/activity/list/ListItem$ItemAdapter;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListItem$ItemAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 162
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 163
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 166
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_3
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mImageCacheMapping:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    .line 167
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mImageCacheMapping:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 169
    :cond_4
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mItemOnlineId2Status:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    .line 170
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mItemOnlineId2Status:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 172
    :cond_5
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mItemPackageName2Status:Ljava/util/HashMap;

    if-eqz v1, :cond_6

    .line 173
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mItemPackageName2Status:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 175
    :cond_6
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v1, :cond_7

    .line 176
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 178
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 180
    :cond_7
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "clear_cache"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 181
    invoke-static {}, Lcom/htc/store/util/ImageUtils;->clearAllCache()V

    .line 183
    :cond_8
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onDestroy()V

    .line 184
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onResume()V

    .line 123
    iget-boolean v1, p0, Lcom/htc/store/activity/BaseActivity;->mFirstCreate:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListItem;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    iget v1, p0, Lcom/htc/store/activity/list/ListItem;->mActionOnResume:I

    if-eqz v1, :cond_0

    .line 125
    iget v0, p0, Lcom/htc/store/activity/list/ListItem;->mActionOnResume:I

    .line 126
    .local v0, action:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/store/activity/list/ListItem;->mActionOnResume:I

    .line 127
    invoke-direct {p0, v0}, Lcom/htc/store/activity/list/ListItem;->doAction(I)V

    .line 129
    .end local v0           #action:I
    :cond_0
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->hasToDownload()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->hasIdleTask()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/store/activity/list/ListItem;->updateProgressBarAndMenuItem(Z)V

    .line 132
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->start()V

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    invoke-direct {p0}, Lcom/htc/store/activity/list/ListItem;->updateProgressBarAndMenuItem()Z

    goto :goto_0
.end method

.method protected onWindowFirstFocused()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/htc/store/activity/list/ListItem;->initViews()V

    .line 143
    new-instance v0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/store/activity/list/ListItem$CheckContentTask;-><init>(Lcom/htc/store/activity/list/ListItem;Lcom/htc/store/activity/list/ListItem$1;)V

    iput-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mCheckContentTask:Lcom/htc/store/activity/list/ListItem$CheckContentTask;

    .line 144
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem;->mCheckContentTask:Lcom/htc/store/activity/list/ListItem$CheckContentTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 146
    :cond_0
    return-void
.end method
