.class Lcom/htc/android/epst/EPST$13;
.super Ljava/lang/Object;
.source "EPST.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/EPST;->clearGPSResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/EPST;

.field final synthetic val$isSuccessful:Z


# direct methods
.method constructor <init>(Lcom/htc/android/epst/EPST;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 833
    iput-object p1, p0, Lcom/htc/android/epst/EPST$13;->this$0:Lcom/htc/android/epst/EPST;

    iput-boolean p2, p0, Lcom/htc/android/epst/EPST$13;->val$isSuccessful:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 835
    invoke-static {}, Lcom/htc/android/epst/EPST;->access$1400()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 836
    iget-boolean v0, p0, Lcom/htc/android/epst/EPST$13;->val$isSuccessful:Z

    if-ne v0, v2, :cond_0

    .line 837
    iget-object v0, p0, Lcom/htc/android/epst/EPST$13;->this$0:Lcom/htc/android/epst/EPST;

    const v1, 0x7f040052

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 841
    :goto_0
    iget-object v0, p0, Lcom/htc/android/epst/EPST$13;->this$0:Lcom/htc/android/epst/EPST;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/EPST;->showDialog(I)V

    .line 842
    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/htc/android/epst/EPST$13;->this$0:Lcom/htc/android/epst/EPST;

    const v1, 0x7f040053

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
