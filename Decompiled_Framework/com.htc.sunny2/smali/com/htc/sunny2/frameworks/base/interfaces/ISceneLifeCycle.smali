.class public interface abstract Lcom/htc/sunny2/frameworks/base/interfaces/ISceneLifeCycle;
.super Ljava/lang/Object;
.source "ISceneLifeCycle.java"


# static fields
.field public static final STATE_BINDADAPTER:I = 0x2

.field public static final STATE_ENTERSCENE:I = 0x1

.field public static final STATE_LEAVESCENE:I = 0x20

.field public static final STATE_SENDTOBACKGROUND:I = 0x8

.field public static final STATE_SENDTOFOREGROUND:I = 0x4

.field public static final STATE_UNBINDADAPTER:I = 0x10

.field public static final STATE_UNKNOWN:I


# virtual methods
.method public abstract onBindAdapter()V
.end method

.method public abstract onEnterScene(Landroid/os/Bundle;)V
.end method

.method public abstract onLeaveScene()V
.end method

.method public abstract onSendToBackground(Landroid/os/Bundle;)V
.end method

.method public abstract onSendToForeground(Landroid/os/Bundle;)V
.end method

.method public abstract onUnbindAdapter()V
.end method
