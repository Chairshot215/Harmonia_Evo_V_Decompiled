.class public Lcom/google/android/marvin/talkback/CursorGranularityManager;
.super Ljava/lang/Object;
.source "CursorGranularityManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;
    }
.end annotation


# static fields
.field public static final CHANGE_GRANULARITY_HIGHER:I = 0x1

.field public static final CHANGE_GRANULARITY_LOWER:I = -0x1

.field private static final GRANULARITIES:[Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity; = null

.field public static final HIT_EDGE:I = 0x0

.field public static final MIN_API_LEVEL:I = 0x10

.field public static final NOT_SUPPORTED:I = -0x1

.field public static final SUCCESS:I = 0x1


# instance fields
.field private final mArguments:Landroid/os/Bundle;

.field private mCurrentNodeIndex:I

.field private mLockedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

.field private final mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestedGranularityIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->values()[Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    move-result-object v0

    sput-object v0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->GRANULARITIES:[Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mNodes:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mArguments:Landroid/os/Bundle;

    .line 31
    return-void
.end method

.method private clearCurrentNode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-object v0, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 264
    iput v2, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mCurrentNodeIndex:I

    .line 265
    iput v2, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mRequestedGranularityIndex:I

    .line 267
    iget-object v0, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mNodes:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes(Ljava/util/Collection;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 268
    iget-object v1, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mLockedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->recycleNodes([Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mLockedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 271
    return-void
.end method

.method private static extractNodes(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/util/ArrayList;)I
    .locals 5
    .parameter "root"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    if-nez p0, :cond_1

    .line 283
    const/4 v3, 0x0

    .line 309
    :cond_0
    return v3

    .line 286
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getMovementGranularities()I

    move-result v3

    .line 291
    .local v3, supportedGranularities:I
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v1

    .line 297
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 298
    invoke-virtual {p0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 302
    .local v0, child:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isActionableForAccessibility(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 303
    invoke-static {v0, p1}, Lcom/google/android/marvin/talkback/CursorGranularityManager;->extractNodes(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/util/ArrayList;)I

    move-result v4

    or-int/2addr v3, v4

    .line 306
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private handleRequestedNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mLockedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mLockedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/CursorGranularityManager;->clearCurrentNode()V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mLockedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    if-nez v0, :cond_1

    .line 251
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/CursorGranularityManager;->setCurrentNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 253
    :cond_1
    return-void
.end method

.method private setCurrentNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mNodes:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/google/android/marvin/talkback/CursorGranularityManager;->extractNodes(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/util/ArrayList;)I

    .line 258
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mLockedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 259
    return-void
.end method


# virtual methods
.method public adjustWithin(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)Z
    .locals 4
    .parameter "node"
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/CursorGranularityManager;->handleRequestedNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 219
    iget v1, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mRequestedGranularityIndex:I

    .line 220
    .local v1, current:I
    sget-object v3, Lcom/google/android/marvin/talkback/CursorGranularityManager;->GRANULARITIES:[Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    array-length v0, v3

    .line 222
    .local v0, count:I
    iget v3, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mRequestedGranularityIndex:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mRequestedGranularityIndex:I

    .line 224
    iget v3, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mRequestedGranularityIndex:I

    if-gez v3, :cond_2

    .line 225
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mRequestedGranularityIndex:I

    .line 230
    :cond_0
    :goto_0
    iget v3, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mRequestedGranularityIndex:I

    if-eq v3, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 226
    :cond_2
    iget v3, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mRequestedGranularityIndex:I

    if-lt v3, v0, :cond_0

    .line 227
    iput v2, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mRequestedGranularityIndex:I

    goto :goto_0
.end method

.method public getRequestedGranularity()Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->GRANULARITIES:[Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    iget v1, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mRequestedGranularityIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isLockedToNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 3
    .parameter "node"

    .prologue
    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/CursorGranularityManager;->getRequestedGranularity()Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    move-result-object v1

    sget-object v2, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->DEFAULT:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    if-ne v1, v2, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mLockedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mLockedNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public navigateWithin(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;I)I
    .locals 10
    .parameter "node"
    .parameter "action"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 154
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/CursorGranularityManager;->handleRequestedNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 156
    iget-object v6, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 157
    .local v0, count:I
    sget-object v6, Lcom/google/android/marvin/talkback/CursorGranularityManager;->GRANULARITIES:[Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    iget v7, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mRequestedGranularityIndex:I

    aget-object v2, v6, v7

    .line 159
    .local v2, requestedGranularity:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;
    sget-object v6, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->DEFAULT:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    if-ne v2, v6, :cond_1

    .line 160
    const/4 v4, -0x1

    .line 204
    :cond_0
    :goto_0
    return v4

    .line 163
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 176
    :cond_2
    :goto_1
    iget v6, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mCurrentNodeIndex:I

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mCurrentNodeIndex:I

    if-lt v6, v0, :cond_4

    :cond_3
    move v4, v5

    .line 204
    goto :goto_0

    .line 165
    :sswitch_0
    iget v6, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mCurrentNodeIndex:I

    if-gez v6, :cond_2

    .line 166
    iget v6, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mCurrentNodeIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mCurrentNodeIndex:I

    goto :goto_1

    .line 170
    :sswitch_1
    iget v6, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mCurrentNodeIndex:I

    if-lt v6, v0, :cond_2

    .line 171
    iget v6, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mCurrentNodeIndex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mCurrentNodeIndex:I

    goto :goto_1

    .line 177
    :cond_4
    iget-object v6, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mNodes:Ljava/util/ArrayList;

    iget v7, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mCurrentNodeIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 178
    .local v1, currentNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-static {v2, v1}, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->getNextBestGranularity(Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    move-result-object v3

    .line 181
    .local v3, supportedAtNode:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;
    iget-object v6, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mArguments:Landroid/os/Bundle;

    const-string v7, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    .line 182
    iget v8, v3, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->id:I

    .line 181
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    sget-object v6, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->DEFAULT:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    if-eq v3, v6, :cond_5

    .line 185
    iget-object v6, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v1, p2, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->performAction(ILandroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 191
    :cond_5
    sparse-switch p2, :sswitch_data_1

    .line 200
    :goto_2
    const/4 v6, 0x2

    const-string v7, "Failed to move with granularity %s, trying next node"

    new-array v8, v4, [Ljava/lang/Object;

    .line 201
    invoke-virtual {v3}, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 200
    invoke-static {p0, v6, v7, v8}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 193
    :sswitch_2
    iget v6, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mCurrentNodeIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mCurrentNodeIndex:I

    goto :goto_2

    .line 196
    :sswitch_3
    iget v6, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mCurrentNodeIndex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager;->mCurrentNodeIndex:I

    goto :goto_2

    .line 163
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
    .end sparse-switch

    .line 191
    :sswitch_data_1
    .sparse-switch
        0x100 -> :sswitch_2
        0x200 -> :sswitch_3
    .end sparse-switch
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/CursorGranularityManager;->clearCurrentNode()V

    .line 140
    return-void
.end method
