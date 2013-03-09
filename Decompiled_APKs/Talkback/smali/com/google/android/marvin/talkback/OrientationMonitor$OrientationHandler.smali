.class Lcom/google/android/marvin/talkback/OrientationMonitor$OrientationHandler;
.super Lcom/google/android/marvin/utils/WeakReferenceHandler;
.source "OrientationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/OrientationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrientationHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/marvin/utils/WeakReferenceHandler",
        "<",
        "Lcom/google/android/marvin/talkback/OrientationMonitor;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANNOUNCE_ROTATION:I = 0x1

.field private static final ANNOUNCE_ROTATION_DELAY:J = 0xfaL


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/OrientationMonitor;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/marvin/utils/WeakReferenceHandler;-><init>(Ljava/lang/Object;)V

    .line 97
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;Lcom/google/android/marvin/talkback/OrientationMonitor;)V
    .locals 1
    .parameter "msg"
    .parameter "parent"

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 103
    :pswitch_0
    #calls: Lcom/google/android/marvin/talkback/OrientationMonitor;->announceCurrentRotation()V
    invoke-static {p2}, Lcom/google/android/marvin/talkback/OrientationMonitor;->access$0(Lcom/google/android/marvin/talkback/OrientationMonitor;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lcom/google/android/marvin/talkback/OrientationMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/marvin/talkback/OrientationMonitor$OrientationHandler;->handleMessage(Landroid/os/Message;Lcom/google/android/marvin/talkback/OrientationMonitor;)V

    return-void
.end method

.method public startAnnounceTimeout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 109
    invoke-virtual {p0, v2}, Lcom/google/android/marvin/talkback/OrientationMonitor$OrientationHandler;->removeMessages(I)V

    .line 110
    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/marvin/talkback/OrientationMonitor$OrientationHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 111
    return-void
.end method
