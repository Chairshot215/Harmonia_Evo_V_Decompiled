.class public interface abstract Lcom/htc/fusion/fx/IMessageListener;
.super Ljava/lang/Object;
.source "IMessageListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onMessageReceived(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract setSource_ONLY_THE_SOURCE_SHOULD_CALL_THIS(Lcom/htc/fusion/fx/IMessageSource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract unbind()V
.end method
