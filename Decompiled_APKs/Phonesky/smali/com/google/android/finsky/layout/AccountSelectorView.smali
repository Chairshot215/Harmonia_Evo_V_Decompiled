.class public Lcom/google/android/finsky/layout/AccountSelectorView;
.super Landroid/widget/TextView;
.source "AccountSelectorView.java"


# instance fields
.field protected final mMultiAccountDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/AccountSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/AccountSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object v1, Lcom/android/vending/R$styleable;->AccountSelectorView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/AccountSelectorView;->mMultiAccountDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V
    .locals 6
    .parameter "authenticatedActivity"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 43
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/AccountSelectorView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AccountSelectorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 45
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v4, v0

    if-le v4, v2, :cond_0

    move v1, v2

    .line 46
    .local v1, hasMultipleAccounts:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/AccountSelectorView;->setClickable(Z)V

    .line 48
    iget-object v2, p0, Lcom/google/android/finsky/layout/AccountSelectorView;->mMultiAccountDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5, v5, v2, v5}, Lcom/google/android/finsky/layout/AccountSelectorView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 49
    new-instance v2, Lcom/google/android/finsky/layout/AccountSelectorView$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/finsky/layout/AccountSelectorView$1;-><init>(Lcom/google/android/finsky/layout/AccountSelectorView;Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/AccountSelectorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    :goto_1
    return-void

    .end local v1           #hasMultipleAccounts:Z
    :cond_0
    move v1, v3

    .line 45
    goto :goto_0

    .line 56
    .restart local v1       #hasMultipleAccounts:Z
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/AccountSelectorView;->setClickable(Z)V

    .line 57
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/google/android/finsky/layout/AccountSelectorView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/AccountSelectorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
