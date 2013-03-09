.class Lcom/android/mms/ui/ExtractObjectViewActivity$3$1;
.super Ljava/lang/Object;
.source "ExtractObjectViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ExtractObjectViewActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ExtractObjectViewActivity$3;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ExtractObjectViewActivity$3;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$3$1;->this$1:Lcom/android/mms/ui/ExtractObjectViewActivity$3;

    iput-object p2, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$3$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$3$1;->this$1:Lcom/android/mms/ui/ExtractObjectViewActivity$3;

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$3;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    new-instance v1, Lcom/android/mms/ui/ExtractObjectViewActivity$3$1$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ExtractObjectViewActivity$3$1$1;-><init>(Lcom/android/mms/ui/ExtractObjectViewActivity$3$1;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ExtractObjectViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 393
    return-void
.end method
