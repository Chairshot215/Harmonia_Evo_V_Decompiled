.class Lcom/google/android/backup/BeginBackupService$1;
.super Landroid/app/backup/RestoreObserver;
.source "BeginBackupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/backup/BeginBackupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/backup/BeginBackupService;


# direct methods
.method constructor <init>(Lcom/google/android/backup/BeginBackupService;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/backup/BeginBackupService$1;->this$0:Lcom/google/android/backup/BeginBackupService;

    invoke-direct {p0}, Landroid/app/backup/RestoreObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(ILjava/lang/String;)V
    .locals 3
    .parameter "nowBeingRestored"
    .parameter "currentPackage"

    .prologue
    .line 152
    sget-boolean v0, Lcom/google/android/backup/BeginBackupService;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "BackupTransportService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    return-void
.end method

.method public restoreFinished(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 157
    sget-boolean v0, Lcom/google/android/backup/BeginBackupService;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "BackupTransportService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/android/backup/BeginBackupService$1;->this$0:Lcom/google/android/backup/BeginBackupService;

    #getter for: Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;
    invoke-static {v0}, Lcom/google/android/backup/BeginBackupService;->access$000(Lcom/google/android/backup/BeginBackupService;)Landroid/app/backup/RestoreSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/google/android/backup/BeginBackupService$1;->this$0:Lcom/google/android/backup/BeginBackupService;

    #getter for: Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;
    invoke-static {v0}, Lcom/google/android/backup/BeginBackupService;->access$000(Lcom/google/android/backup/BeginBackupService;)Landroid/app/backup/RestoreSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .line 160
    iget-object v0, p0, Lcom/google/android/backup/BeginBackupService$1;->this$0:Lcom/google/android/backup/BeginBackupService;

    invoke-virtual {v0}, Lcom/google/android/backup/BeginBackupService;->stopSelf()V

    .line 162
    :cond_1
    return-void
.end method

.method public restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 140
    sget-boolean v0, Lcom/google/android/backup/BeginBackupService;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "BackupTransportService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreSetsAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/android/backup/BeginBackupService$1;->this$0:Lcom/google/android/backup/BeginBackupService;

    invoke-virtual {v0, p1}, Lcom/google/android/backup/BeginBackupService;->performRestore([Landroid/app/backup/RestoreSet;)Z

    .line 142
    return-void
.end method

.method public restoreStarting(I)V
    .locals 3
    .parameter "numPackages"

    .prologue
    .line 146
    sget-boolean v0, Lcom/google/android/backup/BeginBackupService;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "BackupTransportService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreStarting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    return-void
.end method
