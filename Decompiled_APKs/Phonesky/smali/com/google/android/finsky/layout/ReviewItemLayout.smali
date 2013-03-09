.class public Lcom/google/android/finsky/layout/ReviewItemLayout;
.super Landroid/widget/LinearLayout;
.source "ReviewItemLayout.java"


# instance fields
.field private mBody:Landroid/widget/TextView;

.field private mHeader:Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;

.field private mMetadata:Landroid/widget/TextView;

.field private mProfilePicture:Lcom/google/android/finsky/layout/FifeImageView;

.field private mRatingImage:Landroid/view/View;

.field private mRatingSeparator:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method private getReviewExtraInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;)Ljava/lang/String;
    .locals 12
    .parameter "doc"
    .parameter "review"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 106
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_1

    move-object v2, v9

    .line 129
    :cond_0
    :goto_0
    return-object v2

    .line 109
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDocumentVersion()Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, version:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, deviceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    move v4, v7

    .line 112
    .local v4, hasVersion:Z
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    move v3, v7

    .line 114
    .local v3, hasDeviceName:Z
    :goto_2
    if-nez v4, :cond_4

    .line 115
    if-nez v3, :cond_0

    move-object v2, v9

    goto :goto_0

    .end local v3           #hasDeviceName:Z
    .end local v4           #hasVersion:Z
    :cond_2
    move v4, v8

    .line 111
    goto :goto_1

    .restart local v4       #hasVersion:Z
    :cond_3
    move v3, v8

    .line 112
    goto :goto_2

    .line 118
    .restart local v3       #hasDeviceName:Z
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 120
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionString()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v5, v7

    .line 123
    .local v5, isCurrentVersion:Z
    :goto_3
    if-eqz v5, :cond_6

    .line 125
    if-nez v3, :cond_0

    move-object v2, v9

    goto :goto_0

    .end local v5           #isCurrentVersion:Z
    :cond_5
    move v5, v8

    .line 120
    goto :goto_3

    .line 128
    .restart local v5       #isCurrentVersion:Z
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 129
    .local v1, context:Landroid/content/Context;
    if-eqz v3, :cond_7

    const v9, 0x7f070167

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-virtual {v1, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_4
    move-object v2, v7

    goto :goto_0

    :cond_7
    const v7, 0x7f070168

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 59
    const v0, 0x7f0801ff

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mTitle:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f080200

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mHeader:Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;

    .line 61
    const v0, 0x7f080208

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mBody:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f080207

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mMetadata:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0801fc

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingImage:Landroid/view/View;

    .line 65
    const v0, 0x7f0801fd

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingSeparator:Landroid/view/View;

    .line 66
    const v0, 0x7f0801f0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mProfilePicture:Lcom/google/android/finsky/layout/FifeImageView;

    .line 67
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 140
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 143
    iget-object v1, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingSeparator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 145
    .local v0, ratingSeparatorTop:I
    iget-object v1, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingSeparator:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingSeparator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingSeparator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingSeparator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 147
    return-void
.end method

.method public setRateReviewClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingImage:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method public setReviewInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;)V
    .locals 9
    .parameter "doc"
    .parameter "review"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 70
    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, title:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 73
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :goto_0
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mHeader:Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;

    invoke-virtual {v7, p2}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->setReviewInfo(Lcom/google/android/finsky/remoting/protos/Rev$Review;)V

    .line 81
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mBody:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getComment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v0, 0x1

    .line 84
    .local v0, canRateReview:Z
    :goto_1
    if-eqz v0, :cond_2

    move v3, v5

    .line 85
    .local v3, ratingVisibility:I
    :goto_2
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingImage:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingSeparator:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/ReviewItemLayout;->getReviewExtraInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, extraInfo:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 90
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mMetadata:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    :goto_3
    const/4 v2, 0x0

    check-cast v2, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    .line 97
    .local v2, profile:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    if-eqz v2, :cond_4

    .line 98
    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mProfilePicture:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->getProfileImage()Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v7

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 99
    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mProfilePicture:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v6, v5}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    .line 103
    :goto_4
    return-void

    .line 76
    .end local v0           #canRateReview:Z
    .end local v1           #extraInfo:Ljava/lang/String;
    .end local v2           #profile:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    .end local v3           #ratingVisibility:I
    :cond_0
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v5

    .line 83
    goto :goto_1

    .restart local v0       #canRateReview:Z
    :cond_2
    move v3, v6

    .line 84
    goto :goto_2

    .line 92
    .restart local v1       #extraInfo:Ljava/lang/String;
    .restart local v3       #ratingVisibility:I
    :cond_3
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mMetadata:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mMetadata:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 101
    .restart local v2       #profile:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    :cond_4
    iget-object v5, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mProfilePicture:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    goto :goto_4
.end method
