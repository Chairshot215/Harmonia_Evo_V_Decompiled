.class Lcom/htc/widget/HtcReorderListView$DragWindowMove;
.super Ljava/lang/Object;
.source "HtcReorderListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcReorderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragWindowMove"
.end annotation


# instance fields
.field current:I

.field distance:I

.field startTime:J

.field final synthetic this$0:Lcom/htc/widget/HtcReorderListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcReorderListView;I)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->this$0:Lcom/htc/widget/HtcReorderListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->startTime:J

    iput v2, p0, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->current:I

    iput v2, p0, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->distance:I

    iput p2, p0, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->distance:I

    return-void
.end method
