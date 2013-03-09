.class Lcom/htc/android/worldclock/SetAlarm$13;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/SetAlarm;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/SetAlarm;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/SetAlarm;)V
    .locals 0
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/htc/android/worldclock/SetAlarm$13;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$13;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$2400(Lcom/htc/android/worldclock/SetAlarm;)Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm$13;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mTempDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    invoke-static {v1}, Lcom/htc/android/worldclock/SetAlarm;->access$2500(Lcom/htc/android/worldclock/SetAlarm;)Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->equals(Lcom/htc/android/worldclock/Alarms$DaysOfWeek;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$13;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$2400(Lcom/htc/android/worldclock/SetAlarm;)Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm$13;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mTempDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    invoke-static {v1}, Lcom/htc/android/worldclock/SetAlarm;->access$2500(Lcom/htc/android/worldclock/SetAlarm;)Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->set(Lcom/htc/android/worldclock/Alarms$DaysOfWeek;)V

    .line 570
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$13;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #calls: Lcom/htc/android/worldclock/SetAlarm;->updateRepeat()V
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$1000(Lcom/htc/android/worldclock/SetAlarm;)V

    .line 572
    :cond_0
    return-void
.end method
