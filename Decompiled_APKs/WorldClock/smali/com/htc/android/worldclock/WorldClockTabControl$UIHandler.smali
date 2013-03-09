.class Lcom/htc/android/worldclock/WorldClockTabControl$UIHandler;
.super Landroid/os/Handler;
.source "WorldClockTabControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/WorldClockTabControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/WorldClockTabControl;


# direct methods
.method private constructor <init>(Lcom/htc/android/worldclock/WorldClockTabControl;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/htc/android/worldclock/WorldClockTabControl$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/worldclock/WorldClockTabControl;Lcom/htc/android/worldclock/WorldClockTabControl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/WorldClockTabControl$UIHandler;-><init>(Lcom/htc/android/worldclock/WorldClockTabControl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 565
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 566
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 572
    :goto_0
    return-void

    .line 568
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/WorldClockTabControl;->resetLayout()V

    .line 569
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClockTabControl;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/worldclock/WorldClockTabControl;->mResetLayout:Z
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/WorldClockTabControl;->access$202(Lcom/htc/android/worldclock/WorldClockTabControl;Z)Z

    goto :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x701
        :pswitch_0
    .end packed-switch
.end method
