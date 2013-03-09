.class public Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$TopToBottomLeftToRightComparator;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopToBottomLeftToRightComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
        ">;"
    }
.end annotation


# static fields
.field private static final AFTER:I = 0x1

.field private static final BEFORE:I = -0x1


# instance fields
.field private final mFirstBounds:Landroid/graphics/Rect;

.field private final mSecondBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$TopToBottomLeftToRightComparator;->mFirstBounds:Landroid/graphics/Rect;

    .line 842
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$TopToBottomLeftToRightComparator;->mSecondBounds:Landroid/graphics/Rect;

    .line 839
    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)I
    .locals 8
    .parameter "first"
    .parameter "second"

    .prologue
    .line 849
    iget-object v1, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$TopToBottomLeftToRightComparator;->mFirstBounds:Landroid/graphics/Rect;

    .line 850
    .local v1, firstBounds:Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 852
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$TopToBottomLeftToRightComparator;->mSecondBounds:Landroid/graphics/Rect;

    .line 853
    .local v4, secondBounds:Landroid/graphics/Rect;
    invoke-virtual {p2, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 856
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    if-lt v6, v7, :cond_1

    .line 857
    const/4 v2, -0x1

    .line 891
    :cond_0
    :goto_0
    return v2

    .line 861
    :cond_1
    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v6, v7, :cond_2

    .line 862
    const/4 v2, 0x1

    goto :goto_0

    .line 866
    :cond_2
    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int v2, v6, v7

    .line 867
    .local v2, leftDifference:I
    if-nez v2, :cond_0

    .line 872
    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int v5, v6, v7

    .line 873
    .local v5, topDifference:I
    if-eqz v5, :cond_3

    move v2, v5

    .line 874
    goto :goto_0

    .line 878
    :cond_3
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v6, v7

    .line 879
    .local v0, bottomDifference:I
    if-eqz v0, :cond_4

    move v2, v0

    .line 880
    goto :goto_0

    .line 884
    :cond_4
    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int v3, v6, v7

    .line 885
    .local v3, rightDifference:I
    if-eqz v3, :cond_5

    move v2, v3

    .line 886
    goto :goto_0

    .line 891
    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->hashCode()I

    move-result v6

    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->hashCode()I

    move-result v7

    sub-int v2, v6, v7

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    check-cast p2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {p0, p1, p2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$TopToBottomLeftToRightComparator;->compare(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)I

    move-result v0

    return v0
.end method
