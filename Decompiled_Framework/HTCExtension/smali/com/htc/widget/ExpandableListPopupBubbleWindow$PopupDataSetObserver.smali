.class Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ExpandableListPopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ExpandableListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;Lcom/htc/widget/ExpandableListPopupBubbleWindow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;-><init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->constructThreadHash:I
    invoke-static {v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$800(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)I

    move-result v2

    if-eq v0, v2, :cond_0

    const-string v2, "ExpandableListPopupBubbleWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread changed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->constructThreadHash:I
    invoke-static {v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$800(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;
    invoke-static {v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$700(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "borranx Strange! mDropDownList is null when showing"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$900(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v3, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$900(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/widget/ExpandableListAdapter;

    move-result-object v3

    #calls: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->measureContentWidth(Landroid/widget/ExpandableListAdapter;)I
    invoke-static {v2, v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1000(Lcom/htc/widget/ExpandableListPopupBubbleWindow;Landroid/widget/ExpandableListAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownWidth:I
    invoke-static {v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1100(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)I

    move-result v2

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v2, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setContentWidth(I)V

    :cond_3
    iget-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismiss()V

    return-void
.end method
