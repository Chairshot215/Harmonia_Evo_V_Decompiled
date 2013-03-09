.class public interface abstract Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;
.super Ljava/lang/Object;
.source "IStateHost.java"


# virtual methods
.method public abstract enableHostSlide(Z)V
.end method

.method public abstract getConfiguration()Landroid/content/res/Configuration;
.end method

.method public abstract getHostContext()Landroid/content/Context;
.end method

.method public abstract getWidgetBase()Lcom/htc/android/rosie/widget/Widget$Base;
.end method

.method public abstract getWidgetContext()Landroid/content/Context;
.end method

.method public abstract getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;
.end method

.method public abstract getWidgetMode()Ljava/lang/String;
.end method

.method public abstract getWidgetScene()Lcom/htc/fusion/fx/FxScene;
.end method

.method public abstract getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
.end method

.method public abstract setState(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V
.end method
