.class Lcom/google/android/marvin/talkback/CursorController;
.super Ljava/lang/Object;
.source "CursorController.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/CursorController$CursorControllerListener;
    }
.end annotation


# static fields
.field public static final MIN_API_LEVEL:I = 0x10

.field private static final NAVIGATION_DIRECTION_NEXT:I = 0x1

.field private static final NAVIGATION_DIRECTION_PREVIOUS:I = -0x1


# instance fields
.field private mGranularityManager:Lcom/google/android/marvin/talkback/CursorGranularityManager;

.field private mListener:Lcom/google/android/marvin/talkback/CursorController$CursorControllerListener;

.field private final mNavigateSeenNodes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mReachedEdge:Z

.field private final mService:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method public constructor <init>(Landroid/accessibilityservice/AccessibilityService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/CursorController;->mNavigateSeenNodes:Ljava/util/HashSet;

    .line 73
    iput-object p1, p0, Lcom/google/android/marvin/talkback/CursorController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 74
    new-instance v0, Lcom/google/android/marvin/talkback/CursorGranularityManager;

    invoke-direct {v0}, Lcom/google/android/marvin/talkback/CursorGranularityManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/CursorController;->mGranularityManager:Lcom/google/android/marvin/talkback/CursorGranularityManager;

    .line 75
    return-void
.end method

.method private adjustGranularity(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 249
    const/4 v0, 0x0

    .line 252
    .local v0, current:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/CursorController;->getCursor()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 253
    if-nez v0, :cond_0

    .line 263
    new-array v3, v6, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 264
    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    move v1, v2

    .line 262
    :goto_0
    return v1

    .line 257
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/marvin/talkback/CursorController;->mGranularityManager:Lcom/google/android/marvin/talkback/CursorGranularityManager;

    invoke-virtual {v3, v0, p1}, Lcom/google/android/marvin/talkback/CursorGranularityManager;->adjustWithin(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Z

    move-result v1

    .line 258
    .local v1, wasAdjusted:Z
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/google/android/marvin/talkback/CursorController;->mListener:Lcom/google/android/marvin/talkback/CursorController$CursorControllerListener;

    if-eqz v3, :cond_1

    .line 259
    iget-object v3, p0, Lcom/google/android/marvin/talkback/CursorController;->mListener:Lcom/google/android/marvin/talkback/CursorController$CursorControllerListener;

    iget-object v4, p0, Lcom/google/android/marvin/talkback/CursorController;->mGranularityManager:Lcom/google/android/marvin/talkback/CursorGranularityManager;

    invoke-virtual {v4}, Lcom/google/android/marvin/talkback/CursorGranularityManager;->getRequestedGranularity()Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/google/android/marvin/talkback/CursorController$CursorControllerListener;->onGranularityChanged(Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :cond_1
    new-array v3, v6, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 264
    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_0

    .line 263
    .end local v1           #wasAdjusted:Z
    :catchall_0
    move-exception v3

    new-array v4, v6, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 264
    aput-object v0, v4, v2

    invoke-static {v4}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 265
    throw v3
.end method

.method private static attemptHtmlNavigation(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Z
    .locals 2
    .parameter "node"
    .parameter "direction"

    .prologue
    .line 496
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 497
    const/16 v0, 0x400

    .line 499
    .local v0, action:I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->performAction(I)Z

    move-result v1

    return v1

    .line 498
    .end local v0           #action:I
    :cond_0
    const/16 v0, 0x800

    goto :goto_0
.end method

.method private attemptScrollAction(I)Z
    .locals 8
    .parameter "action"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, cursor:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v2, 0x0

    .line 217
    .local v2, scrollableNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/CursorController;->getCursor()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 218
    if-nez v0, :cond_1

    .line 234
    :cond_0
    new-array v4, v7, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 235
    aput-object v0, v4, v3

    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    move v1, v3

    .line 233
    :goto_0
    return v1

    .line 223
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/google/android/marvin/talkback/CursorController;->mService:Landroid/accessibilityservice/AccessibilityService;

    sget-object v5, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->FILTER_SCROLLABLE:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;

    .line 222
    invoke-static {v4, v0, v5}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->getSelfOrMatchingPredecessor(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    .line 224
    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {v2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->performAction(I)Z

    move-result v1

    .line 229
    .local v1, performedAction:Z
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/google/android/marvin/talkback/CursorController;->mListener:Lcom/google/android/marvin/talkback/CursorController$CursorControllerListener;

    if-eqz v4, :cond_2

    .line 230
    iget-object v4, p0, Lcom/google/android/marvin/talkback/CursorController;->mListener:Lcom/google/android/marvin/talkback/CursorController$CursorControllerListener;

    invoke-interface {v4, p1}, Lcom/google/android/marvin/talkback/CursorController$CursorControllerListener;->onActionPerformed(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :cond_2
    new-array v4, v7, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 235
    aput-object v0, v4, v3

    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_0

    .line 234
    .end local v1           #performedAction:Z
    :catchall_0
    move-exception v4

    new-array v5, v7, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 235
    aput-object v0, v5, v3

    aput-object v2, v5, v6

    invoke-static {v5}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 236
    throw v4
.end method

.method private static getLastNodeFrom(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2
    .parameter "root"

    .prologue
    .line 380
    invoke-static {p0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;

    move-result-object v0

    .line 381
    .local v0, ref:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;
    invoke-virtual {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->lastDescendant()Z

    .line 382
    invoke-virtual {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->release()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized navigate(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 396
    monitor-enter p0

    const/4 v0, 0x0

    .line 397
    .local v0, current:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v1, 0x0

    .line 400
    .local v1, next:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/CursorController;->getCursor()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 401
    if-nez v0, :cond_1

    .line 411
    :cond_0
    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v4, 0x0

    .line 412
    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :goto_0
    monitor-exit p0

    return v2

    .line 405
    :cond_1
    :try_start_2
    invoke-direct {p0, v0, p1}, Lcom/google/android/marvin/talkback/CursorController;->navigateFrom(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 406
    if-eqz v1, :cond_0

    .line 410
    invoke-virtual {p0, v1}, Lcom/google/android/marvin/talkback/CursorController;->setCursor(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    .line 411
    const/4 v3, 0x2

    :try_start_3
    new-array v3, v3, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v4, 0x0

    .line 412
    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 411
    :catchall_1
    move-exception v2

    const/4 v3, 0x2

    :try_start_4
    new-array v3, v3, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v4, 0x0

    .line 412
    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 413
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private navigateFrom(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 5
    .parameter "node"
    .parameter "direction"

    .prologue
    .line 431
    if-nez p1, :cond_0

    .line 432
    const/4 v0, 0x0

    .line 457
    :goto_0
    return-object v0

    .line 435
    :cond_0
    const/4 v0, 0x0

    .line 439
    .local v0, next:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    iget-object v1, p0, Lcom/google/android/marvin/talkback/CursorController;->mNavigateSeenNodes:Ljava/util/HashSet;

    invoke-static {v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes(Ljava/util/Collection;)V

    .line 441
    invoke-static {p1, p2}, Lcom/googlecode/eyesfree/utils/NodeFocusFinder;->focusSearch(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 443
    :goto_1
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/marvin/talkback/CursorController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v1, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->shouldFocusNode(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 459
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/google/android/marvin/talkback/CursorController;->mNavigateSeenNodes:Ljava/util/HashSet;

    invoke-static {v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes(Ljava/util/Collection;)V

    goto :goto_0

    .line 444
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/marvin/talkback/CursorController;->mNavigateSeenNodes:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 445
    const/4 v1, 0x6

    const-string v2, "Found duplicate during traversal: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p0, v1, v2, v3}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 458
    :catchall_0
    move-exception v1

    .line 459
    iget-object v2, p0, Lcom/google/android/marvin/talkback/CursorController;->mNavigateSeenNodes:Ljava/util/HashSet;

    invoke-static {v2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes(Ljava/util/Collection;)V

    .line 460
    throw v1

    .line 450
    :cond_3
    const/4 v1, 0x2

    :try_start_2
    const-string v2, "Search strategy rejected node: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p0, v1, v2, v3}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 452
    iget-object v1, p0, Lcom/google/android/marvin/talkback/CursorController;->mNavigateSeenNodes:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-static {v0, p2}, Lcom/googlecode/eyesfree/utils/NodeFocusFinder;->focusSearch(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method private navigateSelfOrFrom(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .parameter "node"
    .parameter "direction"

    .prologue
    .line 418
    if-nez p1, :cond_0

    .line 419
    const/4 v0, 0x0

    .line 426
    :goto_0
    return-object v0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/CursorController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->shouldFocusNode(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    goto :goto_0

    .line 426
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/marvin/talkback/CursorController;->navigateFrom(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    goto :goto_0
.end method

.method private navigateWithEdges(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 329
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/CursorController;->navigate(I)Z

    move-result v0

    .line 333
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 334
    iput-boolean v2, p0, Lcom/google/android/marvin/talkback/CursorController;->mReachedEdge:Z

    .line 342
    .end local v0           #success:Z
    :goto_0
    return v0

    .line 335
    .restart local v0       #success:Z
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/marvin/talkback/CursorController;->mReachedEdge:Z

    if-eqz v1, :cond_1

    .line 336
    iput-boolean v2, p0, Lcom/google/android/marvin/talkback/CursorController;->mReachedEdge:Z

    .line 337
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/CursorController;->navigateWrapAround(I)Z

    move-result v0

    goto :goto_0

    .line 339
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/marvin/talkback/CursorController;->mReachedEdge:Z

    goto :goto_0
.end method

.method private navigateWithGranularity(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 284
    const/4 v0, 0x0

    .line 287
    .local v0, current:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/CursorController;->getCursor()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 288
    if-nez v0, :cond_0

    .line 317
    new-array v5, v1, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 318
    aput-object v0, v5, v4

    invoke-static {v5}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    move v1, v4

    .line 325
    :goto_0
    return v1

    .line 293
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/google/android/marvin/talkback/CursorController;->mGranularityManager:Lcom/google/android/marvin/talkback/CursorGranularityManager;

    invoke-virtual {v5, v0}, Lcom/google/android/marvin/talkback/CursorGranularityManager;->isLockedToNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 294
    if-ne p1, v1, :cond_2

    .line 295
    const/16 v2, 0x100

    .line 298
    .local v2, navigationAction:I
    :goto_1
    iget-object v5, p0, Lcom/google/android/marvin/talkback/CursorController;->mGranularityManager:Lcom/google/android/marvin/talkback/CursorGranularityManager;

    invoke-virtual {v5, v0, v2}, Lcom/google/android/marvin/talkback/CursorGranularityManager;->navigateWithin(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)I

    move-result v3

    .line 300
    .local v3, result:I
    packed-switch v3, :pswitch_data_0

    .line 311
    .end local v2           #navigationAction:I
    .end local v3           #result:I
    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-static {v0, v5}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->supportsAnyAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;[I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 314
    invoke-static {v0, p1}, Lcom/google/android/marvin/talkback/CursorController;->attemptHtmlNavigation(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    .line 317
    new-array v5, v1, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 318
    aput-object v0, v5, v4

    invoke-static {v5}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_0

    .line 296
    :cond_2
    const/16 v2, 0x200

    goto :goto_1

    .line 317
    .restart local v2       #navigationAction:I
    .restart local v3       #result:I
    :pswitch_0
    new-array v5, v1, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 318
    aput-object v0, v5, v4

    invoke-static {v5}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_0

    .line 317
    :pswitch_1
    new-array v5, v1, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 318
    aput-object v0, v5, v4

    invoke-static {v5}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    move v1, v4

    .line 306
    goto :goto_0

    .line 317
    .end local v2           #navigationAction:I
    .end local v3           #result:I
    :catchall_0
    move-exception v5

    new-array v6, v1, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 318
    aput-object v0, v6, v4

    invoke-static {v6}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 319
    throw v5

    .line 317
    :cond_3
    new-array v5, v1, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 318
    aput-object v0, v5, v4

    invoke-static {v5}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 323
    if-ne p1, v1, :cond_4

    .line 325
    .local v1, focusSearchDirection:I
    :goto_2
    invoke-direct {p0, v1}, Lcom/google/android/marvin/talkback/CursorController;->navigateWithEdges(I)Z

    move-result v1

    goto :goto_0

    .line 324
    .end local v1           #focusSearchDirection:I
    :cond_4
    const/4 v1, -0x1

    goto :goto_2

    .line 300
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 311
    :array_0
    .array-data 0x4
        0x0t 0x4t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
    .end array-data
.end method

.method private navigateWrapAround(I)Z
    .locals 12
    .parameter "direction"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 346
    iget-object v6, p0, Lcom/google/android/marvin/talkback/CursorController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 347
    .local v2, root:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :cond_0

    .line 373
    :goto_0
    return v5

    .line 351
    :cond_0
    const/4 v0, 0x0

    .line 352
    .local v0, compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v3, 0x0

    .line 353
    .local v3, tempNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v4, 0x0

    .line 356
    .local v4, wrapNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    .end local v0           #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .local v1, compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    packed-switch p1, :pswitch_data_0

    .line 368
    :goto_1
    :pswitch_0
    if-nez v4, :cond_1

    .line 369
    const/4 v6, 0x6

    :try_start_1
    const-string v7, "Failed to wrap navigation"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7, v8}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 374
    new-array v6, v11, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 375
    aput-object v1, v6, v5

    aput-object v3, v6, v9

    aput-object v4, v6, v10

    invoke-static {v6}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_0

    .line 360
    :pswitch_1
    :try_start_2
    invoke-direct {p0, v1, p1}, Lcom/google/android/marvin/talkback/CursorController;->navigateSelfOrFrom(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v4

    .line 361
    goto :goto_1

    .line 363
    :pswitch_2
    invoke-static {v1}, Lcom/google/android/marvin/talkback/CursorController;->getLastNodeFrom(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    .line 364
    invoke-direct {p0, v3, p1}, Lcom/google/android/marvin/talkback/CursorController;->navigateSelfOrFrom(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v4

    goto :goto_1

    .line 373
    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/android/marvin/talkback/CursorController;->setCursor(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    .line 374
    new-array v7, v11, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 375
    aput-object v1, v7, v5

    aput-object v3, v7, v9

    aput-object v4, v7, v10

    invoke-static {v7}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    move v5, v6

    .line 373
    goto :goto_0

    .line 374
    .end local v1           #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .restart local v0       #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :catchall_0
    move-exception v6

    :goto_2
    new-array v7, v11, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 375
    aput-object v0, v7, v5

    aput-object v3, v7, v9

    aput-object v4, v7, v10

    invoke-static {v7}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 376
    throw v6

    .line 374
    .end local v0           #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .restart local v1       #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .restart local v0       #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    goto :goto_2

    .line 358
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performAction(I)Z
    .locals 4
    .parameter "action"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 470
    const/4 v0, 0x0

    .line 473
    .local v0, current:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/CursorController;->getCursor()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 474
    if-nez v0, :cond_0

    .line 479
    new-array v2, v3, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 480
    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 478
    :goto_0
    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->performAction(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 479
    new-array v3, v3, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 480
    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    move v1, v2

    .line 478
    goto :goto_0

    .line 479
    :catchall_0
    move-exception v2

    new-array v3, v3, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 480
    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 481
    throw v2
.end method


# virtual methods
.method public clickCurrent()Z
    .locals 1

    .prologue
    .line 132
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/CursorController;->performAction(I)Z

    move-result v0

    return v0
.end method

.method public getCursor()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 4

    .prologue
    .line 180
    iget-object v3, p0, Lcom/google/android/marvin/talkback/CursorController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 181
    .local v0, activeRoot:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_1

    .line 182
    const/4 v1, 0x0

    .line 203
    :cond_0
    :goto_0
    return-object v1

    .line 185
    :cond_1
    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    .line 187
    .local v1, compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v3, 0x2

    .line 186
    invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->findFocus(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    .line 191
    .local v2, focusedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isVisibleToUser()Z

    move-result v3

    if-nez v3, :cond_2

    .line 199
    invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 203
    goto :goto_0
.end method

.method public less()Z
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/CursorController;->attemptScrollAction(I)Z

    move-result v0

    return v0
.end method

.method public longPressCurrent()Z
    .locals 1

    .prologue
    .line 141
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/CursorController;->performAction(I)Z

    move-result v0

    return v0
.end method

.method public more()Z
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/CursorController;->attemptScrollAction(I)Z

    move-result v0

    return v0
.end method

.method public next()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/CursorController;->navigateWithGranularity(I)Z

    move-result v0

    return v0
.end method

.method public nextGranularity()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/CursorController;->adjustGranularity(I)Z

    move-result v0

    return v0
.end method

.method public previous()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/CursorController;->navigateWithGranularity(I)Z

    move-result v0

    return v0
.end method

.method public previousGranularity()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/CursorController;->adjustGranularity(I)Z

    move-result v0

    return v0
.end method

.method public setCursor(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 169
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->performAction(I)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/google/android/marvin/talkback/CursorController$CursorControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/marvin/talkback/CursorController;->mListener:Lcom/google/android/marvin/talkback/CursorController$CursorControllerListener;

    .line 79
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/CursorController;->mListener:Lcom/google/android/marvin/talkback/CursorController$CursorControllerListener;

    .line 87
    iget-object v0, p0, Lcom/google/android/marvin/talkback/CursorController;->mGranularityManager:Lcom/google/android/marvin/talkback/CursorGranularityManager;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/CursorGranularityManager;->shutdown()V

    .line 88
    return-void
.end method
