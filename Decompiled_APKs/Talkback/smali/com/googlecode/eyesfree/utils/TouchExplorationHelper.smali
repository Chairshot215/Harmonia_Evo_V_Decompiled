.class public abstract Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.source "TouchExplorationHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;"
    }
.end annotation


# static fields
.field public static final INVALID_ID:I = -0x80000000


# instance fields
.field private mCurrentItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

.field private mFocusedItemId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mNodeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mParentView:Landroid/view/View;

.field private final mTempGlobalRect:Landroid/graphics/Rect;

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    .local p0, this:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;,"Lcom/googlecode/eyesfree/utils/TouchExplorationHelper<TT;>;"
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempGlobalRect:Landroid/graphics/Rect;

    .line 55
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mFocusedItemId:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mCurrentItem:Ljava/lang/Object;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mNodeCache:Landroid/util/SparseArray;

    .line 344
    new-instance v0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper$1;

    invoke-direct {v0, p0}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper$1;-><init>(Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;)V

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 351
    new-instance v0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper$2;

    invoke-direct {v0, p0}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper$2;-><init>(Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;)V

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 68
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->setCurrentItem(Ljava/lang/Object;)V

    return-void
.end method

.method private clearCache()V
    .locals 2

    .prologue
    .line 217
    .local p0, this:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;,"Lcom/googlecode/eyesfree/utils/TouchExplorationHelper<TT;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 222
    return-void

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getEventForItem(Ljava/lang/Object;I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 5
    .parameter
    .parameter "eventType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Landroid/view/accessibility/AccessibilityEvent;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, this:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;,"Lcom/googlecode/eyesfree/utils/TouchExplorationHelper<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 249
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    .line 250
    .local v1, record:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {p0, p1}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->getIdForItem(Ljava/lang/Object;)I

    move-result v2

    .line 253
    .local v2, virtualDescendantId:I
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 256
    invoke-virtual {p0, p1, v0}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->populateEventForItem(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 258
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    new-instance v3, Ljava/lang/RuntimeException;

    .line 260
    const-string v4, "You must add text or a content description in populateEventForItem()"

    .line 259
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 264
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v3, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v3, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;I)V

    .line 268
    return-object v0
.end method

.method private getNodeForItem(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;,"Lcom/googlecode/eyesfree/utils/TouchExplorationHelper<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    const/4 v4, 0x1

    .line 287
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 288
    .local v0, node:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {p0, p1}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->getIdForItem(Ljava/lang/Object;)I

    move-result v3

    .line 291
    .local v3, virtualDescendantId:I
    invoke-virtual {v0, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 292
    invoke-virtual {v0, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 295
    invoke-virtual {p0, p1, v0}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->populateNodeForItem(Ljava/lang/Object;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 297
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    new-instance v4, Ljava/lang/RuntimeException;

    .line 299
    const-string v5, "You must add text or a content description in populateNodeForItem()"

    .line 298
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 303
    :cond_0
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 304
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 306
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v4, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 308
    iget v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mFocusedItemId:I

    if-ne v4, v3, :cond_1

    .line 309
    const/16 v4, 0x80

    invoke-virtual {v0, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 315
    :goto_0
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 316
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 318
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 319
    new-instance v4, Ljava/lang/RuntimeException;

    .line 320
    const-string v5, "You must set parent or screen bounds in populateNodeForItem()"

    .line 319
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 311
    :cond_1
    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_0

    .line 324
    :cond_2
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 325
    :cond_3
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    iget-object v5, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 327
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempGlobalRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 328
    .local v1, offsetX:I
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempGlobalRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 330
    .local v2, offsetY:I
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 331
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 332
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 333
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 341
    .end local v1           #offsetX:I
    .end local v2           #offsetY:I
    :cond_4
    :goto_1
    return-object v0

    .line 335
    .restart local v1       #offsetX:I
    .restart local v2       #offsetY:I
    :cond_5
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempParentRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 336
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempParentRect:Landroid/graphics/Rect;

    neg-int v5, v1

    neg-int v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 337
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method private getNodeForParent()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 6

    .prologue
    .line 272
    .local p0, this:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;,"Lcom/googlecode/eyesfree/utils/TouchExplorationHelper<TT;>;"
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 273
    .local v0, info:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-static {v4, v0}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 275
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 276
    .local v2, items:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TT;>;"
    invoke-virtual {p0, v2}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->getVisibleItems(Ljava/util/List;)V

    .line 278
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 283
    return-object v0

    .line 278
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Object;

    .line 279
    .local v1, item:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, v1}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->getIdForItem(Ljava/lang/Object;)I

    move-result v3

    .line 280
    .local v3, virtualDescendantId:I
    iget-object v5, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v5, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private sendEventForItem(Ljava/lang/Object;I)V
    .locals 3
    .parameter
    .parameter "eventType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, this:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;,"Lcom/googlecode/eyesfree/utils/TouchExplorationHelper<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1, p2}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->getEventForItem(Ljava/lang/Object;I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 242
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 244
    .local v1, group:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 245
    return-void
.end method

.method private setCurrentItem(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, this:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;,"Lcom/googlecode/eyesfree/utils/TouchExplorationHelper<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mCurrentItem:Ljava/lang/Object;

    if-ne v0, p1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mCurrentItem:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mCurrentItem:Ljava/lang/Object;

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->sendEventForItem(Ljava/lang/Object;I)V

    .line 233
    :cond_2
    iput-object p1, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mCurrentItem:Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mCurrentItem:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mCurrentItem:Ljava/lang/Object;

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->sendEventForItem(Ljava/lang/Object;I)V

    goto :goto_0
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 4
    .parameter "virtualViewId"

    .prologue
    .line 157
    .local p0, this:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;,"Lcom/googlecode/eyesfree/utils/TouchExplorationHelper<TT;>;"
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 158
    invoke-direct {p0}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->getNodeForParent()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 176
    :cond_0
    :goto_0
    return-object v0

    .line 161
    :cond_1
    iget-object v3, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 162
    .local v0, cachedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->getItemForId(I)Ljava/lang/Object;

    move-result-object v1

    .line 167
    .local v1, item:Ljava/lang/Object;,"TT;"
    if-nez v1, :cond_2

    .line 168
    const/4 v0, 0x0

    goto :goto_0

    .line 171
    :cond_2
    invoke-direct {p0, v1}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->getNodeForItem(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    .line 174
    .local v2, node:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    iget-object v3, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v2

    .line 176
    goto :goto_0
.end method

.method protected abstract getIdForItem(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method protected abstract getItemAt(FF)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation
.end method

.method protected abstract getItemForId(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method protected abstract getVisibleItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public install(Landroid/view/View;)V
    .locals 2
    .parameter "parentView"

    .prologue
    .line 81
    .local p0, this:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;,"Lcom/googlecode/eyesfree/utils/TouchExplorationHelper<TT;>;"
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v0

    instance-of v0, v0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot install TouchExplorationHelper on a View that already has a helper installed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 89
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 91
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    const/4 v1, 0x1

    .line 90
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 93
    invoke-virtual {p0}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->invalidateParent()V

    .line 94
    return-void
.end method

.method public invalidateItem(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;,"Lcom/googlecode/eyesfree/utils/TouchExplorationHelper<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->getIdForItem(Ljava/lang/Object;)I

    move-result v0

    .line 149
    .local v0, virtualViewId:I
    iget-object v1, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 150
    iget-object v1, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 152
    const/16 v1, 0x800

    invoke-direct {p0, p1, v1}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->sendEventForItem(Ljava/lang/Object;I)V

    .line 153
    return-void
.end method

.method public invalidateParent()V
    .locals 2

    .prologue
    .line 128
    .local p0, this:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;,"Lcom/googlecode/eyesfree/utils/TouchExplorationHelper<TT;>;"
    invoke-direct {p0}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->clearCache()V

    .line 130
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 132
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 133
    return-void
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 4
    .parameter "virtualViewId"
    .parameter "action"
    .parameter "arguments"

    .prologue
    .line 181
    .local p0, this:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;,"Lcom/googlecode/eyesfree/utils/TouchExplorationHelper<TT;>;"
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    iget-object v3, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    .line 213
    :goto_0
    return v0

    .line 185
    :cond_0
    invoke-virtual {p0, p1}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->getItemForId(I)Ljava/lang/Object;

    move-result-object v1

    .line 186
    .local v1, item:Ljava/lang/Object;,"TT;"
    if-nez v1, :cond_1

    .line 187
    const/4 v0, 0x0

    goto :goto_0

    .line 190
    :cond_1
    const/4 v0, 0x0

    .line 192
    .local v0, handled:Z
    sparse-switch p2, :sswitch_data_0

    .line 211
    :cond_2
    :goto_1
    invoke-virtual {p0, v1, p2, p3}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->performActionForItem(Ljava/lang/Object;ILandroid/os/Bundle;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 213
    goto :goto_0

    .line 194
    :sswitch_0
    iget v2, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mFocusedItemId:I

    if-eq v2, p1, :cond_2

    .line 195
    iput p1, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mFocusedItemId:I

    .line 197
    const v2, 0x8000

    .line 196
    invoke-direct {p0, v1, v2}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->sendEventForItem(Ljava/lang/Object;I)V

    .line 198
    const/4 v0, 0x1

    .line 200
    goto :goto_1

    .line 202
    :sswitch_1
    iget v2, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mFocusedItemId:I

    if-ne v2, p1, :cond_2

    .line 203
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mFocusedItemId:I

    .line 205
    const/high16 v2, 0x1

    .line 204
    invoke-direct {p0, v1, v2}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->sendEventForItem(Ljava/lang/Object;I)V

    .line 206
    const/4 v0, 0x1

    goto :goto_1

    .line 192
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method protected abstract performActionForItem(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation
.end method

.method protected abstract populateEventForItem(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityEvent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract populateNodeForItem(Ljava/lang/Object;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ")V"
        }
    .end annotation
.end method

.method public uninstall()V
    .locals 3

    .prologue
    .local p0, this:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;,"Lcom/googlecode/eyesfree/utils/TouchExplorationHelper<TT;>;"
    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot uninstall TouchExplorationHelper on a View that does not have a helper installed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    new-instance v1, Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-direct {v1}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 112
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    .line 111
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 114
    invoke-direct {p0}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->clearCache()V

    .line 116
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 117
    iput-object v2, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mParentView:Landroid/view/View;

    .line 118
    return-void
.end method
