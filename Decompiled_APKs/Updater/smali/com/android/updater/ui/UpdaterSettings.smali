.class public Lcom/android/updater/ui/UpdaterSettings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "UpdaterSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;,
        Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;,
        Lcom/android/updater/ui/UpdaterSettings$UpdaterFinishThread;
    }
.end annotation


# static fields
.field public static final ACTION_FINISH_MAIN_UI:Ljava/lang/String; = "com.android.updater.FINISH_MAIN_UI"

.field private static final DIALOG_ID_CHECKING:I = 0x0

.field private static final DIALOG_ID_SCHEDULE:I = 0x1

.field private static final DIALOG_ID_SCHEDULE_OFF:I = 0x2

.field private static final LOG:Z = false

.field private static final PERIODIC_CHECKIN_KEY:Ljava/lang/String; = "periodic_checkin"

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | UpdaterSettings"


# instance fields
.field private final DELAY_FINISH_TIME:I

.field private final DELAY_SHOW_TIME:I

.field private final ID_LAYOUT:I

.field private final VAR_UPDATER:Ljava/lang/String;

.field private final VAR_WHO_AM_I:Ljava/lang/String;

.field private isNeedToShowProgressActivity:Z

.field private mCancelCheckin:Z

.field private mCheckUpdateThread:Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;

.field private mCheckinDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mCheckinOffDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCheckinOffDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mFinishReceiver:Landroid/content/BroadcastReceiver;

.field private mFromIntent:Landroid/content/Intent;

.field private mIsPeriodicCheckinChecked:Z

.field private mPeriodicCheckinConfirmed:Z

.field private mPeriodicCheckinDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPeriodicCheckinDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPeriodicCheckinPerference:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mWhoAmI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 56
    iput-boolean v0, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinConfirmed:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/updater/ui/UpdaterSettings;->mIsPeriodicCheckinChecked:Z

    .line 62
    const-string v0, "whoami"

    iput-object v0, p0, Lcom/android/updater/ui/UpdaterSettings;->VAR_WHO_AM_I:Ljava/lang/String;

    .line 63
    const-string v0, "updater"

    iput-object v0, p0, Lcom/android/updater/ui/UpdaterSettings;->VAR_UPDATER:Ljava/lang/String;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/updater/ui/UpdaterSettings;->isNeedToShowProgressActivity:Z

    .line 82
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/updater/ui/UpdaterSettings;->DELAY_FINISH_TIME:I

    .line 83
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/updater/ui/UpdaterSettings;->DELAY_SHOW_TIME:I

    .line 86
    new-instance v0, Lcom/android/updater/ui/UpdaterSettings$1;

    invoke-direct {v0, p0}, Lcom/android/updater/ui/UpdaterSettings$1;-><init>(Lcom/android/updater/ui/UpdaterSettings;)V

    iput-object v0, p0, Lcom/android/updater/ui/UpdaterSettings;->mFinishReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/updater/ui/UpdaterSettings;->ID_LAYOUT:I

    .line 113
    new-instance v0, Lcom/android/updater/ui/UpdaterSettings$2;

    invoke-direct {v0, p0}, Lcom/android/updater/ui/UpdaterSettings$2;-><init>(Lcom/android/updater/ui/UpdaterSettings;)V

    iput-object v0, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    new-instance v0, Lcom/android/updater/ui/UpdaterSettings$3;

    invoke-direct {v0, p0}, Lcom/android/updater/ui/UpdaterSettings$3;-><init>(Lcom/android/updater/ui/UpdaterSettings;)V

    iput-object v0, p0, Lcom/android/updater/ui/UpdaterSettings;->mCheckinOffDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 139
    new-instance v0, Lcom/android/updater/ui/UpdaterSettings$4;

    invoke-direct {v0, p0}, Lcom/android/updater/ui/UpdaterSettings$4;-><init>(Lcom/android/updater/ui/UpdaterSettings;)V

    iput-object v0, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 151
    new-instance v0, Lcom/android/updater/ui/UpdaterSettings$5;

    invoke-direct {v0, p0}, Lcom/android/updater/ui/UpdaterSettings$5;-><init>(Lcom/android/updater/ui/UpdaterSettings;)V

    iput-object v0, p0, Lcom/android/updater/ui/UpdaterSettings;->mCheckinOffDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 162
    new-instance v0, Lcom/android/updater/ui/UpdaterSettings$6;

    invoke-direct {v0, p0}, Lcom/android/updater/ui/UpdaterSettings$6;-><init>(Lcom/android/updater/ui/UpdaterSettings;)V

    iput-object v0, p0, Lcom/android/updater/ui/UpdaterSettings;->mCheckinDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 494
    return-void
.end method

.method static synthetic access$000(Lcom/android/updater/ui/UpdaterSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/updater/ui/UpdaterSettings;->isNeedToShowProgressActivity:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/updater/ui/UpdaterSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/updater/ui/UpdaterSettings;->isNeedToShowProgressActivity:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/updater/ui/UpdaterSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterSettings;->acuIsDownloading()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/updater/ui/UpdaterSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings;->mWhoAmI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/updater/ui/UpdaterSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/updater/ui/UpdaterSettings;->mWhoAmI:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/updater/ui/UpdaterSettings;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinPerference:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/updater/ui/UpdaterSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/updater/ui/UpdaterSettings;->setFotaOption(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/updater/ui/UpdaterSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinConfirmed:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/updater/ui/UpdaterSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinConfirmed:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/updater/ui/UpdaterSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/updater/ui/UpdaterSettings;->mIsPeriodicCheckinChecked:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/updater/ui/UpdaterSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/updater/ui/UpdaterSettings;->mCancelCheckin:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/updater/ui/UpdaterSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/updater/ui/UpdaterSettings;->mCancelCheckin:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/updater/ui/UpdaterSettings;)Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings;->mCheckUpdateThread:Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/updater/ui/UpdaterSettings;Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;)Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/updater/ui/UpdaterSettings;->mCheckUpdateThread:Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/updater/ui/UpdaterSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/updater/ui/UpdaterSettings;->startCheckin(Z)V

    return-void
.end method

.method private acuIsDownloading()Z
    .locals 3

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v0

    return v0
.end method

.method private initPreference()V
    .locals 7

    .prologue
    const v6, 0x7f06003f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 441
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "FOTA_periodic_checkin"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 442
    .local v1, fotaOption:I
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "checkin_interval"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$HTCservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 445
    .local v0, checkinInterval:I
    iget-object v4, p0, Lcom/android/updater/ui/UpdaterSettings;->mWhoAmI:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 446
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isFOTADisableProj()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    iget-object v3, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinPerference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 448
    iget-object v3, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinPerference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 449
    iget-object v3, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinPerference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 469
    :goto_0
    return-void

    .line 454
    :cond_0
    if-lez v0, :cond_4

    .line 455
    iget-object v4, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinPerference:Lcom/htc/preference/HtcCheckBoxPreference;

    const v5, 0x7f060011

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 457
    if-nez v1, :cond_2

    .line 458
    iget-object v4, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinPerference:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v5, p0, Lcom/android/updater/ui/UpdaterSettings;->mIsPeriodicCheckinChecked:Z

    if-eqz v5, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 462
    :goto_1
    iget-object v2, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinPerference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 460
    :cond_2
    iget-object v4, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinPerference:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v5, p0, Lcom/android/updater/ui/UpdaterSettings;->mIsPeriodicCheckinChecked:Z

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    .line 465
    :cond_4
    iget-object v3, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinPerference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 466
    iget-object v3, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinPerference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 467
    iget-object v3, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinPerference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setFotaOption(Z)V
    .locals 4
    .parameter "option"

    .prologue
    .line 484
    if-eqz p1, :cond_0

    .line 485
    :try_start_0
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "FOTA_periodic_checkin"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 492
    :goto_0
    return-void

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "FOTA_periodic_checkin"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UpdaterAPK | UpdaterSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFotaOption failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startCheckin(Z)V
    .locals 1
    .parameter "showProgress"

    .prologue
    .line 473
    if-eqz p1, :cond_0

    .line 474
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/updater/ui/UpdaterSettings;->showDialog(I)V

    .line 476
    :cond_0
    new-instance v0, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;

    invoke-direct {v0, p0, p0}, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;-><init>(Lcom/android/updater/ui/UpdaterSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/updater/ui/UpdaterSettings;->mCheckUpdateThread:Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;

    .line 477
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings;->mCheckUpdateThread:Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;

    invoke-virtual {v0}, Lcom/android/updater/ui/UpdaterSettings$CheckUpdateThread;->start()V

    .line 478
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->startCheckin()V

    .line 479
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0x64

    const/4 v9, -0x2

    const/4 v8, -0x1

    .line 182
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    const/high16 v7, 0x7f04

    invoke-virtual {p0, v7}, Lcom/android/updater/ui/UpdaterSettings;->addPreferencesFromResource(I)V

    .line 185
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 186
    .local v2, footerLayout:Landroid/widget/RelativeLayout;
    new-instance v1, Lcom/htc/widget/HtcFooter;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    .line 187
    .local v1, fl:Lcom/htc/widget/HtcFooter;
    new-instance v0, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, butCheckNow:Lcom/htc/widget/HtcFooterButton;
    const v7, 0x7f060018

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 189
    new-instance v7, Lcom/android/updater/ui/UpdaterSettings$7;

    invoke-direct {v7, p0}, Lcom/android/updater/ui/UpdaterSettings$7;-><init>(Lcom/android/updater/ui/UpdaterSettings;)V

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcFooter;->addView(Landroid/view/View;)V

    .line 197
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 198
    .local v5, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xc

    invoke-virtual {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 199
    invoke-virtual {v2, v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->isEndWithTestKey()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 204
    invoke-virtual {v1, v10}, Lcom/htc/widget/HtcFooter;->setId(I)V

    .line 205
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 206
    .local v3, hour:Landroid/widget/TextView;
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->getProvisioningInterval(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, hourText:Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 209
    .local v6, lp2:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x2

    invoke-virtual {v6, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 210
    const/16 v7, 0xb

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 211
    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    .end local v3           #hour:Landroid/widget/TextView;
    .end local v4           #hourText:Ljava/lang/String;
    .end local v6           #lp2:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v7}, Lcom/android/updater/ui/UpdaterSettings;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    const-string v8, "periodic_checkin"

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v7, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinPerference:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 218
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/updater/ui/UpdaterSettings;->mCancelCheckin:Z

    .line 220
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterSettings;->getIntent()Landroid/content/Intent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/updater/ui/UpdaterSettings;->mFromIntent:Landroid/content/Intent;

    .line 221
    iget-object v7, p0, Lcom/android/updater/ui/UpdaterSettings;->mFromIntent:Landroid/content/Intent;

    const-string v8, "whoami"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/updater/ui/UpdaterSettings;->mWhoAmI:Ljava/lang/String;

    .line 222
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const v6, 0x1080027

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 405
    if-nez p1, :cond_0

    .line 406
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 407
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterSettings;->mCheckinDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 409
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 436
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :goto_0
    return-object v0

    .line 411
    :cond_0
    if-ne p1, v5, :cond_1

    .line 412
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c009c

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060016

    iget-object v3, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060017

    iget-object v3, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 419
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 420
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 421
    iput-boolean v5, p0, Lcom/android/updater/ui/UpdaterSettings;->mIsPeriodicCheckinChecked:Z

    goto :goto_0

    .line 423
    .end local v0           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 424
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/updater/ui/UpdaterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060013

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060015

    iget-object v3, p0, Lcom/android/updater/ui/UpdaterSettings;->mCheckinOffDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060025

    iget-object v3, p0, Lcom/android/updater/ui/UpdaterSettings;->mCheckinOffDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 431
    .restart local v0       #dialog:Lcom/htc/widget/HtcAlertDialog;
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterSettings;->mCheckinOffDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 432
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 433
    iput-boolean v5, p0, Lcom/android/updater/ui/UpdaterSettings;->mIsPeriodicCheckinChecked:Z

    goto/16 :goto_0

    .line 436
    .end local v0           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 238
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterSettings;->mFinishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/UpdaterSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UpdaterAPK | UpdaterSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t unregis receiver! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 373
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 376
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->getCheckinStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 378
    iput-boolean v3, p0, Lcom/android/updater/ui/UpdaterSettings;->mCancelCheckin:Z

    .line 381
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/updater/ui/UpdaterSettings;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 384
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "UpdaterAPK | UpdaterSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t dismiss checking dialog. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "HtcPreferenceScreen"
    .parameter "preference"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinPerference:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 391
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinPerference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/updater/ui/UpdaterSettings;->showDialog(I)V

    .line 399
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 395
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/updater/ui/UpdaterSettings;->showDialog(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 249
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 252
    new-instance v0, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;-><init>(Lcom/android/updater/ui/UpdaterSettings;Lcom/android/updater/ui/UpdaterSettings$1;)V

    .line 253
    .local v0, updaterShowProgressThread:Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;
    invoke-virtual {v0}, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;->start()V

    .line 258
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->getCheckinStatus()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 259
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/UpdaterSettings;->showDialog(I)V

    .line 272
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/updater/ui/UpdaterSettings;->initPreference()V

    .line 273
    return-void

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterSettings;->mFromIntent:Landroid/content/Intent;

    const-string v2, "whoami"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    invoke-direct {p0, v3}, Lcom/android/updater/ui/UpdaterSettings;->startCheckin(Z)V

    .line 267
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterSettings;->mFromIntent:Landroid/content/Intent;

    const-string v2, "whoami"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 227
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStart()V

    .line 229
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v0, mFinishFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.updater.FINISH_MAIN_UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterSettings;->mFinishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/updater/ui/UpdaterSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    return-void
.end method
