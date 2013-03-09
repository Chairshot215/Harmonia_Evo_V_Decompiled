.class Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;
.super Landroid/os/AsyncTask;
.source "PreferencesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/clockwidget/lpsense/PreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshTask"
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
.field private mAbort:Z

.field final synthetic this$0:Lfr/clockwidget/lpsense/PreferencesActivity;


# direct methods
.method private constructor <init>(Lfr/clockwidget/lpsense/PreferencesActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 917
    iput-object p1, p0, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 919
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;->mAbort:Z

    return-void
.end method

.method synthetic constructor <init>(Lfr/clockwidget/lpsense/PreferencesActivity;Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 917
    invoke-direct {p0, p1}, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;-><init>(Lfr/clockwidget/lpsense/PreferencesActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    .line 936
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 937
    .local v0, startTime:J
    :cond_0
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->access$4()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 952
    :goto_0
    iget-object v2, p0, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    #calls: Lfr/clockwidget/lpsense/PreferencesActivity;->refreshWeather()V
    invoke-static {v2}, Lfr/clockwidget/lpsense/PreferencesActivity;->access$6(Lfr/clockwidget/lpsense/PreferencesActivity;)V

    .line 953
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_1
    return-object v2

    .line 938
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 939
    iget-object v2, p0, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    #calls: Lfr/clockwidget/lpsense/PreferencesActivity;->useLastLocation()V
    invoke-static {v2}, Lfr/clockwidget/lpsense/PreferencesActivity;->access$5(Lfr/clockwidget/lpsense/PreferencesActivity;)V

    goto :goto_0

    .line 943
    :cond_2
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :goto_2
    iget-boolean v2, p0, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;->mAbort:Z

    if-eqz v2, :cond_0

    .line 948
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    .line 944
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 958
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;->mAbort:Z

    .line 959
    iget-object v0, p0, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    #calls: Lfr/clockwidget/lpsense/PreferencesActivity;->removeLocationListener()V
    invoke-static {v0}, Lfr/clockwidget/lpsense/PreferencesActivity;->access$7(Lfr/clockwidget/lpsense/PreferencesActivity;)V

    .line 960
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 965
    iget-object v0, p0, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    #calls: Lfr/clockwidget/lpsense/PreferencesActivity;->dismissLoadingMsg()V
    invoke-static {v0}, Lfr/clockwidget/lpsense/PreferencesActivity;->access$8(Lfr/clockwidget/lpsense/PreferencesActivity;)V

    .line 966
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lfr/clockwidget/lpsense/UpdateService;->scheduleUpdate(Landroid/content/Context;J)V

    .line 968
    iget-object v0, p0, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->autoRefresh()Z

    move-result v1

    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getRefreshInterval()J

    move-result-wide v2

    #calls: Lfr/clockwidget/lpsense/PreferencesActivity;->updateRefreshStatus(ZJ)V
    invoke-static {v0, v1, v2, v3}, Lfr/clockwidget/lpsense/PreferencesActivity;->access$9(Lfr/clockwidget/lpsense/PreferencesActivity;ZJ)V

    .line 970
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 923
    iget-object v1, p0, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    #calls: Lfr/clockwidget/lpsense/PreferencesActivity;->showLoadingMsg()V
    invoke-static {v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->access$1(Lfr/clockwidget/lpsense/PreferencesActivity;)V

    .line 924
    iget-object v1, p0, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    invoke-static {v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->initPreferences(Landroid/content/Context;)V

    .line 925
    const/4 v1, 0x1

    invoke-static {v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->access$2(Z)V

    .line 926
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getAltPostal()Ljava/lang/String;

    move-result-object v0

    .line 927
    .local v0, postal:Ljava/lang/String;
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->useMyLocation()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 928
    :cond_0
    iget-object v1, p0, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    #calls: Lfr/clockwidget/lpsense/PreferencesActivity;->registerLocationListener()V
    invoke-static {v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->access$3(Lfr/clockwidget/lpsense/PreferencesActivity;)V

    .line 930
    :cond_1
    return-void
.end method
