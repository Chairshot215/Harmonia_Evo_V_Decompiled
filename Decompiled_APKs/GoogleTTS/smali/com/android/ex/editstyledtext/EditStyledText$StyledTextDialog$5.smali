.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$5;
.super Ljava/lang/Object;
.source "EditStyledText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->buildAndShowColorDialogue(ILjava/lang/CharSequence;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;


# direct methods
.method constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 2204
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$5;->this$0:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 2206
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$5;->this$0:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->access$1300(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->setBackgroundColor(I)V

    .line 2207
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$5;->this$0:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->access$1500(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2208
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$5;->this$0:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->access$1500(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 2209
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$5;->this$0:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->access$1500(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2210
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$5;->this$0:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    #setter for: Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->access$1502(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2215
    :goto_0
    return-void

    .line 2212
    :cond_0
    const-string v0, "EditStyledText"

    const-string v1, "--- buildAndShowColorDialogue: can\'t find alertDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
