.class final Lcom/android/camera/CameraThread$HtcCallback;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/hardware/Camera$HtcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HtcCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$HtcCallback;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread$HtcCallback;-><init>(Lcom/android/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method public OnReceive(IIILandroid/hardware/Camera;)V
    .locals 4

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got HtcCallback !!! , callbackType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    const-string v0, "CameraThread"

    const-string v1, "Unknown HtcCallbackType !!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraThread$HtcCallback;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$3600(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera/HTCCallbackEvent;

    const-string v2, "HTCCallback.SmileChanged"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p2, p3}, Lcom/android/camera/HTCCallbackEvent;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraThread$HtcCallback;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$3600(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera/HTCCallbackEvent;

    const-string v2, "HTCCallback.AutoSmileCapture"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p2, p3}, Lcom/android/camera/HTCCallbackEvent;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread$HtcCallback;->this$0:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x53

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/CameraThread$HtcCallback;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$3600(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera/HTCCallbackEvent;

    const-string v2, "HTCCallback.BlinkChanged"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, p2, p3}, Lcom/android/camera/HTCCallbackEvent;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/CameraThread$HtcCallback;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$3600(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera/HTCCallbackEvent;

    const-string v2, "HTCCallback.BlinkOffChanged"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, p2, p3}, Lcom/android/camera/HTCCallbackEvent;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/CameraThread$HtcCallback;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$3600(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera/HTCCallbackEvent;

    const-string v2, "HTCCallback.LowLightChanged"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, p2, p3}, Lcom/android/camera/HTCCallbackEvent;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/CameraThread$HtcCallback;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$3600(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera/HTCCallbackEvent;

    const-string v2, "HTCCallback.MarcoFocusChanged"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, p2, p3}, Lcom/android/camera/HTCCallbackEvent;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
