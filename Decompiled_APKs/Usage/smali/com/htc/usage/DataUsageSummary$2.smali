.class Lcom/htc/usage/DataUsageSummary$2;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/usage/DataUsageSummary;->hideMobileGlobalPreferences(Z)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/usage/DataUsageSummary;

.field final synthetic val$setHide:Z


# direct methods
.method constructor <init>(Lcom/htc/usage/DataUsageSummary;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$2;->this$0:Lcom/htc/usage/DataUsageSummary;

    iput-boolean p2, p0, Lcom/htc/usage/DataUsageSummary$2;->val$setHide:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 476
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/usage/DataUsageSummary$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 479
    :goto_0
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$2;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/MyPreferenceFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/usage/MyPreferenceFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    goto :goto_0

    .line 485
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 476
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/usage/DataUsageSummary$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 490
    const-string v0, "DataUsageSummary"

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$2;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/MyPreferenceFragment;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/usage/DataUsageSummary$2;->val$setHide:Z

    invoke-virtual {v0, v1}, Lcom/htc/usage/MyPreferenceFragment;->hideMobileGlobalPreferences(Z)V

    .line 492
    return-void
.end method
