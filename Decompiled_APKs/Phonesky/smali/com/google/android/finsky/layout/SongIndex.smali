.class public Lcom/google/android/finsky/layout/SongIndex;
.super Landroid/widget/FrameLayout;
.source "SongIndex.java"


# instance fields
.field private mProgressIndicator:Landroid/widget/ProgressBar;

.field private mSongIndexText:Landroid/widget/TextView;

.field private mState:I

.field private mStatusIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/layout/SongIndex;->mState:I

    .line 35
    return-void
.end method

.method private getStateDrawable(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 88
    packed-switch p1, :pswitch_data_0

    .line 97
    :pswitch_0
    const v0, 0x7f02009f

    :goto_0
    return v0

    .line 90
    :pswitch_1
    const v0, 0x7f02009e

    goto :goto_0

    .line 92
    :pswitch_2
    const v0, 0x7f0200a0

    goto :goto_0

    .line 94
    :pswitch_3
    const v0, 0x7f02002c

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateUiVisiblity(II)V
    .locals 1
    .parameter "state"
    .parameter "visibility"

    .prologue
    .line 71
    packed-switch p1, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongIndex;->mSongIndexText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongIndex;->mProgressIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongIndex;->mStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getBaseline()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongIndex;->mSongIndexText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 41
    const v0, 0x7f08014b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongIndex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongIndex;->mSongIndexText:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f08014c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongIndex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongIndex;->mStatusIndicator:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongIndex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongIndex;->mProgressIndicator:Landroid/widget/ProgressBar;

    .line 44
    return-void
.end method

.method public setState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/finsky/layout/SongIndex;->mState:I

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/layout/SongIndex;->updateUiVisiblity(II)V

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/SongIndex;->updateUiVisiblity(II)V

    .line 60
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongIndex;->mStatusIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/SongIndex;->getStateDrawable(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    iput p1, p0, Lcom/google/android/finsky/layout/SongIndex;->mState:I

    .line 64
    return-void
.end method

.method public setTrackNumber(I)V
    .locals 2
    .parameter "trackNumber"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongIndex;->mSongIndexText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method
