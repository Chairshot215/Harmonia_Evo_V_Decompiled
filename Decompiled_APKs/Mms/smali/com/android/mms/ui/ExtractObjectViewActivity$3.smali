.class Lcom/android/mms/ui/ExtractObjectViewActivity$3;
.super Ljava/lang/Object;
.source "ExtractObjectViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ExtractObjectViewActivity;->initButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ExtractObjectViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$3;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 357
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportInternalStorage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    const/4 v0, 0x0

    .line 360
    .local v0, dirPath:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$3;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getAvailableDirPath(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/mms/StorageFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 365
    :goto_0
    if-nez v0, :cond_0

    .line 396
    .end local v0           #dirPath:Ljava/lang/String;
    :goto_1
    return-void

    .line 368
    .restart local v0       #dirPath:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$3;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    #calls: Lcom/android/mms/ui/ExtractObjectViewActivity;->checkPduPartFileNameExist(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$100(Lcom/android/mms/ui/ExtractObjectViewActivity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    iget-object v2, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$3;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/ExtractObjectViewActivity;->showDialog(I)V

    goto :goto_1

    .line 374
    .end local v0           #dirPath:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$3;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$3;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    const v5, 0x7f090167

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 382
    .local v1, progressDialog:Landroid/app/ProgressDialog;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ExtractObjectViewActivity$3$1;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/ui/ExtractObjectViewActivity$3$1;-><init>(Lcom/android/mms/ui/ExtractObjectViewActivity$3;Landroid/app/ProgressDialog;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 362
    .end local v1           #progressDialog:Landroid/app/ProgressDialog;
    .restart local v0       #dirPath:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
