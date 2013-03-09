.class Lcom/google/android/voicesearch/HelpDialog$4;
.super Ljava/lang/Object;
.source "HelpDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/HelpDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/HelpDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/HelpDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog$4;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$4;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mActionGallery:Landroid/widget/Gallery;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$100(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Gallery;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    if-gtz v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$4;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mActionGallery:Landroid/widget/Gallery;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$100(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Gallery;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$4;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mActionGallery:Landroid/widget/Gallery;
    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$100(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Gallery;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    .line 194
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$4;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/HelpDialog;->stopAutoScroll()V

    goto :goto_0
.end method
