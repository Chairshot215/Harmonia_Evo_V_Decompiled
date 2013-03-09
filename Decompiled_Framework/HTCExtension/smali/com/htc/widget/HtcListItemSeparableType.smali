.class public Lcom/htc/widget/HtcListItemSeparableType;
.super Ljava/lang/Object;
.source "HtcListItemSeparableType.java"


# instance fields
.field private bottomRound:Z

.field private topRound:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparableType;->topRound:Z

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparableType;->bottomRound:Z

    iput-boolean p1, p0, Lcom/htc/widget/HtcListItemSeparableType;->topRound:Z

    iput-boolean p2, p0, Lcom/htc/widget/HtcListItemSeparableType;->bottomRound:Z

    return-void
.end method


# virtual methods
.method public getBottomRound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparableType;->bottomRound:Z

    return v0
.end method

.method public getTopRound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparableType;->topRound:Z

    return v0
.end method

.method public final setBottomRound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListItemSeparableType;->bottomRound:Z

    return-void
.end method

.method public final setTopRound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListItemSeparableType;->topRound:Z

    return-void
.end method
