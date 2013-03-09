.class Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$1;
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

.field final synthetic val$packageNameForShortcut:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$1;->this$1:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;

    iput-object p2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$1;->val$packageNameForShortcut:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$1;->this$1:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;

    iget-object v0, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;->this$0:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;

    #getter for: Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;
    invoke-static {v0}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->access$400(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;->installCompleted(ZLjava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$1;->this$1:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;

    iget-object v0, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;->this$0:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;

    #getter for: Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mDoNotifications:Z
    invoke-static {v0}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->access$500(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$1;->this$1:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;

    iget-object v0, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;->this$0:Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;

    #getter for: Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mIsUpdate:Z
    invoke-static {v0}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->access$600(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1$1;->val$packageNameForShortcut:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/PackageManagerHelper;->addAppShortcut(Landroid/content/Context;Ljava/lang/String;)V

    .line 251
    :cond_0
    return-void
.end method
