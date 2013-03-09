.class Lcom/htc/widget/HtcAlertController$AlertParams$3;
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


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAlertController$AlertParams;Lcom/htc/widget/HtcAlertController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/htc/widget/HtcAlertController$AlertParams$3;->this$0:Lcom/htc/widget/HtcAlertController$AlertParams;

    iput-object p2, p0, Lcom/htc/widget/HtcAlertController$AlertParams$3;->val$dialog:Lcom/htc/widget/HtcAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController$AlertParams$3;->this$0:Lcom/htc/widget/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertController$AlertParams$3;->val$dialog:Lcom/htc/widget/HtcAlertController;

    #getter for: Lcom/htc/widget/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/htc/widget/HtcAlertController;->access$600(Lcom/htc/widget/HtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1252
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController$AlertParams$3;->this$0:Lcom/htc/widget/HtcAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/htc/widget/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController$AlertParams$3;->val$dialog:Lcom/htc/widget/HtcAlertController;

    #getter for: Lcom/htc/widget/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/htc/widget/HtcAlertController;->access$600(Lcom/htc/widget/HtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1255
    :cond_0
    return-void
.end method
