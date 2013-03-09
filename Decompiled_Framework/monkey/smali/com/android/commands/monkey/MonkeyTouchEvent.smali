.class public Lcom/android/commands/monkey/MonkeyTouchEvent;
.super Lcom/android/commands/monkey/MonkeyMotionEvent;
.source "MonkeyTouchEvent.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1002

    invoke-direct {p0, v0, v1, p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;-><init>(III)V

    return-void
.end method


# virtual methods
.method protected getTypeLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "Touch"

    return-object v0
.end method

.method protected injectMotionEvent(Landroid/view/IWindowManager;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/view/IWindowManager;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method
