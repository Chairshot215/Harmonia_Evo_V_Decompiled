.class Lcom/htc/lmw/ui/NumberPickerDialog$1;
.super Ljava/lang/Object;
.source "NumberPickerDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/ui/NumberPickerDialog;-><init>(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/ui/NumberPickerDialog;


# direct methods
.method constructor <init>(Lcom/htc/lmw/ui/NumberPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/lmw/ui/NumberPickerDialog$1;->this$0:Lcom/htc/lmw/ui/NumberPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 61
    iget-object v2, p0, Lcom/htc/lmw/ui/NumberPickerDialog$1;->this$0:Lcom/htc/lmw/ui/NumberPickerDialog;

    #getter for: Lcom/htc/lmw/ui/NumberPickerDialog;->editBox:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/htc/lmw/ui/NumberPickerDialog;->access$000(Lcom/htc/lmw/ui/NumberPickerDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, str:Ljava/lang/String;
    const/4 v0, 0x0

    .line 65
    .local v0, number:I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/htc/lmw/ui/NumberPickerDialog$1;->this$0:Lcom/htc/lmw/ui/NumberPickerDialog;

    #getter for: Lcom/htc/lmw/ui/NumberPickerDialog;->maxNumber:I
    invoke-static {v2}, Lcom/htc/lmw/ui/NumberPickerDialog;->access$100(Lcom/htc/lmw/ui/NumberPickerDialog;)I

    move-result v2

    if-le v0, v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/htc/lmw/ui/NumberPickerDialog$1;->this$0:Lcom/htc/lmw/ui/NumberPickerDialog;

    #getter for: Lcom/htc/lmw/ui/NumberPickerDialog;->editBox:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/htc/lmw/ui/NumberPickerDialog;->access$000(Lcom/htc/lmw/ui/NumberPickerDialog;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lmw/ui/NumberPickerDialog$1;->this$0:Lcom/htc/lmw/ui/NumberPickerDialog;

    #getter for: Lcom/htc/lmw/ui/NumberPickerDialog;->maxNumber:I
    invoke-static {v3}, Lcom/htc/lmw/ui/NumberPickerDialog;->access$100(Lcom/htc/lmw/ui/NumberPickerDialog;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    return-void

    .line 67
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 56
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 51
    return-void
.end method
