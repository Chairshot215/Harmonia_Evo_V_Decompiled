.class Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;
.super Landroid/os/AsyncTask;
.source "LandingNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitializeAdapterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mIsForceUpdate:Z

.field mIsResumed:Z

.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingNavigation;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;ZZ)V
    .locals 0
    .parameter
    .parameter "isResumed"
    .parameter "isForceUpdate"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 319
    iput-boolean p2, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->mIsResumed:Z

    .line 320
    iput-boolean p3, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->mIsForceUpdate:Z

    .line 321
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 4
    .parameter "params"

    .prologue
    .line 325
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "InitializeAdapterTask : doInBackground"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    new-instance v1, Lcom/htc/store/provider/AccessHelper;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$200(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-wide v1, v1, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/provider/AccessHelper;->findCategoryItemsByParentId(J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->doInBackground([Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 10
    .parameter "result"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 335
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "InitializeAdapterTask : onPostExecute"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviAdapter:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;

    if-nez v0, :cond_0

    .line 337
    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    new-instance v0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$300(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f030012

    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-wide v4, v4, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;Landroid/content/Context;IJLandroid/database/Cursor;)V

    iput-object v0, v7, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviAdapter:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v1}, Lcom/htc/store/activity/landing/LandingNavigation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    .line 341
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget v1, v1, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/landing/LandingNavigation;->updateLayoutByOrientation(I)V

    .line 342
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget v1, v1, Lcom/htc/store/activity/landing/LandingNavigation;->mOrientation:I

    iput v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mLastOrientation:I

    .line 344
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    new-instance v1, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/activity/landing/LandingNavigation$1;)V

    iput-object v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mCheckContentTask:Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;

    .line 345
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mCheckContentTask:Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-wide v3, v3, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v3, v3, Lcom/htc/store/activity/landing/LandingNavigation;->mTabId:Ljava/lang/String;

    aput-object v3, v2, v9

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->mIsResumed:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->mIsForceUpdate:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 346
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 313
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$InitializeAdapterTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
