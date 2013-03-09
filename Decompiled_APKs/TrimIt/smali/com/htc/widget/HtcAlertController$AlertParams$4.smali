.class Lcom/htc/widget/HtcAlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "HtcAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcAlertController$AlertParams;->createListView(Lcom/htc/widget/HtcAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/htc/widget/HtcAlertController;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAlertController$AlertParams;Landroid/widget/ListView;Lcom/htc/widget/HtcAlertController;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/htc/widget/HtcAlertController$AlertParams$4;->this$0:Lcom/htc/widget/HtcAlertController$AlertParams;

    iput-object p2, p0, Lcom/htc/widget/HtcAlertController$AlertParams$4;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/htc/widget/HtcAlertController$AlertParams$4;->val$dialog:Lcom/htc/widget/HtcAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController$AlertParams$4;->this$0:Lcom/htc/widget/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController$AlertParams$4;->this$0:Lcom/htc/widget/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/htc/widget/HtcAlertController$AlertParams$4;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController$AlertParams$4;->this$0:Lcom/htc/widget/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertController$AlertParams$4;->val$dialog:Lcom/htc/widget/HtcAlertController;

    #getter for: Lcom/htc/widget/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/htc/widget/HtcAlertController;->access$600(Lcom/htc/widget/HtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/HtcAlertController$AlertParams$4;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1265
    return-void
.end method
