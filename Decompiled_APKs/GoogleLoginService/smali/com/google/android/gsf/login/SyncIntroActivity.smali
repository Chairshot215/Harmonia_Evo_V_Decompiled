.class public Lcom/google/android/gsf/login/SyncIntroActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "SyncIntroActivity.java"


# static fields
.field private static final RESTORE_INTENT:Landroid/content/Intent;


# instance fields
.field private mAgreeBackup:Landroid/widget/CompoundButton;

.field private mAgreeRestore:Landroid/widget/CompoundButton;

.field private final mBackupServiceConnection:Landroid/content/ServiceConnection;

.field private mDoneButton:Landroid/view/View;

.field protected mHandler:Landroid/os/Handler;

.field private mPrimaryMessage:Landroid/widget/TextView;

.field private mState:I

.field private mSyncSettings:Landroid/widget/ListView;

.field private mTopDivider:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_RESTORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/login/SyncIntroActivity;->RESTORE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    .line 225
    new-instance v0, Lcom/google/android/gsf/login/SyncIntroActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/SyncIntroActivity$1;-><init>(Lcom/google/android/gsf/login/SyncIntroActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mHandler:Landroid/os/Handler;

    .line 240
    new-instance v0, Lcom/google/android/gsf/login/SyncIntroActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/SyncIntroActivity$2;-><init>(Lcom/google/android/gsf/login/SyncIntroActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mBackupServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/SyncIntroActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->onRestoreDone()V

    return-void
.end method

.method protected static enableBackup(Landroid/content/Context;Z)Z
    .locals 5
    .parameter "ctx"
    .parameter "enable"

    .prologue
    .line 332
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.backup.BackupEnabler"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, bI:Landroid/content/Intent;
    const-string v2, "BACKUP_ENABLE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 335
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local p1
    :goto_0
    return p1

    .line 337
    .restart local p1
    :catch_0
    move-exception v1

    .line 338
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not enable backup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private onRestoreDone()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    .line 348
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->setupSyncEnableBackup()V

    .line 349
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SyncIntroActivity;->setResult(I)V

    .line 350
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->finish()V

    .line 351
    return-void
.end method

.method private showRestoringScreen()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 354
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mDoneButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 356
    const v1, 0x7f0800fd

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SyncIntroActivity;->setTitle(I)V

    .line 358
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mTopDivider:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mTopDivider:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mPrimaryMessage:Landroid/widget/TextView;

    const v2, 0x7f0800fe

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SyncIntroActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mPrimaryMessage:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    const v1, 0x7f0c0049

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 364
    const v1, 0x7f0c004c

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 365
    .local v0, backupView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 368
    :cond_1
    return-void
.end method


# virtual methods
.method protected backupExists()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.google.android.backup"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 163
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.google.android.backup.BackupEnabler"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 165
    .local v0, bi:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 169
    .end local v0           #bi:Landroid/content/pm/ResolveInfo;
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v3

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "GLSActivity"

    const-string v5, "Could not find Backup package: com.google.android.backup"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "bundle"

    .prologue
    const/16 v10, 0x8

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 94
    .local v6, launchIntent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v8, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mIsNewAccount:Z

    .line 95
    .local v0, accountWasNewlyCreated:Z
    const v8, 0x7f03001c

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->setContentView(I)V

    .line 97
    const v8, 0x7f0c0048

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mPrimaryMessage:Landroid/widget/TextView;

    .line 98
    const v8, 0x7f0c004a

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mDoneButton:Landroid/view/View;

    .line 99
    const v8, 0x7f0c0013

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CompoundButton;

    iput-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    .line 100
    const v8, 0x7f0c004e

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CompoundButton;

    iput-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    .line 101
    const v8, 0x7f0c0004

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mTopDivider:Landroid/widget/ProgressBar;

    .line 103
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mTopDivider:Landroid/widget/ProgressBar;

    if-eqz v8, :cond_0

    .line 104
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mTopDivider:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v11}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 105
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mTopDivider:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 106
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mTopDivider:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 109
    :cond_0
    const v8, 0x7f0c004d

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, agreeRestoreLayout:Landroid/view/View;
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v8, v8, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSetupWizard:Z

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->backupExists()Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v0, :cond_4

    move v2, v11

    .line 113
    .local v2, allowRestore:Z
    :goto_0
    if-eqz v2, :cond_5

    move v8, v9

    :goto_1
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/google/android/gsf/login/BaseActivity;->isFirstGoogleAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 119
    .local v4, first:Z
    if-eqz v4, :cond_7

    .line 120
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 121
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 122
    if-eqz v0, :cond_6

    .line 123
    const v8, 0x7f080144

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->setTitle(I)V

    .line 127
    :goto_2
    if-nez v2, :cond_1

    .line 128
    const v8, 0x7f0c0012

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v10, 0x7f0800f5

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 142
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    const v10, 0x7f0c004b

    invoke-virtual {v8, v10}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/ListFragment;

    .line 144
    .local v5, fragment:Landroid/support/v4/app/ListFragment;
    invoke-virtual {v5}, Landroid/support/v4/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSyncSettings:Landroid/widget/ListView;

    .line 147
    const v8, 0x7f0c0049

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 148
    .local v7, layout:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_2

    const/4 v9, 0x4

    :cond_2
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mDoneButton:Landroid/view/View;

    invoke-virtual {p0, v8, v11}, Lcom/google/android/gsf/login/SyncIntroActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 152
    if-eqz p1, :cond_3

    .line 153
    const-string v8, "instance_state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    .line 154
    iget v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    if-ne v8, v11, :cond_3

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->performRestore()V

    .line 158
    :cond_3
    return-void

    .end local v2           #allowRestore:Z
    .end local v4           #first:Z
    .end local v5           #fragment:Landroid/support/v4/app/ListFragment;
    .end local v7           #layout:Landroid/widget/LinearLayout;
    :cond_4
    move v2, v9

    .line 110
    goto :goto_0

    .restart local v2       #allowRestore:Z
    :cond_5
    move v8, v10

    .line 113
    goto :goto_1

    .line 125
    .restart local v4       #first:Z
    :cond_6
    const v8, 0x7f080143

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->setTitle(I)V

    goto :goto_2

    .line 132
    :cond_7
    iget-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 133
    const v8, 0x7f0c004c

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 134
    .local v3, backupView:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 135
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 138
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onDestroy()V

    .line 182
    :try_start_0
    iget v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mBackupServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SyncIntroActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 175
    const-string v0, "instance_state"

    iget v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    return-void
.end method

.method public performRestore()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    .line 263
    invoke-direct {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->showRestoringScreen()V

    .line 266
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser;->setBackupAccount()Z

    .line 268
    sget-object v0, Lcom/google/android/gsf/login/SyncIntroActivity;->RESTORE_INTENT:Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mBackupServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gsf/login/SyncIntroActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    const-string v0, "GLSActivity"

    const-string v1, "Could not connect to restore service... skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v0, "GLSActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    const-string v0, "GLSActivity"

    const-string v1, "Starting restore service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_2
    sget-object v0, Lcom/google/android/gsf/login/SyncIntroActivity;->RESTORE_INTENT:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SyncIntroActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setupSyncEnableBackup()V
    .locals 17

    .prologue
    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 285
    .local v9, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/login/SyncIntroActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    invoke-virtual {v14}, Lcom/google/android/gsf/loginservice/GLSUser;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 287
    .local v1, account:Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v14, v14, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/google/android/gsf/login/BaseActivity;->isFirstGoogleAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 291
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v13

    .line 293
    .local v13, syncAdapters:[Landroid/content/SyncAdapterType;
    move-object v2, v13

    .local v2, arr$:[Landroid/content/SyncAdapterType;
    array-length v11, v2

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v11, :cond_0

    aget-object v12, v2, v8

    .line 294
    .local v12, sa:Landroid/content/SyncAdapterType;
    iget-object v14, v12, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-static {v1, v14, v15}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 293
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 296
    .end local v12           #sa:Landroid/content/SyncAdapterType;
    :cond_0
    sget-object v14, Lcom/google/android/gsf/login/SyncIntroActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    array-length v15, v13

    iput v15, v14, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mSyncEnabledCount:I

    .line 321
    .end local v2           #arr$:[Landroid/content/SyncAdapterType;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .end local v13           #syncAdapters:[Landroid/content/SyncAdapterType;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    invoke-virtual {v14}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 322
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/login/SyncIntroActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    invoke-virtual {v14}, Lcom/google/android/gsf/loginservice/GLSUser;->setBackupAccount()Z

    .line 323
    sget-object v14, Lcom/google/android/gsf/login/SyncIntroActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v15, v15, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    iput-object v15, v14, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mBackupUserSet:Ljava/lang/String;

    .line 324
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    invoke-virtual {v14}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/google/android/gsf/login/SyncIntroActivity;->enableBackup(Landroid/content/Context;Z)Z

    .line 326
    :cond_1
    return-void

    .line 298
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSyncSettings:Landroid/widget/ListView;

    invoke-virtual {v14}, Landroid/widget/ListView;->getCount()I

    move-result v5

    .line 299
    .local v5, count:I
    const/4 v6, 0x0

    .line 300
    .local v6, enabledCnt:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v5, :cond_6

    .line 301
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSyncSettings:Landroid/widget/ListView;

    invoke-virtual {v14, v7}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;

    .line 303
    .local v10, item:Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;
    invoke-virtual {v10}, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->getSyncAdapterType()Landroid/content/SyncAdapterType;

    move-result-object v14

    iget-object v3, v14, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 304
    .local v3, authority:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSyncSettings:Landroid/widget/ListView;

    invoke-virtual {v14, v7}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    .line 305
    .local v4, checked:Z
    const-string v14, "GLSActivity"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 306
    const-string v14, "GLSActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Setting auto sync for account="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " authority="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_3
    invoke-static {v1, v3, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 310
    const-string v14, "GLSActivity"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 311
    const-string v14, "GLSActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Requesting sync for account="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " authority="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_4
    if-eqz v4, :cond_5

    .line 315
    add-int/lit8 v6, v6, 0x1

    .line 300
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 318
    .end local v3           #authority:Ljava/lang/String;
    .end local v4           #checked:Z
    .end local v10           #item:Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;
    :cond_6
    sget-object v14, Lcom/google/android/gsf/login/SyncIntroActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iput v6, v14, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mSyncEnabledCount:I

    goto/16 :goto_1
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 195
    iget v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 203
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->performRestore()V

    .line 223
    :goto_0
    return-void

    .line 198
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SyncIntroActivity;->setResult(I)V

    .line 199
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->finish()V

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->setupSyncEnableBackup()V

    .line 217
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SyncIntroActivity;->setResult(I)V

    .line 218
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->finish()V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
