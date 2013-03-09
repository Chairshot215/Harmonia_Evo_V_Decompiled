.class public Lcom/htc/android/worldclock/CloseMenuIME;
.super Landroid/app/Activity;
.source "CloseMenuIME.java"


# instance fields
.field private mMenuDown:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 17
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 18
    packed-switch p1, :pswitch_data_0

    .line 26
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    return v0

    .line 20
    :pswitch_0
    iget-boolean v1, p0, Lcom/htc/android/worldclock/CloseMenuIME;->mMenuDown:Z

    if-nez v1, :cond_0

    .line 23
    iput-boolean v0, p0, Lcom/htc/android/worldclock/CloseMenuIME;->mMenuDown:Z

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 31
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 32
    packed-switch p1, :pswitch_data_0

    .line 37
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 34
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/CloseMenuIME;->mMenuDown:Z

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method
