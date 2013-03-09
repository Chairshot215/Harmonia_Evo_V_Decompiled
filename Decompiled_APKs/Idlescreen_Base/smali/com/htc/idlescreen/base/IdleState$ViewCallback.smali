.class public interface abstract Lcom/htc/idlescreen/base/IdleState$ViewCallback;
.super Ljava/lang/Object;
.source "IdleState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/IdleState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewCallback"
.end annotation


# virtual methods
.method public abstract getContainer()Lcom/htc/idlescreen/base/widget/IdleContainer;
.end method

.method public abstract getFxEngineCallback()Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;
.end method

.method public abstract getIdleScreenCallback()Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;
.end method

.method public abstract getRing()Lcom/htc/idlescreen/base/widget/IdleRing;
.end method

.method public abstract getShortcutPanel()Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;
.end method

.method public abstract isCurrentScene(Lcom/htc/fusion/fx/FxScene;)Z
.end method

.method public abstract isPortrait()Z
.end method

.method public abstract isShow()Z
.end method

.method public abstract onAppCountUpdate(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V
.end method

.method public abstract onShortcutUpdate()V
.end method

.method public abstract onTelephonyChanged()V
.end method

.method public abstract onTimeChanged()V
.end method

.method public abstract onViewModeChanged(Lcom/htc/idlescreen/base/IdleState$ViewMode;)V
.end method

.method public abstract supportWeather()Z
.end method
