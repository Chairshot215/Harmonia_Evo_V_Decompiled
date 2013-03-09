.class Lcom/htc/android/worldclock/SetAlarm$7;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/SetAlarm;->initUI()V
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
    .line 412
    iput-object p1, p0, Lcom/htc/android/worldclock/SetAlarm$7;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 415
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 416
    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm$7;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$7;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mVibrate:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$1100(Lcom/htc/android/worldclock/SetAlarm;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/htc/android/worldclock/SetAlarm;->mVibrate:Z
    invoke-static {v1, v0}, Lcom/htc/android/worldclock/SetAlarm;->access$1102(Lcom/htc/android/worldclock/SetAlarm;Z)Z

    .line 417
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$7;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mVibrateCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$1200(Lcom/htc/android/worldclock/SetAlarm;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm$7;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mVibrate:Z
    invoke-static {v1}, Lcom/htc/android/worldclock/SetAlarm;->access$1100(Lcom/htc/android/worldclock/SetAlarm;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 418
    return-void

    .line 416
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
