.class public Lcom/htc/fusion/fx/controls/FxSettingButton;
.super Lcom/htc/fusion/fx/FxTimelineControl;
.source "FxSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/controls/FxSettingButton$ClickParameters;
    }
.end annotation


# instance fields
.field private onClickListenerCompatibleListener:Lcom/htc/fusion/fx/IMessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/IMessageListener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bindClick(Lcom/htc/fusion/fx/IMessageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/IMessageListener",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    return-void
.end method

.method public bindClick(Lcom/htc/fusion/fx/MessageActivityListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/MessageActivityListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxSettingButton$ClickParameters;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->bindClickEvent(Lcom/htc/fusion/fx/IMessageListener;)V

    return-void
.end method

.method public bindClickEvent(Lcom/htc/fusion/fx/IMessageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/IMessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxSettingButton$ClickParameters;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->getClickEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    return-void
.end method

.method public native changeToNextState(Z)V
.end method

.method public native currentState()I
.end method

.method public native enterTurningToNextState()V
.end method

.method public native getClickEventSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/controls/FxSettingButton$ClickParameters;",
            ">;"
        }
    .end annotation
.end method

.method public native getClickSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public native getEnabled()Z
.end method

.method public initialize(I)V
    .locals 1

    const/16 v0, 0x1e

    invoke-virtual {p0, p1, v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(II)V

    return-void
.end method

.method public native initialize(II)V
.end method

.method public native setEnabled(Z)V
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxSettingButton;->onClickListenerCompatibleListener:Lcom/htc/fusion/fx/IMessageListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxSettingButton;->onClickListenerCompatibleListener:Lcom/htc/fusion/fx/IMessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    :cond_0
    if-nez p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/htc/fusion/fx/controls/FxSettingButton;->onClickListenerCompatibleListener:Lcom/htc/fusion/fx/IMessageListener;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxSettingButton;->onClickListenerCompatibleListener:Lcom/htc/fusion/fx/IMessageListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxSettingButton;->onClickListenerCompatibleListener:Lcom/htc/fusion/fx/IMessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    :cond_1
    return-void

    :cond_2
    new-instance v1, Lcom/htc/fusion/fx/controls/FxSettingButton$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/FxSettingButton$1;-><init>(Lcom/htc/fusion/fx/controls/FxSettingButton;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public native setState(I)V
.end method

.method public unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/IMessageListener",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    return-void
.end method

.method public unbindClick(Lcom/htc/fusion/fx/MessageActivityListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/MessageActivityListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxSettingButton$ClickParameters;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClickEvent(Lcom/htc/fusion/fx/IMessageListener;)V

    return-void
.end method

.method public unbindClickEvent(Lcom/htc/fusion/fx/IMessageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/IMessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxSettingButton$ClickParameters;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->getClickEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    return-void
.end method
