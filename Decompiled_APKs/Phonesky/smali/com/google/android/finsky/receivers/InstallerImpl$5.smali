.class Lcom/google/android/finsky/receivers/InstallerImpl$5;
.super Ljava/lang/Object;
.source "InstallerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/InstallerImpl;->releaseMultiUserPackage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 957
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$5;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerImpl$5;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 961
    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$5;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #getter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;
    invoke-static {v1}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$800(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl$5;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;->releasePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    :goto_0
    return-void

    .line 962
    :catch_0
    move-exception v0

    .line 963
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Couldn\'t release %s *** received %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl$5;->val$packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
