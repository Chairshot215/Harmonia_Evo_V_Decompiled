.class Lcom/htc/android/worldclock/TimerService$4$1;
.super Ljava/lang/Object;
.source "TimerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/TimerService$4;->onKilled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/TimerService$4;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimerService$4;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerService$4$1;->this$1:Lcom/htc/android/worldclock/TimerService$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService$4$1;->this$1:Lcom/htc/android/worldclock/TimerService$4;

    iget-object v0, v0, Lcom/htc/android/worldclock/TimerService$4;->this$0:Lcom/htc/android/worldclock/TimerService;

    #getter for: Lcom/htc/android/worldclock/TimerService;->mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;
    invoke-static {v0}, Lcom/htc/android/worldclock/TimerService;->access$000(Lcom/htc/android/worldclock/TimerService;)Lcom/htc/android/worldclock/TimerKlaxon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService$4$1;->this$1:Lcom/htc/android/worldclock/TimerService$4;

    iget-object v0, v0, Lcom/htc/android/worldclock/TimerService$4;->this$0:Lcom/htc/android/worldclock/TimerService;

    #getter for: Lcom/htc/android/worldclock/TimerService;->mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;
    invoke-static {v0}, Lcom/htc/android/worldclock/TimerService;->access$000(Lcom/htc/android/worldclock/TimerService;)Lcom/htc/android/worldclock/TimerKlaxon;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/TimerService$4$1;->this$1:Lcom/htc/android/worldclock/TimerService$4;

    iget-object v1, v1, Lcom/htc/android/worldclock/TimerService$4;->this$0:Lcom/htc/android/worldclock/TimerService;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/TimerKlaxon;->stop(Landroid/content/Context;)V

    .line 237
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService$4$1;->this$1:Lcom/htc/android/worldclock/TimerService$4;

    iget-object v0, v0, Lcom/htc/android/worldclock/TimerService$4;->this$0:Lcom/htc/android/worldclock/TimerService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/worldclock/TimerService;->mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/TimerService;->access$002(Lcom/htc/android/worldclock/TimerService;Lcom/htc/android/worldclock/TimerKlaxon;)Lcom/htc/android/worldclock/TimerKlaxon;

    .line 239
    :cond_0
    return-void
.end method
