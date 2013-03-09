.class Lcom/htc/store/activity/EntryActivity$DoSetupTask;
.super Landroid/os/AsyncTask;
.source "EntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/EntryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoSetupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/EntryActivity;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/EntryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/EntryActivity;Lcom/htc/store/activity/EntryActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/htc/store/activity/EntryActivity$DoSetupTask;-><init>(Lcom/htc/store/activity/EntryActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 357
    invoke-static {}, Lcom/htc/store/activity/EntryActivity;->access$200()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "doInBackground: DoSetupTask"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, action:I
    iget-object v2, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    #getter for: Lcom/htc/store/activity/EntryActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v2}, Lcom/htc/store/activity/EntryActivity;->access$1000(Lcom/htc/store/activity/EntryActivity;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    new-instance v3, Lcom/htc/store/module/rest/RestHelper;

    iget-object v4, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {v4}, Lcom/htc/store/activity/EntryActivity;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/EntryActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v2, v3}, Lcom/htc/store/activity/EntryActivity;->access$1002(Lcom/htc/store/activity/EntryActivity;Lcom/htc/store/module/rest/RestHelper;)Lcom/htc/store/module/rest/RestHelper;

    .line 362
    :cond_0
    iget-object v2, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {v2}, Lcom/htc/store/activity/EntryActivity;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 363
    iget-object v2, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    #getter for: Lcom/htc/store/activity/EntryActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v2}, Lcom/htc/store/activity/EntryActivity;->access$1000(Lcom/htc/store/activity/EntryActivity;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {v2, v3}, Lcom/htc/store/module/rest/RestHelper;->setupCall(Landroid/content/Context;)I

    move-result v1

    .line 364
    .local v1, resultCode:I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-object v2, v2, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v2, v5}, Lcom/htc/store/module/PreferenceManager;->setFirstLaunch(Z)V

    .line 366
    const/4 v0, 0x2

    .line 376
    .end local v1           #resultCode:I
    :goto_0
    iget-object v2, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-object v2, v2, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v2, v5}, Lcom/htc/store/module/PreferenceManager;->setTabResourceDownloaded(Z)V

    .line 377
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 368
    .restart local v1       #resultCode:I
    :cond_1
    iget-object v2, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-object v2, v2, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v2, v6}, Lcom/htc/store/module/PreferenceManager;->setFirstLaunch(Z)V

    .line 369
    const/4 v0, 0x4

    goto :goto_0

    .line 372
    .end local v1           #resultCode:I
    :cond_2
    invoke-static {}, Lcom/htc/store/activity/EntryActivity;->access$200()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Network is not available."

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    iget-object v2, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-object v2, v2, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v2, v6}, Lcom/htc/store/module/PreferenceManager;->setFirstLaunch(Z)V

    .line 374
    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "action"

    .prologue
    const/4 v3, 0x0

    .line 382
    invoke-static {}, Lcom/htc/store/activity/EntryActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onPostExecute: DoSetupTask"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {v0}, Lcom/htc/store/activity/EntryActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-boolean v0, v0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    if-nez v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-object v0, v0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v0}, Lcom/htc/store/module/PreferenceManager;->getRelaunchNextTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-object v0, v0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v0, v3}, Lcom/htc/store/module/PreferenceManager;->setRelaunchNextTime(Z)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-boolean v0, v0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-boolean v0, v0, Lcom/htc/store/activity/BaseActivity;->mIsInternalStorageLow:Z

    if-nez v0, :cond_3

    .line 388
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 389
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/EntryActivity;->removeDialog(I)V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/store/activity/EntryActivity;->doAction(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/EntryActivity;->access$800(Lcom/htc/store/activity/EntryActivity;I)V

    .line 396
    :cond_2
    :goto_0
    return-void

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/htc/store/activity/EntryActivity;->mActionOnResume:I
    invoke-static {v0, v1}, Lcom/htc/store/activity/EntryActivity;->access$902(Lcom/htc/store/activity/EntryActivity;I)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 349
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/EntryActivity;->showDialog(I)V

    .line 353
    return-void
.end method
