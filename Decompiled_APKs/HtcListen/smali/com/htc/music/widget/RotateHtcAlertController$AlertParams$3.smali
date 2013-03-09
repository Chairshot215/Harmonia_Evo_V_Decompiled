.class Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$3;
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


# direct methods
.method constructor <init>(Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;Lcom/htc/music/widget/RotateHtcAlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$3;->this$0:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p2, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$3;->val$dialog:Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$3;->this$0:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$3;->val$dialog:Lcom/htc/music/widget/RotateHtcAlertController;

    #getter for: Lcom/htc/music/widget/RotateHtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/htc/music/widget/RotateHtcAlertController;->access$600(Lcom/htc/music/widget/RotateHtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$3;->this$0:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$3;->val$dialog:Lcom/htc/music/widget/RotateHtcAlertController;

    #getter for: Lcom/htc/music/widget/RotateHtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/htc/music/widget/RotateHtcAlertController;->access$600(Lcom/htc/music/widget/RotateHtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
