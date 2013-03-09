.class public Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;
.super Landroid/app/Fragment;
.source "HtcEncryptionSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$3;,
        Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;,
        Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;
    }
.end annotation


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37

.field public static final KEY_ACTION_TYPE:Ljava/lang/String; = "action_type"

.field public static final KEY_STORAGE_TYPE:Ljava/lang/String; = "storage_type"

.field private static final MIN_BATTERY_LEVEL:I = 0x50

.field private static final MIN_CHARGER_BATTERY_LEVEL:I = 0x1e

.field static final MIN_PASSWORD_QUALITY:I = 0x20000

.field private static final TAG:Ljava/lang/String; = "HtcEncryptionSettings"


# instance fields
.field private mActionType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

.field private mBatteryWarning:Landroid/widget/TextView;

.field private mContentView:Landroid/view/View;

.field private mDescription:Landroid/widget/TextView;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerWarning:Landroid/widget/TextView;

.field private mStorageType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

.field private mTitleId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 42
    sget-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->NONE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mActionType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    .line 50
    sget-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->NONE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mStorageType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    .line 75
    new-instance v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$1;-><init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    new-instance v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;-><init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mInitiateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mPowerWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mBatteryWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .parameter "request"

    .prologue
    .line 248
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 249
    .local v0, quality:I
    const/high16 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 250
    const/4 v2, 0x0

    .line 254
    :goto_0
    return v2

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 254
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v3, 0x7f0c0a66

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0c0a67

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method

.method private showFinalConfirmation(Ljava/lang/String;)V
    .locals 7
    .parameter "password"

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 284
    .local v2, bundle:Landroid/os/Bundle;
    const-string v0, "password"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mTitleId:I

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 292
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 223
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 224
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.app.action.START_ENCRYPTION"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 226
    const-string v4, "device_policy"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 228
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v3

    .line 230
    .local v3, status:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 233
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 237
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v3           #status:I
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 262
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 264
    const/16 v1, 0x37

    if-eq p1, v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 271
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 276
    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->showFinalConfirmation(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v1, 0x0

    const v4, 0x7f0c06eb

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 138
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->values()[Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    move-result-object v2

    const-string v3, "action_type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mActionType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    .line 139
    invoke-static {}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->values()[Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    move-result-object v2

    const-string v3, "storage_type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mStorageType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    .line 145
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isP0004:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mStorageType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    sget-object v3, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    if-ne v2, v3, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 195
    :goto_0
    return-object v1

    .line 151
    :cond_0
    const v2, 0x7f04003c

    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mContentView:Landroid/view/View;

    .line 153
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 154
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mDescription:Landroid/widget/TextView;

    .line 157
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f08004c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mPowerWarning:Landroid/widget/TextView;

    .line 158
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f08004b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mBatteryWarning:Landroid/widget/TextView;

    .line 160
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mInitiateButton:Landroid/widget/Button;

    .line 161
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mInitiateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    sget-object v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$3;->$SwitchMap$com$android$settings$framework$activity$storage$threelm$HtcEncryptionSettings$StorageType:[I

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mStorageType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    invoke-virtual {v2}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 195
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 165
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mActionType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    sget-object v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->ENCRYPT:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    if-ne v1, v2, :cond_2

    .line 166
    const v1, 0x7f0c06ec

    iput v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mTitleId:I

    .line 167
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mDescription:Landroid/widget/TextView;

    const v2, 0x7f0c06ed

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 169
    :cond_2
    const v1, 0x7f0c06ef

    iput v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mTitleId:I

    .line 170
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mDescription:Landroid/widget/TextView;

    const v2, 0x7f0c06f0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 175
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mActionType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    sget-object v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->ENCRYPT:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    if-ne v1, v2, :cond_3

    .line 176
    const v1, 0x7f0c06f2

    iput v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mTitleId:I

    .line 177
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mDescription:Landroid/widget/TextView;

    const v2, 0x7f0c06f3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 179
    :cond_3
    const v1, 0x7f0c06f5

    iput v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mTitleId:I

    .line 180
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mDescription:Landroid/widget/TextView;

    const v2, 0x7f0c06f6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 185
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mActionType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    sget-object v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->ENCRYPT:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    if-ne v1, v2, :cond_1

    .line 186
    const v1, 0x7f0c06f8

    iput v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mTitleId:I

    .line 187
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mDescription:Landroid/widget/TextView;

    const v2, 0x7f0c06f9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 209
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mStorageType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    sget-object v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    if-ne v0, v1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 201
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mStorageType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    sget-object v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    if-ne v0, v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    :cond_0
    return-void
.end method
