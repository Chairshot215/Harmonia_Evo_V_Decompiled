.class public Lcom/android/commands/monkey/MonkeyTrackballEvent;
.super Lcom/android/commands/monkey/MonkeyMotionEvent;
.source "MonkeyTrackballEvent.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x2

    const v1, 0x10004

    invoke-direct {p0, v0, v1, p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;-><init>(III)V

    return-void
.end method


# virtual methods
.method protected getTypeLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "Trackball"

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

    invoke-interface {p1, p2, v0}, Landroid/view/IWindowManager;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method
