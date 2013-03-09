.class public Lcom/android/systemui/statusbar/preference/AutoSync;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "AutoSync.java"


# static fields
.field public static final SYNC_SETTING_CHANGED_INTENT:Ljava/lang/String; = "com.android.sync.SYNC_CONN_STATUS_CHANGED"

.field private static final TAG:Ljava/lang/String; = "AutoSyncStatusBarPreference"


# instance fields
.field private mAutoSyncFilter:Landroid/content/IntentFilter;

.field private final mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mResContext:Landroid/content/Context;

.field mbAutoSyncSetting:Z

.field private mbRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mAutoSyncFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbRegistered:Z

    new-instance v0, Lcom/android/systemui/statusbar/preference/AutoSync$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/AutoSync$1;-><init>(Lcom/android/systemui/statusbar/preference/AutoSync;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mClickListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/AutoSync$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/AutoSync$2;-><init>(Lcom/android/systemui/statusbar/preference/AutoSync;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mResContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/AutoSync;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/AutoSync;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/AutoSync;->updateUI()V

    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mAutoSyncFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f08009b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/preference/AutoSync;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/AutoSync;->updateUI()V

    return-void
.end method

.method private updateUI()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/AutoSync;->getAutoSyncSetting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbAutoSyncSetting:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbAutoSyncSetting:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbAutoSyncSetting:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v1, 0x104039f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v1, 0x10403a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public getAutoSyncSetting()Z
    .locals 1

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/AutoSync;->getAutoSyncSetting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbAutoSyncSetting:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/AutoSync;->registerReceiver()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/AutoSync;->unRegisterReceiver()V

    return-void
.end method

.method public registerReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mAutoSyncFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    const-string v0, "AutoSyncStatusBarPreference"

    const-string v1, "mAutoSyncFilter == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mResContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbRegistered:Z

    if-nez v0, :cond_0

    const-string v0, "AutoSyncStatusBarPreference"

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mResContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mAutoSyncFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbRegistered:Z

    goto :goto_0
.end method

.method public setAutoSyncSetting(Z)V
    .locals 0

    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    return-void
.end method

.method public unRegisterReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mResContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mResContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbRegistered:Z

    :cond_0
    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f08009b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
