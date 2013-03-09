.class public Lcom/htc/store/activity/list/ListCategory;
.super Lcom/htc/store/activity/BaseActivity;
.source "ListCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;,
        Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;,
        Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;,
        Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;,
        Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;,
        Lcom/htc/store/activity/list/ListCategory$GetPromoTask;,
        Lcom/htc/store/activity/list/ListCategory$CheckContentTask;,
        Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;,
        Lcom/htc/store/activity/list/ListCategory$OnFeaturedClickListener;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL:I = -0x1

.field private static final ACTION_GET_FEATURED:I = 0x5

.field private static final ACTION_GET_PROMO:I = 0x4

.field private static final ACTION_GET_SUBCATEGOY_LIST:I = 0x6

.field private static final ACTION_NONE:I = 0x0

.field private static final ACTION_SHOW_EMPTY:I = 0x2

.field private static final ACTION_SHOW_ERROR:I = 0x3

.field private static final ACTION_SHOW_LIST:I = 0x1

.field private static final DOWNLOAD_ICON_TASK_COUNT:I = 0x3

.field protected static final PAGE_TYPE_CATEGORY:I = 0x1

.field protected static final PAGE_TYPE_SUBCATEGORY:I = 0x2

.field protected static final PAGE_TYPE_UNKNOWN:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field protected mActionOnResume:I

.field protected mAdapter:Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;

.field protected mAllFeaturedImageRetrieved:Z

.field protected mAllPromoImageRetrieved:Z

.field protected mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

.field protected mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

.field protected mCheckContentTask:Lcom/htc/store/activity/list/ListCategory$CheckContentTask;

.field protected mDownloadFeaturedImageTask:Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;

.field protected mDownloadPromoImageTask:Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;

.field protected mEmpty:Landroid/view/View;

.field protected mEmptyProgress:Landroid/widget/ProgressBar;

.field protected mEmptyText:Landroid/widget/TextView;

.field protected mExtraFeaturedItemViewsLand:[Lcom/htc/store/module/view/FeaturedItemView;

.field protected mFeaturedItemViewsLand:[Lcom/htc/store/module/view/FeaturedItemView;

.field protected mFeaturedItemViewsPort:[Lcom/htc/store/module/view/FeaturedItemView;

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

.field protected mGetFeaturedTask:Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;

.field protected mGetPromoTask:Lcom/htc/store/activity/list/ListCategory$GetPromoTask;

.field protected mGetSubcategoryListTask:Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;

.field protected mHasSetFeaturedItemViewsLand:Z

.field protected mHasSetFeaturedItemViewsPort:Z

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

.field protected mIsViewStubInflated:Z

.field protected mList:Lcom/htc/store/module/view/HubListView;

.field protected mMargin:Landroid/view/View;

.field private mOnPromoSwitcherClickListener:Landroid/view/View$OnClickListener;

.field private mOnRefreshClickListener:Landroid/view/View$OnClickListener;

.field protected mOrientation:I

.field protected mPageType:I

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

.field protected mRefreshMenuItem:Landroid/view/MenuItem;

.field protected mRestHelper:Lcom/htc/store/module/rest/RestHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/htc/store/activity/list/ListCategory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/list/ListCategory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/htc/store/activity/BaseActivity;-><init>()V

    .line 93
    iput-boolean v0, p0, Lcom/htc/store/activity/list/ListCategory;->mIsOperator:Z

    .line 94
    iput-boolean v0, p0, Lcom/htc/store/activity/list/ListCategory;->mIsViewStubInflated:Z

    .line 95
    iput-boolean v0, p0, Lcom/htc/store/activity/list/ListCategory;->mAllPromoImageRetrieved:Z

    .line 96
    iput-boolean v0, p0, Lcom/htc/store/activity/list/ListCategory;->mAllFeaturedImageRetrieved:Z

    .line 97
    iput-boolean v0, p0, Lcom/htc/store/activity/list/ListCategory;->mHasSetFeaturedItemViewsPort:Z

    .line 98
    iput-boolean v0, p0, Lcom/htc/store/activity/list/ListCategory;->mHasSetFeaturedItemViewsLand:Z

    .line 99
    iput-boolean v0, p0, Lcom/htc/store/activity/list/ListCategory;->mIsUserCancelled:Z

    .line 100
    iput v0, p0, Lcom/htc/store/activity/list/ListCategory;->mActionOnResume:I

    .line 103
    iput v0, p0, Lcom/htc/store/activity/list/ListCategory;->mPageType:I

    .line 713
    new-instance v0, Lcom/htc/store/activity/list/ListCategory$1;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/list/ListCategory$1;-><init>(Lcom/htc/store/activity/list/ListCategory;)V

    iput-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mOnRefreshClickListener:Landroid/view/View$OnClickListener;

    .line 727
    new-instance v0, Lcom/htc/store/activity/list/ListCategory$2;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/list/ListCategory$2;-><init>(Lcom/htc/store/activity/list/ListCategory;)V

    iput-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mOnPromoSwitcherClickListener:Landroid/view/View$OnClickListener;

    .line 1558
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/store/activity/list/ListCategory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->showNoNetworkDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/store/activity/list/ListCategory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->showNoNetworkDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/store/activity/list/ListCategory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->showNoNetworkDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/store/activity/list/ListCategory;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/htc/store/activity/list/ListCategory;->prepareDownloadCategoryIconTask(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/store/activity/list/ListCategory;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/store/activity/list/ListCategory;->initPromoFeaturedViews(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/store/activity/list/ListCategory;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/store/activity/list/ListCategory;->doAction(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/store/activity/list/ListCategory;->updateProgressBarAndMenuItem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/htc/store/activity/list/ListCategory;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/store/activity/list/ListCategory;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/store/activity/list/ListCategory;->prepareDownloadCategoryIconTask(JZ)V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/store/activity/list/ListCategory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/store/activity/list/ListCategory;->doRefresh()V

    return-void
.end method

.method static synthetic access$5000(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/htc/store/activity/list/ListCategory;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/store/activity/list/ListCategory;->updateProgressBarAndMenuItem(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/htc/store/activity/list/ListCategory;)Lcom/htc/store/module/PreferenceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/store/activity/list/ListCategory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->showNoNetworkDialog()V

    return-void
.end method

.method static synthetic access$6000(Lcom/htc/store/activity/list/ListCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private doAction(I)V
    .locals 6
    .parameter "action"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 586
    sget-object v0, Lcom/htc/store/activity/list/ListCategory;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "doAction: "

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    packed-switch p1, :pswitch_data_0

    .line 622
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 589
    :pswitch_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v0}, Lcom/htc/store/module/view/HubListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 590
    invoke-direct {p0, v3, v3}, Lcom/htc/store/activity/list/ListCategory;->setListVisibility(ZZ)V

    goto :goto_0

    .line 595
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/store/activity/list/ListCategory;->setAdapter()V

    .line 596
    invoke-direct {p0, v4, v3}, Lcom/htc/store/activity/list/ListCategory;->setListVisibility(ZZ)V

    goto :goto_0

    .line 600
    :pswitch_3
    invoke-direct {p0, v3, v3}, Lcom/htc/store/activity/list/ListCategory;->setListVisibility(ZZ)V

    goto :goto_0

    .line 604
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->showCommonErrorDialogToFinish()V

    goto :goto_0

    .line 608
    :pswitch_5
    new-instance v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;

    invoke-direct {v0, p0, v5}, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;-><init>(Lcom/htc/store/activity/list/ListCategory;Lcom/htc/store/activity/list/ListCategory$1;)V

    iput-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mGetPromoTask:Lcom/htc/store/activity/list/ListCategory$GetPromoTask;

    .line 609
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mGetPromoTask:Lcom/htc/store/activity/list/ListCategory$GetPromoTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 613
    :pswitch_6
    new-instance v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;-><init>(Lcom/htc/store/activity/list/ListCategory;)V

    iput-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mGetFeaturedTask:Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;

    .line 614
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mGetFeaturedTask:Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 618
    :pswitch_7
    new-instance v0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;

    invoke-direct {v0, p0, v5}, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;-><init>(Lcom/htc/store/activity/list/ListCategory;Lcom/htc/store/activity/list/ListCategory$1;)V

    iput-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mGetSubcategoryListTask:Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;

    .line 619
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mGetSubcategoryListTask:Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private doRefresh()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 625
    invoke-direct {p0, v5, v6}, Lcom/htc/store/activity/list/ListCategory;->setListVisibility(ZZ)V

    .line 626
    iput-boolean v5, p0, Lcom/htc/store/activity/list/ListCategory;->mIsUserCancelled:Z

    .line 627
    iput-boolean v5, p0, Lcom/htc/store/activity/list/ListCategory;->mAllPromoImageRetrieved:Z

    .line 628
    iput-boolean v5, p0, Lcom/htc/store/activity/list/ListCategory;->mAllFeaturedImageRetrieved:Z

    .line 629
    iget v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPageType:I

    if-ne v3, v6, :cond_2

    .line 630
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v3, :cond_0

    .line 631
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v3}, Lcom/htc/store/module/view/PromoSwitcher;->pause()V

    .line 633
    :cond_0
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v3, :cond_1

    .line 634
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v3}, Lcom/htc/store/module/view/PromoSwitcher;->pause()V

    .line 637
    :cond_1
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedPort:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v3}, Lcom/htc/store/module/view/HubListView;->getHeaderViewsCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 638
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    iget-object v4, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedPort:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/htc/store/module/view/HubListView;->removeHeaderView(Landroid/view/View;)Z

    .line 639
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v3, v7}, Lcom/htc/store/module/view/HubListView;->setPromoSwitcher(Lcom/htc/store/module/view/PromoSwitcher;)V

    .line 642
    :cond_2
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v3, v7}, Lcom/htc/store/module/view/HubListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 644
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mAdapter:Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;

    if-eqz v3, :cond_4

    .line 645
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mAdapter:Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;

    invoke-virtual {v3}, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 646
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 647
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 649
    :cond_3
    iput-object v7, p0, Lcom/htc/store/activity/list/ListCategory;->mAdapter:Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;

    .line 651
    .end local v2           #cursor:Landroid/database/Cursor;
    :cond_4
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v3}, Lcom/htc/store/module/vo/CategoryItem;->getId()J

    move-result-wide v0

    .line 652
    .local v0, categoryId:J
    iget v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPageType:I

    if-ne v3, v6, :cond_5

    .line 653
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    const/4 v4, 0x4

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/store/provider/AccessHelper;->removeCategoryTTLItem(JI)I

    .line 654
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    const/4 v4, 0x5

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/store/provider/AccessHelper;->removeCategoryTTLItem(JI)I

    .line 655
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v3, v0, v1, v6}, Lcom/htc/store/provider/AccessHelper;->removeCategoryTTLItem(JI)I

    .line 659
    :goto_0
    new-instance v3, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;

    invoke-direct {v3, p0, v7}, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;-><init>(Lcom/htc/store/activity/list/ListCategory;Lcom/htc/store/activity/list/ListCategory$1;)V

    iput-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mCheckContentTask:Lcom/htc/store/activity/list/ListCategory$CheckContentTask;

    .line 660
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mCheckContentTask:Lcom/htc/store/activity/list/ListCategory$CheckContentTask;

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 661
    return-void

    .line 657
    :cond_5
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/store/provider/AccessHelper;->removeCategoryTTLItem(JI)I

    goto :goto_0
.end method

.method private findPromoFeaturedViews(ZLandroid/view/View;)V
    .locals 10
    .parameter "isPortrait"
    .parameter "promoFeaturedView"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    .line 397
    const v6, 0x7f0c005f

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/store/module/view/PromoSwitcher;

    .line 398
    .local v5, promoSwitcher:Lcom/htc/store/module/view/PromoSwitcher;
    new-array v2, v8, [Lcom/htc/store/module/view/FeaturedItemView;

    .line 399
    .local v2, featuredItems:[Lcom/htc/store/module/view/FeaturedItemView;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 400
    new-instance v6, Lcom/htc/store/module/view/FeaturedItemView;

    invoke-direct {v6, p2, v3}, Lcom/htc/store/module/view/FeaturedItemView;-><init>(Landroid/view/View;I)V

    aput-object v6, v2, v3

    .line 399
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f09

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 403
    .local v4, itemLimit:I
    if-ge v4, v8, :cond_1

    .line 404
    move v3, v4

    :goto_1
    if-ge v3, v8, :cond_1

    .line 405
    aget-object v6, v2, v3

    invoke-virtual {v6, v9}, Lcom/htc/store/module/view/FeaturedItemView;->setLayoutVisibility(I)V

    .line 404
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 408
    :cond_1
    if-eqz p1, :cond_2

    .line 409
    iput-object v5, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    .line 410
    iget-object v6, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    iget-object v7, p0, Lcom/htc/store/activity/list/ListCategory;->mOnPromoSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/store/module/view/PromoSwitcher;->setOnPromoClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iput-object v2, p0, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItemViewsPort:[Lcom/htc/store/module/view/FeaturedItemView;

    .line 417
    :goto_2
    if-nez p1, :cond_5

    .line 418
    const v6, 0x7f0c0070

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 419
    .local v0, extraFeaturedIconPanel:Landroid/view/View;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 420
    new-array v1, v8, [Lcom/htc/store/module/view/FeaturedItemView;

    .line 421
    .local v1, extraFeaturedItems:[Lcom/htc/store/module/view/FeaturedItemView;
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v8, :cond_3

    .line 422
    new-instance v6, Lcom/htc/store/module/view/FeaturedItemView;

    add-int/lit8 v7, v3, 0x4

    invoke-direct {v6, p2, v7}, Lcom/htc/store/module/view/FeaturedItemView;-><init>(Landroid/view/View;I)V

    aput-object v6, v1, v3

    .line 421
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 413
    .end local v0           #extraFeaturedIconPanel:Landroid/view/View;
    .end local v1           #extraFeaturedItems:[Lcom/htc/store/module/view/FeaturedItemView;
    :cond_2
    iput-object v5, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    .line 414
    iget-object v6, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    iget-object v7, p0, Lcom/htc/store/activity/list/ListCategory;->mOnPromoSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/store/module/view/PromoSwitcher;->setOnPromoClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iput-object v2, p0, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItemViewsLand:[Lcom/htc/store/module/view/FeaturedItemView;

    goto :goto_2

    .line 424
    .restart local v0       #extraFeaturedIconPanel:Landroid/view/View;
    .restart local v1       #extraFeaturedItems:[Lcom/htc/store/module/view/FeaturedItemView;
    :cond_3
    if-ge v4, v8, :cond_4

    .line 425
    move v3, v4

    :goto_4
    if-ge v3, v8, :cond_4

    .line 426
    aget-object v6, v1, v3

    invoke-virtual {v6, v9}, Lcom/htc/store/module/view/FeaturedItemView;->setLayoutVisibility(I)V

    .line 425
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 429
    :cond_4
    iput-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mExtraFeaturedItemViewsLand:[Lcom/htc/store/module/view/FeaturedItemView;

    .line 431
    .end local v0           #extraFeaturedIconPanel:Landroid/view/View;
    .end local v1           #extraFeaturedItems:[Lcom/htc/store/module/view/FeaturedItemView;
    :cond_5
    return-void
.end method

.method private initPromoFeaturedViews(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 372
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/store/activity/list/ListCategory;->initPromoFeaturedViews(IZ)V

    .line 373
    return-void
.end method

.method private initPromoFeaturedViews(IZ)V
    .locals 5
    .parameter "orientation"
    .parameter "visible"

    .prologue
    const/4 v4, 0x1

    .line 376
    if-ne p1, v4, :cond_1

    .line 377
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedPort:Landroid/view/View;

    if-nez v1, :cond_0

    .line 378
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030022

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedPort:Landroid/view/View;

    .line 379
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedPort:Landroid/view/View;

    invoke-direct {p0, v4, v1}, Lcom/htc/store/activity/list/ListCategory;->findPromoFeaturedViews(ZLandroid/view/View;)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-boolean v1, p0, Lcom/htc/store/activity/list/ListCategory;->mIsViewStubInflated:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedLand:Landroid/view/View;

    if-nez v1, :cond_0

    .line 383
    :cond_2
    const v1, 0x7f0c0027

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/list/ListCategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 384
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedLand:Landroid/view/View;

    .line 386
    if-nez p2, :cond_3

    .line 387
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedLand:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 389
    :cond_3
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedLand:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/htc/store/activity/list/ListCategory;->findPromoFeaturedViews(ZLandroid/view/View;)V

    .line 390
    iput-boolean v4, p0, Lcom/htc/store/activity/list/ListCategory;->mIsViewStubInflated:Z

    goto :goto_0
.end method

.method private initViews()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 352
    const v1, 0x7f0c0018

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/list/ListCategory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBar;

    iput-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 353
    new-instance v0, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 354
    .local v0, headerText:Lcom/htc/widget/HeaderBarText;
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v1}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 356
    sget-object v1, Lcom/htc/store/activity/list/ListCategory;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "onlineLabel: "

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v3}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBar;->addCenterView(Landroid/view/View;)V

    .line 358
    const v1, 0x7f0c0026

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/list/ListCategory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mMargin:Landroid/view/View;

    .line 359
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/htc/store/activity/list/ListCategory;->setMarginVisibility(I)V

    .line 360
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/list/ListCategory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/view/HubListView;

    iput-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    .line 361
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v5, :cond_0

    .line 362
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/store/module/view/HubListView;->setTopRound(Landroid/graphics/drawable/Drawable;)V

    .line 364
    :cond_0
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/list/ListCategory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mEmpty:Landroid/view/View;

    .line 366
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mEmpty:Landroid/view/View;

    const v2, 0x7f0c0029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mEmptyProgress:Landroid/widget/ProgressBar;

    .line 367
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mEmpty:Landroid/view/View;

    const v2, 0x7f0c002a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mEmptyText:Landroid/widget/TextView;

    .line 368
    invoke-direct {p0, v4, v5}, Lcom/htc/store/activity/list/ListCategory;->setListVisibility(ZZ)V

    .line 369
    return-void
.end method

.method private prepareDownloadCategoryIconTask(J)V
    .locals 1
    .parameter "categoryId"

    .prologue
    .line 698
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/store/activity/list/ListCategory;->prepareDownloadCategoryIconTask(JZ)V

    .line 699
    return-void
.end method

.method private prepareDownloadCategoryIconTask(JZ)V
    .locals 3
    .parameter "categoryId"
    .parameter "force"

    .prologue
    const/4 v1, 0x1

    .line 702
    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v2, p1, p2}, Lcom/htc/store/provider/AccessHelper;->getCategoryOnlineIconURLsByParentId(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 703
    .local v0, onlineIconURLs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 704
    iget v2, p0, Lcom/htc/store/activity/list/ListCategory;->mPageType:I

    if-ne v2, v1, :cond_2

    .line 705
    .local v1, taskCount:I
    :goto_0
    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    if-nez v2, :cond_0

    .line 706
    new-instance v2, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-direct {v2, p0, v1}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;-><init>(Lcom/htc/store/activity/list/ListCategory;I)V

    iput-object v2, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    .line 708
    :cond_0
    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-virtual {v2, v0}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->insert(Ljava/util/ArrayList;)V

    .line 709
    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-virtual {v2, p3}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->setOverwriteMode(Z)V

    .line 711
    .end local v1           #taskCount:I
    :cond_1
    return-void

    .line 704
    :cond_2
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private setAdapter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 434
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mAdapter:Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;

    if-nez v3, :cond_2

    .line 435
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v3}, Lcom/htc/store/module/vo/CategoryItem;->getId()J

    move-result-wide v0

    .line 436
    .local v0, categoryId:J
    iget v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPageType:I

    if-ne v3, v5, :cond_1

    .line 437
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItems:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 438
    :cond_0
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedLand:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 439
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedLand:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 483
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v3, v0, v1}, Lcom/htc/store/provider/AccessHelper;->findCategoryItemsByParentId(J)Landroid/database/Cursor;

    move-result-object v2

    .line 484
    .local v2, cursor:Landroid/database/Cursor;
    new-instance v3, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;

    const v4, 0x7f030012

    invoke-direct {v3, p0, p0, v4, v2}, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;-><init>(Lcom/htc/store/activity/list/ListCategory;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mAdapter:Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;

    .line 485
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    iget-object v4, p0, Lcom/htc/store/activity/list/ListCategory;->mAdapter:Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/store/module/view/HubListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 486
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    iget-object v4, p0, Lcom/htc/store/activity/list/ListCategory;->mAdapter:Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/store/module/view/HubListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 488
    .end local v0           #categoryId:J
    .end local v2           #cursor:Landroid/database/Cursor;
    :cond_2
    return-void

    .line 442
    .restart local v0       #categoryId:J
    :cond_3
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_8

    .line 444
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedPort:Landroid/view/View;

    if-nez v3, :cond_4

    .line 445
    invoke-direct {p0, v5}, Lcom/htc/store/activity/list/ListCategory;->initPromoFeaturedViews(I)V

    .line 447
    :cond_4
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v3, :cond_6

    .line 448
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v3}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItemSize()I

    move-result v3

    iget-object v4, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v4}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItemSize()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 449
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    iget-object v4, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v4}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/store/module/view/PromoSwitcher;->addPromoItems(Ljava/util/ArrayList;)V

    .line 451
    :cond_5
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v3}, Lcom/htc/store/module/view/PromoSwitcher;->pause()V

    .line 453
    :cond_6
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v3}, Lcom/htc/store/module/view/PromoSwitcher;->resume()V

    .line 455
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItemViewsPort:[Lcom/htc/store/module/view/FeaturedItemView;

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/htc/store/activity/list/ListCategory;->setFeaturedIcons(J[Lcom/htc/store/module/view/FeaturedItemView;[Lcom/htc/store/module/view/FeaturedItemView;)V

    .line 456
    iput-boolean v5, p0, Lcom/htc/store/activity/list/ListCategory;->mHasSetFeaturedItemViewsPort:Z

    .line 458
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v3}, Lcom/htc/store/module/view/HubListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 459
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v3, v6}, Lcom/htc/store/module/view/HubListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 461
    :cond_7
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    iget-object v4, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedPort:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/htc/store/module/view/HubListView;->addHeaderView(Landroid/view/View;)V

    .line 462
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    iget-object v4, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v3, v4}, Lcom/htc/store/module/view/HubListView;->setPromoSwitcher(Lcom/htc/store/module/view/PromoSwitcher;)V

    goto :goto_0

    .line 465
    :cond_8
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedLand:Landroid/view/View;

    if-nez v3, :cond_b

    .line 466
    const/4 v3, 0x2

    invoke-direct {p0, v3, v5}, Lcom/htc/store/activity/list/ListCategory;->initPromoFeaturedViews(IZ)V

    .line 470
    :goto_1
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v3, :cond_a

    .line 471
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v3}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItemSize()I

    move-result v3

    iget-object v4, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v4}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItemSize()I

    move-result v4

    if-le v3, v4, :cond_9

    .line 472
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    iget-object v4, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v4}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/store/module/view/PromoSwitcher;->addPromoItems(Ljava/util/ArrayList;)V

    .line 474
    :cond_9
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v3}, Lcom/htc/store/module/view/PromoSwitcher;->pause()V

    .line 476
    :cond_a
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v3}, Lcom/htc/store/module/view/PromoSwitcher;->resume()V

    .line 478
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItemViewsLand:[Lcom/htc/store/module/view/FeaturedItemView;

    iget-object v4, p0, Lcom/htc/store/activity/list/ListCategory;->mExtraFeaturedItemViewsLand:[Lcom/htc/store/module/view/FeaturedItemView;

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/htc/store/activity/list/ListCategory;->setFeaturedIcons(J[Lcom/htc/store/module/view/FeaturedItemView;[Lcom/htc/store/module/view/FeaturedItemView;)V

    .line 479
    iput-boolean v5, p0, Lcom/htc/store/activity/list/ListCategory;->mHasSetFeaturedItemViewsLand:Z

    goto/16 :goto_0

    .line 468
    :cond_b
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedLand:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setFeaturedIcon(Lcom/htc/store/module/view/FeaturedItemView;JLcom/htc/store/module/vo/FeaturedItem;II)V
    .locals 9
    .parameter "featuredItemView"
    .parameter "categoryId"
    .parameter "item"
    .parameter "iconWidth"
    .parameter "iconHeight"

    .prologue
    .line 522
    if-eqz p4, :cond_1

    .line 523
    invoke-virtual {p4}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, onlineItemId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;

    move-result-object v0

    move-wide v1, p2

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getFeaturedIcon(Landroid/content/Context;JLjava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 525
    .local v7, icon:Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/htc/store/util/ImageUtils;->getFeaturedIconReflection(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 529
    .local v8, iconReflection:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v7}, Lcom/htc/store/module/view/FeaturedItemView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    invoke-virtual {p1, v8}, Lcom/htc/store/module/view/FeaturedItemView;->setIconReflectionDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 531
    invoke-virtual {p4}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineItemLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/store/module/view/FeaturedItemView;->setLabel(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p1, v3}, Lcom/htc/store/module/view/FeaturedItemView;->setOnlineItemId(Ljava/lang/String;)V

    .line 533
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/store/module/view/FeaturedItemView;->setLayoutVisibility(I)V

    .line 534
    new-instance v1, Lcom/htc/store/activity/list/ListCategory$OnFeaturedClickListener;

    invoke-virtual {p4}, Lcom/htc/store/module/vo/FeaturedItem;->getType()I

    move-result v4

    invoke-virtual {p4}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineActionTypeOnClick()I

    move-result v5

    invoke-virtual {p4}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineTriggerOnClick()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/htc/store/activity/list/ListCategory$OnFeaturedClickListener;-><init>(Lcom/htc/store/activity/list/ListCategory;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/htc/store/module/view/FeaturedItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    .end local v3           #onlineItemId:Ljava/lang/String;
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #iconReflection:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 537
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/htc/store/module/view/FeaturedItemView;->setLayoutVisibility(I)V

    goto :goto_0
.end method

.method private setFeaturedIcons(J[Lcom/htc/store/module/view/FeaturedItemView;[Lcom/htc/store/module/view/FeaturedItemView;)V
    .locals 21
    .parameter "categoryId"
    .parameter "featuredItemViews"
    .parameter "extraFeaturedItemViews"

    .prologue
    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 492
    .local v19, res:Landroid/content/res/Resources;
    const v2, 0x7f080008

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 493
    .local v7, iconWidth:I
    const v2, 0x7f080009

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 494
    .local v8, iconHeight:I
    const/high16 v2, 0x7f09

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    .line 495
    .local v18, itemLimit:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 496
    .local v20, size:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 497
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItems:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/store/module/vo/FeaturedItem;

    .line 499
    .local v6, item:Lcom/htc/store/module/vo/FeaturedItem;
    aget-object v3, p3, v16

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/htc/store/activity/list/ListCategory;->setFeaturedIcon(Lcom/htc/store/module/view/FeaturedItemView;JLcom/htc/store/module/vo/FeaturedItem;II)V

    .line 496
    .end local v6           #item:Lcom/htc/store/module/vo/FeaturedItem;
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 502
    :cond_0
    aget-object v10, p3, v16

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v11, p1

    move v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/htc/store/activity/list/ListCategory;->setFeaturedIcon(Lcom/htc/store/module/view/FeaturedItemView;JLcom/htc/store/module/vo/FeaturedItem;II)V

    goto :goto_1

    .line 505
    :cond_1
    if-eqz p4, :cond_3

    .line 506
    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 507
    add-int v17, v16, v18

    .line 508
    .local v17, itemIndex:I
    sget-object v2, Lcom/htc/store/activity/list/ListCategory;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "i: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    sget-object v2, Lcom/htc/store/activity/list/ListCategory;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "itemIndex: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItems:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/store/module/vo/FeaturedItem;

    .line 512
    .restart local v6       #item:Lcom/htc/store/module/vo/FeaturedItem;
    aget-object v3, p4, v16

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/htc/store/activity/list/ListCategory;->setFeaturedIcon(Lcom/htc/store/module/view/FeaturedItemView;JLcom/htc/store/module/vo/FeaturedItem;II)V

    .line 506
    .end local v6           #item:Lcom/htc/store/module/vo/FeaturedItem;
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 515
    :cond_2
    aget-object v10, p4, v16

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v11, p1

    move v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/htc/store/activity/list/ListCategory;->setFeaturedIcon(Lcom/htc/store/module/view/FeaturedItemView;JLcom/htc/store/module/vo/FeaturedItem;II)V

    goto :goto_3

    .line 519
    .end local v17           #itemIndex:I
    :cond_3
    return-void
.end method

.method private setListVisibility(ZZ)V
    .locals 7
    .parameter "visible"
    .parameter "isLoading"

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 549
    sget-object v0, Lcom/htc/store/activity/list/ListCategory;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "setListVisibility: "

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string v3, ", "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    if-eqz p1, :cond_1

    .line 551
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v0, v4}, Lcom/htc/store/module/view/HubListView;->setVisibility(I)V

    .line 553
    iget v0, p0, Lcom/htc/store/activity/list/ListCategory;->mPageType:I

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/store/activity/list/ListCategory;->mOrientation:I

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedLand:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedLand:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    if-eqz p2, :cond_3

    .line 559
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mEmptyProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 561
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mEmptyText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    :goto_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedLand:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedLand:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v0, v5}, Lcom/htc/store/module/view/HubListView;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 563
    :cond_3
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mEmptyProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f0a002d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 565
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mEmptyText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mOnRefreshClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private setMarginVisibility(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mMargin:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 577
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mMargin:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mMargin:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateProgressBarAndMenuItem(Z)V
    .locals 5
    .parameter "inProgress"

    .prologue
    const/4 v4, 0x0

    .line 664
    sget-object v0, Lcom/htc/store/activity/list/ListCategory;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "updateProgressBarAndMenuItem: "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    if-eqz p1, :cond_1

    .line 666
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    .line 670
    :goto_0
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mRefreshMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 671
    if-eqz p1, :cond_2

    .line 672
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mRefreshMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0a004b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 673
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mRefreshMenuItem:Landroid/view/MenuItem;

    const v1, 0x2080339

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 679
    :cond_0
    :goto_1
    return-void

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 675
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mRefreshMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0a006c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 676
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mRefreshMenuItem:Landroid/view/MenuItem;

    const v1, 0x208033b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private updateProgressBarAndMenuItem()Z
    .locals 5

    .prologue
    .line 682
    sget-object v1, Lcom/htc/store/activity/list/ListCategory;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "updateProgressBarAndMenuItem"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, inProgress:Z
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mCheckContentTask:Lcom/htc/store/activity/list/ListCategory$CheckContentTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mCheckContentTask:Lcom/htc/store/activity/list/ListCategory$CheckContentTask;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_6

    :cond_0
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mGetPromoTask:Lcom/htc/store/activity/list/ListCategory$GetPromoTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mGetPromoTask:Lcom/htc/store/activity/list/ListCategory$GetPromoTask;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_6

    :cond_1
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mGetFeaturedTask:Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mGetFeaturedTask:Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_6

    :cond_2
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mGetSubcategoryListTask:Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mGetSubcategoryListTask:Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_6

    :cond_3
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mDownloadPromoImageTask:Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mDownloadPromoImageTask:Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mDownloadFeaturedImageTask:Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mDownloadFeaturedImageTask:Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->isIdle()Z

    move-result v1

    if-nez v1, :cond_7

    .line 691
    :cond_6
    const/4 v0, 0x1

    .line 693
    :cond_7
    invoke-direct {p0, v0}, Lcom/htc/store/activity/list/ListCategory;->updateProgressBarAndMenuItem(Z)V

    .line 694
    return v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 240
    invoke-super {p0, p1}, Lcom/htc/store/activity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 241
    sget-object v1, Lcom/htc/store/activity/list/ListCategory;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "onConfigurationChanged"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    sget-object v1, Lcom/htc/store/activity/list/ListCategory;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "mOrientation: "

    aput-object v3, v2, v4

    iget v3, p0, Lcom/htc/store/activity/list/ListCategory;->mOrientation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPageType:I

    if-ne v1, v5, :cond_4

    iget v1, p0, Lcom/htc/store/activity/list/ListCategory;->mOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v1}, Lcom/htc/store/module/view/HubListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 245
    iget v1, p0, Lcom/htc/store/activity/list/ListCategory;->mOrientation:I

    if-ne v1, v5, :cond_7

    .line 246
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedPort:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 247
    sget-object v1, Lcom/htc/store/activity/list/ListCategory;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "mPromoFeaturedPort != null"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v1, v6}, Lcom/htc/store/module/view/HubListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 249
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedPort:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/htc/store/module/view/HubListView;->removeHeaderView(Landroid/view/View;)Z

    .line 250
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v1, v6}, Lcom/htc/store/module/view/HubListView;->setPromoSwitcher(Lcom/htc/store/module/view/PromoSwitcher;)V

    .line 251
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory;->mAdapter:Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/store/module/view/HubListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedLand:Landroid/view/View;

    if-nez v1, :cond_6

    .line 254
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1, v5}, Lcom/htc/store/activity/list/ListCategory;->initPromoFeaturedViews(IZ)V

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v1, :cond_3

    .line 259
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v1}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItemSize()I

    move-result v1

    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v2}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItemSize()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 260
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v2}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/store/module/view/PromoSwitcher;->addPromoItems(Ljava/util/ArrayList;)V

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v1}, Lcom/htc/store/module/view/PromoSwitcher;->getCurrentPromoitem()Lcom/htc/store/module/vo/PromoItem;

    move-result-object v0

    .line 263
    .local v0, item:Lcom/htc/store/module/vo/PromoItem;
    if-eqz v0, :cond_2

    .line 264
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v0}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/store/module/view/PromoSwitcher;->setSelection(Ljava/lang/String;)V

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v1}, Lcom/htc/store/module/view/PromoSwitcher;->pause()V

    .line 268
    .end local v0           #item:Lcom/htc/store/module/vo/PromoItem;
    :cond_3
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v1}, Lcom/htc/store/module/view/PromoSwitcher;->resume()V

    .line 269
    iget-boolean v1, p0, Lcom/htc/store/activity/list/ListCategory;->mHasSetFeaturedItemViewsLand:Z

    if-nez v1, :cond_4

    .line 270
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v1}, Lcom/htc/store/module/vo/CategoryItem;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItemViewsLand:[Lcom/htc/store/module/view/FeaturedItemView;

    iget-object v4, p0, Lcom/htc/store/activity/list/ListCategory;->mExtraFeaturedItemViewsLand:[Lcom/htc/store/module/view/FeaturedItemView;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/store/activity/list/ListCategory;->setFeaturedIcons(J[Lcom/htc/store/module/view/FeaturedItemView;[Lcom/htc/store/module/view/FeaturedItemView;)V

    .line 271
    iput-boolean v5, p0, Lcom/htc/store/activity/list/ListCategory;->mHasSetFeaturedItemViewsLand:Z

    .line 303
    :cond_4
    :goto_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/store/activity/list/ListCategory;->mOrientation:I

    .line 304
    iget v1, p0, Lcom/htc/store/activity/list/ListCategory;->mOrientation:I

    invoke-direct {p0, v1}, Lcom/htc/store/activity/list/ListCategory;->setMarginVisibility(I)V

    .line 305
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    if-eqz v1, :cond_5

    .line 306
    iget v1, p0, Lcom/htc/store/activity/list/ListCategory;->mOrientation:I

    if-ne v1, v5, :cond_e

    .line 307
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "topround_v1"

    const v5, 0x208068f

    invoke-static {v3, v4, v5}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/store/module/view/HubListView;->setTopRound(Landroid/graphics/drawable/Drawable;)V

    .line 313
    :cond_5
    :goto_2
    return-void

    .line 256
    :cond_6
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedLand:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 274
    :cond_7
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedLand:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 277
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedLand:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :cond_8
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedPort:Landroid/view/View;

    if-nez v1, :cond_9

    .line 280
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/htc/store/activity/list/ListCategory;->initPromoFeaturedViews(I)V

    .line 282
    :cond_9
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v1, :cond_c

    .line 283
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v1}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItemSize()I

    move-result v1

    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v2}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItemSize()I

    move-result v2

    if-le v1, v2, :cond_a

    .line 284
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v2}, Lcom/htc/store/module/view/PromoSwitcher;->getPromoItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/store/module/view/PromoSwitcher;->addPromoItems(Ljava/util/ArrayList;)V

    .line 286
    :cond_a
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v1}, Lcom/htc/store/module/view/PromoSwitcher;->getCurrentPromoitem()Lcom/htc/store/module/vo/PromoItem;

    move-result-object v0

    .line 287
    .restart local v0       #item:Lcom/htc/store/module/vo/PromoItem;
    if-eqz v0, :cond_b

    .line 288
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v0}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/store/module/view/PromoSwitcher;->setSelection(Ljava/lang/String;)V

    .line 290
    :cond_b
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v1}, Lcom/htc/store/module/view/PromoSwitcher;->pause()V

    .line 292
    .end local v0           #item:Lcom/htc/store/module/vo/PromoItem;
    :cond_c
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v1}, Lcom/htc/store/module/view/PromoSwitcher;->resume()V

    .line 293
    iget-boolean v1, p0, Lcom/htc/store/activity/list/ListCategory;->mHasSetFeaturedItemViewsPort:Z

    if-nez v1, :cond_d

    .line 294
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v1}, Lcom/htc/store/module/vo/CategoryItem;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItemViewsPort:[Lcom/htc/store/module/view/FeaturedItemView;

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/htc/store/activity/list/ListCategory;->setFeaturedIcons(J[Lcom/htc/store/module/view/FeaturedItemView;[Lcom/htc/store/module/view/FeaturedItemView;)V

    .line 295
    iput-boolean v5, p0, Lcom/htc/store/activity/list/ListCategory;->mHasSetFeaturedItemViewsPort:Z

    .line 297
    :cond_d
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v1, v6}, Lcom/htc/store/module/view/HubListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 298
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoFeaturedPort:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/htc/store/module/view/HubListView;->addHeaderView(Landroid/view/View;)V

    .line 299
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v1, v2}, Lcom/htc/store/module/view/HubListView;->setPromoSwitcher(Lcom/htc/store/module/view/PromoSwitcher;)V

    .line 300
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory;->mAdapter:Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/store/module/view/HubListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 310
    :cond_e
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v1, v6}, Lcom/htc/store/module/view/HubListView;->setTopRound(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/htc/store/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v1, 0x7f03000e

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/list/ListCategory;->setContentView(I)V

    .line 112
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "category_item"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/vo/CategoryItem;

    iput-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    .line 114
    const-string v1, "is_operator"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/store/activity/list/ListCategory;->mIsOperator:Z

    .line 115
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    if-nez v1, :cond_0

    .line 116
    sget-object v1, Lcom/htc/store/activity/list/ListCategory;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Category item is null."

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->finish()V

    .line 119
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v1}, Lcom/htc/store/module/rest/RestHelper;->destroy()V

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mAdapter:Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mAdapter:Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 213
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 214
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 217
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mImageCacheMapping:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mImageCacheMapping:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 220
    :cond_2
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v1, :cond_3

    .line 221
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v1}, Lcom/htc/store/module/view/PromoSwitcher;->destroy()V

    .line 223
    :cond_3
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v1, :cond_4

    .line 224
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v1}, Lcom/htc/store/module/view/PromoSwitcher;->destroy()V

    .line 226
    :cond_4
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    if-eqz v1, :cond_5

    .line 227
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mList:Lcom/htc/store/module/view/HubListView;

    invoke-virtual {v1, v2}, Lcom/htc/store/module/view/HubListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 229
    :cond_5
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mEmptyText:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 230
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    :cond_6
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "clear_cache"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 233
    invoke-static {}, Lcom/htc/store/util/ImageUtils;->clearAllCache()V

    .line 235
    :cond_7
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onDestroy()V

    .line 236
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lcom/htc/store/activity/list/ListCategory;->mPageType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v0}, Lcom/htc/store/module/view/PromoSwitcher;->pause()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v0}, Lcom/htc/store/module/view/PromoSwitcher;->pause()V

    .line 182
    :cond_1
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onPause()V

    .line 183
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 123
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onResume()V

    .line 124
    iget-boolean v1, p0, Lcom/htc/store/activity/BaseActivity;->mFirstCreate:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 125
    iget v1, p0, Lcom/htc/store/activity/list/ListCategory;->mActionOnResume:I

    if-eqz v1, :cond_0

    .line 126
    iget v0, p0, Lcom/htc/store/activity/list/ListCategory;->mActionOnResume:I

    .line 127
    .local v0, action:I
    iput v5, p0, Lcom/htc/store/activity/list/ListCategory;->mActionOnResume:I

    .line 128
    invoke-direct {p0, v0}, Lcom/htc/store/activity/list/ListCategory;->doAction(I)V

    .line 130
    .end local v0           #action:I
    :cond_0
    iget v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPageType:I

    if-ne v1, v4, :cond_2

    .line 131
    iget-boolean v1, p0, Lcom/htc/store/activity/list/ListCategory;->mAllPromoImageRetrieved:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/htc/store/activity/list/ListCategory;->mActionOnResume:I

    if-eq v1, v6, :cond_1

    iget v1, p0, Lcom/htc/store/activity/list/ListCategory;->mActionOnResume:I

    if-eq v1, v7, :cond_1

    .line 133
    new-instance v1, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;

    invoke-direct {v1, p0}, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;-><init>(Lcom/htc/store/activity/list/ListCategory;)V

    iput-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mDownloadPromoImageTask:Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;

    .line 134
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mDownloadPromoImageTask:Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)V

    .line 136
    :cond_1
    iget-boolean v1, p0, Lcom/htc/store/activity/list/ListCategory;->mAllFeaturedImageRetrieved:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/htc/store/activity/list/ListCategory;->mActionOnResume:I

    if-eq v1, v6, :cond_2

    iget v1, p0, Lcom/htc/store/activity/list/ListCategory;->mActionOnResume:I

    if-eq v1, v7, :cond_2

    iget v1, p0, Lcom/htc/store/activity/list/ListCategory;->mActionOnResume:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 138
    new-instance v1, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;

    invoke-direct {v1, p0}, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;-><init>(Lcom/htc/store/activity/list/ListCategory;)V

    iput-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mDownloadFeaturedImageTask:Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;

    .line 139
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mDownloadFeaturedImageTask:Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)V

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->hasIdleTask()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->hasToDownload()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 143
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->start()V

    .line 144
    invoke-direct {p0, v4}, Lcom/htc/store/activity/list/ListCategory;->updateProgressBarAndMenuItem(Z)V

    .line 149
    :goto_0
    iget v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPageType:I

    if-ne v1, v4, :cond_3

    .line 150
    iget v1, p0, Lcom/htc/store/activity/list/ListCategory;->mOrientation:I

    if-ne v1, v4, :cond_5

    .line 151
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v1}, Lcom/htc/store/module/view/PromoSwitcher;->resume()V

    .line 161
    :cond_3
    :goto_1
    return-void

    .line 146
    :cond_4
    invoke-direct {p0}, Lcom/htc/store/activity/list/ListCategory;->updateProgressBarAndMenuItem()Z

    goto :goto_0

    .line 155
    :cond_5
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v1, :cond_3

    .line 156
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v1}, Lcom/htc/store/module/view/PromoSwitcher;->resume()V

    goto :goto_1
.end method

.method protected onWindowFirstFocused()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 187
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v1}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineActionTypeOnClick()I

    move-result v0

    .line 189
    .local v0, actionType:I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 190
    iput v2, p0, Lcom/htc/store/activity/list/ListCategory;->mPageType:I

    .line 198
    :goto_0
    iget v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPageType:I

    if-eqz v1, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/htc/store/activity/list/ListCategory;->initViews()V

    .line 200
    new-instance v1, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;-><init>(Lcom/htc/store/activity/list/ListCategory;Lcom/htc/store/activity/list/ListCategory$1;)V

    iput-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mCheckContentTask:Lcom/htc/store/activity/list/ListCategory$CheckContentTask;

    .line 201
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory;->mCheckContentTask:Lcom/htc/store/activity/list/ListCategory$CheckContentTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 204
    .end local v0           #actionType:I
    :cond_0
    return-void

    .line 191
    .restart local v0       #actionType:I
    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 193
    :cond_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/store/activity/list/ListCategory;->mPageType:I

    goto :goto_0

    .line 195
    :cond_3
    sget-object v1, Lcom/htc/store/activity/list/ListCategory;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Action type is wrong."

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory;->finish()V

    goto :goto_0
.end method
