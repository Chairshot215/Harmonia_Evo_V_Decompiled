.class public Lcom/htc/android/htcsetupwizard/GoogleRestore;
.super Ljava/lang/Object;
.source "GoogleRestore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcsetupwizard/GoogleRestore$RestoreObserver;
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "GoogleRestore"


# instance fields
.field private mRestoreSession:Landroid/app/backup/IRestoreSession;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/GoogleRestore;->mRestoreSession:Landroid/app/backup/IRestoreSession;

    .line 39
    return-void
.end method


# virtual methods
.method public enableRestoreProvisioned()V
    .locals 4

    .prologue
    .line 42
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 44
    .local v0, bm:Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_0

    .line 46
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v0, v2}, Landroid/app/backup/IBackupManager;->setBackupProvisioned(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "GoogleRestore"

    const-string v3, "enable Restore Provisioned exception: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
