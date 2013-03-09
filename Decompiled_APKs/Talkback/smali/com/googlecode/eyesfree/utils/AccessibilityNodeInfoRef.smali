.class public Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoRef.java"


# instance fields
.field private mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

.field private mOwned:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method private constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Z)V
    .locals 0
    .parameter "node"
    .parameter "owned"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 146
    iput-boolean p2, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mOwned:Z

    .line 147
    return-void
.end method

.method private getChildNumber(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)I
    .locals 5
    .parameter "parent"

    .prologue
    .line 296
    const/4 v3, -0x1

    .line 297
    .local v3, ret:I
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v1

    .line 298
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    if-ltz v3, :cond_1

    .line 307
    :cond_0
    return v3

    .line 299
    :cond_1
    invoke-virtual {p1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 300
    .local v0, child:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 301
    move v3, v2

    .line 303
    :cond_2
    if-eqz v0, :cond_3

    .line 304
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 298
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isNull(Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;)Z
    .locals 1
    .parameter "ref"

    .prologue
    .line 140
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->get()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;
    .locals 3
    .parameter "node"

    .prologue
    .line 92
    new-instance v0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;

    .line 93
    invoke-static {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    const/4 v2, 0x1

    .line 92
    invoke-direct {v0, v1, v2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;-><init>(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Z)V

    return-object v0
.end method

.method public static owned(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;
    .locals 2
    .parameter "node"

    .prologue
    .line 110
    if-eqz p0, :cond_0

    new-instance v0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;-><init>(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Z)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static refreshed(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;
    .locals 1
    .parameter "node"

    .prologue
    .line 120
    invoke-static {p0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->refreshNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->owned(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;

    move-result-object v0

    return-object v0
.end method

.method public static unOwned(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;
    .locals 2
    .parameter "node"

    .prologue
    .line 102
    if-eqz p0, :cond_0

    new-instance v0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;-><init>(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Z)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->reset(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 61
    return-void
.end method

.method public firstChild()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 220
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    if-nez v4, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v3

    .line 223
    :cond_1
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v0

    .line 224
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 225
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v4, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    .line 226
    .local v2, newNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-eqz v2, :cond_0

    .line 229
    invoke-static {v2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isVisibleOrLegacy(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    invoke-virtual {p0, v2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->reset(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 231
    const/4 v3, 0x1

    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public get()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    return-object v0
.end method

.method public lastChild()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v4

    if-ge v4, v3, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v2

    .line 170
    :cond_1
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 171
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 172
    .local v1, newNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-eqz v1, :cond_0

    .line 175
    invoke-static {v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isVisibleOrLegacy(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    invoke-virtual {p0, v1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->reset(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    move v2, v3

    .line 177
    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 170
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public lastDescendant()Z
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->lastChild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 360
    :goto_0
    return v0

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->lastChild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public makeOwned()Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mOwned:Z

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->reset(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 132
    :cond_0
    return-object p0
.end method

.method public nextInOrder()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 315
    iget-object v3, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    if-nez v3, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v1

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->firstChild()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 319
    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {p0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->nextSibling()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 322
    goto :goto_0

    .line 324
    :cond_3
    iget-object v3, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-static {v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->unOwned(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;

    move-result-object v0

    .line 325
    .local v0, tmp:Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;
    :cond_4
    invoke-virtual {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->parent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->nextSibling()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 327
    invoke-virtual {p0, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->reset(Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;)V

    move v1, v2

    .line 328
    goto :goto_0
.end method

.method public nextSibling()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 243
    iget-object v6, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    if-nez v6, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v5

    .line 246
    :cond_1
    iget-object v6, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getParent()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v4

    .line 247
    .local v4, parent:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-eqz v4, :cond_0

    .line 251
    :try_start_0
    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v0

    .line 252
    .local v0, childCount:I
    invoke-direct {p0, v4}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->getChildNumber(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 253
    .local v1, childNumber:I
    if-gez v1, :cond_2

    .line 269
    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    .line 256
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .local v2, i:I
    :goto_1
    if-lt v2, v0, :cond_3

    .line 269
    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    .line 258
    :cond_3
    :try_start_1
    invoke-virtual {v4, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 259
    .local v3, newNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-nez v3, :cond_4

    .line 269
    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    .line 262
    :cond_4
    :try_start_2
    invoke-static {v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isVisibleOrLegacy(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 263
    invoke-virtual {p0, v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->reset(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 264
    const/4 v5, 0x1

    goto :goto_0

    .line 266
    :cond_5
    :try_start_3
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 268
    .end local v0           #childCount:I
    .end local v1           #childNumber:I
    .end local v2           #i:I
    .end local v3           #newNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :catchall_0
    move-exception v5

    .line 269
    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 270
    throw v5
.end method

.method public parent()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 279
    iget-object v3, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    if-nez v3, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v2

    .line 282
    :cond_1
    iget-object v3, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getParent()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 283
    .local v0, parentNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_1
    if-eqz v0, :cond_0

    .line 284
    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isVisibleOrLegacy(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 285
    invoke-virtual {p0, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->reset(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 286
    const/4 v2, 0x1

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getParent()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 289
    .local v1, tmp:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 290
    move-object v0, v1

    goto :goto_1
.end method

.method public previousInOrder()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    if-nez v0, :cond_0

    .line 340
    const/4 v0, 0x0

    .line 346
    :goto_0
    return v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->previousSibling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->lastDescendant()Z

    .line 344
    const/4 v0, 0x1

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->parent()Z

    move-result v0

    goto :goto_0
.end method

.method public previousSibling()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 189
    iget-object v5, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    if-nez v5, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v4

    .line 192
    :cond_1
    iget-object v5, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getParent()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    .line 193
    .local v3, parent:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-eqz v3, :cond_0

    .line 197
    :try_start_0
    invoke-direct {p0, v3}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->getChildNumber(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 198
    .local v0, childNumber:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_1
    if-gez v1, :cond_2

    .line 210
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    .line 199
    :cond_2
    :try_start_1
    invoke-virtual {v3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 200
    .local v2, newNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-nez v2, :cond_3

    .line 210
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    .line 203
    :cond_3
    :try_start_2
    invoke-static {v2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isVisibleOrLegacy(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 204
    invoke-virtual {p0, v2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->reset(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 205
    const/4 v4, 0x1

    goto :goto_0

    .line 207
    :cond_4
    :try_start_3
    invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 209
    .end local v0           #childNumber:I
    .end local v1           #i:I
    .end local v2           #newNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :catchall_0
    move-exception v4

    .line 210
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 211
    throw v4
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->clear()V

    .line 54
    return-void
.end method

.method public release()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mOwned:Z

    .line 159
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    return-object v0
.end method

.method public reset(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .parameter "newNode"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mOwned:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mNode:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mOwned:Z

    .line 73
    return-void
.end method

.method public reset(Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;)V
    .locals 1
    .parameter "newNode"

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->get()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->reset(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 82
    iget-boolean v0, p1, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mOwned:Z

    iput-boolean v0, p0, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mOwned:Z

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoRef;->mOwned:Z

    .line 84
    return-void
.end method
