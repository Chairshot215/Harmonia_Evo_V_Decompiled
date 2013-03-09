.class Lcom/htc/store/activity/detail/DetailInfo$1;
.super Ljava/lang/Object;
.source "DetailInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/activity/detail/DetailInfo;->getDialogHomeResetWidget(Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$1;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$1;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$1;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemStatus:I
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v1

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->updateActionButton(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$400(Lcom/htc/store/activity/detail/DetailInfo;I)V

    .line 535
    return-void
.end method
