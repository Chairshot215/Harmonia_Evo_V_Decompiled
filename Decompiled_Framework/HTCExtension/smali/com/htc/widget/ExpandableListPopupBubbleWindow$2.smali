.class Lcom/htc/widget/ExpandableListPopupBubbleWindow$2;
.super Ljava/lang/Object;
.source "ExpandableListPopupBubbleWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/ExpandableListPopupBubbleWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;


# direct methods
.method constructor <init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$2;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$2;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;
    invoke-static {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$700(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->access$602(Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;Z)Z

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
