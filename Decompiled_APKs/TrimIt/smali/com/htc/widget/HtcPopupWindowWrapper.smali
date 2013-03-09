.class public Lcom/htc/widget/HtcPopupWindowWrapper;
.super Ljava/lang/Object;
.source "HtcPopupWindowWrapper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mArchorView:Landroid/view/View;

.field private mDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

.field private mPopupAdapterExp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ExpandableListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

.field private mPopupMaxWidth:I

.field private mTaggleView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;-><init>(Landroid/view/View;Landroid/widget/ListAdapter;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "view"
    .parameter "adapter"

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 62
    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 65
    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 66
    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 67
    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 78
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setArchorView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0, p2}, Lcom/htc/widget/HtcPopupWindowWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    return-void
.end method

.method private getPopupExpWindow()Lcom/htc/widget/ExpandableListPopupBubbleWindow;
    .locals 3

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    .line 251
    const/4 v1, 0x0

    .line 256
    :goto_0
    return-object v1

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-nez v1, :cond_1

    .line 254
    new-instance v1, Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    goto :goto_0
.end method

.method private getPopupWindow()Lcom/htc/widget/ListPopupBubbleWindow;
    .locals 3

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    .line 240
    const/4 v1, 0x0

    .line 245
    :goto_0
    return-object v1

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-nez v1, :cond_1

    .line 243
    new-instance v1, Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    goto :goto_0
.end method

.method private measureContentWidth(Landroid/widget/Adapter;)I
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 443
    const/4 v6, 0x0

    .line 444
    .local v6, width:I
    const/4 v3, 0x0

    .line 445
    .local v3, itemType:I
    const/4 v4, 0x0

    .line 446
    .local v4, itemView:Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 448
    .local v7, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 450
    .local v1, heightMeasureSpec:I
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    .line 451
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 452
    invoke-interface {p1, v2}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v5

    .line 453
    .local v5, positionType:I
    if-eq v5, v3, :cond_0

    .line 454
    move v3, v5

    .line 455
    const/4 v4, 0x0

    .line 457
    :cond_0
    invoke-interface {p1, v2, v9, v9}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 458
    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    .line 459
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 451
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 461
    .end local v5           #positionType:I
    :cond_1
    return v6
.end method

.method private setArchorViewBackground(Z)Z
    .locals 7
    .parameter "bPressed"

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getTaggleView()Landroid/view/View;

    move-result-object v2

    .line 194
    .local v2, v:Landroid/view/View;
    if-nez v2, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v2

    .line 197
    :cond_0
    if-nez v2, :cond_1

    .line 217
    :goto_0
    return v3

    .line 200
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 201
    .local v0, paddingLeft:I
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 203
    .local v1, paddingRight:I
    invoke-virtual {v2, p1}, Landroid/view/View;->setPressed(Z)V

    .line 205
    if-eqz p1, :cond_2

    .line 206
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "common_titlebar_btn_press"

    const v6, 0x2080736

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 215
    :goto_1
    invoke-virtual {v2, v0, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 217
    const/4 v3, 0x1

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "common_titlebar_btn"

    const v6, 0x208072d

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private setOnGlobalLayoutListener(Z)Z
    .locals 3
    .parameter "bEnable"

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v2

    .line 177
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 179
    .local v1, vto:Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_0

    .line 182
    if-eqz p1, :cond_2

    .line 183
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 188
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method

.method private setPopupExpShow(Z)Z
    .locals 1
    .parameter "bShow"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 231
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismiss()V

    .line 233
    :cond_0
    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPopupShow(Z)Z
    .locals 1
    .parameter "bShow"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 222
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 224
    :cond_0
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showPopup()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 261
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcPopupWindowWrapper;->setPopupShow(Z)Z

    .line 266
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    move-object v0, v4

    .line 267
    .local v0, adapter:Landroid/widget/ListAdapter;
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v3

    .line 268
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_1

    move v4, v5

    .line 295
    :goto_1
    return v4

    .line 266
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #v:Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 271
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v3       #v:Landroid/view/View;
    :cond_1
    if-eqz v0, :cond_3

    .line 272
    invoke-direct {p0, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnGlobalLayoutListener(Z)Z

    .line 273
    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getPopupWindow()Lcom/htc/widget/ListPopupBubbleWindow;

    move-result-object v1

    .line 274
    .local v1, lpbw:Lcom/htc/widget/ListPopupBubbleWindow;
    if-eqz v1, :cond_2

    .line 275
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v4}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 276
    invoke-virtual {v1, v3}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 277
    invoke-virtual {v1, p0}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 278
    invoke-virtual {v1, v0}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 279
    invoke-virtual {v1, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setModal(Z)V

    .line 282
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 283
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupMaxWidth:I

    .line 284
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->measureContentWidth(Landroid/widget/Adapter;)I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupMaxWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    .line 285
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/htc/widget/ListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 287
    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 288
    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 289
    invoke-direct {p0, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setArchorViewBackground(Z)Z

    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_2
    move v4, v6

    .line 295
    goto :goto_1

    .end local v1           #lpbw:Lcom/htc/widget/ListPopupBubbleWindow;
    :cond_3
    move v4, v5

    .line 293
    goto :goto_1
.end method

.method private showPopupExp()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 300
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcPopupWindowWrapper;->setPopupExpShow(Z)Z

    .line 305
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ExpandableListAdapter;

    move-object v0, v4

    .line 306
    .local v0, adapterExp:Landroid/widget/ExpandableListAdapter;
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v3

    .line 308
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_1

    move v4, v5

    .line 337
    :goto_1
    return v4

    .line 305
    .end local v0           #adapterExp:Landroid/widget/ExpandableListAdapter;
    .end local v3           #v:Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    .restart local v0       #adapterExp:Landroid/widget/ExpandableListAdapter;
    .restart local v3       #v:Landroid/view/View;
    :cond_1
    if-eqz v0, :cond_3

    .line 312
    invoke-direct {p0, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnGlobalLayoutListener(Z)Z

    .line 314
    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getPopupExpWindow()Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    move-result-object v1

    .line 315
    .local v1, elpbw:Lcom/htc/widget/ExpandableListPopupBubbleWindow;
    if-eqz v1, :cond_2

    .line 316
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v1, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 317
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    invoke-virtual {v1, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 318
    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 320
    invoke-virtual {v1, v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 321
    invoke-virtual {v1, p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 322
    invoke-virtual {v1, v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 323
    invoke-virtual {v1, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setModal(Z)V

    .line 326
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 327
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupMaxWidth:I

    .line 328
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->measureContentWidth(Landroid/widget/ExpandableListAdapter;)I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupMaxWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setContentWidth(I)V

    .line 329
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 331
    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    .line 332
    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/ExpandableListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 335
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_2
    invoke-direct {p0, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setArchorViewBackground(Z)Z

    .end local v1           #elpbw:Lcom/htc/widget/ExpandableListPopupBubbleWindow;
    :cond_3
    move v4, v6

    .line 337
    goto :goto_1
.end method

.method private tryShow()Z
    .locals 3

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->showPopup()Z

    move-result v0

    .line 342
    .local v0, bShowPopup:Z
    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->showPopupExp()Z

    move-result v1

    .line 344
    .local v1, bShowPopupExp:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 371
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnGlobalLayoutListener(Z)Z

    .line 373
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->setPopupShow(Z)Z

    .line 374
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->setPopupExpShow(Z)Z

    .line 375
    return-void
.end method

.method public getArchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mArchorView:Landroid/view/View;

    return-object v0
.end method

.method public getTaggleView()Landroid/view/View;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mTaggleView:Landroid/view/View;

    return-object v0
.end method

.method public isPopupExpShowing()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureContentWidth(Landroid/widget/ExpandableListAdapter;)I
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 465
    const/4 v5, 0x0

    .line 466
    .local v5, width:I
    const/4 v3, 0x0

    .line 467
    .local v3, itemType:I
    const/4 v4, 0x0

    .line 468
    .local v4, itemView:Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 470
    .local v6, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 472
    .local v1, heightMeasureSpec:I
    invoke-interface {p1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 473
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 474
    invoke-interface {p1, v2, v8, v9, v9}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 475
    invoke-virtual {v4, v6, v1}, Landroid/view/View;->measure(II)V

    .line 476
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 473
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    :cond_0
    return v5
.end method

.method public onDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 355
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 357
    :cond_0
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 359
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnGlobalLayoutListener(Z)Z

    .line 360
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcPopupWindowWrapper;->setArchorViewBackground(Z)Z

    .line 362
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 364
    :cond_1
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 366
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v0}, Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    .line 368
    :cond_2
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->getArchorView()Landroid/view/View;

    move-result-object v0

    .line 387
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->isPopupShowing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->isPopupExpShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 391
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnGlobalLayoutListener(Z)Z

    goto :goto_0

    .line 393
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_3

    .line 394
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->dismiss()V

    goto :goto_0

    .line 396
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v1, :cond_4

    .line 397
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 399
    :cond_4
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 145
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 146
    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 148
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_3

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 157
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 161
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 163
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    .line 146
    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 122
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 123
    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 125
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_3

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismiss()V

    .line 134
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 137
    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 138
    iput-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 140
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    .line 123
    goto :goto_0
.end method

.method public setArchorView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mArchorView:Landroid/view/View;

    .line 88
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->clickListenerChd:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 425
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 427
    :cond_0
    return-void
.end method

.method public setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 351
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->clickListenerGrp:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 433
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 435
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 414
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mPopupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 419
    :cond_1
    return-void
.end method

.method public setTaggleView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper;->mTaggleView:Landroid/view/View;

    .line 104
    return-void
.end method

.method public showPopupWindow()V
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindowWrapper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    return-void
.end method
