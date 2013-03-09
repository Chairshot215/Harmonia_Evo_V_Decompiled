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

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    new-instance v0, Lcom/htc/app/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/app/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    new-instance v0, Lcom/htc/app/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/app/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0, p2}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    invoke-virtual {p0, p3}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Lcom/htc/app/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/app/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    return-void
.end method

.method private deinitSensor()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    if-eqz v0, :cond_0

    const-string v0, "HtcAlertDialog"

    const-string v1, "deinitSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;->disable()V

    return-void
.end method

.method private getApplicationContextSafely()Landroid/content/Context;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private initSensor()V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog;->mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/HtcAlertDialog;->getApplicationContextSafely()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    invoke-direct {v1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAlertDialog;->mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog;->mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog;->mOrientationListener:Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$MyOrientationEventListener;->enable()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0}, Lcom/htc/app/HtcAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v2}, Lcom/htc/app/HtcAlertController;->installContent()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v2, 0x4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/HtcAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/HtcAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "HTC_IME_CURRENT_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/widget/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

    if-nez v2, :cond_0

    new-instance v2, Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;-><init>(Lcom/htc/widget/HtcAlertDialog;)V

    iput-object v2, p0, Lcom/htc/widget/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

    invoke-direct {p0}, Lcom/htc/widget/HtcAlertDialog;->getApplicationContextSafely()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method protected onStartNonSIP()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    const-string v1, "HtcAlertDialog"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/HtcAlertDialog;->getApplicationContextSafely()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/widget/HtcAlertDialog$HTC_IMERecever;

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/htc/app/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/htc/app/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcAlertController;->setCustomTitle(Landroid/view/View;)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcAlertController;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcAlertController;->setInverseBackgroundForced(Z)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/HtcAlertController;->setMessage(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcAlertController;->setView(Landroid/view/View;)V

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/HtcAlertController;->setView(Landroid/view/View;IIII)V

    return-void
.end method
