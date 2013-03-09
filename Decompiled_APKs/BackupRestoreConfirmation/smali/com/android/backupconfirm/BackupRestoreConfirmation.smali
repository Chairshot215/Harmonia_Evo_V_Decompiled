.class public Lcom/android/backupconfirm/BackupRestoreConfirmation;
.super Landroid/app/Activity;
.source "BackupRestoreConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;,
        Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final DID_ACKNOWLEDGE:Ljava/lang/String; = "did_acknowledge"

.field static final MSG_BACKUP_PACKAGE:I = 0x2

.field static final MSG_END_BACKUP:I = 0x3

.field static final MSG_END_RESTORE:I = 0xd

.field static final MSG_RESTORE_PACKAGE:I = 0xc

.field static final MSG_START_BACKUP:I = 0x1

.field static final MSG_START_RESTORE:I = 0xb

.field static final MSG_TIMEOUT:I = 0x64

.field static final TAG:Ljava/lang/String; = "BackupRestoreConfirmation"


# instance fields
.field mAllowButton:Landroid/widget/Button;

.field mBackupManager:Landroid/app/backup/IBackupManager;

.field mCurPassword:Landroid/widget/TextView;

.field mDenyButton:Landroid/widget/Button;

.field mDidAcknowledge:Z

.field mEncPassword:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field mIsEncrypted:Z

.field mMountService:Landroid/os/storage/IMountService;

.field mObserver:Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;

.field mStatusView:Landroid/widget/TextView;

.field mToken:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 284
    return-void
.end method


# virtual methods
.method deviceIsEncrypted()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 264
    :try_start_0
    iget-object v2, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2}, Landroid/os/storage/IMountService;->getEncryptionState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eq v2, v1, :cond_0

    .line 268
    :goto_0
    return v1

    .line 264
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method haveBackupPassword()Z
    .locals 2

    .prologue
    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 276
    :goto_0
    return v1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 135
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, action:Ljava/lang/String;
    const-string v9, "fullback"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 140
    const/high16 v4, 0x7f02

    .line 141
    .local v4, layoutId:I
    const/high16 v7, 0x7f03

    .line 151
    .local v7, titleId:I
    :goto_0
    const-string v9, "conftoken"

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mToken:I

    .line 152
    iget v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mToken:I

    if-gez v9, :cond_3

    .line 153
    const-string v9, "BackupRestoreConfirmation"

    const-string v10, "Backup/restore confirmation requested but no token passed!"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->finish()V

    .line 231
    .end local v4           #layoutId:I
    .end local v7           #titleId:I
    :cond_0
    :goto_1
    return-void

    .line 142
    :cond_1
    const-string v9, "fullrest"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 143
    const v4, 0x7f020001

    .line 144
    .restart local v4       #layoutId:I
    const v7, 0x7f030001

    .restart local v7       #titleId:I
    goto :goto_0

    .line 146
    .end local v4           #layoutId:I
    .end local v7           #titleId:I
    :cond_2
    const-string v9, "BackupRestoreConfirmation"

    const-string v10, "Backup/restore confirmation activity launched with invalid action!"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->finish()V

    goto :goto_1

    .line 158
    .restart local v4       #layoutId:I
    .restart local v7       #titleId:I
    :cond_3
    const-string v9, "backup"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 159
    const-string v9, "mount"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v9

    iput-object v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mMountService:Landroid/os/storage/IMountService;

    .line 161
    new-instance v9, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;

    invoke-virtual {p0}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;-><init>(Lcom/android/backupconfirm/BackupRestoreConfirmation;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mHandler:Landroid/os/Handler;

    .line 162
    invoke-virtual {p0}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v5

    .line 163
    .local v5, oldObserver:Ljava/lang/Object;
    if-nez v5, :cond_5

    .line 164
    new-instance v9, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;

    iget-object v10, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, p0, v10}, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;-><init>(Lcom/android/backupconfirm/BackupRestoreConfirmation;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mObserver:Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;

    .line 170
    .end local v5           #oldObserver:Ljava/lang/Object;
    :goto_2
    invoke-virtual {p0, v7}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->setTitle(I)V

    .line 171
    invoke-virtual {p0, v4}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->setContentView(I)V

    .line 174
    const v9, 0x7f040005

    invoke-virtual {p0, v9}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mStatusView:Landroid/widget/TextView;

    .line 175
    const v9, 0x7f040007

    invoke-virtual {p0, v9}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mAllowButton:Landroid/widget/Button;

    .line 176
    const v9, 0x7f040006

    invoke-virtual {p0, v9}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDenyButton:Landroid/widget/Button;

    .line 178
    const v9, 0x7f040002

    invoke-virtual {p0, v9}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mCurPassword:Landroid/widget/TextView;

    .line 179
    const v9, 0x7f040004

    invoke-virtual {p0, v9}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mEncPassword:Landroid/widget/TextView;

    .line 180
    const v9, 0x7f040001

    invoke-virtual {p0, v9}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 184
    .local v1, curPwDesc:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->deviceIsEncrypted()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mIsEncrypted:Z

    .line 185
    iget-boolean v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mIsEncrypted:Z

    if-eqz v9, :cond_7

    .line 186
    const-string v9, "BackupRestoreConfirmation"

    const-string v10, "Device is encrypted: requiring encryption pw"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const v9, 0x7f040001

    invoke-virtual {p0, v9}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 189
    .local v6, pwPrompt:Landroid/widget/TextView;
    const/high16 v9, 0x7f02

    if-ne v4, v9, :cond_6

    .line 190
    const v9, 0x7f03000a

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 191
    const v9, 0x7f040004

    invoke-virtual {p0, v9}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 192
    .local v8, tv:Landroid/widget/TextView;
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    const v9, 0x7f040003

    invoke-virtual {p0, v9}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #tv:Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 194
    .restart local v8       #tv:Landroid/widget/TextView;
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    .end local v6           #pwPrompt:Landroid/widget/TextView;
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_4
    :goto_3
    iget-object v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mAllowButton:Landroid/widget/Button;

    new-instance v10, Lcom/android/backupconfirm/BackupRestoreConfirmation$1;

    invoke-direct {v10, p0}, Lcom/android/backupconfirm/BackupRestoreConfirmation$1;-><init>(Lcom/android/backupconfirm/BackupRestoreConfirmation;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDenyButton:Landroid/widget/Button;

    new-instance v10, Lcom/android/backupconfirm/BackupRestoreConfirmation$2;

    invoke-direct {v10, p0}, Lcom/android/backupconfirm/BackupRestoreConfirmation$2;-><init>(Lcom/android/backupconfirm/BackupRestoreConfirmation;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    if-eqz p1, :cond_0

    .line 227
    const-string v9, "did_acknowledge"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDidAcknowledge:Z

    .line 228
    iget-object v10, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mAllowButton:Landroid/widget/Button;

    iget-boolean v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDidAcknowledge:Z

    if-nez v9, :cond_8

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v10, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 229
    iget-object v10, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDenyButton:Landroid/widget/Button;

    iget-boolean v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDidAcknowledge:Z

    if-nez v9, :cond_9

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v10, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 166
    .end local v1           #curPwDesc:Landroid/widget/TextView;
    .restart local v5       #oldObserver:Ljava/lang/Object;
    :cond_5
    check-cast v5, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;

    .end local v5           #oldObserver:Ljava/lang/Object;
    iput-object v5, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mObserver:Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;

    .line 167
    iget-object v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mObserver:Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;

    iget-object v10, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->setHandler(Landroid/os/Handler;)V

    goto/16 :goto_2

    .line 196
    .restart local v1       #curPwDesc:Landroid/widget/TextView;
    .restart local v6       #pwPrompt:Landroid/widget/TextView;
    :cond_6
    const v9, 0x7f030009

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 198
    .end local v6           #pwPrompt:Landroid/widget/TextView;
    :cond_7
    invoke-virtual {p0}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->haveBackupPassword()Z

    move-result v9

    if-nez v9, :cond_4

    .line 199
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v9, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mCurPassword:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    const/high16 v9, 0x7f02

    if-ne v4, v9, :cond_4

    .line 202
    const v9, 0x7f040003

    invoke-virtual {p0, v9}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 203
    .local v2, encPwDesc:Landroid/widget/TextView;
    const v9, 0x7f03000c

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 228
    .end local v2           #encPwDesc:Landroid/widget/TextView;
    :cond_8
    const/4 v9, 0x0

    goto :goto_4

    .line 229
    :cond_9
    const/4 v9, 0x0

    goto :goto_5
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mObserver:Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 241
    const-string v0, "did_acknowledge"

    iget-boolean v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDidAcknowledge:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    return-void
.end method

.method sendAcknowledgement(IZLandroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 7
    .parameter "token"
    .parameter "allow"
    .parameter "observer"

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDidAcknowledge:Z

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDidAcknowledge:Z

    .line 249
    :try_start_0
    iget-boolean v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mIsEncrypted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mCurPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 251
    .local v6, encPassword:Ljava/lang/CharSequence;
    :goto_0
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mBackupManager:Landroid/app/backup/IBackupManager;

    iget v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mToken:I

    iget-object v2, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mCurPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mObserver:Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/backup/IBackupManager;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 260
    .end local v6           #encPassword:Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mEncPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    goto :goto_1
.end method
