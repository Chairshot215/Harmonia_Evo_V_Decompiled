.class Lcom/google/android/finsky/receivers/InstallerImpl$6;
.super Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener$Stub;
.source "InstallerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/receivers/InstallerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/InstallerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$6;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    invoke-direct {p0}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageAcquired(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 1121
    return-void
.end method

.method public packageReleased(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl$6;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #getter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$1200(Lcom/google/android/finsky/receivers/InstallerImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/receivers/InstallerImpl$6$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl$6$1;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl$6;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1135
    return-void
.end method
