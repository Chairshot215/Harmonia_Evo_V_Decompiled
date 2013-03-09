.class public Lcom/android/systemui/statusbar/phone/CarrierLabel;
.super Landroid/widget/LinearLayout;
.source "CarrierLabel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarrierLabel"

.field static final defaultSeachString:Ljava/lang/String; = "Looking for Service"


# instance fields
.field private mAirplaneMode:Z

.field private mAttached:Z

.field mCdmaSearchingString:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNWKRunnable:Ljava/lang/Runnable;

.field private mNWKSearchingHandler:Landroid/os/Handler;

.field mPLMN:Ljava/lang/String;

.field private mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

.field mSPN:Ljava/lang/String;

.field mSearchingIdx:I

.field mSearchingString:[I

.field mServiceStatus:I

.field mShowPlmn:Z

.field mShowSpn:Z

.field private mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mSpnLabel:Landroid/widget/TextView;

.field mUnregisteredSIM:Z

.field private mUnregisteredSIMCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v1, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    iput v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceStatus:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingString:[I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAirplaneMode:Z

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "Looking for Service"

    aput-object v1, v0, v2

    const-string v1, "Looking for Service"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "Looking for Service"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Looking for Service"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCdmaSearchingString:[Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mContext:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x28t 0x1t 0xct 0x2t
        0x29t 0x1t 0xct 0x2t
        0x2at 0x1t 0xct 0x2t
        0x2bt 0x1t 0xct 0x2t
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/CarrierLabel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mUnregisteredSIMCode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateCdmaRoamingIcon()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/CarrierLabel;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateIccState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateAirplaneMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateAirplaneMode()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_ONLY:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAirplaneMode:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAirplaneMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const v2, 0x20c0125

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private final updateCdmaRoamingIcon()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex()I

    move-result v0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode()I

    move-result v1

    if-ne v0, v5, :cond_1

    const-string v3, "CarrierLabel"

    const-string v4, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-ne v1, v5, :cond_2

    const-string v3, "CarrierLabel"

    const-string v4, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-ne v0, v7, :cond_3

    const-string v3, "CarrierLabel"

    const-string v4, "Cdma ROAMING_INDICATOR_OFF, removing ERI icon"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setTextBlinkable(Z)V

    goto :goto_0

    :cond_3
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setTextBlinkable(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setTextBlinkable(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateEccForAus()V
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x38

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xac

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x73

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    const v1, 0x20c0127

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateIccState(Landroid/content/Intent;)V
    .locals 3

    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkNameExt()V

    return-void

    :cond_0
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_1
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_2
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_4
    const-string v2, "ICC_FAIL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_5
    const-string v2, "IMEI_LOCK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_6
    const-string v2, "ICC_EXPIRED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_ONLY:Z

    if-nez v1, :cond_0

    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_ONLY:Z

    if-eqz v1, :cond_1

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const v0, 0x7f0e0060

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const v0, 0x7f0e007c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setCustomText()V

    return-void
.end method

.method public setCustomText()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_custom_statusbartext"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setVisibility(I)V

    if-eqz p4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    invoke-virtual {v1, p4}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const v2, 0x10402dc

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const v2, 0x20c01a3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method updateNetworkNameExt()V
    .locals 8

    const/16 v7, 0x94

    const/16 v6, 0x50

    const/4 v5, 0x2

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v0, "CarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkNameExt: mSimState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const v1, 0x20c0125

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isWIFIOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CarrierLabel"

    const-string v1, "HtcBuildUtils.isWIFIOnly()"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_WORDING_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const v1, 0x104054b

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateEccForAus()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isAsiaCHSOpenChannel()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const v1, 0x104054c

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const v1, 0x10402ea

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_WORDING_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const v1, 0x104054d

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateEccForAus()V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isAsiaCHSOpenChannel()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const v1, 0x104054e

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_2

    :cond_7
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v6, :cond_8

    const-string v0, "gsm.sim.numeric.types"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const v1, 0x7f08009f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const v1, 0x20c0198

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    goto/16 :goto_0

    :cond_a
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v6, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mUnregisteredSIM:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const v1, 0x7f0800c3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    goto/16 :goto_0

    :cond_b
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mUnregisteredSIMCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    goto/16 :goto_0

    :cond_c
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceStatus:I

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShowSpn:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSPN:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShowPlmn:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPLMN:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v5, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_e
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v7, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCdmaSearchingString:[Ljava/lang/String;

    iput v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingString:[I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    goto :goto_3

    :cond_10
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceStatus:I

    if-ne v0, v5, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const v1, 0x20c0127

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const v1, 0x20c0126

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const v1, 0x20c01a3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    goto/16 :goto_0
.end method

.method updateResources()V
    .locals 2

    const-string v0, "CarrierLabel"

    const-string v1, "updateResources()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkNameExt()V

    return-void
.end method
