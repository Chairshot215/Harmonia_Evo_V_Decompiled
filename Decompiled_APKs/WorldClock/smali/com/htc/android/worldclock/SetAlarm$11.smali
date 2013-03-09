.class Lcom/htc/android/worldclock/SetAlarm$11;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 581
    iput-object p1, p0, Lcom/htc/android/worldclock/SetAlarm$11;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 585
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 586
    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm$11;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mTempDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    invoke-static {v1}, Lcom/htc/android/worldclock/SetAlarm;->access$2500(Lcom/htc/android/worldclock/SetAlarm;)Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm$11;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    invoke-static {v2}, Lcom/htc/android/worldclock/SetAlarm;->access$2400(Lcom/htc/android/worldclock/SetAlarm;)Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->set(Lcom/htc/android/worldclock/Alarms$DaysOfWeek;)V

    .line 587
    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm$11;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-virtual {v1, v0}, Lcom/htc/android/worldclock/SetAlarm;->removeDialog(I)V

    .line 592
    :cond_0
    :goto_0
    return v0

    .line 589
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x54

    if-eq v1, v2, :cond_0

    .line 592
    const/4 v0, 0x0

    goto :goto_0
.end method
