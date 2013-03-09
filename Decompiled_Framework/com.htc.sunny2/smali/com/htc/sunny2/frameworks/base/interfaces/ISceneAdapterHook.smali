.class public interface abstract Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapterHook;
.super Ljava/lang/Object;
.source "ISceneAdapterHook.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADAPTER::",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract adapterIdentity()Ljava/lang/String;
.end method

.method public abstract onCancelNewAdapter()V
.end method

.method public abstract onDestroyAdapter()V
.end method

.method public abstract onNewAdapter(Landroid/os/Bundle;)V
.end method

.method public abstract setAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TADAPTER;)V"
        }
    .end annotation
.end method
