.class Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$3;
.super Ljava/lang/Object;
.source "RotateHtcAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->createListView(Lcom/android/camera/rotate/RotateHtcAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/android/camera/rotate/RotateHtcAlertController;


# direct methods
.method constructor <init>(Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;Lcom/android/camera/rotate/RotateHtcAlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$3;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$3;->val$dialog:Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$3;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$3;->val$dialog:Lcom/android/camera/rotate/RotateHtcAlertController;

    #getter for: Lcom/android/camera/rotate/RotateHtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/android/camera/rotate/RotateHtcAlertController;->access$600(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$3;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$3;->val$dialog:Lcom/android/camera/rotate/RotateHtcAlertController;

    #getter for: Lcom/android/camera/rotate/RotateHtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/android/camera/rotate/RotateHtcAlertController;->access$600(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
