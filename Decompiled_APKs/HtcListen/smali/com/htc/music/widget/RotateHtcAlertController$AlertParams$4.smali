.class Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "RotateHtcAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->createListView(Lcom/htc/music/widget/RotateHtcAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/htc/music/widget/RotateHtcAlertController;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;Landroid/widget/ListView;Lcom/htc/music/widget/RotateHtcAlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$4;->this$0:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p2, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$4;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$4;->val$dialog:Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$4;->this$0:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$4;->this$0:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$4;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$4;->this$0:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$4;->val$dialog:Lcom/htc/music/widget/RotateHtcAlertController;

    #getter for: Lcom/htc/music/widget/RotateHtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/htc/music/widget/RotateHtcAlertController;->access$600(Lcom/htc/music/widget/RotateHtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$4;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
