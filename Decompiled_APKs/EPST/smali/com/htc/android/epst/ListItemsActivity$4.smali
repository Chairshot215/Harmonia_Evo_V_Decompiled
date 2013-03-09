.class Lcom/htc/android/epst/ListItemsActivity$4;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/ListItemsActivity;->updateCommitResult(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/ListItemsActivity;

.field final synthetic val$failedCount:I

.field final synthetic val$successCount:I


# direct methods
.method constructor <init>(Lcom/htc/android/epst/ListItemsActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 993
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$4;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    iput p2, p0, Lcom/htc/android/epst/ListItemsActivity$4;->val$successCount:I

    iput p3, p0, Lcom/htc/android/epst/ListItemsActivity$4;->val$failedCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f040051

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 995
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$4;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/ListItemsActivity;->removeDialog(I)V

    .line 997
    iget v0, p0, Lcom/htc/android/epst/ListItemsActivity$4;->val$successCount:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/htc/android/epst/ListItemsActivity$4;->val$failedCount:I

    if-ne v0, v3, :cond_0

    .line 998
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$4;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1035
    :goto_0
    return-void

    .line 1002
    :cond_0
    iget v0, p0, Lcom/htc/android/epst/ListItemsActivity$4;->val$successCount:I

    if-nez v0, :cond_2

    .line 1003
    iget v0, p0, Lcom/htc/android/epst/ListItemsActivity$4;->val$failedCount:I

    if-nez v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$4;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1015
    :goto_1
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$4;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/ListItemsActivity;->showDialog(I)V

    goto :goto_0

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$4;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    const v1, 0x7f040053

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1009
    :cond_2
    iget v0, p0, Lcom/htc/android/epst/ListItemsActivity$4;->val$failedCount:I

    if-nez v0, :cond_3

    .line 1010
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$4;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    const v1, 0x7f040052

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1012
    :cond_3
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$4;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    const v1, 0x7f040054

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
