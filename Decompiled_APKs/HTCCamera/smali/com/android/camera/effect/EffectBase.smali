.class public abstract Lcom/android/camera/effect/EffectBase;
.super Lcom/android/camera/ThreadDependencyObject;
.source "EffectBase.java"


# static fields
.field public static final CAPABILITY_SUPPORTS_ALL:I = 0x7fffffff

.field public static final CAPABILITY_SUPPORTS_CAMERA_MODE:I = 0x10

.field public static final CAPABILITY_SUPPORTS_FRONT_3D_CAMERA:I = 0x8

.field public static final CAPABILITY_SUPPORTS_FRONT_CAMERA:I = 0x4

.field public static final CAPABILITY_SUPPORTS_MAIN_3D_CAMERA:I = 0x2

.field public static final CAPABILITY_SUPPORTS_MAIN_CAMERA:I = 0x1

.field public static final CAPABILITY_SUPPORTS_SERVICE_MODE:I = 0x40

.field public static final CAPABILITY_SUPPORTS_VIDEO_MODE:I = 0x20

.field private static final FLAG_APPLIED:I = 0x2

.field private static final FLAG_PREPARED:I = 0x1

.field private static final FLAG_RELEASED:I = 0x4

.field public static final PA_FLAG_WILL_RESTART_PREVIEW:I = 0x1

.field public static final PC_FLAG_WILL_RESTART_PREVIEW:I = 0x1


# instance fields
.field private m_BackupImageSettings:Lcom/android/camera/ImageSettings;

.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private final m_CameraThread:Lcom/android/camera/CameraThread;

.field private m_Flags:I

.field private final m_Name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/ThreadDependencyObject;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "name"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "cameraActivity"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/effect/EffectBase;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {p2}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_CameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_CameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "There is no camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method final apply(Lcom/android/camera/effect/EffectBase;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    iget v5, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Effect is released"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v5, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Effect \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' has already been applied"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5}, Lcom/android/camera/effect/EffectBase;->prepareApplyEffect(Lcom/android/camera/effect/EffectBase;I)V

    iget v5, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectBase;->applyEffect(Lcom/android/camera/effect/EffectBase;)V

    iget v5, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v0

    if-eqz p1, :cond_4

    if-eq p1, p0, :cond_4

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v2

    xor-int/lit8 v5, v0, -0x1

    and-int v4, v2, v5

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getBackupImageSettings()Lcom/android/camera/ImageSettings;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Restore image settings"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/ImageSettings;->apply(I)V

    :cond_3
    new-instance v5, Lcom/android/camera/ImageSettings;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    const v7, 0x7fffffff

    invoke-direct {v5, v6, v3, v7}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/ImageSettings;I)V

    iput-object v5, p0, Lcom/android/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/android/camera/ImageSettings;

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getAppliedImageSettings()Lcom/android/camera/ImageSettings;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Apply special image settings"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/camera/ImageSettings;->apply()V

    :cond_5
    iget-object v5, p0, Lcom/android/camera/effect/EffectBase;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v5

    new-instance v6, Lcom/android/camera/effect/EffectEvent;

    const-string v7, "Effect.Applied"

    invoke-direct {v6, v7, p0}, Lcom/android/camera/effect/EffectEvent;-><init>(Ljava/lang/String;Lcom/android/camera/effect/EffectBase;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto/16 :goto_0
.end method

.method protected abstract applyEffect(Lcom/android/camera/effect/EffectBase;)V
.end method

.method final cancel(Lcom/android/camera/effect/EffectBase;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    iget v3, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Effect is released"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/camera/effect/EffectBase;->prepareCancelEffect(Lcom/android/camera/effect/EffectBase;I)V

    iget v3, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    :cond_1
    iget v3, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Effect \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' has already been canceled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    if-eq p1, p0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v2

    xor-int/lit8 v3, v1, -0x1

    and-int v0, v2, v3

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Backup current image settings"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/android/camera/ImageSettings;

    if-nez v3, :cond_3

    new-instance v3, Lcom/android/camera/ImageSettings;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v3, p0, Lcom/android/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/android/camera/ImageSettings;

    :cond_3
    iget-object v3, p0, Lcom/android/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/android/camera/ImageSettings;

    invoke-virtual {v3, v0}, Lcom/android/camera/ImageSettings;->backup(I)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectBase;->cancelEffect(Lcom/android/camera/effect/EffectBase;)V

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->cancelImplicitly()V

    goto :goto_0
.end method

.method protected abstract cancelEffect(Lcom/android/camera/effect/EffectBase;)V
.end method

.method protected cancelImplicitly()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera/effect/EffectEvent;

    const-string v2, "Effect.Canceled"

    invoke-direct {v1, v2, p0}, Lcom/android/camera/effect/EffectEvent;-><init>(Ljava/lang/String;Lcom/android/camera/effect/EffectBase;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    return-void
.end method

.method public getAppliedImageSettings()Lcom/android/camera/ImageSettings;
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ImageSettings;->getDefaultSettings(Lcom/android/camera/HTCCamera;I)Lcom/android/camera/ImageSettings;

    move-result-object v0

    return-object v0
.end method

.method public final getBackupImageSettings()Lcom/android/camera/ImageSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/android/camera/ImageSettings;

    return-object v0
.end method

.method public final getCameraActivity()Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method public final getCameraThread()Lcom/android/camera/CameraThread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_CameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method public abstract getCapabilities()I
.end method

.method public getDisabledImageSettings()I
    .locals 1

    sget v0, Lcom/android/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public final isApplied()Z
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlashSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSelfTimerSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final prepareApply(Lcom/android/camera/effect/EffectBase;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Effect is released"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has already been prepared or applied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/EffectBase;->prepareApplyEffect(Lcom/android/camera/effect/EffectBase;I)V

    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    goto :goto_0
.end method

.method protected prepareApplyEffect(Lcom/android/camera/effect/EffectBase;I)V
    .locals 0

    return-void
.end method

.method final prepareCancel(Lcom/android/camera/effect/EffectBase;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Effect is released"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has already been prepared for canceling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/EffectBase;->prepareCancelEffect(Lcom/android/camera/effect/EffectBase;I)V

    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    goto :goto_0
.end method

.method protected prepareCancelEffect(Lcom/android/camera/effect/EffectBase;I)V
    .locals 0

    return-void
.end method

.method public final release()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/camera/effect/EffectBase;->cancel(Lcom/android/camera/effect/EffectBase;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->releaseOverride()V

    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/effect/EffectBase;->prepareCancel(Lcom/android/camera/effect/EffectBase;I)V

    goto :goto_1
.end method

.method public releaseCachedResources()V
    .locals 0

    return-void
.end method

.method protected releaseOverride()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->releaseCachedResources()V

    return-void
.end method
