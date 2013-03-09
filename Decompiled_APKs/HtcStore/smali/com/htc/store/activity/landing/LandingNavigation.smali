.class public abstract Lcom/htc/store/activity/landing/LandingNavigation;
.super Lcom/htc/store/activity/BaseActivity;
.source "LandingNavigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;,
        Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;,
        Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;,
        Lcom/htc/store/activity/landing/LandingNavigation$NaviScrollListener;,
        Lcom/htc/store/activity/landing/LandingNavigation$OnFeaturedClickListener;,
        Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;,
        Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;,
        Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;,
        Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;,
        Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;,
        Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;,
        Lcom/htc/store/activity/landing/LandingNavigation$GetPromoTask;,
        Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;,
        Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;
    }
.end annotation


# static fields
.field static final ACTION_ERROR:I = 0x0

.field static final ACTION_GET_FEATURED:I = 0x2

.field static final ACTION_GET_NAVI_LIST:I = 0x3

.field static final ACTION_GET_PROMO:I = 0x1

.field static final ACTION_NONE:I = -0x1

.field static final ACTION_SHOW_FEATURED_EMPTY:I = 0x5

.field static final ACTION_SHOW_NAVI_EMPTY:I = 0x6

.field static final ACTION_SHOW_PROMO_EMPTY:I = 0x4

.field private static final INSTALL_STATUS_CANCELED:I = 0x8

.field private static final INSTALL_STATUS_DOWNLOADED:I = 0x3

.field private static final INSTALL_STATUS_NONE:I = -0x1

.field private static final MENU_EDIT_TABS:I = 0x2

.field private static final MENU_REFRESH:I = 0x0

.field private static final MENU_SETTING:I = 0x1

.field static final MESSAGE_DOWNLOAD_FEATURED_ICON_TASK_IS_FINISHED:I = 0x4

.field static final MESSAGE_DOWNLOAD_FEATURED_ICON_TASK_IS_INITIALIZED:I = 0x3

.field static final MESSAGE_DOWNLOAD_FEATURED_ICON_TASK_IS_RESUMED:I = 0x5

.field static final MESSAGE_DOWNLOAD_NAVI_ICON_TASK_IS_FINISHED:I = 0x7

.field static final MESSAGE_DOWNLOAD_NAVI_ICON_TASK_IS_INITIALIZED:I = 0x6

.field static final MESSAGE_DOWNLOAD_NAVI_ICON_TASK_IS_RESUMED:I = 0x8

.field static final MESSAGE_DOWNLOAD_PROMO_PREVIEW_TASK_IS_FINISHED:I = 0x1

.field static final MESSAGE_DOWNLOAD_PROMO_PREVIEW_TASK_IS_INITIALIZED:I = 0x0

.field static final MESSAGE_DOWNLOAD_PROMO_PREVIEW_TASK_IS_RESUMED:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field mCategoryId:J

.field protected mCheckContentTask:Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;

.field protected mDownloadFeaturedIconFailedCount:Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

.field protected mDownloadFeaturedIconQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDownloadFeaturedIconTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;

.field protected mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

.field protected mDownloadNaviIconFailedCount:Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

.field protected mDownloadNaviIconQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDownloadNaviIconTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;

.field protected mDownloadPromoPreviewFailedCount:Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

.field protected mDownloadPromoPreviewQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDownloadPromoPreviewTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;

.field protected mEmptyLand:Landroid/view/View;

.field protected mEmptyPort:Landroid/view/View;

.field protected mFeaturedItemViewsLand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/view/FeaturedItemView;",
            ">;"
        }
    .end annotation
.end field

.field protected mFeaturedItemViewsPort:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/view/FeaturedItemView;",
            ">;"
        }
    .end annotation
.end field

.field protected mFeaturedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/FeaturedItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mFeaturedViewsSetPositionLand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mFeaturedViewsSetPositionPort:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mGetFeaturedFailed:Z

.field protected mGetFeaturedTask:Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;

.field protected mGetNaviListFailed:Z

.field protected mGetNaviListTask:Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;

.field protected mGetPromoFailed:Z

.field protected mGetPromoTask:Lcom/htc/store/activity/landing/LandingNavigation$GetPromoTask;

.field protected mHeaderBar:Lcom/htc/widget/HeaderBar;

.field protected mInitializeAdapterTask:Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;

.field protected mIsNaviFetched:Z

.field protected mLVNaviLand:Lcom/htc/widget/HtcListView;

.field protected mLVNaviPort:Lcom/htc/store/module/view/HubListView;

.field protected mLastOrientation:I

.field protected mNaviAdapter:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;

.field protected mNaviItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPromoSwitcherClickListener:Landroid/view/View$OnClickListener;

.field protected mOrientation:I

.field protected mPromoFeaturedLand:Landroid/view/View;

.field protected mPromoFeaturedPort:Landroid/view/View;

.field protected mPromoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/PromoItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

.field protected mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

.field protected mRestHelper:Lcom/htc/store/module/rest/RestHelper;

.field protected mTabId:Ljava/lang/String;

.field protected mTabTitle:Ljava/lang/String;

.field protected mVLand:Landroid/view/View;

.field protected mVPort:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/htc/store/activity/BaseActivity;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    .line 65
    iput v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLastOrientation:I

    .line 83
    iput-boolean v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetPromoFailed:Z

    .line 84
    iput-boolean v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetFeaturedFailed:Z

    .line 85
    iput-boolean v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetNaviListFailed:Z

    .line 107
    iput-boolean v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mIsNaviFetched:Z

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    .line 2044
    new-instance v0, Lcom/htc/store/activity/landing/LandingNavigation$1;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/landing/LandingNavigation$1;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOnPromoSwitcherClickListener:Landroid/view/View$OnClickListener;

    .line 2198
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/store/activity/landing/LandingNavigation;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/store/activity/landing/LandingNavigation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->checkAndEnablePromoFeaturedPort()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/store/activity/landing/LandingNavigation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->checkAndEnablePromoFeaturedLand()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/store/activity/landing/LandingNavigation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/store/activity/landing/LandingNavigation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->showCommonErrorDialogToFinish()V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/htc/store/activity/landing/LandingNavigation;->clearDownloadQueue(Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/store/activity/landing/LandingNavigation;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadPromoPreviewTask(ZZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/htc/store/activity/landing/LandingNavigation;->reOrgnizeDownloadQueue(Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/store/activity/landing/LandingNavigation;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadPromoPreviewTask(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/module/view/PromoSwitcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/htc/store/activity/landing/LandingNavigation;->updatePromoSwitcher(Lcom/htc/store/module/view/PromoSwitcher;Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/htc/store/activity/landing/LandingNavigation;->deDownloadQueue(Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/store/activity/landing/LandingNavigation;)Lcom/htc/store/module/view/PromoSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getCurrentPromoView()Lcom/htc/store/module/view/PromoSwitcher;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/store/activity/landing/LandingNavigation;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadFeaturedIconTask(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getCurrentPromoFeatured()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/store/activity/landing/LandingNavigation;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getCurrentFeaturedViews()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/store/activity/landing/LandingNavigation;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getCurrentFeaturedViewsSetPositions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/store/activity/landing/LandingNavigation;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/store/activity/landing/LandingNavigation;->initFeaturedViews(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/store/activity/landing/LandingNavigation;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation;->updateFeaturedLayout(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/store/activity/landing/LandingNavigation;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadNaviIconTask(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/store/activity/landing/LandingNavigation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->showCommonErrorDialogToFinish()V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/util/ArrayList;JI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/store/activity/landing/LandingNavigation;->clearCache(Ljava/util/ArrayList;JI)V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/htc/store/activity/landing/LandingNavigation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->showNoNetworkDialog()V

    return-void
.end method

.method static synthetic access$6100(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6400(Lcom/htc/store/activity/landing/LandingNavigation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->showNoNetworkDialog()V

    return-void
.end method

.method static synthetic access$6600(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Lcom/htc/store/activity/landing/LandingNavigation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->showNoNetworkDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/store/activity/landing/LandingNavigation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method private checkAndEnablePromoFeaturedLand()V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoFeaturedLand:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoFeaturedLand:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoFeaturedLand:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoFeaturedLand:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private checkAndEnablePromoFeaturedPort()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 598
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v0}, Lcom/htc/store/module/view/HubListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v0, v2}, Lcom/htc/store/module/view/HubListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 601
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoFeaturedPort:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/store/module/view/HubListView;->addHeaderView(Landroid/view/View;)V

    .line 602
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v0, v1}, Lcom/htc/store/module/view/HubListView;->setPromoSwitcher(Lcom/htc/store/module/view/PromoSwitcher;)V

    .line 603
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviAdapter:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/store/module/view/HubListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviAdapter:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoFeaturedPort:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/store/module/view/HubListView;->removeHeaderView(Landroid/view/View;)Z

    .line 608
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v0, v2}, Lcom/htc/store/module/view/HubListView;->setPromoSwitcher(Lcom/htc/store/module/view/PromoSwitcher;)V

    .line 609
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviAdapter:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/store/module/view/HubListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private clearCache(Ljava/util/ArrayList;JI)V
    .locals 10
    .parameter
    .parameter "category"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;JI)V"
        }
    .end annotation

    .prologue
    .local p1, itemIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 823
    if-eqz p1, :cond_0

    .line 824
    const/4 v2, 0x0

    .line 825
    .local v2, path:Ljava/lang/String;
    packed-switch p4, :pswitch_data_0

    .line 852
    :pswitch_0
    sget-object v3, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "unknown type"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 856
    .end local v2           #path:Ljava/lang/String;
    :cond_0
    return-void

    .line 827
    .restart local v2       #path:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 828
    .local v1, id:Ljava/lang/String;
    invoke-static {p2, p3, v1}, Lcom/htc/store/util/StorageUtils;->getPromoPreviewFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 829
    invoke-static {v2}, Lcom/htc/store/util/StorageUtils;->removeFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 830
    sget-object v3, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "remove "

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    const-string v5, "successfully"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 835
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 836
    .restart local v1       #id:Ljava/lang/String;
    invoke-static {p2, p3, v1}, Lcom/htc/store/util/StorageUtils;->getFeaturedIconFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 837
    invoke-static {v2}, Lcom/htc/store/util/StorageUtils;->removeFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 838
    sget-object v3, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "remove "

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    const-string v5, "successfully"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 843
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 844
    .restart local v1       #id:Ljava/lang/String;
    invoke-static {p2, p3, v1}, Lcom/htc/store/util/StorageUtils;->getCategoryIconFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 845
    invoke-static {v2}, Lcom/htc/store/util/StorageUtils;->removeFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 846
    sget-object v3, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "remove "

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    const-string v5, "successfully"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 825
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private clearDownloadQueue(Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V
    .locals 0
    .parameter
    .parameter "downloadFailedCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;",
            "Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 876
    .local p1, downloadQueue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 877
    invoke-virtual {p2}, Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;->clear()V

    .line 878
    return-void
.end method

.method private clearFeaturedViewsOnClickListener(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/view/FeaturedItemView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 815
    .local p1, featuredItemViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/view/FeaturedItemView;>;"
    if-eqz p1, :cond_0

    .line 816
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/view/FeaturedItemView;

    .line 817
    .local v1, itemView:Lcom/htc/store/module/view/FeaturedItemView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/store/module/view/FeaturedItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 820
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #itemView:Lcom/htc/store/module/view/FeaturedItemView;
    :cond_0
    return-void
.end method

.method private deDownloadQueue(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 859
    .local p1, downloadQueue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 860
    return-void
.end method

.method private deDownloadQueue(Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V
    .locals 2
    .parameter
    .parameter "downloadFailedCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 863
    .local p1, downloadQueue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 864
    .local v0, position:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation;->deDownloadQueue(Ljava/util/ArrayList;)V

    .line 868
    return-void
.end method

.method private getCurrentFeaturedViews()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/view/FeaturedItemView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    const/4 v0, 0x0

    .line 658
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/view/FeaturedItemView;>;"
    iget v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 659
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItemViewsLand:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 660
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItemViewsLand:Ljava/util/ArrayList;

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItemViewsLand:Ljava/util/ArrayList;

    .line 670
    :goto_0
    return-object v0

    .line 664
    :cond_1
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItemViewsPort:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 665
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItemViewsPort:Ljava/util/ArrayList;

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItemViewsPort:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private getCurrentFeaturedViewsSetPositions()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 692
    const/4 v0, 0x0

    .line 694
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 695
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedViewsSetPositionLand:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 696
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedViewsSetPositionLand:Ljava/util/ArrayList;

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedViewsSetPositionLand:Ljava/util/ArrayList;

    .line 706
    :goto_0
    return-object v0

    .line 700
    :cond_1
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedViewsSetPositionPort:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 701
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedViewsSetPositionPort:Ljava/util/ArrayList;

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedViewsSetPositionPort:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private getCurrentPromoFeatured()Landroid/view/View;
    .locals 3

    .prologue
    .line 626
    const/4 v0, 0x0

    .line 627
    .local v0, result:Landroid/view/View;
    iget v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 628
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoFeaturedLand:Landroid/view/View;

    .line 632
    :goto_0
    return-object v0

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoFeaturedPort:Landroid/view/View;

    goto :goto_0
.end method

.method private getCurrentPromoView()Lcom/htc/store/module/view/PromoSwitcher;
    .locals 3

    .prologue
    .line 646
    const/4 v0, 0x0

    .line 647
    .local v0, result:Lcom/htc/store/module/view/PromoSwitcher;
    iget v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 648
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    .line 652
    :goto_0
    return-object v0

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    goto :goto_0
.end method

.method private getPastFeaturedViews()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/view/FeaturedItemView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 674
    const/4 v0, 0x0

    .line 676
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/view/FeaturedItemView;>;"
    iget v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 677
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItemViewsPort:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 678
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItemViewsPort:Ljava/util/ArrayList;

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItemViewsPort:Ljava/util/ArrayList;

    .line 688
    :goto_0
    return-object v0

    .line 682
    :cond_1
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItemViewsLand:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 683
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItemViewsLand:Ljava/util/ArrayList;

    .line 685
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItemViewsLand:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private hideUninitializedFeaturedViews(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "parentView"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/view/FeaturedItemView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, featuredItemViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/view/FeaturedItemView;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 773
    sget-object v4, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "hide unnecessary featured views"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 775
    .local v0, amount:I
    if-lez v0, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f09

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 778
    .local v3, maxVisibleAmount:I
    if-ge v0, v3, :cond_1

    .line 780
    move v2, v0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 781
    new-instance v1, Lcom/htc/store/module/view/FeaturedItemView;

    invoke-direct {v1, p1, v2}, Lcom/htc/store/module/view/FeaturedItemView;-><init>(Landroid/view/View;I)V

    .line 782
    .local v1, featuredItemView:Lcom/htc/store/module/view/FeaturedItemView;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/htc/store/module/view/FeaturedItemView;->setLayoutVisibility(I)V

    .line 783
    sget-object v4, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "th featured is made invisible"

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 787
    .end local v1           #featuredItemView:Lcom/htc/store/module/view/FeaturedItemView;
    .end local v2           #i:I
    .end local v3           #maxVisibleAmount:I
    :cond_0
    sget-object v4, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "nothing to hide"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 789
    :cond_1
    return-void
.end method

.method private initFeaturedViews(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 18
    .parameter "parentView"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/view/FeaturedItemView;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 710
    .local p2, featuredItemViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/view/FeaturedItemView;>;"
    .local p3, featuredViewsSetPosition:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 711
    .local v8, featuredItemAmount:I
    const/4 v12, 0x4

    .line 712
    .local v12, maxFeaturedItemViewAmount:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 713
    .local v13, maxVisibleAmount:I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v15, oldFeaturedItemViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/view/FeaturedItemView;>;"
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 716
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 718
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 719
    if-le v8, v12, :cond_0

    .line 720
    move v8, v12

    .line 723
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 724
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->clear()V

    .line 727
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "max amount of featured item is "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ", the amount of featured item is "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 730
    .local v17, resources:Landroid/content/res/Resources;
    const v1, 0x7f020004

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 731
    .local v7, defaultIconDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    .line 732
    .local v11, item:Lcom/htc/store/module/vo/FeaturedItem;
    const/16 v16, 0x0

    .line 733
    .local v16, oldOnlineId:Ljava/lang/String;
    const/4 v14, 0x0

    .line 735
    .local v14, newOnlineId:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v12, :cond_6

    .line 736
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v10, :cond_4

    .line 737
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/view/FeaturedItemView;

    invoke-virtual {v1}, Lcom/htc/store/module/view/FeaturedItemView;->getOnlineItemId()Ljava/lang/String;

    move-result-object v16

    .line 742
    :goto_1
    new-instance v9, Lcom/htc/store/module/view/FeaturedItemView;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v10}, Lcom/htc/store/module/view/FeaturedItemView;-><init>(Landroid/view/View;I)V

    .line 743
    .local v9, featuredItemView:Lcom/htc/store/module/view/FeaturedItemView;
    if-ge v10, v8, :cond_5

    .line 744
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #item:Lcom/htc/store/module/vo/FeaturedItem;
    check-cast v11, Lcom/htc/store/module/vo/FeaturedItem;

    .line 745
    .restart local v11       #item:Lcom/htc/store/module/vo/FeaturedItem;
    invoke-virtual {v11}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v14

    .line 746
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "updating "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "th item, old id is "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v16, v2, v3

    const/4 v3, 0x4

    const-string v4, ", new id is "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v14, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 748
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 749
    :cond_1
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "th item is updated"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    invoke-virtual {v11}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineItemLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/htc/store/module/view/FeaturedItemView;->setLabel(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v9, v7}, Lcom/htc/store/module/view/FeaturedItemView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 752
    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lcom/htc/store/util/ImageUtils;->getFeaturedIconReflection(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/htc/store/module/view/FeaturedItemView;->setIconReflectionDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 753
    new-instance v1, Lcom/htc/store/activity/landing/LandingNavigation$OnFeaturedClickListener;

    invoke-virtual {v11}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/htc/store/module/vo/FeaturedItem;->getType()I

    move-result v4

    invoke-virtual {v11}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineActionTypeOnClick()I

    move-result v5

    invoke-virtual {v11}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineTriggerOnClick()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/htc/store/activity/landing/LandingNavigation$OnFeaturedClickListener;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v9, v1}, Lcom/htc/store/module/view/FeaturedItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    :cond_2
    invoke-virtual {v9, v14}, Lcom/htc/store/module/view/FeaturedItemView;->setOnlineItemId(Ljava/lang/String;)V

    .line 756
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/htc/store/module/view/FeaturedItemView;->setLayoutVisibility(I)V

    .line 765
    :goto_2
    if-lt v10, v13, :cond_3

    .line 766
    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Lcom/htc/store/module/view/FeaturedItemView;->setLayoutVisibility(I)V

    .line 735
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 739
    .end local v9           #featuredItemView:Lcom/htc/store/module/view/FeaturedItemView;
    :cond_4
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "skip "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "th comparison"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 759
    .restart local v9       #featuredItemView:Lcom/htc/store/module/view/FeaturedItemView;
    :cond_5
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "th item is invisible"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 760
    invoke-virtual {v9, v7}, Lcom/htc/store/module/view/FeaturedItemView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 761
    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lcom/htc/store/util/ImageUtils;->getFeaturedIconReflection(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/htc/store/module/view/FeaturedItemView;->setIconReflectionDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 762
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/htc/store/module/view/FeaturedItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    const/4 v1, 0x4

    invoke-virtual {v9, v1}, Lcom/htc/store/module/view/FeaturedItemView;->setLayoutVisibility(I)V

    goto :goto_2

    .line 769
    .end local v9           #featuredItemView:Lcom/htc/store/module/view/FeaturedItemView;
    :cond_6
    return-void
.end method

.method private initViewsLand()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 525
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mEmptyLand:Landroid/view/View;

    if-nez v6, :cond_0

    .line 526
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mVLand:Landroid/view/View;

    const v7, 0x1020004

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mEmptyLand:Landroid/view/View;

    .line 528
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mEmptyLand:Landroid/view/View;

    const v7, 0x7f0c0029

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    .line 529
    .local v5, progress:Landroid/widget/ProgressBar;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 530
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mEmptyLand:Landroid/view/View;

    const v7, 0x7f0c002a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 531
    .local v2, emptyText:Landroid/widget/TextView;
    const v6, 0x7f0a0069

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 532
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar(Z)V

    .line 535
    .end local v2           #emptyText:Landroid/widget/TextView;
    .end local v5           #progress:Landroid/widget/ProgressBar;
    :cond_0
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoFeaturedLand:Landroid/view/View;

    if-nez v6, :cond_1

    .line 536
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mVLand:Landroid/view/View;

    const v7, 0x7f0c0028

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoFeaturedLand:Landroid/view/View;

    .line 537
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoFeaturedLand:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 539
    :cond_1
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    if-eqz v6, :cond_2

    .line 541
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->checkAndEnablePromoFeaturedLand()V

    .line 543
    :cond_2
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    if-nez v6, :cond_3

    .line 544
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mVLand:Landroid/view/View;

    const v7, 0x7f0c005f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/store/module/view/PromoSwitcher;

    iput-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    .line 547
    :cond_3
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviLand:Lcom/htc/widget/HtcListView;

    if-nez v6, :cond_4

    .line 548
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mVLand:Landroid/view/View;

    const v7, 0x102000a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListView;

    iput-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviLand:Lcom/htc/widget/HtcListView;

    .line 549
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviLand:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcListView;->setTopRound(Landroid/graphics/drawable/Drawable;)V

    .line 551
    :cond_4
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviAdapter:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;

    if-eqz v6, :cond_5

    .line 552
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviLand:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    if-nez v6, :cond_5

    .line 553
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviLand:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviAdapter:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 556
    :cond_5
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItemViewsLand:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItemViewsLand:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 557
    :cond_6
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoFeaturedLand:Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getCurrentFeaturedViews()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getCurrentFeaturedViewsSetPositions()Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/htc/store/activity/landing/LandingNavigation;->initFeaturedViews(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 560
    :cond_7
    const/4 v0, 0x0

    .line 561
    .local v0, amount:I
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    .line 562
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 564
    :cond_8
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_9

    .line 565
    invoke-direct {p0, v3}, Lcom/htc/store/activity/landing/LandingNavigation;->updateFeaturedLayout(I)V

    .line 564
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 568
    :cond_9
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v6}, Lcom/htc/store/module/view/PromoSwitcher;->getOnPromoClickListener()Landroid/view/View$OnClickListener;

    move-result-object v6

    if-nez v6, :cond_a

    .line 569
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOnPromoSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/store/module/view/PromoSwitcher;->setOnPromoClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    :cond_a
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v6, :cond_c

    .line 573
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v6}, Lcom/htc/store/module/view/PromoSwitcher;->pause()V

    .line 574
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v6}, Lcom/htc/store/module/view/PromoSwitcher;->pause()V

    .line 575
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v7}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItems()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/store/module/view/PromoSwitcher;->addPromoItems(Ljava/util/ArrayList;)V

    .line 576
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v6}, Lcom/htc/store/module/view/PromoSwitcher;->getCurrentPromoitem()Lcom/htc/store/module/vo/PromoItem;

    move-result-object v4

    .line 577
    .local v4, item:Lcom/htc/store/module/vo/PromoItem;
    if-eqz v4, :cond_b

    .line 578
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v4}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/store/module/view/PromoSwitcher;->setSelection(Ljava/lang/String;)V

    .line 581
    :cond_b
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v6, :cond_c

    .line 582
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 583
    .local v1, amountPromo:I
    if-lez v1, :cond_c

    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v6}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItemSize()I

    move-result v6

    if-ne v6, v1, :cond_c

    .line 584
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar()V

    .line 588
    .end local v1           #amountPromo:I
    .end local v4           #item:Lcom/htc/store/module/vo/PromoItem;
    :cond_c
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v6}, Lcom/htc/store/module/view/PromoSwitcher;->resume()V

    .line 590
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviLand:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getOnItemClickListener()Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    move-result-object v6

    if-nez v6, :cond_d

    .line 591
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviLand:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviAdapter:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 593
    :cond_d
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviLand:Lcom/htc/widget/HtcListView;

    new-instance v7, Lcom/htc/store/activity/landing/LandingNavigation$NaviScrollListener;

    invoke-direct {v7, p0, v9}, Lcom/htc/store/activity/landing/LandingNavigation$NaviScrollListener;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/activity/landing/LandingNavigation$1;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 594
    return-void
.end method

.method private initViewsPort()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 460
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mEmptyPort:Landroid/view/View;

    if-nez v6, :cond_0

    .line 461
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mVPort:Landroid/view/View;

    const v7, 0x1020004

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mEmptyPort:Landroid/view/View;

    .line 463
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mEmptyPort:Landroid/view/View;

    const v7, 0x7f0c0029

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    .line 464
    .local v5, progress:Landroid/widget/ProgressBar;
    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 465
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mEmptyPort:Landroid/view/View;

    const v7, 0x7f0c002a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 466
    .local v2, emptyText:Landroid/widget/TextView;
    const v6, 0x7f0a0069

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 467
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar(Z)V

    .line 470
    .end local v2           #emptyText:Landroid/widget/TextView;
    .end local v5           #progress:Landroid/widget/ProgressBar;
    :cond_0
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    if-nez v6, :cond_1

    .line 471
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mVPort:Landroid/view/View;

    const v7, 0x102000a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/store/module/view/HubListView;

    iput-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    .line 473
    :cond_1
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v6}, Lcom/htc/store/module/view/HubListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    if-nez v6, :cond_3

    .line 474
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030022

    invoke-virtual {v6, v7, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoFeaturedPort:Landroid/view/View;

    .line 475
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoFeaturedPort:Landroid/view/View;

    const v7, 0x7f0c005f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/store/module/view/PromoSwitcher;

    iput-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    .line 477
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviLand:Lcom/htc/widget/HtcListView;

    if-eqz v6, :cond_2

    .line 479
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->checkAndEnablePromoFeaturedPort()V

    .line 482
    :cond_2
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviAdapter:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/store/module/view/HubListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 484
    :cond_3
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItemViewsPort:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItemViewsPort:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 485
    :cond_4
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoFeaturedPort:Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getCurrentFeaturedViews()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getCurrentFeaturedViewsSetPositions()Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/htc/store/activity/landing/LandingNavigation;->initFeaturedViews(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 488
    :cond_5
    const/4 v0, 0x0

    .line 489
    .local v0, amount:I
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 490
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 492
    :cond_6
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_7

    .line 493
    invoke-direct {p0, v3}, Lcom/htc/store/activity/landing/LandingNavigation;->updateFeaturedLayout(I)V

    .line 492
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 496
    :cond_7
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v6}, Lcom/htc/store/module/view/PromoSwitcher;->getOnPromoClickListener()Landroid/view/View$OnClickListener;

    move-result-object v6

    if-nez v6, :cond_8

    .line 497
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOnPromoSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/store/module/view/PromoSwitcher;->setOnPromoClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    :cond_8
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v6, :cond_a

    .line 501
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v6}, Lcom/htc/store/module/view/PromoSwitcher;->pause()V

    .line 502
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v6}, Lcom/htc/store/module/view/PromoSwitcher;->pause()V

    .line 503
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v7}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItems()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/store/module/view/PromoSwitcher;->addPromoItems(Ljava/util/ArrayList;)V

    .line 504
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v6}, Lcom/htc/store/module/view/PromoSwitcher;->getCurrentPromoitem()Lcom/htc/store/module/vo/PromoItem;

    move-result-object v4

    .line 505
    .local v4, item:Lcom/htc/store/module/vo/PromoItem;
    if-eqz v4, :cond_9

    .line 506
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v4}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/store/module/view/PromoSwitcher;->setSelection(Ljava/lang/String;)V

    .line 508
    :cond_9
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v6, :cond_a

    .line 509
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 510
    .local v1, amountPromo:I
    if-lez v1, :cond_a

    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v6}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItemSize()I

    move-result v6

    if-ne v6, v1, :cond_a

    .line 511
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar()V

    .line 515
    .end local v1           #amountPromo:I
    .end local v4           #item:Lcom/htc/store/module/vo/PromoItem;
    :cond_a
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v6}, Lcom/htc/store/module/view/PromoSwitcher;->resume()V

    .line 517
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v6}, Lcom/htc/store/module/view/HubListView;->getOnItemClickListener()Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    move-result-object v6

    if-nez v6, :cond_b

    .line 518
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviAdapter:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/store/module/view/HubListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 521
    :cond_b
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    new-instance v7, Lcom/htc/store/activity/landing/LandingNavigation$NaviScrollListener;

    invoke-direct {v7, p0, v9}, Lcom/htc/store/activity/landing/LandingNavigation$NaviScrollListener;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/activity/landing/LandingNavigation$1;)V

    invoke-virtual {v6, v7}, Lcom/htc/store/module/view/HubListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 522
    return-void
.end method

.method private isDownloadTaskRunning()Z
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->isTaskRunning(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->isTaskRunning(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->isTaskRunning(Landroid/os/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGetTaskRunning()Z
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mCheckContentTask:Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->isTaskRunning(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetPromoTask:Lcom/htc/store/activity/landing/LandingNavigation$GetPromoTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->isTaskRunning(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetFeaturedTask:Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->isTaskRunning(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetNaviListTask:Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->isTaskRunning(Landroid/os/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTaskRunning(Landroid/os/AsyncTask;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)Z"
        }
    .end annotation

    .prologue
    .line 997
    .local p1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    const/4 v0, 0x0

    .line 998
    .local v0, result:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 999
    const/4 v0, 0x1

    .line 1001
    :cond_0
    return v0
.end method

.method private reOrgnizeDownloadQueue(Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V
    .locals 7
    .parameter
    .parameter "downloadFailedCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, downloadQueue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 885
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 886
    .local v0, downloadLength:I
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 887
    .local v1, position:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 889
    invoke-direct {p0, p1, p2}, Lcom/htc/store/activity/landing/LandingNavigation;->deDownloadQueue(Ljava/util/ArrayList;Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;)V

    .line 890
    sget-object v2, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, " is dropped"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    invoke-virtual {p2, v1}, Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;->put(I)V

    .line 893
    if-le v0, v6, :cond_0

    .line 894
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private showLoadingPage(Z)V
    .locals 3
    .parameter "isEnabled"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 372
    if-eqz p1, :cond_2

    .line 373
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mEmptyPort:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mEmptyPort:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mEmptyLand:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mEmptyLand:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    :cond_1
    :goto_0
    return-void

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mEmptyPort:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 381
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mEmptyPort:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 383
    :cond_3
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mEmptyLand:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mEmptyLand:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private startDownloadFeaturedIconTask(Z)V
    .locals 7
    .parameter "isClearCache"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 928
    iget-boolean v1, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    if-nez v1, :cond_3

    .line 929
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;

    invoke-direct {p0, v1}, Lcom/htc/store/activity/landing/LandingNavigation;->stopRunningAsyncTask(Landroid/os/AsyncTask;)V

    .line 930
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 931
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "featured queue size is "

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 932
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 933
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 934
    .local v0, position:I
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 935
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "clear featured cache? "

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 936
    new-instance v2, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/vo/FeaturedItem;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/module/vo/FeaturedItem;IZ)V

    iput-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;

    .line 937
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 949
    .end local v0           #position:I
    :cond_0
    :goto_0
    return-void

    .line 939
    .restart local v0       #position:I
    :cond_1
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "startDownloadFeaturedIconTask : queue and data inconsistent"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 940
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar()V

    goto :goto_0

    .line 943
    .end local v0           #position:I
    :cond_2
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar()V

    goto :goto_0

    .line 947
    :cond_3
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "paused, and do nothing"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private startDownloadNaviIconTask(Z)V
    .locals 6
    .parameter "isClearCache"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 952
    iget-boolean v1, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    if-nez v1, :cond_2

    .line 953
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;

    invoke-direct {p0, v1}, Lcom/htc/store/activity/landing/LandingNavigation;->stopRunningAsyncTask(Landroid/os/AsyncTask;)V

    .line 954
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 955
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 956
    .local v0, position:I
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 957
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "clear navi cache? "

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 958
    new-instance v2, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/vo/CategoryItem;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/module/vo/CategoryItem;IZ)V

    iput-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;

    .line 959
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 970
    .end local v0           #position:I
    :goto_0
    return-void

    .line 961
    .restart local v0       #position:I
    :cond_0
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "startDownloadNaviIconTask : queue and data inconsistent"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 962
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar()V

    goto :goto_0

    .line 965
    .end local v0           #position:I
    :cond_1
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar()V

    goto :goto_0

    .line 968
    :cond_2
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "paused, and do nothing"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private startDownloadPromoPreviewTask(Z)V
    .locals 1
    .parameter "isClearCache"

    .prologue
    .line 924
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->startDownloadPromoPreviewTask(ZZ)V

    .line 925
    return-void
.end method

.method private startDownloadPromoPreviewTask(ZZ)V
    .locals 7
    .parameter "isClearCache"
    .parameter "isResetData"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 901
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    if-nez v0, :cond_2

    .line 902
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->stopRunningAsyncTask(Landroid/os/AsyncTask;)V

    .line 903
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 905
    .local v3, position:I
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 906
    sget-object v0, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "target position is "

    aput-object v2, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 907
    sget-object v0, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "clear promo cache? "

    aput-object v2, v1, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 908
    sget-object v0, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "reset promo data? "

    aput-object v2, v1, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 909
    new-instance v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/store/module/vo/PromoItem;

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/module/vo/PromoItem;IZZ)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;

    .line 910
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 921
    .end local v3           #position:I
    :goto_0
    return-void

    .line 912
    .restart local v3       #position:I
    :cond_0
    sget-object v0, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "startDownloadPromoPreviewTask : queue and data inconsistent"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 913
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar()V

    goto :goto_0

    .line 916
    .end local v3           #position:I
    :cond_1
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar()V

    goto :goto_0

    .line 919
    :cond_2
    sget-object v0, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "paused, and do nothing"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private stopAllDownloadTask()V
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->stopRunningAsyncTask(Landroid/os/AsyncTask;)V

    .line 990
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->stopRunningAsyncTask(Landroid/os/AsyncTask;)V

    .line 991
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->stopRunningAsyncTask(Landroid/os/AsyncTask;)V

    .line 992
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->cleareMessage()V

    .line 993
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar(Z)V

    .line 994
    return-void
.end method

.method private stopAllGetTask()V
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mInitializeAdapterTask:Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->stopRunningAsyncTask(Landroid/os/AsyncTask;)V

    .line 982
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mCheckContentTask:Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->stopRunningAsyncTask(Landroid/os/AsyncTask;)V

    .line 983
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetPromoTask:Lcom/htc/store/activity/landing/LandingNavigation$GetPromoTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->stopRunningAsyncTask(Landroid/os/AsyncTask;)V

    .line 984
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetFeaturedTask:Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->stopRunningAsyncTask(Landroid/os/AsyncTask;)V

    .line 985
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetNaviListTask:Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->stopRunningAsyncTask(Landroid/os/AsyncTask;)V

    .line 986
    return-void
.end method

.method private stopRotatePromoView()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v0}, Lcom/htc/store/module/view/PromoSwitcher;->pause()V

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v0}, Lcom/htc/store/module/view/PromoSwitcher;->pause()V

    .line 643
    :cond_1
    return-void
.end method

.method private stopRunningAsyncTask(Landroid/os/AsyncTask;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 1005
    .local p1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    if-eqz p1, :cond_0

    .line 1006
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1008
    :cond_0
    return-void
.end method

.method private updateFeaturedLayout(I)V
    .locals 18
    .parameter "position"

    .prologue
    .line 792
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "update "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, " featured view"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 793
    invoke-direct/range {p0 .. p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getCurrentFeaturedViews()Ljava/util/ArrayList;

    move-result-object v13

    .line 794
    .local v13, featuredItemViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/view/FeaturedItemView;>;"
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, p1

    if-le v1, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, p1

    if-le v1, v0, :cond_1

    .line 795
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/store/module/vo/FeaturedItem;

    .line 796
    .local v15, item:Lcom/htc/store/module/vo/FeaturedItem;
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/store/module/view/FeaturedItemView;

    .line 797
    .local v16, itemView:Lcom/htc/store/module/view/FeaturedItemView;
    invoke-virtual {v15}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineItemLabel()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/store/module/view/FeaturedItemView;->setLabel(Ljava/lang/String;)V

    .line 798
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 799
    .local v17, res:Landroid/content/res/Resources;
    const v1, 0x7f080008

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 800
    .local v5, width:I
    const v1, 0x7f080009

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 801
    .local v6, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    invoke-virtual {v15}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v1 .. v6}, Lcom/htc/store/util/ImageUtils;->getFeaturedIcon(Landroid/content/Context;JLjava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 802
    .local v14, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_0

    .line 803
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/htc/store/module/view/FeaturedItemView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 804
    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lcom/htc/store/util/ImageUtils;->getFeaturedIconReflection(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/store/module/view/FeaturedItemView;->setIconReflectionDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 805
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "icon is set"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 807
    :cond_0
    invoke-virtual {v15}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/store/module/view/FeaturedItemView;->setOnlineItemId(Ljava/lang/String;)V

    .line 808
    new-instance v7, Lcom/htc/store/activity/landing/LandingNavigation$OnFeaturedClickListener;

    invoke-virtual {v15}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15}, Lcom/htc/store/module/vo/FeaturedItem;->getType()I

    move-result v10

    invoke-virtual {v15}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineActionTypeOnClick()I

    move-result v11

    invoke-virtual {v15}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineTriggerOnClick()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/htc/store/activity/landing/LandingNavigation$OnFeaturedClickListener;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/htc/store/module/view/FeaturedItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 812
    .end local v5           #width:I
    .end local v6           #height:I
    .end local v14           #icon:Landroid/graphics/drawable/Drawable;
    .end local v15           #item:Lcom/htc/store/module/vo/FeaturedItem;
    .end local v16           #itemView:Lcom/htc/store/module/view/FeaturedItemView;
    .end local v17           #res:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 810
    :cond_1
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "updateFeaturedLayout : queue and data inconsistent"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateLandscapeLayout()V
    .locals 2

    .prologue
    .line 452
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mVLand:Landroid/view/View;

    if-nez v1, :cond_0

    .line 453
    const v1, 0x7f0c0024

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/landing/LandingNavigation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 454
    .local v0, vs:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mVLand:Landroid/view/View;

    .line 456
    .end local v0           #vs:Landroid/view/ViewStub;
    :cond_0
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->initViewsLand()V

    .line 457
    return-void
.end method

.method private updateMenuIsRefreshing(Z)V
    .locals 0
    .parameter "isRefreshing"

    .prologue
    .line 399
    return-void
.end method

.method private updatePortraitLayout()V
    .locals 2

    .prologue
    .line 444
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mVPort:Landroid/view/View;

    if-nez v1, :cond_0

    .line 445
    const v1, 0x7f0c0022

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/landing/LandingNavigation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 446
    .local v0, vs:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mVPort:Landroid/view/View;

    .line 448
    .end local v0           #vs:Landroid/view/ViewStub;
    :cond_0
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->initViewsPort()V

    .line 449
    return-void
.end method

.method private updateProgressBar()V
    .locals 1

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->isGetTaskRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->isDownloadTaskRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar(Z)V

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar(Z)V

    goto :goto_0
.end method

.method private updateProgressBar(Z)V
    .locals 3
    .parameter "isProgressing"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 410
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    .line 412
    invoke-direct {p0, v1}, Lcom/htc/store/activity/landing/LandingNavigation;->updateMenuIsRefreshing(Z)V

    .line 413
    iget-boolean v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mIsNaviFetched:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviAdapter:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviAdapter:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 414
    :cond_0
    invoke-direct {p0, v1}, Lcom/htc/store/activity/landing/LandingNavigation;->showLoadingPage(Z)V

    .line 423
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/store/activity/landing/LandingNavigation;->showLoadingPage(Z)V

    goto :goto_0

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    .line 420
    invoke-direct {p0, v2}, Lcom/htc/store/activity/landing/LandingNavigation;->updateMenuIsRefreshing(Z)V

    .line 421
    invoke-direct {p0, v2}, Lcom/htc/store/activity/landing/LandingNavigation;->showLoadingPage(Z)V

    goto :goto_0
.end method

.method private updatePromoSwitcher(Lcom/htc/store/module/view/PromoSwitcher;Z)V
    .locals 7
    .parameter "switcher"
    .parameter "isInitializationEvent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1398
    if-eqz p1, :cond_1

    .line 1399
    if-eqz p2, :cond_0

    .line 1400
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "clear promos"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1401
    invoke-virtual {p1, v6}, Lcom/htc/store/module/view/PromoSwitcher;->removePromoItems(Z)V

    .line 1404
    :cond_0
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1405
    .local v0, position:I
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "position is "

    aput-object v3, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, ", promot items size is "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, ", added promos size is "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p1}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItemSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1406
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 1407
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/vo/PromoItem;

    invoke-virtual {p1, v1}, Lcom/htc/store/module/view/PromoSwitcher;->addPromoItem(Lcom/htc/store/module/vo/PromoItem;)V

    .line 1412
    .end local v0           #position:I
    :cond_1
    :goto_0
    return-void

    .line 1409
    .restart local v0       #position:I
    :cond_2
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MESSAGE_DOWNLOAD_PROMO_PREVIEW_TASK_IS_INITIALIZED : queue and data inconsistent"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method abstract getCategoryId()J
.end method

.method protected initMembers()V
    .locals 1

    .prologue
    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    .line 362
    new-instance v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewQueue:Ljava/util/ArrayList;

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconQueue:Ljava/util/ArrayList;

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconQueue:Ljava/util/ArrayList;

    .line 366
    new-instance v0, Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadPromoPreviewFailedCount:Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

    .line 367
    new-instance v0, Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadFeaturedIconFailedCount:Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

    .line 368
    new-instance v0, Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconFailedCount:Lcom/htc/store/activity/landing/LandingNavigation$FailedTaskCountHashtable;

    .line 369
    return-void
.end method

.method protected initViews()V
    .locals 2

    .prologue
    .line 351
    const v1, 0x7f0c0020

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/landing/LandingNavigation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBar;

    iput-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 352
    const v1, 0x7f0c0021

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/landing/LandingNavigation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    .line 353
    .local v0, title:Lcom/htc/widget/HeaderBarText;
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mTabTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 354
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 355
    return-void
.end method

.method protected isOkToSendMessage()Z
    .locals 1

    .prologue
    .line 1011
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/htc/store/activity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 170
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    .line 171
    iget v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLastOrientation:I

    iget v2, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    if-eq v1, v2, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getCurrentFeaturedViews()Ljava/util/ArrayList;

    move-result-object v0

    .line 173
    .local v0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/view/FeaturedItemView;>;"
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 176
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/landing/LandingNavigation;->updateLayoutByOrientation(I)V

    .line 177
    iget v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    iput v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLastOrientation:I

    .line 179
    .end local v0           #views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/view/FeaturedItemView;>;"
    :cond_1
    sget-object v1, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onConfigurationChanged() : current orientation is "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLastOrientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/store/activity/BaseActivity;->mHasToSetBackground:Z

    .line 120
    invoke-super {p0, p1}, Lcom/htc/store/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/landing/LandingNavigation;->setContentView(I)V

    .line 122
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 123
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tab_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mTabId:Ljava/lang/String;

    .line 124
    const-string v1, "tab_title_resource"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mTabTitle:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getCategoryId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    .line 126
    new-instance v1, Lcom/htc/store/provider/AccessHelper;

    invoke-direct {v1, p0}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 127
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->initMembers()V

    .line 128
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->initViews()V

    .line 129
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 233
    const v0, 0x7f0a006f

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 235
    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208032f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 237
    return v2
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v1}, Lcom/htc/store/module/rest/RestHelper;->destroy()V

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v1}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->cleareMessage()V

    .line 197
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v1}, Lcom/htc/store/module/view/PromoSwitcher;->destroy()V

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    if-eqz v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v1, v2}, Lcom/htc/store/module/view/HubListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 202
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviPort:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v1, v2}, Lcom/htc/store/module/view/HubListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v1, :cond_3

    .line 205
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v1}, Lcom/htc/store/module/view/PromoSwitcher;->destroy()V

    .line 207
    :cond_3
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviLand:Lcom/htc/widget/HtcListView;

    if-eqz v1, :cond_4

    .line 208
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviLand:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 209
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLVNaviLand:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 212
    :cond_4
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviAdapter:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;

    if-eqz v1, :cond_5

    .line 213
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviAdapter:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;

    invoke-virtual {v1}, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 214
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_5

    .line 215
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 219
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_5
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItemViewsPort:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/htc/store/activity/landing/LandingNavigation;->clearFeaturedViewsOnClickListener(Ljava/util/ArrayList;)V

    .line 220
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItemViewsLand:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/htc/store/activity/landing/LandingNavigation;->clearFeaturedViewsOnClickListener(Ljava/util/ArrayList;)V

    .line 222
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onDestroy()V

    .line 223
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 258
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 259
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 275
    :goto_0
    return v4

    .line 261
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0a006c

    invoke-virtual {p0, v2}, Lcom/htc/store/activity/landing/LandingNavigation;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {p0, v4, v4}, Lcom/htc/store/activity/landing/LandingNavigation;->retrieveInfo(ZZ)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->stopAllGetTask()V

    .line 265
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->stopAllDownloadTask()V

    goto :goto_0

    .line 269
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/htc/store/activity/setting/SettingMain;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/landing/LandingNavigation;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 272
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/store/activity/landing/LandingTab;

    invoke-virtual {v1}, Lcom/htc/store/activity/landing/LandingTab;->enterEditTab()V

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->stopRotatePromoView()V

    .line 185
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onPause()V

    .line 186
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onResume()V

    .line 135
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mFirstCreate:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->retrieveInfo(Z)V

    .line 137
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mFirstCreate:Z

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    .line 140
    iget v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLastOrientation:I

    iget v3, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    if-eq v0, v3, :cond_3

    .line 141
    iget v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->updateLayoutByOrientation(I)V

    .line 142
    iget v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    iput v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mLastOrientation:I

    .line 147
    :goto_1
    sget-object v0, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "onResume() : current orientation is "

    aput-object v4, v3, v2

    iget v4, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-boolean v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetNaviListFailed:Z

    if-eqz v0, :cond_4

    .line 150
    iput-boolean v2, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetNaviListFailed:Z

    .line 151
    sget-object v0, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "get navi failed, and no navi items, close it"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->showCommonErrorDialogToFinish()V

    .line 162
    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mFirstCreate:Z

    if-eqz v0, :cond_1

    .line 163
    iput-boolean v2, p0, Lcom/htc/store/activity/BaseActivity;->mFirstCreate:Z

    .line 165
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 135
    goto :goto_0

    .line 144
    :cond_3
    sget-object v0, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "the same orientation, dont have to update layout"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 153
    :cond_4
    iget-boolean v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetPromoFailed:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetFeaturedFailed:Z

    if-eqz v0, :cond_0

    .line 154
    :cond_5
    iput-boolean v2, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetPromoFailed:Z

    .line 155
    iput-boolean v2, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetFeaturedFailed:Z

    .line 156
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    :cond_6
    sget-object v0, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "get promo/featured failed, and no navi items, close it"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->showCommonErrorDialogToFinish()V

    goto :goto_2
.end method

.method protected retrieveInfo(Z)V
    .locals 1
    .parameter "isResumed"

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/store/activity/landing/LandingNavigation;->retrieveInfo(ZZ)V

    .line 283
    return-void
.end method

.method protected retrieveInfo(ZZ)V
    .locals 7
    .parameter "isResumed"
    .parameter "isForceUpdate"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 294
    if-nez p2, :cond_0

    if-nez p1, :cond_3

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    sget-object v0, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "start retrieveInfo"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    iput-boolean v5, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mIsNaviFetched:Z

    .line 298
    new-instance v0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;ZZ)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mInitializeAdapterTask:Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;

    .line 299
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mInitializeAdapterTask:Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 300
    invoke-direct {p0, v6}, Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar(Z)V

    .line 311
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    sget-object v0, Lcom/htc/store/activity/landing/LandingNavigation;->TAG:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Network is not available."

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->showNoNetworkDialog()V

    goto :goto_0

    .line 305
    :cond_3
    if-eqz p1, :cond_1

    .line 306
    new-instance v0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/activity/landing/LandingNavigation$1;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mCheckContentTask:Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;

    .line 307
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mCheckContentTask:Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mTabId:Ljava/lang/String;

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected updateLayoutByOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 426
    iput p1, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    .line 427
    iget v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 428
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mVPort:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mVPort:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 431
    :cond_0
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->updateLandscapeLayout()V

    .line 432
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mVLand:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 441
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mVLand:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mVLand:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 438
    :cond_2
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->updatePortraitLayout()V

    .line 439
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation;->mVPort:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
