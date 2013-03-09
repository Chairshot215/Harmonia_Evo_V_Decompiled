.class Lcom/htc/android/worldclock/AlarmAlert$14;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/AlarmAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmAlert;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmAlert$14;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 792
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 793
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$14;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mDestroyed:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$000(Lcom/htc/android/worldclock/AlarmAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    :goto_0
    return-void

    .line 796
    :cond_0
    invoke-static {}, Lcom/htc/android/worldclock/AlarmAlert;->access$2300()Z

    move-result v0

    if-nez v0, :cond_1

    .line 797
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmAlert;->access$2302(Z)Z

    .line 798
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$14;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert$14;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-static {v1}, Lcom/htc/android/worldclock/AlertUtils;->getSnoozeMinute(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/worldclock/AlarmAlert;->snooze(ZI)V

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$14;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/AlarmAlert;->finish()V

    goto :goto_0
.end method
