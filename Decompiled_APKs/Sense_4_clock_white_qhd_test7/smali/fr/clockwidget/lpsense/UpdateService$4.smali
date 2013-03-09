.class Lfr/clockwidget/lpsense/UpdateService$4;
.super Ljava/util/TimerTask;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/clockwidget/lpsense/UpdateService;->waitForLocationUpdate()V
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
    iput-object p1, p0, Lfr/clockwidget/lpsense/UpdateService$4;->this$0:Lfr/clockwidget/lpsense/UpdateService;

    .line 287
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 289
    invoke-static {}, Lfr/clockwidget/lpsense/UpdateService;->access$11()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lfr/clockwidget/lpsense/UpdateService$4;->this$0:Lfr/clockwidget/lpsense/UpdateService;

    #calls: Lfr/clockwidget/lpsense/UpdateService;->useLastLocation()V
    invoke-static {v0}, Lfr/clockwidget/lpsense/UpdateService;->access$8(Lfr/clockwidget/lpsense/UpdateService;)V

    .line 292
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lfr/clockwidget/lpsense/UpdateService;->access$9(Z)V

    .line 293
    iget-object v0, p0, Lfr/clockwidget/lpsense/UpdateService$4;->this$0:Lfr/clockwidget/lpsense/UpdateService;

    #calls: Lfr/clockwidget/lpsense/UpdateService;->removeLocationListener()V
    invoke-static {v0}, Lfr/clockwidget/lpsense/UpdateService;->access$10(Lfr/clockwidget/lpsense/UpdateService;)V

    .line 294
    return-void
.end method
