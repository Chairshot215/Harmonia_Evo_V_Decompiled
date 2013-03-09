.class Lfr/clockwidget/lpsense/UpdateService$1;
.super Landroid/content/BroadcastReceiver;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/clockwidget/lpsense/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/clockwidget/lpsense/UpdateService;


# direct methods
.method constructor <init>(Lfr/clockwidget/lpsense/UpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfr/clockwidget/lpsense/UpdateService$1;->this$0:Lfr/clockwidget/lpsense/UpdateService;

    .line 206
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lfr/clockwidget/lpsense/UpdateService$1;)Lfr/clockwidget/lpsense/UpdateService;
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lfr/clockwidget/lpsense/UpdateService$1;->this$0:Lfr/clockwidget/lpsense/UpdateService;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 209
    if-eqz p2, :cond_1

    .line 210
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 212
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 213
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    :cond_0
    :try_start_0
    iget-object v3, p0, Lfr/clockwidget/lpsense/UpdateService$1;->this$0:Lfr/clockwidget/lpsense/UpdateService;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 217
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lfr/clockwidget/lpsense/UpdateService$1;->this$0:Lfr/clockwidget/lpsense/UpdateService;

    const-class v5, Lfr/clockwidget/lpsense/ClockWidget;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    invoke-static {v3}, Lfr/clockwidget/lpsense/UpdateService;->requestUpdate([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v1           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :goto_0
    invoke-static {}, Lfr/clockwidget/lpsense/UpdateService;->access$0()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lfr/clockwidget/lpsense/UpdateService$1$1;

    invoke-direct {v4, p0}, Lfr/clockwidget/lpsense/UpdateService$1$1;-><init>(Lfr/clockwidget/lpsense/UpdateService$1;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    return-void

    .line 218
    .restart local v0       #action:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 220
    .local v2, e:Ljava/lang/Exception;
    iget-object v3, p0, Lfr/clockwidget/lpsense/UpdateService$1;->this$0:Lfr/clockwidget/lpsense/UpdateService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lfr/clockwidget/lpsense/UpdateService;->scheduleUpdate(Landroid/content/Context;J)V

    goto :goto_0
.end method
