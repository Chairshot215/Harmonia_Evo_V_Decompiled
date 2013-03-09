.class public Lcom/htc/fusion/fx/controls/FxButton;
.super Lcom/htc/fusion/fx/FxTimelineControl;
.source "FxButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;
    }
.end annotation


# instance fields
.field private onClickListenerCompatibleListener:Lcom/htc/fusion/fx/IMessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/IMessageListener",
            "<",
            "Ljava/lang/Void;",
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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    return-void
.end method

.method public native getClickEventSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;",
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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public native getEnabled()Z
.end method

.method public native setEnabled(Z)V
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxButton;->onClickListenerCompatibleListener:Lcom/htc/fusion/fx/IMessageListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxButton;->onClickListenerCompatibleListener:Lcom/htc/fusion/fx/IMessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    :cond_0
    if-nez p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/htc/fusion/fx/controls/FxButton;->onClickListenerCompatibleListener:Lcom/htc/fusion/fx/IMessageListener;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxButton;->onClickListenerCompatibleListener:Lcom/htc/fusion/fx/IMessageListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxButton;->onClickListenerCompatibleListener:Lcom/htc/fusion/fx/IMessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    :cond_1
    return-void

    :cond_2
    new-instance v1, Lcom/htc/fusion/fx/controls/FxButton$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/FxButton$1;-><init>(Lcom/htc/fusion/fx/controls/FxButton;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/IMessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    return-void
.end method
