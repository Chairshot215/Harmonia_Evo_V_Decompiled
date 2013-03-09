.class Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListItemListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "ListModeState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListItemListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
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
    .line 268
    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListItemListener;->mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    .line 270
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListItemListener;->mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListItemListener;->mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onItemEvent(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V

    .line 276
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 266
    check-cast p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/ListModeState$ListItemListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V

    return-void
.end method
