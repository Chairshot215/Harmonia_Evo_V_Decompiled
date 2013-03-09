.class public Landroid/view/FocusFinder;
.super Ljava/lang/Object;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FocusFinder$SequentialFocusComparator;
    }
.end annotation


# static fields
.field private static tlFocusFinder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/FocusFinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBestCandidateRect:Landroid/graphics/Rect;

.field mFocusedRect:Landroid/graphics/Rect;

.field mOtherRect:Landroid/graphics/Rect;

.field mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/FocusFinder$1;

    invoke-direct {v0}, Landroid/view/FocusFinder$1;-><init>()V

    sput-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/FocusFinder$SequentialFocusComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/FocusFinder$SequentialFocusComparator;-><init>(Landroid/view/FocusFinder$1;)V

    iput-object v0, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/FocusFinder$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/FocusFinder;-><init>()V

    return-void
.end method

.method private findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_0
    return-object v7

    :cond_0
    const/4 v8, 0x2

    if-eq p4, v8, :cond_1

    const/4 v8, 0x1

    if-ne p4, v8, :cond_5

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :try_start_0
    iget-object v8, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-virtual {v8, p1}, Landroid/view/FocusFinder$SequentialFocusComparator;->setRoot(Landroid/view/ViewGroup;)V

    iget-object v8, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-static {v3, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v8, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-virtual {v8}, Landroid/view/FocusFinder$SequentialFocusComparator;->recycle()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p2, :cond_4

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-lez v6, :cond_4

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_0

    :catchall_0
    move-exception v7

    iget-object v8, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-virtual {v8}, Landroid/view/FocusFinder$SequentialFocusComparator;->recycle()V

    throw v7

    :pswitch_1
    if-eqz p2, :cond_3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_3

    add-int/lit8 v7, v6, 0x1

    if-ge v7, v1, :cond_3

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_0

    :cond_5
    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sparse-switch p4, :sswitch_data_0

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_8

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eq v2, p2, :cond_6

    if-ne v2, p1, :cond_7

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :sswitch_0
    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :sswitch_1
    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    neg-int v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :sswitch_2
    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :sswitch_3
    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    neg-int v8, v8

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_7
    iget-object v7, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v7, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p4, p3, v7, v8}, Landroid/view/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v0, v2

    goto :goto_3

    :cond_8
    move-object v7, v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getInstance()Landroid/view/FocusFinder;
    .locals 1

    sget-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/FocusFinder;

    return-object v0
.end method

.method private isTouchCandidate(IILandroid/graphics/Rect;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p4, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-lt v2, p1, :cond_2

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_2

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-le p2, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_2
    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_3

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_3

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-le p1, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :sswitch_3
    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-lt v2, p2, :cond_4

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_4

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-le p1, v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :sswitch_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0

    :sswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_0

    :sswitch_3
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :sswitch_1
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0

    :sswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    goto :goto_0

    :sswitch_3
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method static minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :goto_0
    return v0

    :sswitch_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x11

    if-eq p1, v4, :cond_1

    const/16 v4, 0x42

    if-eq p1, v4, :cond_1

    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v5

    if-lt v4, v5, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_2

    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTouchables()Ljava/util/ArrayList;

    move-result-object v12

    const v8, 0x7fffffff

    const/4 v3, 0x0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v6

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_3

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v13, v14}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {p0, v0, v1, v11, v2}, Landroid/view/FocusFinder;->isTouchCandidate(IILandroid/graphics/Rect;I)Z

    move-result v13

    if-nez v13, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const v5, 0x7fffffff

    sparse-switch p4, :sswitch_data_0

    :goto_2
    if-ge v5, v6, :cond_0

    if-eqz v3, :cond_2

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v11, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_0

    if-ge v5, v8, :cond_0

    :cond_2
    move v8, v5

    move-object v3, v10

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sparse-switch p4, :sswitch_data_1

    goto :goto_1

    :sswitch_0
    const/4 v13, 0x0

    neg-int v14, v5

    aput v14, p5, v13

    goto :goto_1

    :sswitch_1
    iget v13, v11, Landroid/graphics/Rect;->right:I

    sub-int v13, p2, v13

    add-int/lit8 v5, v13, 0x1

    goto :goto_2

    :sswitch_2
    iget v5, v11, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :sswitch_3
    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v13, p3, v13

    add-int/lit8 v5, v13, 0x1

    goto :goto_2

    :sswitch_4
    iget v5, v11, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :sswitch_5
    const/4 v13, 0x0

    aput v5, p5, v13

    goto :goto_1

    :sswitch_6
    const/4 v13, 0x1

    neg-int v14, v5

    aput v14, p5, v13

    goto :goto_1

    :sswitch_7
    const/4 v13, 0x1

    aput v5, p5, v13

    goto :goto_1

    :cond_3
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x21 -> :sswitch_3
        0x42 -> :sswitch_2
        0x82 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_6
        0x42 -> :sswitch_5
        0x82 -> :sswitch_7
    .end sparse-switch
.end method

.method public final findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 7

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_1
    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v5, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_2
    sparse-switch p3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int v0, v5, v6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    add-int v2, v5, v6

    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v3, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_0
        0x21 -> :sswitch_0
        0x42 -> :sswitch_1
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getWeightedDistanceFor(II)I
    .locals 2

    mul-int/lit8 v0, p1, 0xd

    mul-int/2addr v0, p1

    mul-int v1, p2, p2

    add-int/2addr v0, v1

    return v0
.end method

.method isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p2, p4, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/view/FocusFinder;->getWeightedDistanceFor(II)I

    move-result v2

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/FocusFinder;->getWeightedDistanceFor(II)I

    move-result v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p3, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_2

    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_3

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_4

    :cond_3
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    :sswitch_2
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_5

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_6

    :cond_5
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_1

    :cond_6
    move v0, v1

    goto :goto_0

    :sswitch_3
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_7

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_8

    :cond_7
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_1

    :cond_8
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_3
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method
