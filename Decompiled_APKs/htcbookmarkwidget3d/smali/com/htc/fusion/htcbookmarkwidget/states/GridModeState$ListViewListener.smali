.class Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListViewListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "GridModeState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListViewListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    .line 323
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListViewListener;->mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    .line 324
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListViewListener;->mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onListViewEvent(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V

    .line 328
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 320
    check-cast p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListViewListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V

    return-void
.end method
