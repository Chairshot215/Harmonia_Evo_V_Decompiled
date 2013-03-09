.class Lcom/google/android/marvin/talkback/ProcessorFollowFocus;
.super Ljava/lang/Object;
.source "ProcessorFollowFocus.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/TalkBackService$EventListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;
    }
.end annotation


# static fields
.field public static final MIN_API_LEVEL:I = 0x10


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mHandler:Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;

.field private mLastAction:I

.field private mLastFromIndex:I

.field private final mService:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method public constructor <init>(Landroid/accessibilityservice/AccessibilityService;)V
    .locals 1
    .parameter "service"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mLastAction:I

    .line 50
    iput v0, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mLastFromIndex:I

    .line 415
    new-instance v0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;-><init>(Lcom/google/android/marvin/talkback/ProcessorFollowFocus;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mHandler:Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;

    .line 53
    iput-object p1, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 55
    const-string v0, "accessibility"

    .line 54
    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/ProcessorFollowFocus;Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->followScrollEvent(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/google/android/marvin/talkback/ProcessorFollowFocus;Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->followContentChangedEvent(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)Z

    move-result v0

    return v0
.end method

.method private findChildFromNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 7
    .parameter "root"
    .parameter "direction"

    .prologue
    const/4 v5, 0x0

    .line 335
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v1

    .line 337
    .local v1, childCount:I
    if-nez v1, :cond_1

    move-object v0, v5

    .line 367
    :cond_0
    :goto_0
    return-object v0

    .line 344
    :cond_1
    const/4 v6, 0x1

    if-ne p2, v6, :cond_3

    .line 345
    const/4 v3, 0x1

    .line 346
    .local v3, increment:I
    const/4 v4, 0x0

    .line 352
    .local v4, startIndex:I
    :goto_1
    move v2, v4

    .local v2, childIndex:I
    :goto_2
    if-ltz v2, :cond_2

    if-lt v2, v1, :cond_4

    :cond_2
    move-object v0, v5

    .line 367
    goto :goto_0

    .line 348
    .end local v2           #childIndex:I
    .end local v3           #increment:I
    .end local v4           #startIndex:I
    :cond_3
    const/4 v3, -0x1

    .line 349
    .restart local v3       #increment:I
    add-int/lit8 v4, v1, -0x1

    .restart local v4       #startIndex:I
    goto :goto_1

    .line 354
    .restart local v2       #childIndex:I
    :cond_4
    invoke-virtual {p1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 356
    .local v0, child:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-nez v0, :cond_5

    .line 353
    :goto_3
    add-int/2addr v2, v3

    goto :goto_2

    .line 360
    :cond_5
    iget-object v6, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v6, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->shouldFocusNode(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 364
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_3
.end method

.method private findFocusFromNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3
    .parameter "root"
    .parameter "direction"

    .prologue
    .line 376
    invoke-static {p1, p2}, Lcom/googlecode/eyesfree/utils/NodeFocusFinder;->focusSearch(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 378
    .local v0, currentNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 381
    .local v1, seenNodes:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v2, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->shouldFocusNode(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    .line 381
    if-eqz v2, :cond_2

    .line 388
    :cond_0
    invoke-static {v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes(Ljava/util/Collection;)V

    .line 390
    if-nez v0, :cond_1

    .line 391
    const/4 v0, 0x0

    .line 394
    .end local v0           #currentNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_1
    return-object v0

    .line 383
    .restart local v0       #currentNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-static {v0, p2}, Lcom/googlecode/eyesfree/utils/NodeFocusFinder;->focusSearch(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    goto :goto_0
.end method

.method private followContentChangedEvent(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->setFocusFromWindow()Z

    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method private followScrollEvent(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;II)Z
    .locals 9
    .parameter "event"
    .parameter "lastFromIndex"
    .parameter "lastAction"

    .prologue
    .line 257
    iget-object v6, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 259
    .local v3, root:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v3, :cond_0

    .line 260
    const/4 v6, 0x0

    .line 307
    :goto_0
    return v6

    .line 263
    :cond_0
    const/4 v0, 0x0

    .line 264
    .local v0, compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v2, 0x0

    .line 265
    .local v2, focused:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v4, 0x0

    .line 269
    .local v4, source:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    .end local v0           #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .local v1, compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v6, 0x2

    :try_start_1
    invoke-virtual {v1, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->findFocus(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    .line 272
    if-eqz v2, :cond_1

    .line 273
    iget-object v6, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v6, v2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->shouldFocusNode(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-eqz v6, :cond_1

    .line 308
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v7, 0x0

    .line 309
    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    aput-object v4, v6, v7

    invoke-static {v6}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 274
    const/4 v6, 0x1

    goto :goto_0

    .line 280
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v4

    .line 282
    if-nez v4, :cond_2

    .line 283
    const/4 v6, 0x6

    const-string v7, "Failed to obtain source from scroll event"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7, v8}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 308
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v7, 0x0

    .line 309
    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    aput-object v4, v6, v7

    invoke-static {v6}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 284
    const/4 v6, 0x0

    goto :goto_0

    .line 290
    :cond_2
    const/16 v6, 0x1000

    if-eq p3, v6, :cond_3

    .line 291
    :try_start_3
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getFromIndex()I

    move-result v6

    if-le v6, p2, :cond_4

    .line 292
    :cond_3
    const/4 v5, 0x1

    .line 298
    .local v5, wasMovingForward:Z
    :goto_1
    invoke-direct {p0, v4, v5}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->tryFocusingChild(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v6

    if-eqz v6, :cond_5

    .line 308
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v7, 0x0

    .line 309
    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    aput-object v4, v6, v7

    invoke-static {v6}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 299
    const/4 v6, 0x1

    goto :goto_0

    .line 294
    .end local v5           #wasMovingForward:Z
    :cond_4
    const/4 v5, 0x0

    .restart local v5       #wasMovingForward:Z
    goto :goto_1

    .line 303
    :cond_5
    :try_start_4
    invoke-direct {p0, v4}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->tryFocusing(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v6

    if-eqz v6, :cond_6

    .line 308
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v7, 0x0

    .line 309
    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    aput-object v4, v6, v7

    invoke-static {v6}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 304
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 308
    :cond_6
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v7, 0x0

    .line 309
    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    aput-object v4, v6, v7

    invoke-static {v6}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 307
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 308
    .end local v1           #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v5           #wasMovingForward:Z
    .restart local v0       #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :catchall_0
    move-exception v6

    :goto_2
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v8, 0x0

    .line 309
    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-static {v7}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 310
    throw v6

    .line 308
    .end local v0           #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .restart local v1       #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .restart local v0       #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    goto :goto_2
.end method

.method private handleContentChangedEvent(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)V
    .locals 2
    .parameter "record"

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 92
    .local v0, source:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 98
    iget-object v1, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mHandler:Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;

    invoke-virtual {v1, p1}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->followContentChangedDelayed(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)V

    goto :goto_0
.end method

.method private handleScrollEvent(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)V
    .locals 4
    .parameter "record"

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 104
    .local v0, source:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 110
    iget-object v1, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mHandler:Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;

    iget v2, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mLastFromIndex:I

    iget v3, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mLastAction:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->followScrollDelayed(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;II)V

    .line 111
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getFromIndex()I

    move-result v1

    iput v1, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mLastFromIndex:I

    .line 112
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mLastAction:I

    goto :goto_0
.end method

.method private setFocusFromHover(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, touched:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v0, 0x0

    .line 233
    .local v0, focusable:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 234
    if-nez v1, :cond_1

    .line 244
    :cond_0
    new-array v2, v3, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 245
    aput-object v1, v2, v4

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 247
    :goto_0
    return-void

    .line 238
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v2, v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->findFocusFromHover(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    .line 243
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->performAction(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    new-array v2, v3, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 245
    aput-object v1, v2, v4

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v2

    new-array v3, v3, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 245
    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 246
    throw v2
.end method

.method private setFocusFromInput(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 157
    .local v0, source:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v1, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->shouldFocusNode(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->tryFocusing(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    .line 165
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0
.end method

.method private setFocusFromSelection(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 119
    const/4 v2, 0x0

    .line 120
    .local v2, source:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v0, 0x0

    .line 123
    .local v0, child:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 125
    if-nez v2, :cond_0

    .line 146
    new-array v3, v7, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 147
    aput-object v2, v3, v5

    aput-object v0, v3, v6

    invoke-static {v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 149
    :goto_0
    return-void

    .line 129
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getCurrentItemIndex()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getFromIndex()I

    move-result v4

    sub-int v1, v3, v4

    .line 131
    .local v1, index:I
    if-ltz v1, :cond_1

    invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-lt v1, v3, :cond_2

    .line 146
    :cond_1
    new-array v3, v7, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 147
    aput-object v2, v3, v5

    aput-object v0, v3, v6

    invoke-static {v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_0

    .line 135
    :cond_2
    :try_start_2
    invoke-virtual {v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 137
    if-nez v0, :cond_3

    .line 146
    new-array v3, v7, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 147
    aput-object v2, v3, v5

    aput-object v0, v3, v6

    invoke-static {v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_0

    .line 141
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v3, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isTopLevelScrollItem(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    .line 146
    new-array v3, v7, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 147
    aput-object v2, v3, v5

    aput-object v0, v3, v6

    invoke-static {v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_0

    .line 145
    :cond_4
    :try_start_4
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->tryFocusing(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    new-array v3, v7, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 147
    aput-object v2, v3, v5

    aput-object v0, v3, v6

    invoke-static {v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_0

    .line 146
    .end local v1           #index:I
    :catchall_0
    move-exception v3

    new-array v4, v7, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 147
    aput-object v2, v4, v5

    aput-object v0, v4, v6

    invoke-static {v4}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 148
    throw v3
.end method

.method private setFocusFromWindow()Z
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 172
    iget-object v8, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 174
    .local v5, root:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v5, :cond_0

    .line 218
    :goto_0
    return v6

    .line 178
    :cond_0
    const/4 v0, 0x0

    .line 179
    .local v0, compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v3, 0x0

    .line 180
    .local v3, focused:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v4, 0x0

    .line 181
    .local v4, inputFocused:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v2, 0x0

    .line 184
    .local v2, firstFocus:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_start_0
    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v1, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    .end local v0           #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .local v1, compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v8, 0x2

    :try_start_1
    invoke-virtual {v1, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->findFocus(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    .line 189
    if-eqz v3, :cond_2

    .line 190
    iget-object v8, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v8, v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->shouldFocusNode(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_2

    .line 219
    :cond_1
    :goto_1
    new-array v8, v13, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 220
    aput-object v1, v8, v6

    aput-object v3, v8, v7

    aput-object v4, v8, v11

    aput-object v2, v8, v12

    invoke-static {v8}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    move v6, v7

    .line 191
    goto :goto_0

    .line 195
    :cond_2
    const/4 v8, 0x1

    :try_start_2
    invoke-virtual {v1, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->findFocus(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v4

    .line 197
    if-eqz v4, :cond_3

    .line 198
    iget-object v8, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v8, v4}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->shouldFocusNode(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 199
    invoke-direct {p0, v4}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->tryFocusing(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 204
    :cond_3
    const/4 v8, 0x1

    invoke-direct {p0, v1, v8}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->findFocusFromNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    .line 206
    if-eqz v2, :cond_4

    invoke-direct {p0, v2}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->tryFocusing(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 211
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->tryFocusing(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 212
    const/4 v8, 0x5

    const-string v9, "Failed to place focus from new window"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 219
    :catchall_0
    move-exception v8

    move-object v0, v1

    .end local v1           #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .restart local v0       #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_2
    new-array v9, v13, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 220
    aput-object v0, v9, v6

    aput-object v3, v9, v7

    aput-object v4, v9, v11

    aput-object v2, v9, v12

    invoke-static {v9}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 221
    throw v8

    .line 216
    .end local v0           #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .restart local v1       #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_5
    const/4 v8, 0x6

    :try_start_3
    const-string v9, "Failed to place focus on root from new window"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    new-array v8, v13, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 220
    aput-object v1, v8, v6

    aput-object v3, v8, v7

    aput-object v4, v8, v11

    aput-object v2, v8, v12

    invoke-static {v8}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_0

    .line 219
    .end local v1           #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .restart local v0       #compatRoot:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :catchall_1
    move-exception v8

    goto :goto_2
.end method

.method private tryFocusing(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 1
    .parameter "source"

    .prologue
    .line 398
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->performAction(I)Z

    move-result v0

    return v0
.end method

.method private tryFocusingChild(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Z)Z
    .locals 3
    .parameter "parent"
    .parameter "wasMovingForward"

    .prologue
    .line 320
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 322
    .local v1, direction:I
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->findChildFromNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 324
    .local v0, child:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-nez v0, :cond_1

    .line 325
    const/4 v2, 0x0

    .line 330
    :goto_1
    return v2

    .line 321
    .end local v0           #child:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v1           #direction:I
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 328
    .restart local v0       #child:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .restart local v1       #direction:I
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->tryFocusing(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    .line 329
    .local v2, result:Z
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_1
.end method


# virtual methods
.method public onActionPerformed(I)V
    .locals 0
    .parameter "action"

    .prologue
    .line 407
    sparse-switch p1, :sswitch_data_0

    .line 413
    :goto_0
    return-void

    .line 410
    :sswitch_0
    iput p1, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mLastAction:I

    goto :goto_0

    .line 407
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public process(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    .line 66
    .local v0, record:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 71
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->setFocusFromSelection(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)V

    goto :goto_0

    .line 68
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->setFocusFromInput(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)V

    goto :goto_0

    .line 74
    :sswitch_2
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->setFocusFromWindow()Z

    goto :goto_0

    .line 77
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->handleContentChangedEvent(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)V

    goto :goto_0

    .line 80
    :sswitch_4
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->setFocusFromHover(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)V

    goto :goto_0

    .line 83
    :sswitch_5
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->handleScrollEvent(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)V

    goto :goto_0

    .line 66
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0x20 -> :sswitch_2
        0x80 -> :sswitch_4
        0x800 -> :sswitch_3
        0x1000 -> :sswitch_5
    .end sparse-switch
.end method
