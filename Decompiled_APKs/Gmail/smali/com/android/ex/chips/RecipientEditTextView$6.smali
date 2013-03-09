.class Lcom/android/ex/chips/RecipientEditTextView$6;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/ex/chips/RecipientChip;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;

.field final synthetic val$spannable:Landroid/text/Spannable;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/Spannable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1631
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$6;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iput-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$6;->val$spannable:Landroid/text/Spannable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientChip;)I
    .locals 3
    .parameter "first"
    .parameter "second"

    .prologue
    .line 1635
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$6;->val$spannable:Landroid/text/Spannable;

    invoke-interface {v2, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 1636
    .local v0, firstStart:I
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$6;->val$spannable:Landroid/text/Spannable;

    invoke-interface {v2, p2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 1637
    .local v1, secondStart:I
    if-ge v0, v1, :cond_0

    .line 1638
    const/4 v2, -0x1

    .line 1642
    :goto_0
    return v2

    .line 1639
    :cond_0
    if-le v0, v1, :cond_1

    .line 1640
    const/4 v2, 0x1

    goto :goto_0

    .line 1642
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1631
    check-cast p1, Lcom/android/ex/chips/RecipientChip;

    .end local p1
    check-cast p2, Lcom/android/ex/chips/RecipientChip;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView$6;->compare(Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientChip;)I

    move-result v0

    return v0
.end method
