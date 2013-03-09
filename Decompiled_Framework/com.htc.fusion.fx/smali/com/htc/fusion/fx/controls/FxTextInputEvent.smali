.class public Lcom/htc/fusion/fx/controls/FxTextInputEvent;
.super Ljava/lang/Object;
.source "FxTextInputEvent.java"


# instance fields
.field public control:Lcom/htc/fusion/fx/FxControl;

.field public eventType:I


# direct methods
.method protected constructor <init>(Lcom/htc/fusion/fx/FxControl;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxTextInputEvent;->control:Lcom/htc/fusion/fx/FxControl;

    iput p2, p0, Lcom/htc/fusion/fx/controls/FxTextInputEvent;->eventType:I

    return-void
.end method
