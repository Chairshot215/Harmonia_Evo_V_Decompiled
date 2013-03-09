.class Lcom/android/camera/MenuHandler$4;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MenuHandler;->createImagePropertyView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MenuHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/MenuHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/MenuHandler$4;->this$0:Lcom/android/camera/MenuHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLevelChanged(II)V
    .locals 4

    const/16 v3, 0x14

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MenuHandler$4;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;
    invoke-static {v0}, Lcom/android/camera/MenuHandler;->access$100(Lcom/android/camera/MenuHandler;)Lcom/android/camera/OnScreenPreference;

    move-result-object v0

    const-string v1, "pref_camera_saturation"

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/OnScreenPreference;->backupImageAdjustment_DOT(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/MenuHandler$4;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/MenuHandler;->access$200(Lcom/android/camera/MenuHandler;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    const-string v1, "pref_camera_saturation"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/MenuHandler$4;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/MenuHandler;->access$300(Lcom/android/camera/MenuHandler;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/MenuHandler$4;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/MenuHandler;->access$300(Lcom/android/camera/MenuHandler;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "saturation"

    invoke-static {v0, v3, p1, v1, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    return-void
.end method
