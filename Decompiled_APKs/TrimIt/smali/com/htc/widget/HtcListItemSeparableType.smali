.class public Lcom/htc/widget/HtcListItemSeparableType;
.super Ljava/lang/Object;
.source "HtcListItemSeparableType.java"


# instance fields
.field private bottomRound:Z

.field private topRound:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1
    .parameter "is_top_round"
    .parameter "is_bottom_round"

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparableType;->topRound:Z

    .line 9
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparableType;->bottomRound:Z

    .line 19
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItemSeparableType;->topRound:Z

    .line 20
    iput-boolean p2, p0, Lcom/htc/widget/HtcListItemSeparableType;->bottomRound:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getBottomRound()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparableType;->bottomRound:Z

    return v0
.end method

.method public getTopRound()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparableType;->topRound:Z

    return v0
.end method

.method public final setBottomRound(Z)V
    .locals 0
    .parameter "is_round"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItemSeparableType;->bottomRound:Z

    .line 48
    return-void
.end method

.method public final setTopRound(Z)V
    .locals 0
    .parameter "is_round"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItemSeparableType;->topRound:Z

    .line 30
    return-void
.end method
