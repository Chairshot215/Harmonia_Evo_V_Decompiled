.class Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;
.super Ljava/lang/Object;
.source "HtcListViewCore2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcListViewCore2;
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

    .prologue
    .line 3953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcListViewCore2$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3953
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountToScroll()I
    .locals 1

    .prologue
    .line 3971
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;->mAmountToScroll:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 3967
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;->mSelectedPosition:I

    return v0
.end method

.method populate(II)V
    .locals 0
    .parameter "selectedPosition"
    .parameter "amountToScroll"

    .prologue
    .line 3962
    iput p1, p0, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;->mSelectedPosition:I

    .line 3963
    iput p2, p0, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;->mAmountToScroll:I

    .line 3964
    return-void
.end method
