.class Lcom/htc/android/worldclock/SetAlarm$2;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/SetAlarm;->onInitParent()V
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
    .line 225
    iput-object p1, p0, Lcom/htc/android/worldclock/SetAlarm$2;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$2;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mDestroyed:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$400(Lcom/htc/android/worldclock/SetAlarm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$2;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #calls: Lcom/htc/android/worldclock/SetAlarm;->initUI()V
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$600(Lcom/htc/android/worldclock/SetAlarm;)V

    .line 232
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$2;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$700(Lcom/htc/android/worldclock/SetAlarm;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x25c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
