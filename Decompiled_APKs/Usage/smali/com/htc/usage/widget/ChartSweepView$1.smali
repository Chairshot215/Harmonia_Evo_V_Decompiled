.class Lcom/htc/usage/widget/ChartSweepView$1;
.super Ljava/lang/Object;
.source "ChartSweepView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/widget/ChartSweepView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/usage/widget/ChartSweepView;


# direct methods
.method constructor <init>(Lcom/htc/usage/widget/ChartSweepView;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/usage/widget/ChartSweepView$1;->this$0:Lcom/htc/usage/widget/ChartSweepView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/usage/widget/ChartSweepView$1;->this$0:Lcom/htc/usage/widget/ChartSweepView;

    #calls: Lcom/htc/usage/widget/ChartSweepView;->dispatchRequestEdit()V
    invoke-static {v0}, Lcom/htc/usage/widget/ChartSweepView;->access$000(Lcom/htc/usage/widget/ChartSweepView;)V

    .line 149
    return-void
.end method
