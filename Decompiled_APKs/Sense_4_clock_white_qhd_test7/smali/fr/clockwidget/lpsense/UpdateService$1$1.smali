.class Lfr/clockwidget/lpsense/UpdateService$1$1;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/clockwidget/lpsense/UpdateService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfr/clockwidget/lpsense/UpdateService$1;


# direct methods
.method constructor <init>(Lfr/clockwidget/lpsense/UpdateService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfr/clockwidget/lpsense/UpdateService$1$1;->this$1:Lfr/clockwidget/lpsense/UpdateService$1;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Lfr/clockwidget/lpsense/UpdateService;->access$1()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 226
    :try_start_0
    iget-object v1, p0, Lfr/clockwidget/lpsense/UpdateService$1$1;->this$1:Lfr/clockwidget/lpsense/UpdateService$1;

    #getter for: Lfr/clockwidget/lpsense/UpdateService$1;->this$0:Lfr/clockwidget/lpsense/UpdateService;
    invoke-static {v1}, Lfr/clockwidget/lpsense/UpdateService$1;->access$0(Lfr/clockwidget/lpsense/UpdateService$1;)Lfr/clockwidget/lpsense/UpdateService;

    move-result-object v1

    #calls: Lfr/clockwidget/lpsense/UpdateService;->updateWidget()V
    invoke-static {v1}, Lfr/clockwidget/lpsense/UpdateService;->access$2(Lfr/clockwidget/lpsense/UpdateService;)V

    .line 225
    monitor-exit v0

    .line 228
    return-void

    .line 225
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
