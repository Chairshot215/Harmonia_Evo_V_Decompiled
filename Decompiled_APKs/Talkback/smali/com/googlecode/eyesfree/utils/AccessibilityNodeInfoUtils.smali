.class public Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeActionFilter;,
        Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;,
        Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$TopToBottomLeftToRightComparator;
    }
.end annotation


# static fields
.field private static final FILTER_ACCESSIBILITY_FOCUSABLE:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;

.field public static final FILTER_NON_FOCUSABLE:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;

.field public static final FILTER_SCROLLABLE:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;

.field public static final SUPPORTS_VISIBILITY:Z

.field private static final mScrollBackwardFilter:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeActionFilter;

.field private static final mScrollForwardFilter:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeActionFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->SUPPORTS_VISIBILITY:Z

    .line 775
    new-instance v0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$1;

    invoke-direct {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$1;-><init>()V

    sput-object v0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->FILTER_ACCESSIBILITY_FOCUSABLE:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;

    .line 784
    new-instance v0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$2;

    invoke-direct {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$2;-><init>()V

    sput-object v0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->FILTER_NON_FOCUSABLE:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;

    .line 806
    new-instance v0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$3;

    invoke-direct {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$3;-><init>()V

    sput-object v0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->FILTER_SCROLLABLE:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;

    .line 813
    new-instance v0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeActionFilter;

    .line 814
    const/16 v1, 0x1000

    .line 813
    invoke-direct {v0, v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeActionFilter;-><init>(I)V

    sput-object v0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->mScrollForwardFilter:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeActionFilter;

    .line 815
    new-instance v0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeActionFilter;

    .line 816
    const/16 v1, 0x2000

    .line 815
    invoke-direct {v0, v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeActionFilter;-><init>(I)V

    sput-object v0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->mScrollBackwardFilter:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeActionFilter;

    .line 42
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$0()Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;
    .locals 1

    .prologue
    .line 775
    sget-object v0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->FILTER_ACCESSIBILITY_FOCUSABLE:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;

    return-object v0
.end method

.method private static addChildren(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/util/List;Ljava/util/Comparator;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;)I
    .locals 6
    .parameter "context"
    .parameter "node"
    .parameter
    .parameter
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;",
            "Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;",
            ")I"
        }
    .end annotation

    .prologue
    .line 723
    .local p2, outChildren:Ljava/util/List;,"Ljava/util/List<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    .local p3, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v1

    .line 725
    .local v1, childCount:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 727
    .local v2, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    const/4 v3, 0x0

    .line 729
    .local v3, failedFilter:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v1, :cond_1

    .line 744
    if-eqz p3, :cond_0

    .line 745
    invoke-static {v2, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 748
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 750
    return v3

    .line 730
    :cond_1
    invoke-virtual {p1, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 732
    .local v0, child:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-nez v0, :cond_2

    .line 729
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 736
    :cond_2
    if-eqz p4, :cond_3

    invoke-interface {p4, p0, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;->accept(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 737
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 739
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 740
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static addDescendantsBfs(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/util/ArrayList;Ljava/util/Comparator;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;)I
    .locals 6
    .parameter "context"
    .parameter "root"
    .parameter
    .parameter
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;",
            "Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;",
            ")I"
        }
    .end annotation

    .prologue
    .line 694
    .local p2, outDescendants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    .local p3, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 696
    .local v4, oldOutDescendantsSize:I
    invoke-static {p0, p1, p2, p3, p4}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->addChildren(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/util/List;Ljava/util/Comparator;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;)I

    move-result v1

    .line 698
    .local v1, failedFilter:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 700
    .local v3, newOutDescendantsSize:I
    move v2, v4

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 706
    return v1

    .line 701
    :cond_0
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 703
    .local v0, child:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-static {p0, v0, p2, p3, p4}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->addDescendantsBfs(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/util/ArrayList;Ljava/util/Comparator;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;)I

    move-result v5

    add-int/2addr v1, v5

    .line 700
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static findFocusFromHover(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3
    .parameter "context"
    .parameter "touched"

    .prologue
    const/4 v1, 0x0

    .line 196
    if-nez p1, :cond_1

    move-object v0, v1

    .line 213
    :cond_0
    :goto_0
    return-object v0

    .line 201
    :cond_1
    sget-object v2, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->FILTER_ACCESSIBILITY_FOCUSABLE:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;

    invoke-static {p0, p1, v2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->getSelfOrMatchingPredecessor(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 203
    .local v0, predecessor:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-eqz v0, :cond_2

    invoke-static {p0, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isSpeakingNode(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    :cond_2
    invoke-static {p1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->hasText(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 213
    goto :goto_0
.end method

.method public static getMatchingPredecessor(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3
    .parameter "context"
    .parameter "node"
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    .line 377
    if-nez p1, :cond_0

    .line 406
    :goto_0
    return-object v1

    .line 382
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 385
    .local v0, predecessors:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    :try_start_0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getParent()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 388
    :goto_1
    if-nez p1, :cond_1

    .line 403
    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes(Ljava/util/Collection;)V

    goto :goto_0

    .line 389
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 391
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes(Ljava/util/Collection;)V

    goto :goto_0

    .line 395
    :cond_2
    :try_start_2
    invoke-interface {p2, p0, p1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;->accept(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 397
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 403
    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes(Ljava/util/Collection;)V

    goto :goto_0

    .line 400
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getParent()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p1

    goto :goto_1

    .line 402
    :catchall_0
    move-exception v1

    .line 403
    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes(Ljava/util/Collection;)V

    .line 404
    throw v1
.end method

.method public static getNodeText(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "node"

    .prologue
    const/4 v2, 0x0

    .line 69
    if-nez p0, :cond_1

    move-object v0, v2

    .line 87
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 76
    .local v0, contentDescription:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-gtz v3, :cond_0

    .line 81
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 82
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 83
    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-lez v3, :cond_3

    move-object v0, v1

    .line 84
    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 87
    goto :goto_0
.end method

.method public static getPredecessors(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Ljava/util/Set;
    .locals 4
    .parameter "node"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 621
    if-nez p0, :cond_1

    .line 622
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 641
    :cond_0
    :goto_0
    return-object v0

    .line 626
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 628
    .local v0, predecessors:Ljava/util/Set;,"Ljava/util/Set<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getParent()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    .line 630
    :goto_1
    if-eqz p0, :cond_0

    .line 631
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 634
    const/4 v1, 0x7

    const-string v2, "Found duplicate node while computing predecessors"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 638
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getParent()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    goto :goto_1
.end method

.method public static getSelfOrMatchingPredecessor(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .parameter "context"
    .parameter "node"
    .parameter "filter"

    .prologue
    .line 364
    invoke-interface {p2, p0, p1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;->accept(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->getMatchingPredecessor(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasMatchingPredecessor(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;)Z
    .locals 2
    .parameter "context"
    .parameter "node"
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    .line 344
    if-nez p1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v1

    .line 348
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->getMatchingPredecessor(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 350
    .local v0, result:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 352
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static hasNonActionableSpeakingChildren(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 6
    .parameter "context"
    .parameter "node"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 245
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v1

    .line 247
    .local v1, childCount:I
    if-nez v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v3

    .line 251
    :cond_1
    const/4 v0, 0x0

    .line 254
    .local v0, child:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 256
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 258
    if-nez v0, :cond_3

    .line 277
    :cond_2
    new-array v5, v4, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 278
    aput-object v0, v5, v3

    invoke-static {v5}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 254
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 263
    :cond_3
    :try_start_1
    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isVisibleOrLegacy(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 268
    sget-object v5, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->FILTER_ACCESSIBILITY_FOCUSABLE:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;

    invoke-interface {v5, p0, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;->accept(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 274
    invoke-static {p0, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isSpeakingNode(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_4

    .line 277
    new-array v5, v4, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 278
    aput-object v0, v5, v3

    invoke-static {v5}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    move v3, v4

    .line 275
    goto :goto_0

    .line 277
    :catchall_0
    move-exception v5

    new-array v4, v4, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 278
    aput-object v0, v4, v3

    invoke-static {v4}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 279
    throw v5

    .line 277
    :cond_4
    new-array v5, v4, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 278
    aput-object v0, v5, v3

    invoke-static {v5}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_2
.end method

.method public static hasText(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 2
    .parameter "node"

    .prologue
    const/4 v0, 0x0

    .line 432
    if-nez p0, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v0

    .line 436
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 437
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    .line 436
    goto :goto_0
.end method

.method public static isAccessibilityFocusable(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 4
    .parameter "context"
    .parameter "node"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 131
    if-nez p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    invoke-static {p1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isVisibleOrLegacy(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-static {p1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isActionableForAccessibility(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 142
    goto :goto_0

    .line 145
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_3

    .line 147
    invoke-static {p0, p1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isTopLevelScrollItem(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 148
    goto :goto_0

    .line 152
    :cond_3
    invoke-static {p1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->hasText(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isTopLevelScrollItem(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 153
    goto :goto_0
.end method

.method public static isActionableForAccessibility(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 3
    .parameter "node"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 300
    if-nez p0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 304
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 305
    goto :goto_0

    .line 308
    :cond_3
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p0, v2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->supportsAnyAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;[I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 313
    goto :goto_0

    .line 308
    nop

    :array_0
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
    .end array-data
.end method

.method public static isEdgeListItem(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 4
    .parameter "context"
    .parameter "node"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 475
    if-nez p1, :cond_1

    .line 489
    :cond_0
    :goto_0
    return v0

    .line 479
    :cond_1
    sget-object v2, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->mScrollBackwardFilter:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeActionFilter;

    .line 480
    const/4 v3, -0x1

    .line 479
    invoke-static {p0, p1, v2, v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isMatchingEdgeListItem(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 481
    goto :goto_0

    .line 484
    :cond_2
    sget-object v2, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->mScrollForwardFilter:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeActionFilter;

    invoke-static {p0, p1, v2, v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isMatchingEdgeListItem(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 486
    goto :goto_0
.end method

.method private static isMatchingEdgeListItem(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;I)Z
    .locals 9
    .parameter "context"
    .parameter "cursor"
    .parameter "filter"
    .parameter "direction"

    .prologue
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, predecessor:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v1, 0x0

    .line 506
    .local v1, searched:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v2, 0x0

    .line 509
    .local v2, searchedPredecessor:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v6, p1, p2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->getMatchingPredecessor(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 510
    if-nez v0, :cond_0

    .line 534
    new-array v6, v7, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 535
    aput-object v0, v6, v4

    aput-object v1, v6, v5

    aput-object v2, v6, v8

    invoke-static {v6}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 538
    :goto_0
    return v4

    .line 516
    :cond_0
    :try_start_1
    invoke-static {p1, p3}, Lcom/googlecode/eyesfree/utils/NodeFocusFinder;->focusSearch(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 517
    :goto_1
    if-eqz v1, :cond_1

    .line 518
    invoke-static {p0, v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->shouldFocusNode(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v6

    .line 517
    if-eqz v6, :cond_3

    .line 524
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_4

    .line 534
    :cond_2
    new-array v6, v7, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 535
    aput-object v0, v6, v4

    aput-object v1, v6, v5

    aput-object v2, v6, v8

    invoke-static {v6}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    move v4, v5

    .line 526
    goto :goto_0

    .line 519
    :cond_3
    move-object v3, v1

    .line 520
    .local v3, temp:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_2
    invoke-static {v3, p3}, Lcom/googlecode/eyesfree/utils/NodeFocusFinder;->focusSearch(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 521
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 534
    .end local v3           #temp:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :catchall_0
    move-exception v6

    new-array v7, v7, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 535
    aput-object v0, v7, v4

    aput-object v1, v7, v5

    aput-object v2, v7, v8

    invoke-static {v7}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 536
    throw v6

    .line 529
    :cond_4
    const/4 v6, 0x0

    :try_start_3
    invoke-static {v6, v1, p2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->getMatchingPredecessor(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    .line 530
    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 534
    new-array v6, v7, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 535
    aput-object v0, v6, v4

    aput-object v1, v6, v5

    aput-object v2, v6, v8

    invoke-static {v6}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_0
.end method

.method public static isScrollable(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 416
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const/4 v0, 0x1

    .line 420
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->supportsAnyAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;[I)Z

    move-result v0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x10t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t
    .end array-data
.end method

.method public static isScrollableOrHasScrollablePredecessor(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 2
    .parameter "context"
    .parameter "node"

    .prologue
    const/4 v0, 0x0

    .line 328
    if-nez p1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    sget-object v1, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->FILTER_SCROLLABLE:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;

    invoke-interface {v1, p0, p1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;->accept(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 333
    sget-object v1, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->FILTER_SCROLLABLE:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;

    invoke-static {p0, p1, v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->hasMatchingPredecessor(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    .line 332
    goto :goto_0
.end method

.method private static isSpeakingNode(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 3
    .parameter "context"
    .parameter "node"

    .prologue
    const/4 v1, 0x1

    .line 217
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v0

    .line 221
    .local v0, childCount:I
    if-gtz v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v1

    .line 225
    :cond_1
    invoke-static {p1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->hasText(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p1, v2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->supportsAnyAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;[I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    invoke-static {p0, p1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->hasNonActionableSpeakingChildren(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    const/4 v1, 0x0

    goto :goto_0

    .line 230
    :array_0
    .array-data 0x4
        0x0t 0x4t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
    .end array-data
.end method

.method public static isTopLevelScrollItem(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 4
    .parameter "context"
    .parameter "node"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 448
    if-nez p1, :cond_0

    .line 461
    :goto_0
    return v2

    .line 452
    :cond_0
    const/4 v0, 0x0

    .line 455
    .local v0, parent:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getParent()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 456
    if-nez v0, :cond_1

    .line 463
    new-array v1, v3, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 464
    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_0

    .line 461
    :cond_1
    :try_start_1
    const-class v1, Landroid/widget/AbsListView;

    invoke-static {p0, v0, v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->nodeMatchesClassByType(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 462
    const-class v1, Landroid/widget/ScrollView;

    invoke-static {p0, v0, v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->nodeMatchesClassByType(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/Class;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 463
    :goto_1
    new-array v3, v3, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 464
    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    move v2, v1

    .line 461
    goto :goto_0

    :cond_2
    move v1, v3

    .line 462
    goto :goto_1

    .line 463
    :catchall_0
    move-exception v1

    new-array v3, v3, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 464
    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 465
    throw v1
.end method

.method public static isViewGroup(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 3
    .parameter "context"
    .parameter "node"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 99
    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    move v0, v1

    .line 105
    goto :goto_0

    .line 108
    :cond_2
    const-class v2, Landroid/view/ViewGroup;

    invoke-static {p0, p1, v2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->nodeMatchesClassByType(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 110
    goto :goto_0
.end method

.method static isVisibleOrLegacy(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 954
    sget-boolean v0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->SUPPORTS_VISIBILITY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static varargs nodeMatchesAnyClassByType(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;[Ljava/lang/Class;)Z
    .locals 5
    .parameter "context"
    .parameter "node"
    .parameter "classes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 588
    array-length v3, p2

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 594
    :goto_1
    return v1

    .line 588
    :cond_0
    aget-object v0, p2, v2

    .line 589
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0, p1, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->nodeMatchesClassByType(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 591
    const/4 v1, 0x1

    goto :goto_1

    .line 588
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static nodeMatchesClassByName(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "node"
    .parameter "className"

    .prologue
    .line 608
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static nodeMatchesClassByType(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/Class;)Z
    .locals 5
    .parameter "context"
    .parameter "node"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 555
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 569
    :cond_0
    :goto_0
    return v4

    .line 559
    :cond_1
    invoke-static {}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->getInstance()Lcom/googlecode/eyesfree/utils/ClassLoadingManager;

    move-result-object v0

    .line 560
    .local v0, classLoader:Lcom/googlecode/eyesfree/utils/ClassLoadingManager;
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 561
    .local v1, className:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 563
    .local v3, packageName:Ljava/lang/CharSequence;
    invoke-virtual {v0, p0, v1, v3}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->loadOrGetCachedClass(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Class;

    move-result-object v2

    .line 565
    .local v2, nodeClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 569
    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    goto :goto_0
.end method

.method public static recycleNodes(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 650
    .local p0, nodes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    if-nez p0, :cond_0

    .line 661
    :goto_0
    return-void

    .line 654
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 660
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 654
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 655
    .local v0, node:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-eqz v0, :cond_1

    .line 656
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_1
.end method

.method public static varargs recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3
    .parameter "nodes"

    .prologue
    .line 669
    if-nez p0, :cond_1

    .line 678
    :cond_0
    return-void

    .line 673
    :cond_1
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p0, v1

    .line 674
    .local v0, node:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-eqz v0, :cond_2

    .line 675
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 673
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static refreshFromChild(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 4
    .parameter "node"

    .prologue
    const/4 v3, 0x0

    .line 914
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 915
    invoke-virtual {p0, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 916
    .local v0, firstChild:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-eqz v0, :cond_1

    .line 917
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getParent()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 918
    .local v1, parent:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 919
    invoke-virtual {p0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 926
    .end local v0           #firstChild:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v1           #parent:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return-object v1

    .line 921
    .restart local v0       #firstChild:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .restart local v1       #parent:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 922
    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 926
    .end local v0           #firstChild:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v1           #parent:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static refreshFromParent(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 6
    .parameter "node"

    .prologue
    .line 931
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getParent()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    .line 932
    .local v3, parent:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-eqz v3, :cond_0

    .line 934
    :try_start_0
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 935
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 943
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 946
    .end local v1           #childCount:I
    .end local v2           #i:I
    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 936
    .restart local v1       #childCount:I
    .restart local v2       #i:I
    :cond_1
    :try_start_1
    invoke-virtual {v3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 937
    .local v0, child:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {p0, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 943
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_1

    .line 938
    :cond_2
    const/4 v4, 0x1

    :try_start_2
    new-array v4, v4, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v5, 0x0

    .line 940
    aput-object v0, v4, v5

    invoke-static {v4}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 935
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 942
    .end local v0           #child:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v1           #childCount:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    .line 943
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 944
    throw v4
.end method

.method public static refreshNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .parameter "node"

    .prologue
    .line 902
    if-nez p0, :cond_1

    .line 903
    const/4 v0, 0x0

    .line 909
    :cond_0
    :goto_0
    return-object v0

    .line 905
    :cond_1
    invoke-static {p0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->refreshFromChild(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 906
    .local v0, result:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-nez v0, :cond_0

    .line 907
    invoke-static {p0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->refreshFromParent(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    goto :goto_0
.end method

.method public static shouldFocusNode(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 2
    .parameter "context"
    .parameter "node"

    .prologue
    const/4 v0, 0x0

    .line 169
    if-nez p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isVisibleToUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    sget-object v1, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->FILTER_ACCESSIBILITY_FOCUSABLE:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;

    invoke-interface {v1, p0, p1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;->accept(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    invoke-static {p0, p1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isSpeakingNode(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v0

    goto :goto_0

    .line 183
    :cond_2
    sget-object v1, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->FILTER_ACCESSIBILITY_FOCUSABLE:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;

    invoke-static {p0, p1, v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->hasMatchingPredecessor(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    invoke-static {p1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->hasText(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static varargs supportsAnyAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;[I)Z
    .locals 6
    .parameter "node"
    .parameter "actions"

    .prologue
    const/4 v2, 0x0

    .line 764
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v1

    .line 766
    .local v1, supportedActions:I
    array-length v4, p1

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    .line 772
    :goto_1
    return v2

    .line 766
    :cond_0
    aget v0, p1, v3

    .line 767
    .local v0, action:I
    and-int v5, v1, v0

    if-ne v5, v0, :cond_1

    .line 768
    const/4 v2, 0x1

    goto :goto_1

    .line 766
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
