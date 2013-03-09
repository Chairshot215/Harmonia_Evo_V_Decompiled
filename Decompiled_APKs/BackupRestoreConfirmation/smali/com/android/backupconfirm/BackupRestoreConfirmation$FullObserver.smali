.class Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;
.super Landroid/app/backup/IFullBackupRestoreObserver$Stub;
.source "BackupRestoreConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/backupconfirm/BackupRestoreConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;


# direct methods
.method public constructor <init>(Lcom/android/backupconfirm/BackupRestoreConfirmation;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "h"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    invoke-direct {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;-><init>()V

    .line 288
    iput-object p2, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    .line 289
    return-void
.end method


# virtual methods
.method public onBackupPackage(Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 306
    return-void
.end method

.method public onEndBackup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 311
    return-void
.end method

.method public onEndRestore()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 326
    return-void
.end method

.method public onRestorePackage(Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    return-void
.end method

.method public onStartBackup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 301
    return-void
.end method

.method public onStartRestore()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 316
    return-void
.end method

.method public onTimeout()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 331
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    .line 293
    return-void
.end method
