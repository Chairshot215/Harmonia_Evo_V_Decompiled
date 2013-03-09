.class Lcom/htc/android/epst/FileBrowserActivity$3;
.super Ljava/lang/Object;
.source "FileBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/FileBrowserActivity;->populateFields()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/FileBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/FileBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/htc/android/epst/FileBrowserActivity$3;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity$3;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    #getter for: Lcom/htc/android/epst/FileBrowserActivity;->DBG:Z
    invoke-static {v0}, Lcom/htc/android/epst/FileBrowserActivity;->access$500(Lcom/htc/android/epst/FileBrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity$3;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    #getter for: Lcom/htc/android/epst/FileBrowserActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/epst/FileBrowserActivity;->access$000(Lcom/htc/android/epst/FileBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok button is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/FileBrowserActivity;->access$700()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/epst/FileBrowserActivity;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity$3;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/htc/android/epst/FileBrowserActivity;->access$600()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/epst/FileBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 263
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity$3;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/android/epst/FileBrowserActivity;->finish()V

    .line 264
    return-void
.end method
