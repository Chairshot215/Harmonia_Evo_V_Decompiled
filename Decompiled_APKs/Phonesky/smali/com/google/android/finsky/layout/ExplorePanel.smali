.class public Lcom/google/android/finsky/layout/ExplorePanel;
.super Landroid/widget/FrameLayout;
.source "ExplorePanel.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mExploreButton:Landroid/view/View;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/ExplorePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ExplorePanel;->setupExplorer()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/ExplorePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ExplorePanel;->doExplorerWifiAlert()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/ExplorePanel;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/ExplorePanel;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method private doExplorerWifiAlert()V
    .locals 4

    .prologue
    .line 124
    const v1, 0x7f07025e

    const v2, 0x7f0701b5

    const v3, 0x7f070059

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 127
    .local v0, alert:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    iget-object v1, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 128
    iget-object v1, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "explorer_wifi"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method private setupExplorer()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 79
    sget-object v2, Lcom/google/android/finsky/config/G;->explorerEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 83
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/ExplorePanel;->setVisibility(I)V

    .line 85
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const-string v5, "connectivity"

    invoke-virtual {v2, v5}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 88
    .local v1, wifiInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    .local v0, wifiEnabled:Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mWifiView:Landroid/view/View;

    if-eqz v0, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v2, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mWifiView:Landroid/view/View;

    new-instance v3, Lcom/google/android/finsky/layout/ExplorePanel$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/layout/ExplorePanel$2;-><init>(Lcom/google/android/finsky/layout/ExplorePanel;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v2, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mExploreButton:Landroid/view/View;

    new-instance v3, Lcom/google/android/finsky/layout/ExplorePanel$3;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/layout/ExplorePanel$3;-><init>(Lcom/google/android/finsky/layout/ExplorePanel;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .end local v0           #wifiEnabled:Z
    .end local v1           #wifiInfo:Landroid/net/NetworkInfo;
    :goto_1
    return-void

    .restart local v1       #wifiInfo:Landroid/net/NetworkInfo;
    :cond_1
    move v0, v3

    .line 88
    goto :goto_0

    .line 108
    .end local v1           #wifiInfo:Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/ExplorePanel;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public configure(Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .parameter "document"
    .parameter "fragment"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 52
    iput-object p2, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mFragment:Landroid/support/v4/app/Fragment;

    .line 53
    iget-object v0, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mActivity:Landroid/app/Activity;

    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 57
    new-instance v0, Lcom/google/android/finsky/layout/ExplorePanel$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/ExplorePanel$1;-><init>(Lcom/google/android/finsky/layout/ExplorePanel;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ExplorePanel;->setupExplorer()V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ExplorePanel;->requestLayout()V

    .line 68
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 46
    const v0, 0x7f08012c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ExplorePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mWifiView:Landroid/view/View;

    .line 47
    const v0, 0x7f08012b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ExplorePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mExploreButton:Landroid/view/View;

    .line 48
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, 0x4000

    .line 114
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 117
    iget-object v2, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mExploreButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 118
    .local v1, width:I
    iget-object v2, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mExploreButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 119
    .local v0, height:I
    iget-object v2, p0, Lcom/google/android/finsky/layout/ExplorePanel;->mWifiView:Landroid/view/View;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 121
    return-void
.end method
