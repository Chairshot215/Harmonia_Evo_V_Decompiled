.class Lcom/htc/usage/widget/NumberPicker$AdjustScrollerCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdjustScrollerCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/usage/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/htc/usage/widget/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1961
    iput-object p1, p0, Lcom/htc/usage/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1963
    iget-object v0, p0, Lcom/htc/usage/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #setter for: Lcom/htc/usage/widget/NumberPicker;->mPreviousScrollerY:I
    invoke-static {v0, v1}, Lcom/htc/usage/widget/NumberPicker;->access$1402(Lcom/htc/usage/widget/NumberPicker;I)I

    .line 1964
    iget-object v0, p0, Lcom/htc/usage/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #getter for: Lcom/htc/usage/widget/NumberPicker;->mInitialScrollOffset:I
    invoke-static {v0}, Lcom/htc/usage/widget/NumberPicker;->access$1500(Lcom/htc/usage/widget/NumberPicker;)I

    move-result v0

    iget-object v2, p0, Lcom/htc/usage/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #getter for: Lcom/htc/usage/widget/NumberPicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Lcom/htc/usage/widget/NumberPicker;->access$1600(Lcom/htc/usage/widget/NumberPicker;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/htc/usage/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #calls: Lcom/htc/usage/widget/NumberPicker;->updateInputTextView()V
    invoke-static {v0}, Lcom/htc/usage/widget/NumberPicker;->access$1700(Lcom/htc/usage/widget/NumberPicker;)V

    .line 1966
    iget-object v0, p0, Lcom/htc/usage/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    iget-object v1, p0, Lcom/htc/usage/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #getter for: Lcom/htc/usage/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J
    invoke-static {v1}, Lcom/htc/usage/widget/NumberPicker;->access$1800(Lcom/htc/usage/widget/NumberPicker;)J

    move-result-wide v1

    #calls: Lcom/htc/usage/widget/NumberPicker;->showInputControls(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/usage/widget/NumberPicker;->access$1900(Lcom/htc/usage/widget/NumberPicker;J)V

    .line 1976
    :goto_0
    return-void

    .line 1970
    :cond_0
    iget-object v0, p0, Lcom/htc/usage/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #getter for: Lcom/htc/usage/widget/NumberPicker;->mInitialScrollOffset:I
    invoke-static {v0}, Lcom/htc/usage/widget/NumberPicker;->access$1500(Lcom/htc/usage/widget/NumberPicker;)I

    move-result v0

    iget-object v2, p0, Lcom/htc/usage/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #getter for: Lcom/htc/usage/widget/NumberPicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Lcom/htc/usage/widget/NumberPicker;->access$1600(Lcom/htc/usage/widget/NumberPicker;)I

    move-result v2

    sub-int v4, v0, v2

    .line 1971
    .local v4, deltaY:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lcom/htc/usage/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #getter for: Lcom/htc/usage/widget/NumberPicker;->mSelectorElementHeight:I
    invoke-static {v2}, Lcom/htc/usage/widget/NumberPicker;->access$2000(Lcom/htc/usage/widget/NumberPicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    .line 1972
    if-lez v4, :cond_2

    iget-object v0, p0, Lcom/htc/usage/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #getter for: Lcom/htc/usage/widget/NumberPicker;->mSelectorElementHeight:I
    invoke-static {v0}, Lcom/htc/usage/widget/NumberPicker;->access$2000(Lcom/htc/usage/widget/NumberPicker;)I

    move-result v0

    neg-int v0, v0

    :goto_1
    add-int/2addr v4, v0

    .line 1974
    :cond_1
    iget-object v0, p0, Lcom/htc/usage/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #getter for: Lcom/htc/usage/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/htc/usage/widget/NumberPicker;->access$2100(Lcom/htc/usage/widget/NumberPicker;)Landroid/widget/Scroller;

    move-result-object v0

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1975
    iget-object v0, p0, Lcom/htc/usage/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/htc/usage/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1972
    :cond_2
    iget-object v0, p0, Lcom/htc/usage/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #getter for: Lcom/htc/usage/widget/NumberPicker;->mSelectorElementHeight:I
    invoke-static {v0}, Lcom/htc/usage/widget/NumberPicker;->access$2000(Lcom/htc/usage/widget/NumberPicker;)I

    move-result v0

    goto :goto_1
.end method
