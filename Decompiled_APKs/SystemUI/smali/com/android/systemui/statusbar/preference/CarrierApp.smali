.class public Lcom/android/systemui/statusbar/preference/CarrierApp;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "CarrierApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/preference/CarrierApp$CustomizationInfo;
    }
.end annotation


# static fields
.field public static final CARRIER_APP_INTENT_ACTION:Ljava/lang/String; = "intent_action"

.field public static final CARRIER_APP_METER_BAR_ACTION:Ljava/lang/String; = "meter_bar_action"

.field public static final CARRIER_APP_METER_BAR_ACTION_ADD:Ljava/lang/String; = "ADD"

.field public static final CARRIER_APP_METER_BAR_ACTION_DELETE:Ljava/lang/String; = "DELETE"

.field public static final CARRIER_APP_METER_BAR_ACTION_UPDATE:Ljava/lang/String; = "UPDATE"

.field public static final CARRIER_APP_METER_BAR_CATEGORY:Ljava/lang/String; = "meter_bar_category"

.field public static final CARRIER_APP_METER_BAR_CATEGORY_KEY:Ljava/lang/String; = "meter_bar_category_key"

.field public static final CARRIER_APP_METER_BAR_MAX:Ljava/lang/String; = "meter_bar_max"

.field public static final CARRIER_APP_METER_BAR_PROGRESS:Ljava/lang/String; = "meter_bar_progress"

.field public static final CARRIER_APP_METER_BAR_SUBCATEGORY:Ljava/lang/String; = "meter_bar_subcategory"

.field public static final CARRIER_APP_METER_BAR_SUBCATEGORY_KEY:Ljava/lang/String; = "meter_bar_subcategory_key"

.field public static final CARRIER_APP_METER_BAR_UNIT:Ljava/lang/String; = "meter_bar_unit"

.field public static final CARRIER_APP_METER_BAR_USED:Ljava/lang/String; = "meter_bar_used"

.field public static final CARRIER_APP_METER_BAR_VISIBLE:Ljava/lang/String; = "meter_bar_visible"

.field public static final CARRIER_APP_SHORTCUT_VISIBLE:Ljava/lang/String; = "shortcut_visible"

.field public static final CARRIER_APP_UPDATE_ACTION:Ljava/lang/String; = "com.android.systemui.CARRIER_APP_UPDATE_ACTION"

.field public static final FILE_NAME:Ljava/lang/String; = "carrier_app_preferences"

.field private static final TAG:Ljava/lang/String; = "CarrierAppStatusBarPreference"


# instance fields
.field private mCarrierAppIcon:Landroid/graphics/drawable/Drawable;

.field private mCarrierAppIntentAction:Ljava/lang/String;

.field private mCarrierAppName:Ljava/lang/String;

.field private mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIntentAction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIcon:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/android/systemui/statusbar/preference/CarrierApp$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/CarrierApp$1;-><init>(Lcom/android/systemui/statusbar/preference/CarrierApp;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/CarrierApp;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/CarrierApp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 10

    const/4 v9, 0x0

    const-string v6, "CarrierAppStatusBarPreference"

    const-string v7, "init"

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/preference/CarrierApp;->logV(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/preference/CarrierApp$CustomizationInfo;->getAllCustomerIntentActions()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    iput-object v3, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIntentAction:Ljava/lang/String;

    const-string v6, "CarrierAppStatusBarPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Find activities for intent action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/preference/CarrierApp;->logV(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v6, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppName:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v6, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/CarrierApp;->updateView()V

    return-void
.end method

.method private static logV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private updateView()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v0, "CarrierAppStatusBarPreference"

    const-string v1, "updateView"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/preference/CarrierApp;->logV(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIntentAction:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "CarrierAppStatusBarPreference"

    const-string v1, "No action to launch Carrier App."

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/preference/CarrierApp;->logV(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/CarrierApp;->setVisibility(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const-string v0, "CarrierAppStatusBarPreference"

    const-string v1, "Cannot get name of carrier app."

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/preference/CarrierApp;->logV(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/CarrierApp;->setVisibility(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public updateResources()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    return-void
.end method
