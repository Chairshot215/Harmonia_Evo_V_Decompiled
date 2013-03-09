.class Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;
.super Ljava/lang/Object;
.source "HtcListViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcListViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrowScrollFocusResult"
.end annotation


# instance fields
.field private mAmountToScroll:I

.field private mSelectedPosition:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcListViewCore$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountToScroll()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;->mAmountToScroll:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;->mSelectedPosition:I

    return v0
.end method

.method populate(II)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;->mSelectedPosition:I

    iput p2, p0, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;->mAmountToScroll:I

    return-void
.end method
