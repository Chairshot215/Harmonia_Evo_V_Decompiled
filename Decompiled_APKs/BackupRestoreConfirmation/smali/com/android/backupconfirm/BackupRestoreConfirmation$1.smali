.class Lcom/android/backupconfirm/BackupRestoreConfirmation$1;
.super Ljava/lang/Object;
.source "BackupRestoreConfirmation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/backupconfirm/BackupRestoreConfirmation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;


# direct methods
.method constructor <init>(Lcom/android/backupconfirm/BackupRestoreConfirmation;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$1;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 210
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$1;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    iget-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$1;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    iget v1, v1, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mToken:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$1;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    iget-object v3, v3, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mObserver:Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->sendAcknowledgement(IZLandroid/app/backup/IFullBackupRestoreObserver;)V

    .line 211
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$1;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    iget-object v0, v0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mAllowButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$1;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    iget-object v0, v0, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDenyButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    return-void
.end method
