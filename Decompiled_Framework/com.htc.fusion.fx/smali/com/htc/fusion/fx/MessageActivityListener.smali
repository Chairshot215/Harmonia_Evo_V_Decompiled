.class public abstract Lcom/htc/fusion/fx/MessageActivityListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MessageActivityListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/MessageActivityListener$InnerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/fusion/fx/MessageListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mInnerListener:Lcom/htc/fusion/fx/MessageActivityListener$InnerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageActivityListener",
            "<TT;>.Inner",
            "Listener;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    new-instance v0, Lcom/htc/fusion/fx/MessageActivityListener$InnerListener;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/MessageActivityListener$InnerListener;-><init>(Lcom/htc/fusion/fx/MessageActivityListener;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/fusion/fx/MessageActivityListener;->mInnerListener:Lcom/htc/fusion/fx/MessageActivityListener$InnerListener;

    return-void
.end method


# virtual methods
.method public setSource_ONLY_THE_SOURCE_SHOULD_CALL_THIS(Lcom/htc/fusion/fx/IMessageSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    iget-object v0, p0, Lcom/htc/fusion/fx/MessageActivityListener;->mInnerListener:Lcom/htc/fusion/fx/MessageActivityListener$InnerListener;

    invoke-interface {p1, v0}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/fusion/fx/MessageActivityListener;->unbind()V

    goto :goto_0
.end method

.method public unbind()V
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/MessageActivityListener;->mInnerListener:Lcom/htc/fusion/fx/MessageActivityListener$InnerListener;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/MessageActivityListener$InnerListener;->unbind()V

    return-void
.end method
