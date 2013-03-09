.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$1;
.super Ljava/lang/Object;
.source "EditStyledText.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 2137
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$1;->this$0:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$1;->this$0:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->access$1300(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartEdit()V

    .line 2140
    return-void
.end method
