.class Lcom/htc/android/worldclock/TimerAlert$2$1;
.super Ljava/lang/Object;
.source "TimerAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/TimerAlert$2;->onKilled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/TimerAlert$2;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimerAlert$2;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerAlert$2$1;->this$1:Lcom/htc/android/worldclock/TimerAlert$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$2$1;->this$1:Lcom/htc/android/worldclock/TimerAlert$2;

    iget-object v0, v0, Lcom/htc/android/worldclock/TimerAlert$2;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/TimerAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$2$1;->this$1:Lcom/htc/android/worldclock/TimerAlert$2;

    iget-object v0, v0, Lcom/htc/android/worldclock/TimerAlert$2;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    #getter for: Lcom/htc/android/worldclock/TimerAlert;->mIsActive:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/TimerAlert;->access$600(Lcom/htc/android/worldclock/TimerAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$2$1;->this$1:Lcom/htc/android/worldclock/TimerAlert$2;

    iget-object v0, v0, Lcom/htc/android/worldclock/TimerAlert$2;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    const/4 v1, 0x0

    #calls: Lcom/htc/android/worldclock/TimerAlert;->showDialogView(I)V
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/TimerAlert;->access$700(Lcom/htc/android/worldclock/TimerAlert;I)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$2$1;->this$1:Lcom/htc/android/worldclock/TimerAlert$2;

    iget-object v0, v0, Lcom/htc/android/worldclock/TimerAlert$2;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/TimerAlert;->finish()V

    goto :goto_0
.end method
