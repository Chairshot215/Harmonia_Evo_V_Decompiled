.class public abstract Lcom/htc/fusion/fx/MessageListener;
.super Ljava/lang/Object;
.source "MessageListener.java"

# interfaces
.implements Lcom/htc/fusion/fx/IMessageListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/fusion/fx/IMessageListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private source:Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/IMessageSource",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setSource_ONLY_THE_SOURCE_SHOULD_CALL_THIS(Lcom/htc/fusion/fx/IMessageSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/fusion/fx/MessageListener;->source:Lcom/htc/fusion/fx/IMessageSource;

    return-void
.end method

.method public unbind()V
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/MessageListener;->source:Lcom/htc/fusion/fx/IMessageSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/MessageListener;->source:Lcom/htc/fusion/fx/IMessageSource;

    invoke-interface {v0, p0}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    :cond_0
    return-void
.end method
