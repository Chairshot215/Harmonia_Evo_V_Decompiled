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
    .parameter
    .parameter "dist"

    .prologue
    const/4 v2, 0x0

    .line 978
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->this$0:Lcom/htc/widget/HtcReorderListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->startTime:J

    .line 975
    iput v2, p0, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->current:I

    .line 976
    iput v2, p0, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->distance:I

    .line 979
    iput p2, p0, Lcom/htc/widget/HtcReorderListView$DragWindowMove;->distance:I

    .line 980
    return-void
.end method
