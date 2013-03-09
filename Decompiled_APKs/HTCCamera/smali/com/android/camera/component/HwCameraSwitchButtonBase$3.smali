.class Lcom/android/camera/component/HwCameraSwitchButtonBase$3;
.super Ljava/lang/Object;
.source "HwCameraSwitchButtonBase.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HwCameraSwitchButtonBase;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HwCameraSwitchButtonBase;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HwCameraSwitchButtonBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HwCameraSwitchButtonBase$3;->this$0:Lcom/android/camera/component/HwCameraSwitchButtonBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/HwCameraSwitchButtonBase$3;->this$0:Lcom/android/camera/component/HwCameraSwitchButtonBase;

    invoke-virtual {v0}, Lcom/android/camera/component/HwCameraSwitchButtonBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/HwCameraSwitchButtonBase$3;->this$0:Lcom/android/camera/component/HwCameraSwitchButtonBase;

    #getter for: Lcom/android/camera/component/HwCameraSwitchButtonBase;->mButtonStateReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/camera/component/HwCameraSwitchButtonBase;->access$500(Lcom/android/camera/component/HwCameraSwitchButtonBase;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/camera/component/HwCameraSwitchButtonBase$3;->this$0:Lcom/android/camera/component/HwCameraSwitchButtonBase;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/HwCameraSwitchButtonBase;->m_IsReceiverRegistered:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/HwCameraSwitchButtonBase;->access$602(Lcom/android/camera/component/HwCameraSwitchButtonBase;Z)Z

    return-void
.end method
