.class Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListPopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/widget/ListPopupBubbleWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/ListPopupBubbleWindow;Lcom/htc/widget/ListPopupBubbleWindow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->constructThreadHash:I
    invoke-static {v2}, Lcom/htc/widget/ListPopupBubbleWindow;->access$700(Lcom/htc/widget/ListPopupBubbleWindow;)I

    move-result v2

    if-eq v0, v2, :cond_0

    const-string v2, "ListPopupBubbleWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread changed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->constructThreadHash:I
    invoke-static {v4}, Lcom/htc/widget/ListPopupBubbleWindow;->access$700(Lcom/htc/widget/ListPopupBubbleWindow;)I

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
    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;
    invoke-static {v2}, Lcom/htc/widget/ListPopupBubbleWindow;->access$600(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "borranx Strange! mDropDownList is null when showing"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v2}, Lcom/htc/widget/ListPopupBubbleWindow;->access$800(Lcom/htc/widget/ListPopupBubbleWindow;)Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v3, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/htc/widget/ListPopupBubbleWindow;->access$800(Lcom/htc/widget/ListPopupBubbleWindow;)Landroid/widget/ListAdapter;

    move-result-object v3

    #calls: Lcom/htc/widget/ListPopupBubbleWindow;->measureContentWidth(Landroid/widget/ListAdapter;)I
    invoke-static {v2, v3}, Lcom/htc/widget/ListPopupBubbleWindow;->access$900(Lcom/htc/widget/ListPopupBubbleWindow;Landroid/widget/ListAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I
    invoke-static {v2}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1000(Lcom/htc/widget/ListPopupBubbleWindow;)I

    move-result v2

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v2, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    :cond_3
    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    return-void
.end method
