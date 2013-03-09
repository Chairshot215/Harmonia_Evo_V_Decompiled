.class Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer$1;
.super Ljava/lang/Object;
.source "AddCreditCardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer$1;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer$1;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;

    #getter for: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;->access$000(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer$1;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 120
    return-void
.end method
