.class Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$2;
.super Ljava/lang/Object;
.source "PackageManagerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;->packageInstalled(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;

.field final synthetic val$returnCode:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$2;->this$1:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;

    iput p2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$2;->val$returnCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$2;->this$1:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;

    iget-object v0, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;->this$0:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;

    #getter for: Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;
    invoke-static {v0}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->access$400(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$2;->val$returnCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;->installCompleted(ZLjava/lang/String;)V

    .line 263
    return-void
.end method
