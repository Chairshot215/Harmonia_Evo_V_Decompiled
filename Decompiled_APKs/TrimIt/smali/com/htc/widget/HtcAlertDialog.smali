.class public Lcom/htc/widget/HtcAlertDialog;
.super Landroid/app/Dialog;
.source "HtcAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcAlertDialog$Builder;,
        Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;,
        Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcAlertDialog"


# instance fields
.field protected mAlert:Lcom/htc/app/HtcAlertController;

.field private mIMEStateRecv:Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

.field private mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 77
    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

    .line 79
    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    .line 85
    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 87
    new-instance v0, Lcom/htc/app/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/app/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    .line 88
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "theme"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 77
    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

    .line 79
    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    .line 93
    new-instance v0, Lcom/htc/app/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/app/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    .line 94
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 77
    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

    .line 79
    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    .line 99
    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 101
    invoke-virtual {p0, p2}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    .line 102
    invoke-virtual {p0, p3}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 103
    new-instance v0, Lcom/htc/app/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/app/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    .line 104
    return-void
.end method

.method private deinitSensor()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "HtcAlertDialog"

    const-string v1, "deinitSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;->disable()V

    .line 161
    return-void
.end method

.method private getApplicationContextSafely()Landroid/content/Context;
    .locals 2

    .prologue
    .line 1145
    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1146
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 1147
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1148
    .local v0, apContext:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 1151
    .end local v0           #apContext:Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v1

    .restart local v0       #apContext:Landroid/content/Context;
    :cond_1
    move-object v1, v0

    .line 1148
    goto :goto_0
.end method

.method private initSensor()V
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog;->mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    if-nez v1, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/htc/widget/HtcAlertDialog;->getApplicationContextSafely()Landroid/content/Context;

    move-result-object v0

    .line 147
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 148
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    invoke-direct {v1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAlertDialog;->mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog;->mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog;->mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;->enable()V

    .line 154
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0}, Lcom/htc/app/HtcAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 499
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 501
    iget-object v2, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v2}, Lcom/htc/app/HtcAlertController;->installContent()V

    .line 514
    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 515
    .local v1, theWindow:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 516
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 517
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 518
    const-string v2, "AlertDialog"

    const-string v3, "[onCreate] auto launch SIP."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/HtcAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 526
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/HtcAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 532
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 223
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "HTC_IME_CURRENT_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 224
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/htc/widget/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

    if-nez v2, :cond_0

    .line 225
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;-><init>(Lcom/htc/widget/HtcAlertDialog;)V

    iput-object v2, p0, Lcom/htc/widget/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

    .line 226
    invoke-direct {p0}, Lcom/htc/widget/HtcAlertDialog;->getApplicationContextSafely()Landroid/content/Context;

    move-result-object v0

    .line 227
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 228
    iget-object v2, p0, Lcom/htc/widget/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    return-void
.end method

.method protected onStartNonSIP()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 208
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 245
    const-string v1, "HtcAlertDialog"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

    if-eqz v1, :cond_1

    .line 249
    invoke-direct {p0}, Lcom/htc/widget/HtcAlertDialog;->getApplicationContextSafely()Landroid/content/Context;

    move-result-object v0

    .line 250
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

    .line 263
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 217
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/htc/app/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 411
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "msg"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/htc/app/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 397
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 451
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 452
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 419
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 420
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 464
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 465
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 428
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 429
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 477
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 478
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 437
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 438
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 351
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcAlertController;->setIcon(I)V

    .line 487
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 491
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .parameter "forceInverseBackground"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcAlertController;->setInverseBackgroundForced(Z)V

    .line 495
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 355
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "message"
    .parameter "nAutoLinkMask"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/HtcAlertController;->setMessage(Ljava/lang/CharSequence;I)V

    .line 360
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 344
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcAlertController;->setView(Landroid/view/View;)V

    .line 368
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/HtcAlertController;->setView(Landroid/view/View;IIII)V

    .line 383
    return-void
.end method
