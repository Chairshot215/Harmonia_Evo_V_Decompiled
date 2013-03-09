.class Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;
.super Ljava/lang/Object;
.source "PackageManagerHelper.java"

# interfaces
.implements Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->onPostExecute(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;->this$0:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 6
    .parameter "pkg"
    .parameter "returnCode"

    .prologue
    const/4 v5, 0x0

    .line 226
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/google/android/finsky/appstate/PackageStateRepository;->invalidate(Ljava/lang/String;)V

    .line 228
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package install status for \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    if-nez p1, :cond_1

    .line 234
    iget-object v3, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;->this$0:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;

    #getter for: Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->access$300(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Ljava/lang/String;

    move-result-object p1

    .line 241
    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 242
    move-object v2, p1

    .line 243
    .local v2, packageNameForShortcut:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;->this$0:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;

    #getter for: Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->access$700(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$1;

    invoke-direct {v4, p0, v2}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$1;-><init>(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    .end local v2           #packageNameForShortcut:Ljava/lang/String;
    :goto_1
    return-void

    .line 236
    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;->this$0:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;

    #getter for: Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->access$300(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name mismatsch: ours: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;->this$0:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;

    #getter for: Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->access$300(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package manager\'s: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, exceptionName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;->this$0:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;

    #getter for: Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->access$700(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$3;

    invoke-direct {v4, p0, v1}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$3;-><init>(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    const-string v3, "Package install observer exception"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 254
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #exceptionName:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;->this$0:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;

    #getter for: Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mDoNotifications:Z
    invoke-static {v3}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->access$500(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 255
    invoke-static {p1, p2}, Lcom/google/android/finsky/utils/PackageManagerHelper;->notifyFailedInstall(Ljava/lang/String;I)V

    .line 258
    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;->this$0:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;

    #getter for: Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->access$700(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$2;

    invoke-direct {v4, p0, p2}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$2;-><init>(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
