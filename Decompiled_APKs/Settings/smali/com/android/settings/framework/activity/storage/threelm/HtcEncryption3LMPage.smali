.class public Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;
.super Landroid/app/Fragment;
.source "HtcEncryption3LMPage.java"


# static fields
.field private static final MIN_BATTERY_LEVEL:I = 0x50

.field private static final MIN_CHARGER_BATTERY_LEVEL:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "HtcEncryption3LMPage"


# instance fields
.field private mBatteryWarning:Landroid/widget/TextView;

.field private mContentView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerWarning:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 45
    new-instance v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$1;-><init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    new-instance v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;-><init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mInitiateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mPowerWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mBatteryWarning:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 161
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 162
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.app.action.START_ENCRYPTION"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    const-string v4, "device_policy"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 166
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v3

    .line 168
    .local v3, status:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 175
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v3           #status:I
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v0, 0x0

    .line 121
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isP0004:Z

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 137
    :goto_0
    return-object v0

    .line 126
    :cond_0
    const v1, 0x7f04003c

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mContentView:Landroid/view/View;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mIntentFilter:Landroid/content/IntentFilter;

    .line 129
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mContentView:Landroid/view/View;

    const v1, 0x7f08004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mPowerWarning:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mContentView:Landroid/view/View;

    const v1, 0x7f08004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mBatteryWarning:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mContentView:Landroid/view/View;

    const v1, 0x7f08004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mInitiateButton:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mContentView:Landroid/view/View;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    return-void
.end method
