.class public interface abstract Lcom/htc/fusion/fx/IMessageSource;
.super Ljava/lang/Object;
.source "IMessageSource.java"


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
.method public abstract bind(Lcom/htc/fusion/fx/IMessageListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/IMessageListener",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract unbind(Lcom/htc/fusion/fx/IMessageListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/IMessageListener",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract unbindAll()V
.end method
