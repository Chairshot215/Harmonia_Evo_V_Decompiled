.class Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "InstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/InstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/InstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/InstallAppProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/packageinstaller/InstallAppProgress;->access$1000(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 203
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 204
    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/packageinstaller/InstallAppProgress;->access$1000(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    return-void
.end method
