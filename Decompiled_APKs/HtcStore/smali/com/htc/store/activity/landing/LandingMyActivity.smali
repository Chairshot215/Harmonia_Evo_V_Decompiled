.class public Lcom/htc/store/activity/landing/LandingMyActivity;
.super Lcom/htc/store/activity/BaseActivity;
.source "LandingMyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;,
        Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;,
        Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;,
        Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;,
        Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;,
        Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;
    }
.end annotation


# static fields
.field private static final ACTION_GET_MARKED_ITEMS:I = 0x8

.field private static final ACTION_GET_MARKED_ITEMS_ICON:I = 0x4

.field private static final ACTION_GET_ORDERED_HISTORY:I = 0x2

.field private static final ACTION_GET_ORDERED_HISTORY_ICON:I = 0x1

.field private static final ACTION_NONE:I = 0x0

.field private static final ACTION_SHOW_EMPTY:I = -0xb

.field private static final ACTION_SHOW_ERROR:I = -0xc

.field private static final ACTION_SHOW_LIST:I = -0xa

.field private static final DIALOG_FILTER:I = 0x0

.field private static final MENU_DELET_MARKED_ITEMS:I = 0x2

.field private static final MENU_EDIT_TABS:I = 0x6

.field private static final MENU_FILTER:I = 0x1

.field private static final MENU_REFRESH:I = 0x0

.field private static final MENU_SEARCH:I = 0x4

.field private static final MENU_SETTING:I = 0x5

.field private static final MENU_SHARE:I = 0x3

.field private static final MESSAGE_CHECK_GET_HISTORY_CALL:I = 0x1

.field private static final TAG:Ljava/lang/String; = null

.field private static final VIEW_EMPTY:I = 0x2

.field private static final VIEW_LIST:I = 0x1

.field private static final VIEW_NO_ACCOUNT:I = 0x3


# instance fields
.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field private volatile mActionResume:I

.field private mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

.field private mDirtyFlag:Z

.field private mEmptyText:Landroid/widget/TextView;

.field private mEmptyView:Landroid/widget/LinearLayout;

.field private mFilter:Landroid/widget/Filter;

.field private mFilterType:I

.field private mGetMarkedItems:Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;

.field private mGetMarkedItemsIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;

.field private mGetOrderedHistory:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;

.field private mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

.field private mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

.field private mHeaderBarText:Lcom/htc/widget/HeaderBarText;

.field private mImageCacheMapping:Ljava/util/HashMap;
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

.field private mImageCacheMappingAccessKey:Ljava/lang/Object;

.field private mList:Lcom/htc/widget/HtcListView;

.field private mMyActivityChangedObserver:Landroid/database/ContentObserver;

.field private mMyActivityFilter:Lcom/htc/store/module/adapter/MyActivityAdapter$MyActivityFilter;

.field private mNoAccountButton:Landroid/widget/Button;

.field mNoAccountButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mNoAccountView:Landroid/widget/RelativeLayout;

.field private mNonUiHandler:Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;

.field private mOnDataChangedListener:Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;

.field private mOnlineActivityLabel:Ljava/lang/String;

.field private mRefreshing:Z

.field private mRestHelper:Lcom/htc/store/module/rest/RestHelper;

.field mSearchOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/landing/LandingMyActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/store/activity/BaseActivity;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMappingAccessKey:Ljava/lang/Object;

    .line 459
    new-instance v0, Lcom/htc/store/activity/landing/LandingMyActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/landing/LandingMyActivity$2;-><init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mSearchOnClickListener:Landroid/view/View$OnClickListener;

    .line 466
    new-instance v0, Lcom/htc/store/activity/landing/LandingMyActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/landing/LandingMyActivity$3;-><init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mNoAccountButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 637
    new-instance v0, Lcom/htc/store/activity/landing/LandingMyActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/landing/LandingMyActivity$5;-><init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mMyActivityFilter:Lcom/htc/store/module/adapter/MyActivityAdapter$MyActivityFilter;

    .line 644
    new-instance v0, Lcom/htc/store/activity/landing/LandingMyActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/landing/LandingMyActivity$6;-><init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mOnDataChangedListener:Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;

    .line 1110
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/htc/store/activity/landing/LandingMyActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/PreferenceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/store/activity/landing/LandingMyActivity;)Landroid/widget/Filter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/store/activity/landing/LandingMyActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/LandingMyActivity;->setSecondaryTitle(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/store/activity/landing/LandingMyActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/store/activity/landing/LandingMyActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/LandingMyActivity;->updateViewVisibility(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/store/activity/landing/LandingMyActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/rest/RestHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/htc/store/activity/landing/LandingMyActivity;Lcom/htc/store/module/rest/RestHelper;)Lcom/htc/store/module/rest/RestHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/store/activity/landing/LandingMyActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/store/activity/landing/LandingMyActivity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMappingAccessKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/store/activity/landing/LandingMyActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMapping:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/store/activity/landing/LandingMyActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMapping:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/adapter/MyActivityAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mNonUiHandler:Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/store/activity/landing/LandingMyActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/htc/store/activity/landing/LandingMyActivity;->doAction(IZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/store/activity/landing/LandingMyActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mActionResume:I

    return v0
.end method

.method static synthetic access$2602(Lcom/htc/store/activity/landing/LandingMyActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mActionResume:I

    return p1
.end method

.method static synthetic access$2676(Lcom/htc/store/activity/landing/LandingMyActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mActionResume:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mActionResume:I

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/store/activity/landing/LandingMyActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->updateProgress()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/store/activity/landing/LandingMyActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mDirtyFlag:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/store/activity/landing/LandingMyActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mDirtyFlag:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/PreferenceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/store/activity/landing/LandingMyActivity;Ljava/lang/String;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/store/activity/landing/LandingMyActivity;->downloadIcon(Ljava/lang/String;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/htc/store/activity/landing/LandingMyActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/htc/store/activity/landing/LandingMyActivity;Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;)Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/PreferenceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/htc/store/activity/landing/LandingMyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/store/activity/landing/LandingMyActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/LandingMyActivity;->doAction(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/store/activity/landing/LandingMyActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->startSearch()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/store/activity/landing/LandingMyActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/store/activity/landing/LandingMyActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mFilterType:I

    return v0
.end method

.method static synthetic access$902(Lcom/htc/store/activity/landing/LandingMyActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mFilterType:I

    return p1
.end method

.method private doAction(I)V
    .locals 1
    .parameter "action"

    .prologue
    .line 564
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->doAction(IZ)V

    .line 565
    return-void
.end method

.method private doAction(IZ)V
    .locals 7
    .parameter "action"
    .parameter "forceUpdate"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 568
    sget-object v0, Lcom/htc/store/activity/landing/LandingMyActivity;->TAG:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "doAction: "

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    sparse-switch p1, :sswitch_data_0

    .line 622
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 573
    :sswitch_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    invoke-virtual {v0}, Lcom/htc/store/module/adapter/MyActivityAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 574
    invoke-direct {p0, v5}, Lcom/htc/store/activity/landing/LandingMyActivity;->updateViewVisibility(I)V

    goto :goto_0

    .line 576
    :cond_1
    invoke-direct {p0, v3}, Lcom/htc/store/activity/landing/LandingMyActivity;->updateViewVisibility(I)V

    goto :goto_0

    .line 580
    :sswitch_2
    invoke-direct {p0, v5}, Lcom/htc/store/activity/landing/LandingMyActivity;->updateViewVisibility(I)V

    goto :goto_0

    .line 583
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->showCommonErrorDialog()V

    .line 584
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    if-eqz v0, :cond_0

    .line 585
    iput-boolean v4, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mRefreshing:Z

    .line 586
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->setProgressVisibility(I)V

    goto :goto_0

    .line 590
    :sswitch_4
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetMarkedItems:Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetMarkedItems:Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_3

    .line 591
    :cond_2
    new-instance v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;

    invoke-direct {v0, p0, v6}, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;-><init>(Lcom/htc/store/activity/landing/LandingMyActivity;Lcom/htc/store/activity/landing/LandingMyActivity$1;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetMarkedItems:Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;

    .line 593
    :cond_3
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetMarkedItems:Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 594
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetMarkedItems:Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 598
    :sswitch_5
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetMarkedItemsIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetMarkedItemsIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_5

    .line 599
    :cond_4
    new-instance v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;

    invoke-direct {v0, p0, v6}, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;-><init>(Lcom/htc/store/activity/landing/LandingMyActivity;Lcom/htc/store/activity/landing/LandingMyActivity$1;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetMarkedItemsIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;

    .line 601
    :cond_5
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetMarkedItemsIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 602
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetMarkedItemsIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 606
    :sswitch_6
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistory:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistory:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_7

    .line 607
    :cond_6
    new-instance v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;-><init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistory:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;

    .line 609
    :cond_7
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistory:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 610
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistory:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 614
    :sswitch_7
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_9

    .line 615
    :cond_8
    new-instance v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;-><init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    .line 617
    :cond_9
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 618
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 569
    :sswitch_data_0
    .sparse-switch
        -0xc -> :sswitch_3
        -0xb -> :sswitch_2
        -0xa -> :sswitch_1
        0x0 -> :sswitch_0
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x4 -> :sswitch_5
        0x8 -> :sswitch_4
    .end sparse-switch
.end method

.method private downloadIcon(Ljava/lang/String;IJ)Z
    .locals 21
    .parameter "url"
    .parameter "widthHeight"
    .parameter "imageTTL"

    .prologue
    .line 1226
    const/4 v13, 0x0

    .line 1227
    .local v13, publishProgress:Z
    const/4 v8, 0x0

    .line 1228
    .local v8, item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    const/16 v16, 0x0

    .line 1229
    .local v16, triggerInvalidating:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMappingAccessKey:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1230
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMapping:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMapping:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lcom/htc/store/module/vo/ImageCacheMappingItem;

    move-object v8, v0

    .line 1250
    :goto_0
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    if-eqz v8, :cond_3

    .line 1252
    invoke-virtual {v8}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getId()J

    move-result-wide v6

    .line 1253
    .local v6, id:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1254
    .local v3, current:J
    const/4 v10, 0x0

    .line 1257
    .local v10, needUpdate:Z
    invoke-static {v6, v7}, Lcom/htc/store/util/StorageUtils;->getTemporarySharedImageFilePath(J)Ljava/lang/String;

    move-result-object v15

    .line 1258
    .local v15, tmpFilePath:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/htc/store/util/StorageUtils;->getSharedImageFilePath(J)Ljava/lang/String;

    move-result-object v5

    .line 1260
    .local v5, filePath:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getExpiredTime()J

    move-result-wide v17

    cmp-long v17, v3, v17

    if-lez v17, :cond_7

    .line 1261
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    invoke-static {v0, v15, v1, v2}, Lcom/htc/store/util/DownloadUtils;->retrieveImageForcely(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v10

    .line 1275
    :goto_1
    if-eqz v10, :cond_0

    .line 1276
    invoke-static {v15, v5}, Lcom/htc/store/util/StorageUtils;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 1279
    :cond_0
    if-eqz v10, :cond_1

    .line 1280
    add-long v11, v3, p3

    .line 1281
    .local v11, newExpiredTime:J
    invoke-virtual {v8, v11, v12}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->setExpiredTime(J)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMappingAccessKey:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1283
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMapping:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7, v11, v12}, Lcom/htc/store/provider/AccessHelper;->updateImageCaheMappingItem(JJ)Z

    .line 1287
    .end local v11           #newExpiredTime:J
    :cond_1
    if-nez v16, :cond_2

    if-eqz v10, :cond_3

    .line 1288
    :cond_2
    const/4 v13, 0x1

    .line 1291
    .end local v3           #current:J
    .end local v5           #filePath:Ljava/lang/String;
    .end local v6           #id:J
    .end local v10           #needUpdate:Z
    .end local v15           #tmpFilePath:Ljava/lang/String;
    :cond_3
    return v13

    .line 1233
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/provider/AccessHelper;->getImageCacheMappingItem(ILjava/lang/String;)Lcom/htc/store/module/vo/ImageCacheMappingItem;

    move-result-object v8

    .line 1234
    if-nez v8, :cond_6

    .line 1235
    new-instance v9, Lcom/htc/store/module/vo/ImageCacheMappingItem;

    invoke-direct {v9}, Lcom/htc/store/module/vo/ImageCacheMappingItem;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1236
    .end local v8           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .local v9, item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    const/16 v17, 0x1

    :try_start_3
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->setType(I)V

    .line 1237
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->setURL(Ljava/lang/String;)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/htc/store/provider/AccessHelper;->addImageCacheMappingItem(Lcom/htc/store/module/vo/ImageCacheMappingItem;)J

    move-result-wide v6

    .line 1239
    .restart local v6       #id:J
    const-wide/16 v19, 0x0

    cmp-long v17, v6, v19

    if-lez v17, :cond_5

    .line 1240
    invoke-virtual {v9, v6, v7}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->setId(J)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMapping:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v8, v9

    .end local v9           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .restart local v8       #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    goto/16 :goto_0

    .line 1243
    .end local v8           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .restart local v9       #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    :cond_5
    const/4 v8, 0x0

    .end local v9           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .restart local v8       #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    goto/16 :goto_0

    .line 1246
    .end local v6           #id:J
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMapping:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1250
    :catchall_0
    move-exception v17

    :goto_2
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v17

    .line 1264
    .restart local v3       #current:J
    .restart local v5       #filePath:Ljava/lang/String;
    .restart local v6       #id:J
    .restart local v10       #needUpdate:Z
    .restart local v15       #tmpFilePath:Ljava/lang/String;
    :cond_7
    const/4 v14, -0x1

    .line 1265
    .local v14, result:I
    invoke-static {v5}, Lcom/htc/store/util/StorageUtils;->isExisted(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1266
    const/4 v14, 0x1

    .line 1271
    :goto_3
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v14, v0, :cond_9

    const/4 v10, 0x1

    :goto_4
    goto/16 :goto_1

    .line 1268
    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    invoke-static {v0, v15, v1, v2}, Lcom/htc/store/util/DownloadUtils;->retrieveImageWithResult(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v14

    goto :goto_3

    .line 1271
    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    .line 1284
    .end local v14           #result:I
    .restart local v11       #newExpiredTime:J
    :catchall_1
    move-exception v17

    :try_start_5
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v17

    .line 1250
    .end local v3           #current:J
    .end local v5           #filePath:Ljava/lang/String;
    .end local v6           #id:J
    .end local v8           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .end local v10           #needUpdate:Z
    .end local v11           #newExpiredTime:J
    .end local v15           #tmpFilePath:Ljava/lang/String;
    .restart local v9       #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    :catchall_2
    move-exception v17

    move-object v8, v9

    .end local v9           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .restart local v8       #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    goto :goto_2
.end method

.method private getFilterType(I)I
    .locals 2
    .parameter "filterType"

    .prologue
    .line 544
    move v0, p1

    .line 547
    .local v0, result:I
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 548
    add-int/lit8 v0, v0, -0x1

    .line 551
    :cond_0
    return v0
.end method

.method private initView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 225
    const v3, 0x7f0c0018

    invoke-virtual {p0, v3}, Lcom/htc/store/activity/landing/LandingMyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarMiddle;

    iput-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    .line 226
    new-instance v3, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarText:Lcom/htc/widget/HeaderBarText;

    .line 227
    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mOnlineActivityLabel:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarText:Lcom/htc/widget/HeaderBarText;

    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mOnlineActivityLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 232
    :goto_0
    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarText:Lcom/htc/widget/HeaderBarText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 233
    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarMiddle;->addCenterView(Landroid/view/View;)V

    .line 235
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->updateSearchButton()V

    .line 237
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/store/activity/landing/LandingMyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mList:Lcom/htc/widget/HtcListView;

    .line 239
    const v3, 0x1020004

    invoke-virtual {p0, v3}, Lcom/htc/store/activity/landing/LandingMyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mEmptyView:Landroid/widget/LinearLayout;

    .line 240
    const v3, 0x7f0c002a

    invoke-virtual {p0, v3}, Lcom/htc/store/activity/landing/LandingMyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mEmptyText:Landroid/widget/TextView;

    .line 241
    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mEmptyText:Landroid/widget/TextView;

    const v4, 0x7f0a002e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 243
    const v3, 0x7f0c003a

    invoke-virtual {p0, v3}, Lcom/htc/store/activity/landing/LandingMyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mNoAccountView:Landroid/widget/RelativeLayout;

    .line 244
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 245
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const/high16 v3, 0x7f03

    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 246
    .local v2, noAccountView:Landroid/widget/LinearLayout;
    const/high16 v3, 0x7f0c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mNoAccountButton:Landroid/widget/Button;

    .line 247
    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mNoAccountButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "common_button"

    const v6, 0x2080195

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 250
    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mNoAccountButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mNoAccountButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    const v3, 0x7f0c003b

    invoke-virtual {p0, v3}, Lcom/htc/store/activity/landing/LandingMyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    .line 252
    .local v1, noAccountList:Lcom/htc/widget/HtcListView;
    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 253
    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 254
    return-void

    .line 230
    .end local v0           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v1           #noAccountList:Lcom/htc/widget/HtcListView;
    .end local v2           #noAccountView:Landroid/widget/LinearLayout;
    :cond_0
    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarText:Lcom/htc/widget/HeaderBarText;

    const v4, 0x7f0a002b

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    goto/16 :goto_0
.end method

.method private setAdapter()V
    .locals 3

    .prologue
    .line 257
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v1}, Lcom/htc/store/provider/AccessHelper;->findMyActivityItems()Landroid/database/Cursor;

    move-result-object v0

    .line 258
    .local v0, cursor:Landroid/database/Cursor;
    new-instance v1, Lcom/htc/store/module/adapter/MyActivityAdapter;

    const v2, 0x7f030016

    invoke-direct {v1, p0, v2, v0}, Lcom/htc/store/module/adapter/MyActivityAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    .line 259
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mOnDataChangedListener:Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;

    invoke-virtual {v1, v2}, Lcom/htc/store/module/adapter/MyActivityAdapter;->setDataChangedListener(Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;)V

    .line 260
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mMyActivityFilter:Lcom/htc/store/module/adapter/MyActivityAdapter$MyActivityFilter;

    invoke-virtual {v1, v2}, Lcom/htc/store/module/adapter/MyActivityAdapter;->setMyActivitysFilter(Lcom/htc/store/module/adapter/MyActivityAdapter$MyActivityFilter;)V

    .line 261
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    invoke-virtual {v1}, Lcom/htc/store/module/adapter/MyActivityAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mFilter:Landroid/widget/Filter;

    .line 262
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    invoke-virtual {v1}, Lcom/htc/store/module/adapter/MyActivityAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 263
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->updateViewVisibility(I)V

    .line 267
    :goto_0
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 269
    return-void

    .line 265
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->updateViewVisibility(I)V

    goto :goto_0
.end method

.method private setSecondaryTitle(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 272
    packed-switch p1, :pswitch_data_0

    .line 283
    :goto_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 284
    return-void

    .line 274
    :pswitch_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarText:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    goto :goto_0

    .line 277
    :pswitch_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarText:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    goto :goto_0

    .line 280
    :pswitch_2
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarText:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startSearch()V
    .locals 3

    .prologue
    .line 456
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/htc/store/activity/landing/SearchMyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->startActivity(Landroid/content/Intent;)V

    .line 457
    return-void
.end method

.method private updateProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 625
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetMarkedItems:Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetMarkedItems:Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistory:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistory:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetMarkedItemsIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetMarkedItemsIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_4

    .line 629
    :cond_3
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->setProgressVisibility(I)V

    .line 630
    iput-boolean v2, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mRefreshing:Z

    .line 635
    :goto_0
    return-void

    .line 632
    :cond_4
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarMiddle;->setProgressVisibility(I)V

    .line 633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mRefreshing:Z

    goto :goto_0
.end method

.method private updateSearchButton()V
    .locals 2

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/cscore/util/CSUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->removeView(Landroid/view/View;)V

    .line 314
    :goto_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 315
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x2080954

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 317
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f0a006d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 318
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mSearchOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->addRightView(Landroid/view/View;)V

    .line 325
    :cond_0
    :goto_1
    return-void

    .line 312
    :cond_1
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

    goto :goto_0

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private updateViewVisibility(I)V
    .locals 7
    .parameter "whichView"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 291
    sget-object v0, Lcom/htc/store/activity/landing/LandingMyActivity;->TAG:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "updateViewVisibility: "

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    if-ne p1, v5, :cond_1

    .line 293
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mNoAccountView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    if-ne p1, v6, :cond_2

    .line 297
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mNoAccountView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 300
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mNoAccountView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    iput-boolean v4, p0, Lcom/htc/store/activity/BaseActivity;->mHasToSetBackground:Z

    .line 93
    iput-boolean v4, p0, Lcom/htc/store/activity/BaseActivity;->mCheckAccountOnResume:Z

    .line 94
    invoke-super {p0, p1}, Lcom/htc/store/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v1, 0x7f03000f

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->setContentView(I)V

    .line 96
    new-instance v1, Lcom/htc/store/provider/AccessHelper;

    invoke-direct {v1, p0}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 98
    iget-object v1, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v1}, Lcom/htc/store/module/PreferenceManager;->getFilterTypeInMyActivity()I

    move-result v1

    iput v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mFilterType:I

    .line 99
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tab_title_resource"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mOnlineActivityLabel:Ljava/lang/String;

    .line 100
    iput-boolean v4, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mRefreshing:Z

    .line 101
    iput-boolean v4, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mDirtyFlag:Z

    .line 103
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->isHtcAccountExisted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v1}, Lcom/htc/store/module/PreferenceManager;->isAlreadyFirstSync()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iput v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mActionResume:I

    .line 116
    :cond_0
    :goto_0
    sget-object v1, Lcom/htc/store/activity/landing/LandingMyActivity;->TAG:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "mActionResume (onCreate): "

    aput-object v3, v2, v4

    iget v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mActionResume:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/htc/store/activity/landing/LandingMyActivity;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, thread:Landroid/os/HandlerThread;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 120
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 121
    new-instance v1, Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;-><init>(Lcom/htc/store/activity/landing/LandingMyActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mNonUiHandler:Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;

    .line 122
    new-instance v1, Lcom/htc/store/activity/landing/LandingMyActivity$1;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mNonUiHandler:Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;

    invoke-direct {v1, p0, v2}, Lcom/htc/store/activity/landing/LandingMyActivity$1;-><init>(Lcom/htc/store/activity/landing/LandingMyActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mMyActivityChangedObserver:Landroid/database/ContentObserver;

    .line 130
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mMyActivityChangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->initView()V

    .line 133
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->setAdapter()V

    .line 134
    return-void

    .line 114
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_1
    iput v4, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mActionResume:I

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 536
    :goto_0
    if-nez v0, :cond_0

    .line 537
    invoke-super {p0, p1, p2}, Lcom/htc/store/activity/BaseActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 539
    :cond_0
    return-object v0

    .line 485
    :pswitch_0
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0a0004

    invoke-virtual {p0, v3}, Lcom/htc/store/activity/landing/LandingMyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0a0018

    invoke-virtual {p0, v3}, Lcom/htc/store/activity/landing/LandingMyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 489
    .local v1, items:[Ljava/lang/String;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a001c

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mFilterType:I

    invoke-direct {p0, v3}, Lcom/htc/store/activity/landing/LandingMyActivity;->getFilterType(I)I

    move-result v3

    new-instance v4, Lcom/htc/store/activity/landing/LandingMyActivity$4;

    invoke-direct {v4, p0}, Lcom/htc/store/activity/landing/LandingMyActivity$4;-><init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 476
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 359
    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 361
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a05

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 363
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 365
    const v0, 0x7f0a0070

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v5, v5, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080337

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 367
    const v0, 0x7f0a006d

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v6, v6, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080333

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 369
    const/4 v0, 0x5

    const/4 v1, 0x5

    const v2, 0x7f0a006f

    invoke-virtual {p0, v2}, Lcom/htc/store/activity/landing/LandingMyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 371
    const/4 v0, 0x6

    const/4 v1, 0x6

    const v2, 0x7f0a001a

    invoke-virtual {p0, v2}, Lcom/htc/store/activity/landing/LandingMyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208032f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 373
    return v4
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onDestroy()V

    .line 187
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v0}, Lcom/htc/store/module/rest/RestHelper;->destroy()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    invoke-virtual {v0}, Lcom/htc/store/module/adapter/MyActivityAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    invoke-virtual {v0}, Lcom/htc/store/module/adapter/MyActivityAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/store/module/adapter/MyActivityAdapter;->setImageCacheMapping(Ljava/util/HashMap;)V

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    :cond_5
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mMyActivityChangedObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_6

    .line 209
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mMyActivityChangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0}, Landroid/database/ContentObserver;->releaseContentObserver()Landroid/database/IContentObserver;

    .line 211
    :cond_6
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mNonUiHandler:Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;

    if-eqz v0, :cond_7

    .line 212
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mNonUiHandler:Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 214
    :cond_7
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 412
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 413
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 452
    :cond_0
    :goto_0
    return v4

    .line 415
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0a006c

    invoke-virtual {p0, v2}, Lcom/htc/store/activity/landing/LandingMyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->isHtcAccountExisted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->doAction(I)V

    .line 421
    iput-boolean v4, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mRefreshing:Z

    .line 422
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarMiddle;->setProgressVisibility(I)V

    goto :goto_0

    .line 427
    :cond_1
    iput-boolean v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mRefreshing:Z

    .line 428
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarMiddle;->setProgressVisibility(I)V

    goto :goto_0

    .line 434
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/htc/store/activity/landing/LandingMyActivity;->showDialog(I)V

    goto :goto_0

    .line 437
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/htc/store/activity/landing/DeleteMarkedItem;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 440
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/store/util/ActivityUtils;->shareItem(Landroid/content/Context;)V

    goto :goto_0

    .line 443
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->startSearch()V

    goto :goto_0

    .line 446
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/htc/store/activity/setting/SettingMain;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 449
    :pswitch_6
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/store/activity/landing/LandingTab;

    invoke-virtual {v1}, Lcom/htc/store/activity/landing/LandingTab;->enterEditTab()V

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 179
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onPause()V

    .line 180
    iput-boolean v4, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mDirtyFlag:Z

    .line 181
    sget-object v0, Lcom/htc/store/activity/landing/LandingMyActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause() and dirtyFlag is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mDirtyFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter "menu"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 378
    invoke-interface {p1, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 379
    .local v3, refresh:Landroid/view/MenuItem;
    invoke-interface {p1, v7}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 380
    .local v1, filter:Landroid/view/MenuItem;
    const/4 v9, 0x2

    invoke-interface {p1, v9}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 381
    .local v0, deleteMarked:Landroid/view/MenuItem;
    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 382
    .local v5, share:Landroid/view/MenuItem;
    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 384
    .local v4, search:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->isHtcAccountExisted()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 385
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 386
    iget-boolean v9, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mRefreshing:Z

    if-eqz v9, :cond_0

    .line 387
    const v9, 0x7f0a004b

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 388
    const v9, 0x2080339

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 393
    :goto_0
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 394
    iget-object v9, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9}, Lcom/htc/widget/HtcListView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    move v6, v7

    .line 395
    .local v6, visible:Z
    :goto_1
    iget-object v9, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lcom/htc/store/provider/AccessHelper;->hasMyActivityItem(I)Z

    move-result v2

    .line 396
    .local v2, hasMarkedItem:Z
    if-eqz v2, :cond_2

    if-eqz v6, :cond_2

    move v9, v7

    :goto_2
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 397
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 398
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 406
    .end local v2           #hasMarkedItem:Z
    .end local v6           #visible:Z
    :goto_3
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 407
    return v7

    .line 390
    :cond_0
    const v9, 0x7f0a006c

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 391
    const v9, 0x208033b

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    move v6, v8

    .line 394
    goto :goto_1

    .restart local v2       #hasMarkedItem:Z
    .restart local v6       #visible:Z
    :cond_2
    move v9, v8

    .line 396
    goto :goto_2

    .line 400
    .end local v2           #hasMarkedItem:Z
    .end local v6           #visible:Z
    :cond_3
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 401
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 402
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 403
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 404
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->isHtcAccountChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "direct_to"

    const-string v2, "direct_to_my_activity"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "default_tab"

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->finish()V

    .line 143
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/store/util/ActivityUtils;->restartStore(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 145
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onResume()V

    .line 147
    sget-object v1, Lcom/htc/store/activity/landing/LandingMyActivity;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "onResume() and dirtyFlag is "

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mDirtyFlag:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->isHtcAccountExisted()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->checkNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    iput-boolean v5, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mRefreshing:Z

    .line 151
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarMiddle;->setProgressVisibility(I)V

    .line 154
    :cond_1
    sget-object v1, Lcom/htc/store/activity/landing/LandingMyActivity;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "mActionResume (onResume): "

    aput-object v3, v2, v4

    iget v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mActionResume:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mActionResume:I

    if-eqz v1, :cond_3

    .line 156
    new-instance v1, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;

    invoke-direct {v1, p0}, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;-><init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 160
    :goto_0
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->updateProgress()V

    .line 161
    iget v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mFilterType:I

    invoke-direct {p0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->setSecondaryTitle(I)V

    .line 162
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mFilter:Landroid/widget/Filter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 174
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->updateSearchButton()V

    .line 175
    return-void

    .line 158
    :cond_3
    new-instance v1, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;

    invoke-direct {v1, p0, v5}, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;-><init>(Lcom/htc/store/activity/landing/LandingMyActivity;Z)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 164
    :cond_4
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->showNoNetworkDialog()V

    goto :goto_1

    .line 167
    :cond_5
    invoke-direct {p0, v7}, Lcom/htc/store/activity/landing/LandingMyActivity;->updateViewVisibility(I)V

    .line 168
    invoke-direct {p0, v4}, Lcom/htc/store/activity/landing/LandingMyActivity;->setSecondaryTitle(I)V

    .line 169
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    if-eqz v1, :cond_2

    .line 170
    iput-boolean v4, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mRefreshing:Z

    .line 171
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarMiddle;->setProgressVisibility(I)V

    goto :goto_1
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingMyActivity;->startSearch()V

    .line 221
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
