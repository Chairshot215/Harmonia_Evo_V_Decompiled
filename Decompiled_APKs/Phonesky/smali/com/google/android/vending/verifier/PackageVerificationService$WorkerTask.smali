.class Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;
.super Landroid/os/AsyncTask;
.source "PackageVerificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/verifier/PackageVerificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mContext:Landroid/content/Context;

.field private final mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

.field final synthetic this$0:Lcom/google/android/vending/verifier/PackageVerificationService;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/verifier/PackageVerificationService;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 1
    .parameter
    .parameter "state"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 233
    iput-object p2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    .line 234
    iput-object p1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mContext:Landroid/content/Context;

    .line 235
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    .line 236
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x1

    .line 251
    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iput v2, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    .line 254
    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/AppStates;->blockingLoad()V

    .line 256
    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    #calls: Lcom/google/android/vending/verifier/PackageVerificationService;->getPackageInfo(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)Z
    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->access$000(Lcom/google/android/vending/verifier/PackageVerificationService;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    #calls: Lcom/google/android/vending/verifier/PackageVerificationService;->resolveHosts(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    invoke-static {v0}, Lcom/google/android/vending/verifier/PackageVerificationService;->access$100(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    .line 265
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 240
    sget-object v1, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 241
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "continueVerification"

    .prologue
    .line 270
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->acceptedAntiMalwareConsent:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    #calls: Lcom/google/android/vending/verifier/PackageVerificationService;->sendVerificationRequest(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->access$200(Lcom/google/android/vending/verifier/PackageVerificationService;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    .line 282
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v1, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    const/4 v2, 0x1

    #calls: Lcom/google/android/vending/verifier/PackageVerificationService;->extendTimeout(II)V
    invoke-static {v0, v1, v2}, Lcom/google/android/vending/verifier/PackageVerificationService;->access$300(Lcom/google/android/vending/verifier/PackageVerificationService;II)V

    .line 275
    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v1, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/ConsentDialog;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    #calls: Lcom/google/android/vending/verifier/PackageVerificationService;->reportAndCleanup(Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/vending/verifier/PackageVerificationService;->access$400(Lcom/google/android/vending/verifier/PackageVerificationService;Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 245
    const-string v0, "Verification Requested for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    return-void
.end method
