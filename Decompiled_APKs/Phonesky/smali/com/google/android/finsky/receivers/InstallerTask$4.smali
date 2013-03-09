.class Lcom/google/android/finsky/receivers/InstallerTask$4;
.super Landroid/os/AsyncTask;
.source "InstallerTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/InstallerTask;->startActivation(Lcom/google/android/finsky/appstate/AppStates$AppState;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/InstallerTask;

.field final synthetic val$appState:Lcom/google/android/finsky/appstate/AppStates$AppState;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->val$appState:Lcom/google/android/finsky/appstate/AppStates$AppState;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .parameter "params"

    .prologue
    .line 1191
    :try_start_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->val$appState:Lcom/google/android/finsky/appstate/AppStates$AppState;

    iget-object v3, v3, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/PackageManagerUtils;->installExistingPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1193
    .local v1, result:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1195
    .end local v1           #result:I
    :goto_0
    return-object v2

    .line 1194
    :catch_0
    move-exception v0

    .line 1195
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1187
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v5, 0x1

    .line 1201
    const/4 v0, 0x0

    .line 1205
    .local v0, analyticsError:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->val$appState:Lcom/google/android/finsky/appstate/AppStates$AppState;

    iget-object v2, v2, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/appstate/PackageStateRepository;->invalidate(Ljava/lang/String;)V

    .line 1207
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 1209
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    #getter for: Lcom/google/android/finsky/receivers/InstallerTask;->mShowInstallNotifications:Z
    invoke-static {v1}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1000(Lcom/google/android/finsky/receivers/InstallerTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1210
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->val$appState:Lcom/google/android/finsky/appstate/AppStates$AppState;

    iget-object v2, v2, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/PackageManagerHelper;->addAppShortcut(Landroid/content/Context;Ljava/lang/String;)V

    .line 1217
    :cond_0
    :goto_0
    const-string v1, "installExistingPackage %s result %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->val$appState:Lcom/google/android/finsky/appstate/AppStates$AppState;

    iget-object v4, v4, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1218
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "install.activate"

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v3, v3, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    const/16 v3, 0x46

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->access$800(Lcom/google/android/finsky/receivers/InstallerTask;ILjava/lang/String;)V

    .line 1222
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V
    invoke-static {v1}, Lcom/google/android/finsky/receivers/InstallerTask;->access$900(Lcom/google/android/finsky/receivers/InstallerTask;)V

    .line 1223
    return-void

    .line 1214
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->val$appState:Lcom/google/android/finsky/appstate/AppStates$AppState;

    iget-object v1, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/PackageManagerHelper;->notifyFailedInstall(Ljava/lang/String;I)V

    .line 1215
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1187
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask$4;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
