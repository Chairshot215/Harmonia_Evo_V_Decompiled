.class public Lcom/htc/fusion/fx/controls/FxListItemEvent;
.super Ljava/lang/Object;
.source "FxListItemEvent.java"


# instance fields
.field public eventType:I

.field public listItem:Lcom/htc/fusion/fx/controls/FxListItem;


# direct methods
.method protected constructor <init>(Lcom/htc/fusion/fx/controls/FxListItem;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    iput p2, p0, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    return-void
.end method
