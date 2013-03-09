.class public Lcom/htc/music/widget/MusicTextView;
.super Landroid/widget/TextView;
.source "MusicTextView.java"


# instance fields
.field private mAnimeOffsetX:I

.field private mAnimeOffsetY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetX:I

    iput v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetX:I

    iput v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetX:I

    iput v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetY:I

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    iget v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetX:I

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicTextView;->offsetLeftAndRight(I)V

    iget v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetY:I

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicTextView;->offsetTopAndBottom(I)V

    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    iget v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetX:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicTextView;->offsetLeftAndRight(I)V

    iget v0, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetY:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicTextView;->offsetTopAndBottom(I)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->scrollTo(II)V

    return-void
.end method

.method public setAnimationOffset(II)V
    .locals 0

    iput p1, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetX:I

    iput p2, p0, Lcom/htc/music/widget/MusicTextView;->mAnimeOffsetY:I

    return-void
.end method
