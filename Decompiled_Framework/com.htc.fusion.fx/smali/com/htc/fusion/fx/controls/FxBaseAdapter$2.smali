.class Lcom/htc/fusion/fx/controls/FxBaseAdapter$2;
.super Lcom/htc/fusion/fx/MessageListener;
.source "FxBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/FxBaseAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/FxBaseAdapter;


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/FxBaseAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter$2;->this$0:Lcom/htc/fusion/fx/controls/FxBaseAdapter;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 4

    iget-object v1, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListItem;->getIndex()I

    move-result v0

    iget v1, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter$2;->this$0:Lcom/htc/fusion/fx/controls/FxBaseAdapter;

    iget-object v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    iget v3, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->setSyncFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;I)V

    :cond_0
    iget v1, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter$2;->this$0:Lcom/htc/fusion/fx/controls/FxBaseAdapter;

    iget-object v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    iget v3, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->setSyncFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;

    invoke-virtual {p0, p1}, Lcom/htc/fusion/fx/controls/FxBaseAdapter$2;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V

    return-void
.end method
