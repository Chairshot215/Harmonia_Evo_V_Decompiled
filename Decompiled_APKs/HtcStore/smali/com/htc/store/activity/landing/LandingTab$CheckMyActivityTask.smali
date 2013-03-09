.class Lcom/htc/store/activity/landing/LandingTab$CheckMyActivityTask;
.super Landroid/os/AsyncTask;
.source "LandingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckMyActivityTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingTab;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/landing/LandingTab;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingTab$CheckMyActivityTask;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/landing/LandingTab;Lcom/htc/store/activity/landing/LandingTab$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/LandingTab$CheckMyActivityTask;-><init>(Lcom/htc/store/activity/landing/LandingTab;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4
    .parameter "params"

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, doTask:Z
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingTab$CheckMyActivityTask;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;
    invoke-static {v1}, Lcom/htc/store/activity/landing/LandingTab;->access$100(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/module/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/store/module/PreferenceManager;->isAlreadyFirstSync()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingTab$CheckMyActivityTask;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    invoke-static {v1}, Lcom/htc/cscore/util/CSUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingTab$CheckMyActivityTask;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v1}, Lcom/htc/store/activity/landing/LandingTab;->access$200(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingTab$CheckMyActivityTask;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    new-instance v2, Lcom/htc/store/module/rest/RestHelper;

    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingTab$CheckMyActivityTask;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    invoke-direct {v2, v3}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/landing/LandingTab;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v1, v2}, Lcom/htc/store/activity/landing/LandingTab;->access$202(Lcom/htc/store/activity/landing/LandingTab;Lcom/htc/store/module/rest/RestHelper;)Lcom/htc/store/module/rest/RestHelper;

    .line 172
    :cond_0
    const/4 v0, 0x1

    .line 174
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingTab$CheckMyActivityTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "doTask"

    .prologue
    .line 179
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingTab$CheckMyActivityTask;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    new-instance v1, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingTab$CheckMyActivityTask;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;-><init>(Lcom/htc/store/activity/landing/LandingTab;Lcom/htc/store/activity/landing/LandingTab$1;)V

    #setter for: Lcom/htc/store/activity/landing/LandingTab;->mGetOrderedHistoryCall:Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;
    invoke-static {v0, v1}, Lcom/htc/store/activity/landing/LandingTab;->access$302(Lcom/htc/store/activity/landing/LandingTab;Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;)Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;

    .line 185
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingTab$CheckMyActivityTask;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mGetOrderedHistoryCall:Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingTab;->access$300(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 187
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingTab$CheckMyActivityTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
