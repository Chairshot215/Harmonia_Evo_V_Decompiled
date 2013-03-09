.class Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ExpandableListPopupBubbleWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ExpandableListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;Lcom/htc/widget/ExpandableListPopupBubbleWindow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;-><init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;
    invoke-static {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$700(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;
    invoke-static {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$700(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;
    invoke-static {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$700(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;
    invoke-static {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$700(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget v1, v1, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1200(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    :cond_0
    return-void
.end method
