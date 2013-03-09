.class Lcom/htc/android/worldclock/SetAlarm$15;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/SetAlarm;->updateTime()V
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
    .line 655
    iput-object p1, p0, Lcom/htc/android/worldclock/SetAlarm$15;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$15;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$1600(Lcom/htc/android/worldclock/SetAlarm;)Lcom/htc/widget/HtcTimePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm$15;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mHour:I
    invoke-static {v1}, Lcom/htc/android/worldclock/SetAlarm;->access$1700(Lcom/htc/android/worldclock/SetAlarm;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentHour(I)V

    .line 659
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$15;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$1600(Lcom/htc/android/worldclock/SetAlarm;)Lcom/htc/widget/HtcTimePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm$15;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mMinutes:I
    invoke-static {v1}, Lcom/htc/android/worldclock/SetAlarm;->access$1800(Lcom/htc/android/worldclock/SetAlarm;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentMinute(I)V

    .line 660
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$15;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$1600(Lcom/htc/android/worldclock/SetAlarm;)Lcom/htc/widget/HtcTimePicker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->setVisibility(I)V

    .line 661
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 665
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$15;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$1600(Lcom/htc/android/worldclock/SetAlarm;)Lcom/htc/widget/HtcTimePicker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->setVisibility(I)V

    .line 670
    return-void
.end method
