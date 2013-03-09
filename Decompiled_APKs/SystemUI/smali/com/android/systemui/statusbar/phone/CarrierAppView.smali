.class public Lcom/android/systemui/statusbar/phone/CarrierAppView;
.super Landroid/widget/LinearLayout;
.source "CarrierAppView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarrierAppView"


# instance fields
.field private mCarrierAppIntentAction:Ljava/lang/String;

.field private mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

.field private mContext:Landroid/content/Context;

.field private mIsVisible:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field private mTitleButtonListener:Landroid/view/View$OnClickListener;

.field mUsageInfoMap:Lcom/android/systemui/statusbar/phone/UsageInfoMap;

.field private mUsageInfoViewsLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mUsageInfoViewsLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mIsVisible:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/UsageInfoMap;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/UsageInfoMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mUsageInfoMap:Lcom/android/systemui/statusbar/phone/UsageInfoMap;

    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierAppView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierAppView$1;-><init>(Lcom/android/systemui/statusbar/phone/CarrierAppView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierAppView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierAppView$2;-><init>(Lcom/android/systemui/statusbar/phone/CarrierAppView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mTitleButtonListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->init()V

    return-void
.end method

.method private AddACategoryLabelView(Landroid/widget/LinearLayout;Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    const-string v3, "CarrierAppView"

    const-string v4, "AddACategoryLabelView: mContext is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x2090026

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v3, 0x2020010

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/CarrierAppView;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->handleUsageInfoUpdate(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/CarrierAppView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->updateView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/CarrierAppView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->storePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/CarrierAppView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method private addADividerView(Landroid/widget/LinearLayout;)V
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v1, 0x2080700

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private addAUsageInfoMeterBar(Landroid/widget/LinearLayout;Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    const-string v6, "CarrierAppView"

    const-string v7, "addAUsageMeterBarBySubcategory: mContext is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v6, 0x7f030026

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v6, 0x7f0e00de

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->getSubcategoryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const v6, 0x7f0e00df

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/widget/HtcProgressBar;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->getProgress()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/widget/HtcProgressBar;->setProgress(I)V

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/widget/HtcProgressBar;->setVisibility(I)V

    const v6, 0x7f0e00e0

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mContext:Landroid/content/Context;

    const v8, 0x7f0800c1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->getUsed()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f0e00e1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mContext:Landroid/content/Context;

    const v8, 0x7f0800c2

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->getMax()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private handleUsageInfoUpdate(Landroid/os/Bundle;)V
    .locals 6

    const-string v4, "CarrierAppView"

    const-string v5, "handleUsageInfoUpdate"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "meter_bar_visible"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mIsVisible:Z

    const-string v4, "intent_action"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mCarrierAppIntentAction:Ljava/lang/String;

    :cond_0
    const-string v4, "meter_bar_action"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;-><init>(Landroid/os/Bundle;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;

    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;-><init>(Landroid/os/Bundle;)V

    const-string v4, "ADD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mUsageInfoMap:Lcom/android/systemui/statusbar/phone/UsageInfoMap;

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/statusbar/phone/UsageInfoMap;->addAnUsageInfo(Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;)V

    goto :goto_0

    :cond_3
    const-string v4, "UPDATE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mUsageInfoMap:Lcom/android/systemui/statusbar/phone/UsageInfoMap;

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/statusbar/phone/UsageInfoMap;->updateAnUsageInfo(Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;)V

    goto :goto_0

    :cond_4
    const-string v4, "DELETE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mUsageInfoMap:Lcom/android/systemui/statusbar/phone/UsageInfoMap;

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/statusbar/phone/UsageInfoMap;->deleteAnUsageInfo(Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;)V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    const-string v1, "CarrierAppView"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->loadPreferences()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.CARRIER_APP_UPDATE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private loadPreferences()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "CarrierAppView"

    const-string v2, "loadPreferences"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "CarrierAppView"

    const-string v2, "loadPreferences: mContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mContext:Landroid/content/Context;

    const-string v2, "carrier_app_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "meter_bar_visible"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mIsVisible:Z

    const-string v1, "intent_action"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mCarrierAppIntentAction:Ljava/lang/String;

    goto :goto_0
.end method

.method private removeAllUsageInfoViews()V
    .locals 2

    const-string v0, "CarrierAppView"

    const-string v1, "removeAllUsageInfoViews"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mUsageInfoViewsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mUsageInfoViewsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mUsageInfoViewsLayout:Landroid/widget/LinearLayout;

    :cond_0
    return-void
.end method

.method private storePreferences()V
    .locals 5

    const-string v2, "CarrierAppView"

    const-string v3, "storePreferences"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    const-string v2, "CarrierAppView"

    const-string v3, "storePreferences: mContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mContext:Landroid/content/Context;

    const-string v3, "carrier_app_preferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "meter_bar_visible"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mIsVisible:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "intent_action"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mCarrierAppIntentAction:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private updateUsageInfoViews()V
    .locals 12

    const-string v10, "CarrierAppView"

    const-string v11, "updateUsageInfoView"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mUsageInfoMap:Lcom/android/systemui/statusbar/phone/UsageInfoMap;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/UsageInfoMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;

    invoke-direct {p0, v8, v0}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->AddACategoryLabelView(Landroid/widget/LinearLayout;Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mUsageInfoMap:Lcom/android/systemui/statusbar/phone/UsageInfoMap;

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/phone/UsageInfoMap;->getSubcategoryInfoSet(Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;)Ljava/util/TreeSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/TreeSet;->size()I

    move-result v9

    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;

    invoke-direct {p0, v8, v6}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->addAUsageInfoMeterBar(Landroid/widget/LinearLayout;Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;)V

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v9, :cond_1

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->addADividerView(Landroid/widget/LinearLayout;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->removeAllUsageInfoViews()V

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mUsageInfoViewsLayout:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mUsageInfoViewsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private updateView()V
    .locals 10

    const/16 v9, 0x8

    const/4 v7, 0x0

    const-string v6, "CarrierAppView"

    const-string v8, "updateView"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v6, 0x7f0e004b

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/TitleView;

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mIsVisible:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/phone/TitleView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->removeAllUsageInfoViews()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mCarrierAppIntentAction:Ljava/lang/String;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    const-string v6, "CarrierAppView"

    const-string v7, "Cannot get info of carrier app."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/phone/TitleView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v7

    goto :goto_1

    :cond_2
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    const v8, 0x7f0e00b0

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/phone/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/TitleView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->updateUsageInfoViews()V

    goto :goto_0

    :cond_3
    const-string v6, "CarrierAppView"

    const-string v7, "Cannot get name of carrier app."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/phone/TitleView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const-string v0, "CarrierAppView"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->updateView()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->updateResources()V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method

.method public updateResources()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TitleView;->updateResources()V

    :cond_1
    return-void
.end method
