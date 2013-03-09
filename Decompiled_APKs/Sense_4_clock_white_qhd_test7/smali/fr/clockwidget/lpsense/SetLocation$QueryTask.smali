.class Lfr/clockwidget/lpsense/SetLocation$QueryTask;
.super Landroid/os/AsyncTask;
.source "SetLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/clockwidget/lpsense/SetLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private found:Z

.field final synthetic this$0:Lfr/clockwidget/lpsense/SetLocation;


# direct methods
.method private constructor <init>(Lfr/clockwidget/lpsense/SetLocation;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lfr/clockwidget/lpsense/SetLocation$QueryTask;->this$0:Lfr/clockwidget/lpsense/SetLocation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/clockwidget/lpsense/SetLocation$QueryTask;->found:Z

    return-void
.end method

.method synthetic constructor <init>(Lfr/clockwidget/lpsense/SetLocation;Lfr/clockwidget/lpsense/SetLocation$QueryTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lfr/clockwidget/lpsense/SetLocation$QueryTask;-><init>(Lfr/clockwidget/lpsense/SetLocation;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lfr/clockwidget/lpsense/SetLocation$QueryTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 81
    aget-object v0, p1, v2

    .line 82
    .local v0, location:Ljava/lang/String;
    iput-boolean v2, p0, Lfr/clockwidget/lpsense/SetLocation$QueryTask;->found:Z

    .line 83
    new-instance v1, Lfr/clockwidget/lpsense/weather/GoogleWeather;

    iget-object v2, p0, Lfr/clockwidget/lpsense/SetLocation$QueryTask;->this$0:Lfr/clockwidget/lpsense/SetLocation;

    invoke-direct {v1, v2, v0}, Lfr/clockwidget/lpsense/weather/GoogleWeather;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    .local v1, weather:Lfr/clockwidget/lpsense/weather/GoogleWeather;
    invoke-virtual {v1}, Lfr/clockwidget/lpsense/weather/GoogleWeather;->request()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v1}, Lfr/clockwidget/lpsense/weather/GoogleWeather;->getCity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lfr/clockwidget/lpsense/weather/GoogleWeather;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 86
    invoke-virtual {v1}, Lfr/clockwidget/lpsense/weather/GoogleWeather;->persist()V

    .line 87
    invoke-virtual {v1}, Lfr/clockwidget/lpsense/weather/GoogleWeather;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 88
    const/4 v2, 0x1

    iput-boolean v2, p0, Lfr/clockwidget/lpsense/SetLocation$QueryTask;->found:Z

    .line 91
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lfr/clockwidget/lpsense/SetLocation$QueryTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .parameter "location"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 96
    iget-object v0, p0, Lfr/clockwidget/lpsense/SetLocation$QueryTask;->this$0:Lfr/clockwidget/lpsense/SetLocation;

    #calls: Lfr/clockwidget/lpsense/SetLocation;->dismissLoadingMsg()V
    invoke-static {v0}, Lfr/clockwidget/lpsense/SetLocation;->access$1(Lfr/clockwidget/lpsense/SetLocation;)V

    .line 97
    iget-boolean v0, p0, Lfr/clockwidget/lpsense/SetLocation$QueryTask;->found:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lfr/clockwidget/lpsense/SetLocation$QueryTask;->this$0:Lfr/clockwidget/lpsense/SetLocation;

    invoke-static {v0, p1}, Lfr/clockwidget/lpsense/SetLocation;->refreshGeoLocation(Landroid/content/Context;Ljava/lang/String;)Z

    .line 99
    invoke-static {v2, v3}, Lfr/clockwidget/lpsense/PreferencesActivity;->setNextUpdate(J)V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->setLastUpdate(J)V

    .line 101
    iget-object v0, p0, Lfr/clockwidget/lpsense/SetLocation$QueryTask;->this$0:Lfr/clockwidget/lpsense/SetLocation;

    invoke-static {v0, v2, v3}, Lfr/clockwidget/lpsense/UpdateService;->scheduleUpdate(Landroid/content/Context;J)V

    .line 102
    iget-object v0, p0, Lfr/clockwidget/lpsense/SetLocation$QueryTask;->this$0:Lfr/clockwidget/lpsense/SetLocation;

    invoke-virtual {v0}, Lfr/clockwidget/lpsense/SetLocation;->finish()V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lfr/clockwidget/lpsense/SetLocation$QueryTask;->this$0:Lfr/clockwidget/lpsense/SetLocation;

    iget-object v1, p0, Lfr/clockwidget/lpsense/SetLocation$QueryTask;->this$0:Lfr/clockwidget/lpsense/SetLocation;

    const v2, 0x7f08001f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/clockwidget/lpsense/SetLocation;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lfr/clockwidget/lpsense/SetLocation$QueryTask;->this$0:Lfr/clockwidget/lpsense/SetLocation;

    #calls: Lfr/clockwidget/lpsense/SetLocation;->showLoadingMsg()V
    invoke-static {v0}, Lfr/clockwidget/lpsense/SetLocation;->access$0(Lfr/clockwidget/lpsense/SetLocation;)V

    .line 76
    return-void
.end method
