.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$2;
.super Ljava/lang/Object;
.source "EditStyledText.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->buildDialogue(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
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
    .line 2145
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$2;->this$0:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 2148
    const-string v0, "EditStyledText"

    const-string v1, "--- oncancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$2;->this$0:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->access$1300(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartEdit()V

    .line 2151
    return-void
.end method
