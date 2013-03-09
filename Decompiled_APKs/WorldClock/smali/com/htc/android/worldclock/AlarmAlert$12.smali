.class Lcom/htc/android/worldclock/AlarmAlert$12;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmAlert;->dismiss()V
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
    .line 669
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmAlert$12;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$12;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlertUtils;->sendAlarmTimeout(Landroid/content/Context;I)V

    .line 676
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$12;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/worldclock/AlarmAlert;->mIsDismissed:Z
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlarmAlert;->access$1702(Lcom/htc/android/worldclock/AlarmAlert;Z)Z

    .line 677
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$12;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->releaseLocks()V
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$1600(Lcom/htc/android/worldclock/AlarmAlert;)V

    .line 681
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$12;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/worldclock/AlarmAlert;->mSnoozed:Z
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlarmAlert;->access$1302(Lcom/htc/android/worldclock/AlarmAlert;Z)Z

    .line 682
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$12;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->StopAlarm()V
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$1400(Lcom/htc/android/worldclock/AlarmAlert;)V

    .line 685
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$12;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert$12;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mAlarmId:I
    invoke-static {v1}, Lcom/htc/android/worldclock/AlarmAlert;->access$1100(Lcom/htc/android/worldclock/AlarmAlert;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlertUtils;->dismissNotification(Landroid/content/Context;I)V

    .line 687
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$12;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/AlarmAlert;->finish()V

    .line 688
    return-void
.end method
