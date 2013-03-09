.class public Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;
.super Landroid/widget/LinearLayout;
.source "ReviewItemHeaderLayout.java"


# instance fields
.field private mAuthor:Landroid/widget/TextView;

.field private mDate:Landroid/widget/TextView;

.field private mEdited:Landroid/widget/TextView;

.field private mRating:Landroid/widget/RatingBar;

.field private mSource:Landroid/widget/TextView;

.field private mSourceSection:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 53
    const v0, 0x7f080201

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    .line 54
    const v0, 0x7f080202

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    .line 55
    const v0, 0x7f080203

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mAuthor:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f080204

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSource:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f080205

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f080206

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    .line 59
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingTop()I

    move-result v8

    .line 165
    .local v8, top:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingBottom()I

    move-result v0

    .line 166
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getHeight()I

    move-result v9

    sub-int/2addr v9, v8

    sub-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 167
    .local v4, middleY:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingLeft()I

    move-result v3

    .line 169
    .local v3, left:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_0

    .line 170
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v6, v4, v9

    .line 171
    .local v6, ratingTop:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v10}, Landroid/widget/RatingBar;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v3

    iget-object v11, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v11}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v9, v3, v6, v10, v11}, Landroid/widget/RatingBar;->layout(IIII)V

    .line 174
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 176
    .local v5, ratingLp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getMeasuredWidth()I

    move-result v9

    iget v10, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    add-int/2addr v3, v9

    .line 179
    .end local v5           #ratingLp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v6           #ratingTop:I
    :cond_0
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v7, v4, v9

    .line 180
    .local v7, sourceTop:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v3

    iget-object v11, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v9, v3, v7, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 182
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    .line 184
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v1, v4, v9

    .line 185
    .local v1, dateTop:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v3

    iget-object v11, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v1

    invoke-virtual {v9, v3, v1, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 187
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    .line 189
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_1

    .line 190
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v1

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    sub-int v2, v9, v10

    .line 191
    .local v2, editedTop:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v3

    iget-object v11, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v2

    invoke-virtual {v9, v3, v2, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 194
    .end local v2           #editedTop:I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/16 v11, 0x8

    const/4 v12, 0x0

    .line 119
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 121
    .local v4, paddedWidth:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 122
    .local v8, widthSpecMode:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingLeft()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingRight()I

    move-result v10

    sub-int v3, v9, v10

    .line 126
    .local v3, nonpaddedWidth:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v9, v12, v12}, Landroid/view/View;->measure(II)V

    .line 127
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 129
    .local v7, sourceWidth:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v9, v12, v12}, Landroid/widget/TextView;->measure(II)V

    .line 130
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 132
    .local v1, dateWidth:I
    const/4 v6, 0x0

    .line 133
    .local v6, ratingWidth:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getVisibility()I

    move-result v9

    if-eq v9, v11, :cond_0

    .line 134
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9, v12, v12}, Landroid/widget/RatingBar;->measure(II)V

    .line 135
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 137
    .local v5, ratingLp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getMeasuredWidth()I

    move-result v9

    iget v10, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v6, v9, v10

    .line 140
    .end local v5           #ratingLp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const/4 v2, 0x0

    .line 141
    .local v2, editedWidth:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v9

    if-eq v9, v11, :cond_1

    .line 142
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v9, v12, v12}, Landroid/widget/TextView;->measure(II)V

    .line 143
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    .line 146
    :cond_1
    add-int v9, v6, v7

    add-int/2addr v9, v1

    add-int v0, v9, v2

    .line 150
    .local v0, combinedWidth:I
    if-eqz v8, :cond_2

    if-le v0, v3, :cond_2

    .line 151
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    sub-int v10, v3, v1

    sub-int/2addr v10, v6

    sub-int/2addr v10, v2

    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v9, v10, v12}, Landroid/view/View;->measure(II)V

    .line 156
    :cond_2
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    iget-object v11, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v11}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {p0, v4, v9}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->setMeasuredDimension(II)V

    .line 160
    return-void
.end method

.method public setReviewInfo(Lcom/google/android/finsky/remoting/protos/Rev$Review;)V
    .locals 13
    .parameter "review"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 62
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, authorName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSource()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, reviewSource:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, sourceUrl:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 70
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mAuthor:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mAuthor:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 79
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSource:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSource:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSource:Landroid/widget/TextView;

    new-instance v8, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout$1;

    invoke-direct {v8, p0, v6}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout$1;-><init>(Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 93
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v7, v11}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 94
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/RatingBar;->setRating(F)V

    .line 99
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 100
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    new-instance v8, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTimestampMsec()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-static {v8}, Lcom/google/android/finsky/utils/DateUtils;->formatShortDisplayDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :goto_3
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyText()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyTimestampMsec()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTimestampMsec()J

    move-result-wide v4

    .line 110
    .local v4, reviewTimestamp:J
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getReplyTimestampMsec()J

    move-result-wide v1

    .line 111
    .local v1, developerReplyTimestamp:J
    cmp-long v7, v4, v1

    if-lez v7, :cond_0

    .line 112
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    .end local v1           #developerReplyTimestamp:J
    .end local v4           #reviewTimestamp:J
    :cond_0
    return-void

    .line 73
    :cond_1
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mAuthor:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSource:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 96
    :cond_3
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v7, v12}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_2

    .line 103
    :cond_4
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method
