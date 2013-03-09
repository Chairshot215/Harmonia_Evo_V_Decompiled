.class Lcom/htc/app/HtcAlertController$AlertParams$3;
.super Ljava/lang/Object;
.source "HtcAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/HtcAlertController$AlertParams;->createListView(Lcom/htc/app/HtcAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/HtcAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/htc/app/HtcAlertController;


# direct methods
.method constructor <init>(Lcom/htc/app/HtcAlertController$AlertParams;Lcom/htc/app/HtcAlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/HtcAlertController$AlertParams$3;->this$0:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, p0, Lcom/htc/app/HtcAlertController$AlertParams$3;->val$dialog:Lcom/htc/app/HtcAlertController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams$3;->this$0:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams$3;->val$dialog:Lcom/htc/app/HtcAlertController;

    #getter for: Lcom/htc/app/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/htc/app/HtcAlertController;->access$600(Lcom/htc/app/HtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams$3;->this$0:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams$3;->val$dialog:Lcom/htc/app/HtcAlertController;

    #getter for: Lcom/htc/app/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/htc/app/HtcAlertController;->access$600(Lcom/htc/app/HtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
