.class Lcom/google/android/gm/ComposeAreaController$1;
.super Ljava/lang/Object;
.source "ComposeAreaController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ComposeAreaController;->showRecipientErrorDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ComposeAreaController;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ComposeAreaController;)V
    .locals 0
    .parameter

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/google/android/gm/ComposeAreaController$1;->this$0:Lcom/google/android/gm/ComposeAreaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController$1;->this$0:Lcom/google/android/gm/ComposeAreaController;

    #getter for: Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;
    invoke-static {v0}, Lcom/google/android/gm/ComposeAreaController;->access$000(Lcom/google/android/gm/ComposeAreaController;)Lcom/google/android/gm/ComposeArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->focusToList()V

    .line 1135
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController$1;->this$0:Lcom/google/android/gm/ComposeAreaController;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/gm/ComposeAreaController;->mRecipientErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->access$102(Lcom/google/android/gm/ComposeAreaController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1136
    return-void
.end method
