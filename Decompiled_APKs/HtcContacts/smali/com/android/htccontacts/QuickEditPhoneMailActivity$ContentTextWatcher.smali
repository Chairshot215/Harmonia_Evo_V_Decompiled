.class Lcom/android/htccontacts/QuickEditPhoneMailActivity$ContentTextWatcher;
.super Ljava/lang/Object;
.source "QuickEditPhoneMailActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/QuickEditPhoneMailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentTextWatcher"
.end annotation


# instance fields
.field beforeLen:I

.field currentLen:I

.field final synthetic this$0:Lcom/android/htccontacts/QuickEditPhoneMailActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/QuickEditPhoneMailActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 234
    iput-object p1, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity$ContentTextWatcher;->this$0:Lcom/android/htccontacts/QuickEditPhoneMailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput v0, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity$ContentTextWatcher;->beforeLen:I

    .line 236
    iput v0, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity$ContentTextWatcher;->currentLen:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/QuickEditPhoneMailActivity;Lcom/android/htccontacts/QuickEditPhoneMailActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/android/htccontacts/QuickEditPhoneMailActivity$ContentTextWatcher;-><init>(Lcom/android/htccontacts/QuickEditPhoneMailActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 239
    iget v0, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity$ContentTextWatcher;->currentLen:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity$ContentTextWatcher;->beforeLen:I

    if-lez v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity$ContentTextWatcher;->this$0:Lcom/android/htccontacts/QuickEditPhoneMailActivity;

    #calls: Lcom/android/htccontacts/QuickEditPhoneMailActivity;->disableOkButton()V
    invoke-static {v0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->access$300(Lcom/android/htccontacts/QuickEditPhoneMailActivity;)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget v0, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity$ContentTextWatcher;->currentLen:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity$ContentTextWatcher;->beforeLen:I

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity$ContentTextWatcher;->this$0:Lcom/android/htccontacts/QuickEditPhoneMailActivity;

    #calls: Lcom/android/htccontacts/QuickEditPhoneMailActivity;->enableOkButton()V
    invoke-static {v0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->access$400(Lcom/android/htccontacts/QuickEditPhoneMailActivity;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 247
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity$ContentTextWatcher;->beforeLen:I

    .line 248
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 251
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity$ContentTextWatcher;->currentLen:I

    .line 252
    return-void
.end method
