.class Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListViewListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "ListModeState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;
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
    .line 281
    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    .line 282
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListViewListener;->mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    .line 283
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListViewListener;->mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onListViewEvent(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V

    .line 287
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 279
    check-cast p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListViewListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V

    return-void
.end method
