.class public final Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;
.super Ljava/lang/Object;
.source "TouchExplorationFormatter.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$TopToBottomLeftToRightComparator;


# instance fields
.field private mLastAnnouncedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

.field private mLastSourceNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

.field private mNodeProcessor:Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;

.field private mUserCanScroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$TopToBottomLeftToRightComparator;

    invoke-direct {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$TopToBottomLeftToRightComparator;-><init>()V

    .line 47
    sput-object v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->COMPARATOR:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$TopToBottomLeftToRightComparator;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addDescription(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/Utterance;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 4
    .parameter "context"
    .parameter "event"
    .parameter "utterance"
    .parameter "source"
    .parameter "announcedNode"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    invoke-direct/range {p0 .. p5}, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->addNodeDescription(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/Utterance;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    move-result-object v0

    .line 245
    .local v0, result:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;
    sget-object v3, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->HANDLED:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    if-ne v0, v3, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v1

    .line 247
    :cond_1
    sget-object v3, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->ABORTED:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    if-ne v0, v3, :cond_2

    move v1, v2

    .line 250
    goto :goto_0

    .line 254
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->addEventDescription(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/Utterance;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 258
    goto :goto_0
.end method

.method private addEarcons(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/Utterance;)V
    .locals 5
    .parameter "context"
    .parameter "announcedNode"
    .parameter "event"
    .parameter "utterance"

    .prologue
    .line 382
    invoke-static {p1, p2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isScrollableOrHasScrollablePredecessor(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    .line 385
    .local v2, userCanScroll:Z
    iget-boolean v3, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mUserCanScroll:Z

    if-eq v3, v2, :cond_0

    .line 386
    iput-boolean v2, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mUserCanScroll:Z

    .line 387
    if-eqz v2, :cond_2

    .line 388
    invoke-virtual {p4}, Lcom/google/android/marvin/talkback/Utterance;->getEarcons()Ljava/util/List;

    move-result-object v3

    const v4, 0x7f050001

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isActionableForAccessibility(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v0

    .line 397
    .local v0, actionable:Z
    if-eqz v0, :cond_3

    .line 398
    invoke-virtual {p4}, Lcom/google/android/marvin/talkback/Utterance;->getCustomEarcons()Ljava/util/List;

    move-result-object v3

    const v4, 0x7f0a0001

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {p4}, Lcom/google/android/marvin/talkback/Utterance;->getCustomVibrations()Ljava/util/List;

    move-result-object v3

    const v4, 0x7f0a000a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    :goto_1
    invoke-static {p1, p2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isEdgeListItem(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v1

    .line 408
    .local v1, edgeListItem:Z
    if-eqz v1, :cond_1

    .line 409
    invoke-virtual {p4}, Lcom/google/android/marvin/talkback/Utterance;->getCustomEarcons()Ljava/util/List;

    move-result-object v3

    const v4, 0x7f0a0008

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_1
    return-void

    .line 390
    .end local v0           #actionable:Z
    .end local v1           #edgeListItem:Z
    :cond_2
    invoke-virtual {p4}, Lcom/google/android/marvin/talkback/Utterance;->getEarcons()Ljava/util/List;

    move-result-object v3

    const/high16 v4, 0x7f05

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 401
    .restart local v0       #actionable:Z
    :cond_3
    invoke-virtual {p4}, Lcom/google/android/marvin/talkback/Utterance;->getCustomEarcons()Ljava/util/List;

    move-result-object v3

    const/high16 v4, 0x7f0a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {p4}, Lcom/google/android/marvin/talkback/Utterance;->getCustomVibrations()Ljava/util/List;

    move-result-object v3

    const v4, 0x7f0a0009

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private addEventDescription(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 2
    .parameter "context"
    .parameter "event"
    .parameter "utterance"

    .prologue
    .line 270
    invoke-static {p2}, Lcom/google/android/marvin/talkback/AccessibilityEventUtils;->getEventText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 272
    .local v0, eventText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const/4 v1, 0x0

    .line 278
    :goto_0
    return v1

    .line 276
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 278
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private addNodeDescription(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/Utterance;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;
    .locals 9
    .parameter "context"
    .parameter "event"
    .parameter "utterance"
    .parameter "source"
    .parameter "announcedNode"

    .prologue
    .line 293
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 295
    .local v2, builder:Ljava/lang/StringBuilder;
    if-nez p5, :cond_0

    .line 296
    sget-object v7, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->CONTINUE:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    .line 347
    :goto_0
    return-object v7

    .line 299
    :cond_0
    invoke-virtual {p5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    .line 303
    .local v4, desc:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 304
    invoke-static {p1, p5}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isViewGroup(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 305
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 306
    sget-object v7, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->HANDLED:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    goto :goto_0

    .line 310
    :cond_1
    invoke-static {p5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 312
    .local v0, announcedNodeClone:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v1, announcedSubtreeNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-ge v7, v8, :cond_3

    sget-object v3, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->COMPARATOR:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$TopToBottomLeftToRightComparator;

    .line 324
    .local v3, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    :goto_1
    sget-object v7, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->FILTER_NON_FOCUSABLE:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;

    .line 322
    invoke-static {p1, p5, v1, v3, v7}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->addDescendantsBfs(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/util/ArrayList;Ljava/util/Comparator;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;)I

    move-result v5

    .line 328
    .local v5, failedFilter:I
    iget-object v7, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mNodeProcessor:Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;

    if-nez v7, :cond_2

    .line 329
    new-instance v7, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;

    invoke-direct {v7, p1}, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mNodeProcessor:Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;

    .line 334
    :cond_2
    invoke-direct {p0, p2, p4, v1, p3}, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->addNodesText(Landroid/view/accessibility/AccessibilityEvent;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/util/ArrayList;Lcom/google/android/marvin/talkback/Utterance;)Z

    move-result v6

    .line 336
    .local v6, handled:Z
    invoke-static {v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes(Ljava/util/Collection;)V

    .line 338
    if-eqz v6, :cond_4

    .line 339
    sget-object v7, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->HANDLED:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    goto :goto_0

    .line 320
    .end local v3           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    .end local v5           #failedFilter:I
    .end local v6           #handled:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 343
    .restart local v3       #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    .restart local v5       #failedFilter:I
    .restart local v6       #handled:Z
    :cond_4
    if-lez v5, :cond_5

    .line 344
    sget-object v7, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->ABORTED:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    goto :goto_0

    .line 347
    :cond_5
    sget-object v7, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->CONTINUE:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    goto :goto_0
.end method

.method private addNodesText(Landroid/view/accessibility/AccessibilityEvent;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/util/ArrayList;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 8
    .parameter "event"
    .parameter "source"
    .parameter
    .parameter "utterance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityEvent;",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;",
            "Lcom/google/android/marvin/talkback/Utterance;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p3, nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 421
    invoke-virtual {p4}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 441
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    return v3

    .line 423
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 428
    .local v1, node:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 429
    iget-object v6, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mNodeProcessor:Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;

    invoke-virtual {v6, v1, p1}, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->process(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 434
    .local v2, nodeDesc:Ljava/lang/CharSequence;
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 438
    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v3

    invoke-static {v0, v6}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 431
    .end local v2           #nodeDesc:Ljava/lang/CharSequence;
    :cond_2
    iget-object v6, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mNodeProcessor:Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->process(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2       #nodeDesc:Ljava/lang/CharSequence;
    goto :goto_2

    .end local v1           #node:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v2           #nodeDesc:Ljava/lang/CharSequence;
    :cond_3
    move v3, v4

    .line 441
    goto :goto_1
.end method

.method private onTouchExplorationEnded(Lcom/google/android/marvin/talkback/Utterance;)V
    .locals 1
    .parameter "utterance"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mLastAnnouncedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mLastAnnouncedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mLastAnnouncedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 369
    :cond_0
    return-void
.end method

.method private onTouchExplorationStarted(Lcom/google/android/marvin/talkback/Utterance;)V
    .locals 1
    .parameter "utterance"

    .prologue
    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mUserCanScroll:Z

    .line 357
    return-void
.end method

.method private setLastAnnouncedNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mLastAnnouncedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mLastAnnouncedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 222
    :cond_0
    if-eqz p1, :cond_1

    .line 223
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mLastAnnouncedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mLastAnnouncedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    goto :goto_0
.end method

.method private setLastSourceNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mLastSourceNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mLastSourceNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 205
    :cond_0
    if-eqz p1, :cond_1

    .line 206
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mLastSourceNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mLastSourceNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    goto :goto_0
.end method

.method private shouldAnnounceSourceNode(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 1
    .parameter "eventType"
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 182
    if-nez p2, :cond_0

    .line 192
    :goto_0
    return v0

    .line 186
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 189
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 186
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public format(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 10
    .parameter "event"
    .parameter "context"
    .parameter "utterance"

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v6

    .line 79
    .local v6, eventType:I
    sparse-switch v6, :sswitch_data_0

    .line 99
    :cond_0
    new-instance v8, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v8, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    .line 100
    .local v8, record:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {v8}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v4

    .line 105
    .local v4, source:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-direct {p0, v6, v4}, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->shouldAnnounceSourceNode(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    invoke-static {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v5

    .line 111
    .local v5, announcedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    if-eqz v5, :cond_1

    .line 112
    const-class v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;

    const/4 v1, 0x3

    const-string v2, "Announcing node: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 113
    aput-object v5, v3, v9

    .line 112
    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_1
    invoke-static {v5}, Lcom/google/android/marvin/talkback/formatter/ProgressBarFormatter;->updateRecentlyExplored(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 117
    invoke-static {v4, v5}, Lcom/google/android/marvin/talkback/DeveloperOverlay;->updateNodes(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 119
    const/16 v0, 0x80

    if-ne v6, v0, :cond_6

    .line 123
    if-nez v5, :cond_4

    .line 124
    invoke-static {p2, v4}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isViewGroup(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    invoke-static {p2, p1}, Lcom/google/android/marvin/talkback/AccessibilityEventUtils;->isViewGroup(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    :cond_2
    const-class v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;

    const/4 v1, 0x4

    .line 127
    const-string v2, "No node to announce, ignoring view with children"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 126
    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v1, 0x0

    .line 129
    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v1, 0x0

    .line 130
    aput-object v5, v0, v1

    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 131
    const/4 v0, 0x0

    .line 169
    .end local v4           #source:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v5           #announcedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v8           #record:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    :goto_1
    return v0

    .line 81
    :sswitch_0
    invoke-direct {p0, p3}, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->onTouchExplorationStarted(Lcom/google/android/marvin/talkback/Utterance;)V

    .line 82
    const/4 v0, 0x1

    goto :goto_1

    .line 84
    :sswitch_1
    invoke-direct {p0, p3}, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->onTouchExplorationEnded(Lcom/google/android/marvin/talkback/Utterance;)V

    .line 85
    const/4 v0, 0x1

    goto :goto_1

    .line 87
    :sswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 91
    const/4 v0, 0x1

    goto :goto_1

    .line 96
    :sswitch_3
    const/4 v0, 0x1

    goto :goto_1

    .line 108
    .restart local v4       #source:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .restart local v8       #record:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    :cond_3
    invoke-static {p2, v4}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->findFocusFromHover(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v5

    .restart local v5       #announcedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    goto :goto_0

    .line 136
    :cond_4
    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mLastAnnouncedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 137
    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->mLastSourceNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 138
    :cond_5
    const-class v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;

    const/4 v1, 0x4

    .line 139
    const-string v2, "Same as last announced node, not speaking"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 138
    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v1, 0x0

    .line 141
    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v1, 0x0

    .line 142
    aput-object v5, v0, v1

    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 143
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    .line 147
    invoke-direct/range {v0 .. v5}, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->addDescription(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/Utterance;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v7

    .line 149
    .local v7, populated:Z
    const/16 v0, 0x80

    if-ne v6, v0, :cond_7

    .line 151
    if-nez v7, :cond_7

    .line 152
    const-class v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;

    const/4 v1, 0x4

    .line 153
    const-string v2, "Failed to populate utterance, not speaking"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 152
    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v1, 0x0

    .line 155
    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v1, 0x0

    .line 156
    aput-object v5, v0, v1

    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 157
    const/4 v0, 0x0

    goto :goto_1

    .line 161
    :cond_7
    invoke-direct {p0, p2, v5, p1, p3}, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->addEarcons(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/Utterance;)V

    .line 163
    invoke-direct {p0, v5}, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->setLastAnnouncedNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 164
    invoke-direct {p0, v4}, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->setLastSourceNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v1, 0x0

    .line 166
    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v1, 0x0

    .line 167
    aput-object v5, v0, v1

    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 169
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 79
    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_2
        0x100 -> :sswitch_3
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
    .end sparse-switch
.end method
