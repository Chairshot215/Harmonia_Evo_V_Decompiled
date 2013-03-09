.class Lcom/android/mms/ui/ExtractObjectViewActivity$3$1$1;
.super Ljava/lang/Object;
.source "ExtractObjectViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ExtractObjectViewActivity$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/ui/ExtractObjectViewActivity$3$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ExtractObjectViewActivity$3$1;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$3$1$1;->this$2:Lcom/android/mms/ui/ExtractObjectViewActivity$3$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$3$1$1;->this$2:Lcom/android/mms/ui/ExtractObjectViewActivity$3$1;

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$3$1;->this$1:Lcom/android/mms/ui/ExtractObjectViewActivity$3;

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$3;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/ExtractObjectViewActivity;->saveAttachments(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$000(Lcom/android/mms/ui/ExtractObjectViewActivity;Z)V

    .line 388
    iget-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$3$1$1;->this$2:Lcom/android/mms/ui/ExtractObjectViewActivity$3$1;

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$3$1;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$3$1$1;->this$2:Lcom/android/mms/ui/ExtractObjectViewActivity$3$1;

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$3$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 391
    :cond_0
    return-void
.end method
