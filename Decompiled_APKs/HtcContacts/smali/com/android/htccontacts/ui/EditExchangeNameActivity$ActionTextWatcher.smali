.class public Lcom/android/htccontacts/ui/EditExchangeNameActivity$ActionTextWatcher;
.super Ljava/lang/Object;
.source "EditExchangeNameActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditExchangeNameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionTextWatcher"
.end annotation


# instance fields
.field mCurrentString:Ljava/lang/CharSequence;

.field mPreviousString:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$ActionTextWatcher;->this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 595
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$ActionTextWatcher;->mCurrentString:Ljava/lang/CharSequence;

    .line 596
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$ActionTextWatcher;->mCurrentString:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$ActionTextWatcher;->mPreviousString:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$ActionTextWatcher;->this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;

    #calls: Lcom/android/htccontacts/ui/EditExchangeNameActivity;->actionNameData()V
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->access$400(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)V

    .line 601
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$ActionTextWatcher;->mPreviousString:Ljava/lang/CharSequence;

    .line 605
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 609
    return-void
.end method
