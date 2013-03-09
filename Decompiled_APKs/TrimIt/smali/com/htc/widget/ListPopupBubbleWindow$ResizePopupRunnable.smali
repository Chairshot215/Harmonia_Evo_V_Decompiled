.class Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/widget/ListPopupBubbleWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/ListPopupBubbleWindow;Lcom/htc/widget/ListPopupBubbleWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1576
    invoke-direct {p0, p1}, Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;
    invoke-static {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->access$600(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;
    invoke-static {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->access$600(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;
    invoke-static {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->access$600(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;
    invoke-static {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->access$600(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    iget v1, v1, Lcom/htc/widget/ListPopupBubbleWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1100(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 1581
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 1583
    :cond_0
    return-void
.end method
