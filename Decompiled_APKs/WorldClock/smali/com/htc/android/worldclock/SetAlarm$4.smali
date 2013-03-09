.class Lcom/htc/android/worldclock/SetAlarm$4;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/SetAlarm;->onRingTone()V
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
    .line 325
    iput-object p1, p0, Lcom/htc/android/worldclock/SetAlarm$4;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$4;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mDestroyed:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$400(Lcom/htc/android/worldclock/SetAlarm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$4;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mRingtoneText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$1500(Lcom/htc/android/worldclock/SetAlarm;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm$4;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mRingToneTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/worldclock/SetAlarm;->access$1400(Lcom/htc/android/worldclock/SetAlarm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
