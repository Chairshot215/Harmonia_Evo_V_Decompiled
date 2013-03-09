.class Lcom/htc/android/epst/HtcGroupEPST$3;
.super Ljava/lang/Object;
.source "HtcGroupEPST.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/HtcGroupEPST;->updateCommitResult(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/HtcGroupEPST;

.field final synthetic val$failedCount:I

.field final synthetic val$successCount:I


# direct methods
.method constructor <init>(Lcom/htc/android/epst/HtcGroupEPST;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/htc/android/epst/HtcGroupEPST$3;->this$0:Lcom/htc/android/epst/HtcGroupEPST;

    iput p2, p0, Lcom/htc/android/epst/HtcGroupEPST$3;->val$successCount:I

    iput p3, p0, Lcom/htc/android/epst/HtcGroupEPST$3;->val$failedCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x7f040051

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 273
    iget-object v0, p0, Lcom/htc/android/epst/HtcGroupEPST$3;->this$0:Lcom/htc/android/epst/HtcGroupEPST;

    invoke-virtual {v0, v2}, Lcom/htc/android/epst/HtcGroupEPST;->removeDialog(I)V

    .line 274
    iget v0, p0, Lcom/htc/android/epst/HtcGroupEPST$3;->val$successCount:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/android/epst/HtcGroupEPST$3;->val$failedCount:I

    if-ne v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/htc/android/epst/HtcGroupEPST$3;->this$0:Lcom/htc/android/epst/HtcGroupEPST;

    invoke-virtual {v0}, Lcom/htc/android/epst/HtcGroupEPST;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 292
    :goto_0
    return-void

    .line 278
    :cond_0
    iget v0, p0, Lcom/htc/android/epst/HtcGroupEPST$3;->val$successCount:I

    if-nez v0, :cond_2

    .line 279
    iget v0, p0, Lcom/htc/android/epst/HtcGroupEPST$3;->val$failedCount:I

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/htc/android/epst/HtcGroupEPST$3;->this$0:Lcom/htc/android/epst/HtcGroupEPST;

    invoke-virtual {v0}, Lcom/htc/android/epst/HtcGroupEPST;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 291
    :goto_1
    iget-object v0, p0, Lcom/htc/android/epst/HtcGroupEPST$3;->this$0:Lcom/htc/android/epst/HtcGroupEPST;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/HtcGroupEPST;->showDialog(I)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/htc/android/epst/HtcGroupEPST$3;->this$0:Lcom/htc/android/epst/HtcGroupEPST;

    invoke-virtual {v0}, Lcom/htc/android/epst/HtcGroupEPST;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040053

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 285
    :cond_2
    iget v0, p0, Lcom/htc/android/epst/HtcGroupEPST$3;->val$failedCount:I

    if-nez v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/htc/android/epst/HtcGroupEPST$3;->this$0:Lcom/htc/android/epst/HtcGroupEPST;

    invoke-virtual {v0}, Lcom/htc/android/epst/HtcGroupEPST;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040052

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/htc/android/epst/HtcGroupEPST$3;->this$0:Lcom/htc/android/epst/HtcGroupEPST;

    invoke-virtual {v0}, Lcom/htc/android/epst/HtcGroupEPST;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040054

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
