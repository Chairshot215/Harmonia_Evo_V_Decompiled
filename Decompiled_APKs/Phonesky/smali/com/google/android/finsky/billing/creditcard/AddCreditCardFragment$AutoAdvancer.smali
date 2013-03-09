.class Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;
.super Ljava/lang/Object;
.source "AddCreditCardFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoAdvancer"
.end annotation


# instance fields
.field private final mMaxLength:I

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;I)V
    .locals 0
    .parameter "textView"
    .parameter "maxLength"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;->mTextView:Landroid/widget/TextView;

    .line 94
    iput p2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;->mMaxLength:I

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public static setupAutoAdvancer(Landroid/widget/TextView;I)V
    .locals 1
    .parameter "textView"
    .parameter "maxLength"

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;-><init>(Landroid/widget/TextView;I)V

    .line 129
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "editable"

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    iget v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;->mMaxLength:I

    if-lt v1, v2, :cond_1

    .line 108
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, nextView:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 116
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer$1;-><init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    .end local v0           #nextView:Landroid/view/View;
    :cond_1
    return-void

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 98
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 101
    return-void
.end method
