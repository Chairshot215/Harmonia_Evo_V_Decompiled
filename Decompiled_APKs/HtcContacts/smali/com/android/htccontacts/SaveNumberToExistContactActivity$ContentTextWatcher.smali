.class Lcom/android/htccontacts/SaveNumberToExistContactActivity$ContentTextWatcher;
.super Ljava/lang/Object;
.source "SaveNumberToExistContactActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/SaveNumberToExistContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentTextWatcher"
.end annotation


# instance fields
.field beforeLen:I

.field currentLen:I

.field final synthetic this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1051
    iput-object p1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ContentTextWatcher;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    iput v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ContentTextWatcher;->beforeLen:I

    .line 1053
    iput v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ContentTextWatcher;->currentLen:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;Lcom/android/htccontacts/SaveNumberToExistContactActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1051
    invoke-direct {p0, p1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ContentTextWatcher;-><init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1056
    iget v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ContentTextWatcher;->currentLen:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ContentTextWatcher;->beforeLen:I

    if-lez v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ContentTextWatcher;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    #calls: Lcom/android/htccontacts/SaveNumberToExistContactActivity;->disableOkButton()V
    invoke-static {v0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->access$1200(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    iget v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ContentTextWatcher;->currentLen:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ContentTextWatcher;->beforeLen:I

    if-nez v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ContentTextWatcher;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-boolean v0, v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isSetType:Z

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ContentTextWatcher;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    #calls: Lcom/android/htccontacts/SaveNumberToExistContactActivity;->enableOkButton()V
    invoke-static {v0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->access$1100(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 1066
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ContentTextWatcher;->beforeLen:I

    .line 1067
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 1071
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ContentTextWatcher;->currentLen:I

    .line 1072
    return-void
.end method
