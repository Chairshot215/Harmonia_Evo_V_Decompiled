.class Lcom/htc/android/htcsetupwizard/GoogleRestore$RestoreObserver;
.super Landroid/app/backup/IRestoreObserver$Stub;
.source "GoogleRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/GoogleRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreObserver"
.end annotation


# instance fields
.field done:Z

.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/GoogleRestore;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/GoogleRestore;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/GoogleRestore$RestoreObserver;->this$0:Lcom/htc/android/htcsetupwizard/GoogleRestore;

    invoke-direct {p0}, Landroid/app/backup/IRestoreObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(ILjava/lang/String;)V
    .locals 3
    .parameter "nowBeingRestored"
    .parameter "currentPackage"

    .prologue
    .line 30
    const-string v0, "GoogleRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public restoreFinished(I)V
    .locals 2
    .parameter "error"

    .prologue
    .line 34
    const-string v0, "GoogleRestore"

    const-string v1, "restoreFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 23
    return-void
.end method

.method public restoreStarting(I)V
    .locals 3
    .parameter "numPackages"

    .prologue
    .line 26
    const-string v0, "GoogleRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreStarting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method
