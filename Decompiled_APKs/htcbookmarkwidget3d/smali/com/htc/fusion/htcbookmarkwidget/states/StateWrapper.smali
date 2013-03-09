.class public Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;
.super Ljava/lang/Object;
.source "StateWrapper.java"

# interfaces
.implements Lcom/htc/fusion/htcbookmarkwidget/states/IState;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"


# instance fields
.field private mBase:Lcom/htc/fusion/htcbookmarkwidget/states/IState;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V
    .locals 0
    .parameter "base"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->mBase:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    .line 18
    return-void
.end method


# virtual methods
.method protected attachBaseState(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V
    .locals 2
    .parameter "base"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->mBase:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base state already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->mBase:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    .line 25
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->mBase:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->mBase:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfiguration"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->mBase:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 64
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->mBase:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onContentChanged()V

    .line 39
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->mBase:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onCreate()V

    .line 44
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->mBase:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onDestroy()V

    .line 59
    return-void
.end method

.method public onItemEvent(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->mBase:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onItemEvent(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V

    .line 76
    return-void
.end method

.method public onListViewEvent(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->mBase:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onListViewEvent(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V

    .line 80
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->mBase:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onPause()V

    .line 54
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->mBase:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onResume()V

    .line 49
    return-void
.end method

.method public onTiltChanged(F)V
    .locals 1
    .parameter "tilt"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->mBase:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onTiltChanged(F)V

    .line 68
    return-void
.end method

.method public setContent(Ljava/lang/Object;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/StateWrapper;->mBase:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->setContent(Ljava/lang/Object;)V

    .line 34
    return-void
.end method
