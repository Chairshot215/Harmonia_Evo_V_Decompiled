.class Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiWaveViewMethods"
.end annotation


# instance fields
.field private mCameraDisabled:Z

.field private final mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V
    .locals 4

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockScreen;->access$600(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "LockScreen"

    const-string v3, "Camera disabled by Device Policy"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getTargetResourceId()I

    move-result v2

    const v3, 0x1070010

    if-eq v2, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    return-object v0
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    :cond_0
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    if-nez v1, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$700(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->toggleRingMode()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$800(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0
.end method

.method public ping()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->ping()V

    return-void
.end method

.method public reset(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->reset(Z)V

    return-void
.end method

.method public updateResources()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x107000b

    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetResources(I)V

    return-void

    :cond_0
    const v0, 0x107000e

    goto :goto_0

    :cond_1
    const v0, 0x1070010

    goto :goto_0
.end method
