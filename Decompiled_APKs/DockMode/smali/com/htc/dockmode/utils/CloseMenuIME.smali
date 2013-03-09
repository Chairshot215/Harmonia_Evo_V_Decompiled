.class public Lcom/htc/dockmode/utils/CloseMenuIME;
.super Landroid/app/Activity;
.source "CloseMenuIME.java"


# instance fields
.field private mMenuDown:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
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

    .line 15
    packed-switch p1, :pswitch_data_0

    .line 22
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    return v0

    .line 17
    :pswitch_0
    iget-boolean v1, p0, Lcom/htc/dockmode/utils/CloseMenuIME;->mMenuDown:Z

    if-nez v1, :cond_0

    .line 19
    iput-boolean v0, p0, Lcom/htc/dockmode/utils/CloseMenuIME;->mMenuDown:Z

    goto :goto_0

    .line 15
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
    .line 27
    packed-switch p1, :pswitch_data_0

    .line 32
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 29
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/utils/CloseMenuIME;->mMenuDown:Z

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method
