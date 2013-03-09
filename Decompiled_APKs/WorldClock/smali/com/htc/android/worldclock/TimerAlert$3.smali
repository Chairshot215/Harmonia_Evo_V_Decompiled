.class Lcom/htc/android/worldclock/TimerAlert$3;
.super Ljava/lang/Object;
.source "TimerAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/TimerAlert;->StopTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/TimerAlert;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimerAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerAlert$3;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$3;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    invoke-static {v0}, Lcom/htc/android/worldclock/AlertUtils;->sendTimerTimeout(Landroid/content/Context;)V

    .line 180
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$3;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    #getter for: Lcom/htc/android/worldclock/TimerAlert;->mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;
    invoke-static {v0}, Lcom/htc/android/worldclock/TimerAlert;->access$800(Lcom/htc/android/worldclock/TimerAlert;)Lcom/htc/android/worldclock/TimerKlaxon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$3;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    #getter for: Lcom/htc/android/worldclock/TimerAlert;->mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;
    invoke-static {v0}, Lcom/htc/android/worldclock/TimerAlert;->access$800(Lcom/htc/android/worldclock/TimerAlert;)Lcom/htc/android/worldclock/TimerKlaxon;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/TimerAlert$3;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/TimerKlaxon;->stop(Landroid/content/Context;)V

    .line 182
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$3;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/worldclock/TimerAlert;->mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/TimerAlert;->access$802(Lcom/htc/android/worldclock/TimerAlert;Lcom/htc/android/worldclock/TimerKlaxon;)Lcom/htc/android/worldclock/TimerKlaxon;

    .line 184
    :cond_0
    return-void
.end method
