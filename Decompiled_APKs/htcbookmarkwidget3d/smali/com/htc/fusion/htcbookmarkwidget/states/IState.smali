.class public interface abstract Lcom/htc/fusion/htcbookmarkwidget/states/IState;
.super Ljava/lang/Object;
.source "IState.java"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onContentChanged()V
.end method

.method public abstract onCreate()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onItemEvent(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
.end method

.method public abstract onListViewEvent(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onTiltChanged(F)V
.end method

.method public abstract setContent(Ljava/lang/Object;)V
.end method
