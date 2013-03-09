.class Lcom/htc/widget/HtcGridView$1;
.super Ljava/lang/Object;
.source "HtcGridView.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnDataSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcGridView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcGridView$1;->this$0:Lcom/htc/widget/HtcGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOnDataSetChange()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcGridView$1;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mTouchMode:I
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$000(Lcom/htc/widget/HtcGridView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcGridView$1;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mTouchMode:I
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$000(Lcom/htc/widget/HtcGridView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$1;->this$0:Lcom/htc/widget/HtcGridView;

    const/high16 v1, -0x8000

    iput v1, v0, Lcom/htc/widget/HtcGridView;->mEmptyHeight:I

    goto :goto_0
.end method
