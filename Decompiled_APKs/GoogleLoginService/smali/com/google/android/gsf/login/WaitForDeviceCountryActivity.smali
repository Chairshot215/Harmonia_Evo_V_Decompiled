.class public Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "WaitForDeviceCountryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static testMode:Z


# instance fields
.field private final WAITING_FOR_DEVICE_COUNTRY_TIMEOUT:I

.field private mCancelButton:Landroid/widget/Button;

.field private final mGservicesChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private final mTimeOutWaitingForDeviceCountry:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->testMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 54
    new-instance v0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity$1;-><init>(Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mGservicesChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->WAITING_FOR_DEVICE_COUNTRY_TIMEOUT:I

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity$2;-><init>(Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mTimeOutWaitingForDeviceCountry:Ljava/lang/Runnable;

    return-void
.end method

.method public static haveCheckin(Landroid/content/ContentResolver;)Z
    .locals 3
    .parameter "cr"

    .prologue
    const/4 v1, 0x0

    .line 136
    sget-boolean v2, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->testMode:Z

    if-eqz v2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v1

    .line 139
    :cond_1
    const-string v2, "digest"

    invoke-static {p0, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, digest:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 124
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->setContentView(I)V

    .line 125
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mCancelButton:Landroid/widget/Button;

    .line 126
    iget-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 131
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->returnResult(ILandroid/content/Intent;)V

    .line 133
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v2, -0x1

    .line 86
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->haveCheckin(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->returnResult(I)V

    .line 113
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mGservicesChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->haveCheckin(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->returnResult(I)V

    goto :goto_0

    .line 107
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.server.checkin.CHECKIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    invoke-direct {p0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->initView()V

    .line 112
    iget-object v1, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mTimeOutWaitingForDeviceCountry:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onDestroy()V

    .line 118
    iget-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mGservicesChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mGservicesChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    :cond_0
    return-void
.end method
