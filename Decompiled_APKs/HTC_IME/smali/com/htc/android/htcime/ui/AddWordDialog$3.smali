.class Lcom/htc/android/htcime/ui/AddWordDialog$3;
.super Ljava/lang/Object;
.source "AddWordDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ui/AddWordDialog;->keyboardTypeLayoutCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/AddWordDialog;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/AddWordDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/htc/android/htcime/ui/AddWordDialog$3;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog$3;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    #getter for: Lcom/htc/android/htcime/ui/AddWordDialog;->mIsEditMode:Z
    invoke-static {v0}, Lcom/htc/android/htcime/ui/AddWordDialog;->access$100(Lcom/htc/android/htcime/ui/AddWordDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog$3;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog$3;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/AddWordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/android/htcime/ui/AddWordDialog;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/android/htcime/ui/AddWordDialog;->access$200(Lcom/htc/android/htcime/ui/AddWordDialog;Ljava/lang/String;)V

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog$3;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/AddWordDialog;->finish()V

    .line 177
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog$3;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog$3;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/AddWordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/android/htcime/ui/AddWordDialog;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/android/htcime/ui/AddWordDialog;->access$200(Lcom/htc/android/htcime/ui/AddWordDialog;Ljava/lang/String;)V

    goto :goto_0
.end method
