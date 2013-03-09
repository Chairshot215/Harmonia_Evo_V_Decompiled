.class public Lcom/google/android/finsky/layout/DetailsSummaryByline;
.super Lcom/google/android/finsky/layout/AccessibleLinearLayout;
.source "DetailsSummaryByline.java"


# static fields
.field private static final NUMBER_FORMATTER:Ljava/text/NumberFormat;

.field private static final RATING_FORMATTER:Ljava/text/DecimalFormat;


# instance fields
.field private mFirstRow:Landroid/widget/LinearLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSecondRow:Landroid/widget/LinearLayout;

.field private mSingleColumnMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->NUMBER_FORMATTER:Ljava/text/NumberFormat;

    .line 42
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->RATING_FORMATTER:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/AccessibleLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSingleColumnMode:Z

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private configureContentDescription(Lcom/google/android/finsky/api/model/Document;)V
    .locals 18
    .parameter "document"

    .prologue
    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v8

    .line 96
    .local v8, ratingCount:J
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 97
    sget-object v11, Lcom/google/android/finsky/layout/DetailsSummaryByline;->RATING_FORMATTER:Ljava/text/DecimalFormat;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v12

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, averageRating:Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    .line 103
    .local v3, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    if-eqz v3, :cond_4

    .line 104
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasNumDownloads()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getNumDownloads()Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, downloadCount:Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0701e5

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    const/4 v14, 0x2

    aput-object v6, v13, v14

    const/4 v14, 0x3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getUploadDate()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getInstallationSize()J

    move-result-wide v16

    invoke-static/range {v15 .. v17}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    .end local v6           #downloadCount:Ljava/lang/String;
    :cond_0
    :goto_3
    return-void

    .line 94
    .end local v3           #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .end local v4           #averageRating:Ljava/lang/String;
    .end local v8           #ratingCount:J
    :cond_1
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 99
    .restart local v8       #ratingCount:J
    :cond_2
    const-string v4, "0"

    .restart local v4       #averageRating:Ljava/lang/String;
    goto :goto_1

    .line 104
    .restart local v3       #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    :cond_3
    const-string v6, "0"

    goto :goto_2

    .line 113
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v5

    .line 114
    .local v5, bookDetails:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    if-eqz v5, :cond_5

    .line 115
    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublicationDate()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublisher()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasNumberOfPages()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 118
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0701e6

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    const/4 v14, 0x2

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublisher()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublicationDate()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/finsky/utils/DateUtils;->formatIso8601Date(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getNumberOfPages()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 124
    :catch_0
    move-exception v11

    goto :goto_3

    .line 129
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v10

    .line 130
    .local v10, videoDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    if-eqz v10, :cond_7

    .line 131
    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasReleaseDate()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDuration()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0701e7

    const/4 v11, 0x5

    new-array v14, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v11

    const/4 v11, 0x1

    aput-object v4, v14, v11

    const/4 v15, 0x2

    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasContentRating()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getContentRating()Ljava/lang/String;

    move-result-object v11

    :goto_4
    aput-object v11, v14, v15

    const/4 v11, 0x3

    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v11

    const/4 v11, 0x4

    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getDuration()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v11

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v11

    const v16, 0x7f07011a

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 143
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v1

    .line 144
    .local v1, albumDetailWrapper:Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    if-eqz v1, :cond_8

    .line 145
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v2

    .line 146
    .local v2, albumDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasOriginalReleaseDate()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasLabel()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getLabel()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getGenreCount()I

    move-result v11

    if-lez v11, :cond_0

    .line 150
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0701e8

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getLabel()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getOriginalReleaseDate()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/finsky/utils/DateUtils;->formatIso8601Date(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string v15, ", "

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getGenreList()Ljava/util/List;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 155
    :catch_1
    move-exception v11

    goto/16 :goto_3

    .line 160
    .end local v2           #albumDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getMagazineDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    move-result-object v7

    .line 161
    .local v7, magazineDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    if-eqz v7, :cond_0

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0701e9

    const/4 v11, 0x4

    new-array v14, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v11

    const/4 v11, 0x1

    aput-object v4, v14, v11

    const/4 v15, 0x2

    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeliveryFrequencyDescription()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getDeliveryFrequencyDescription()Ljava/lang/String;

    move-result-object v11

    :goto_5
    aput-object v11, v14, v15

    const/4 v15, 0x3

    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasPsvDescription()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getPsvDescription()Ljava/lang/String;

    move-result-object v11

    :goto_6
    aput-object v11, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    const-string v11, ""

    goto :goto_5

    :cond_a
    const-string v11, ""

    goto :goto_6
.end method

.method private configureItemTextInfo(Lcom/google/android/finsky/api/model/Document;)V
    .locals 1
    .parameter "doc"

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_0
    :pswitch_0
    return-void

    .line 175
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureAppDetailsByline(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0

    .line 178
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureBookDetailsByline(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0

    .line 181
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureMovieDetailsByline(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0

    .line 184
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureAlbumDetailsByline(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0

    .line 187
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureMagazineDetailsByline(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private configureRating(Lcom/google/android/finsky/api/model/Document;)V
    .locals 9
    .parameter "document"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 77
    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040056

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 79
    .local v2, ratingView:Landroid/view/View;
    const v3, 0x7f0800c5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    .line 80
    .local v0, ratingBar:Landroid/widget/RatingBar;
    const v3, 0x7f0800c6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    .local v1, ratingCount:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 82
    invoke-virtual {v0, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 83
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 85
    sget-object v3, Lcom/google/android/finsky/layout/DetailsSummaryByline;->NUMBER_FORMATTER:Ljava/text/NumberFormat;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    return-void

    .line 87
    :cond_0
    invoke-virtual {v0, v8}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 88
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected configureAlbumDetailsByline(Lcom/google/android/finsky/api/model/Document;)V
    .locals 17
    .parameter "doc"

    .prologue
    .line 339
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v1

    .line 340
    .local v1, albumDetailWrapper:Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    if-eqz v1, :cond_3

    .line 341
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v2

    .line 342
    .local v2, albumDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    const/4 v9, 0x0

    .line 344
    .local v9, hasInfo:Z
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasOriginalReleaseDate()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 346
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getOriginalReleaseDate()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/finsky/utils/DateUtils;->formatIso8601Date(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, dateText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 351
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f040058

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 353
    .local v10, releaseDateView:Landroid/widget/TextView;
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    const/4 v9, 0x1

    .line 362
    .end local v5           #dateText:Ljava/lang/String;
    .end local v10           #releaseDateView:Landroid/widget/TextView;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasLabel()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getLabel()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 365
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasReleaseDate()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x4

    if-lt v12, v13, :cond_4

    .line 366
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 367
    .local v11, year:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f070252

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getLabel()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 374
    .end local v11           #year:Ljava/lang/String;
    .local v3, copyrightText:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f040058

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 376
    .local v4, copyrightView:Landroid/widget/TextView;
    const/16 v12, 0x15

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 377
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    const/4 v9, 0x1

    .line 383
    .end local v3           #copyrightText:Ljava/lang/String;
    .end local v4           #copyrightView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getGenreCount()I

    move-result v12

    if-lez v12, :cond_2

    .line 384
    const-string v12, ", "

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getGenreList()Ljava/util/List;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 385
    .local v7, genres:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f040058

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 387
    .local v8, genresView:Landroid/widget/TextView;
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 390
    const/4 v9, 0x1

    .line 394
    .end local v7           #genres:Ljava/lang/String;
    .end local v8           #genresView:Landroid/widget/TextView;
    :cond_2
    if-nez v9, :cond_3

    .line 395
    const/16 v12, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setVisibility(I)V

    .line 398
    .end local v2           #albumDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .end local v9           #hasInfo:Z
    :cond_3
    return-void

    .line 356
    .restart local v2       #albumDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .restart local v9       #hasInfo:Z
    :catch_0
    move-exception v6

    .line 357
    .local v6, e:Ljava/text/ParseException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot parse ISO 8601 date "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 371
    .end local v6           #e:Ljava/text/ParseException;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f070251

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getLabel()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #copyrightText:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method protected configureAppDetailsByline(Lcom/google/android/finsky/api/model/Document;)V
    .locals 15
    .parameter "doc"

    .prologue
    .line 193
    const-string v9, ""

    .line 194
    .local v9, uploadDate:Ljava/lang/String;
    const-string v7, ""

    .line 195
    .local v7, numDownloads:Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 197
    .local v4, installationSize:J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 198
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasUploadDate()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getUploadDate()Ljava/lang/String;

    move-result-object v9

    .line 203
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasNumDownloads()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f070117

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getNumDownloads()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 208
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasInstallationSize()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 209
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getInstallationSize()J

    move-result-wide v4

    .line 215
    :cond_2
    iget-object v10, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f040058

    iget-object v12, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 217
    .local v1, dateView:Landroid/widget/TextView;
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-boolean v10, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSingleColumnMode:Z

    if-eqz v10, :cond_3

    .line 219
    const/16 v10, 0x15

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 221
    :cond_3
    iget-object v10, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    iget-object v10, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f040058

    iget-object v12, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 226
    .local v6, numDownloadView:Landroid/widget/TextView;
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v10, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    iget-boolean v10, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSingleColumnMode:Z

    if-eqz v10, :cond_4

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    .line 231
    .local v3, host:Landroid/widget/LinearLayout;
    :goto_0
    iget-object v10, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f040058

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v3, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 233
    .local v2, downloadSizeView:Landroid/widget/TextView;
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gtz v10, :cond_5

    const-string v8, ""

    .line 235
    .local v8, sizeText:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    const/16 v10, 0x15

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 237
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    return-void

    .line 230
    .end local v2           #downloadSizeView:Landroid/widget/TextView;
    .end local v3           #host:Landroid/widget/LinearLayout;
    .end local v8           #sizeText:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 233
    .restart local v2       #downloadSizeView:Landroid/widget/TextView;
    .restart local v3       #host:Landroid/widget/LinearLayout;
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method protected configureBookDetailsByline(Lcom/google/android/finsky/api/model/Document;)V
    .locals 11
    .parameter "doc"

    .prologue
    const/16 v9, 0x15

    const v8, 0x7f040058

    const/4 v10, 0x0

    .line 241
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v0

    .line 242
    .local v0, bookDetails:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    if-eqz v0, :cond_3

    .line 244
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublisher()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 245
    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 247
    .local v5, publisherView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublisher()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    .end local v5           #publisherView:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasNumberOfPages()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 253
    iget-boolean v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSingleColumnMode:Z

    if-eqz v6, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    .line 254
    .local v2, host:Landroid/widget/LinearLayout;
    :goto_0
    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v8, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 256
    .local v3, pageCountView:Landroid/widget/TextView;
    iget-boolean v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSingleColumnMode:Z

    if-eqz v6, :cond_1

    .line 257
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f070118

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getNumberOfPages()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    .end local v2           #host:Landroid/widget/LinearLayout;
    .end local v3           #pageCountView:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublicationDate()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 267
    :try_start_0
    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040058

    iget-object v8, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 269
    .local v4, pubDateView:Landroid/widget/TextView;
    const/16 v6, 0x15

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 270
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublicationDate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/finsky/utils/DateUtils;->formatIso8601Date(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v4           #pubDateView:Landroid/widget/TextView;
    :cond_3
    :goto_1
    return-void

    .line 253
    :cond_4
    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, e:Ljava/text/ParseException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse ISO 8601 date "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected configureMagazineDetailsByline(Lcom/google/android/finsky/api/model/Document;)V
    .locals 7
    .parameter "doc"

    .prologue
    const v6, 0x7f040058

    const/4 v5, 0x0

    .line 315
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getMagazineDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    move-result-object v1

    .line 316
    .local v1, magazineDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    if-eqz v1, :cond_2

    .line 318
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeliveryFrequencyDescription()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 321
    .local v0, deliveryFrequencyView:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getDeliveryFrequencyDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-boolean v3, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSingleColumnMode:Z

    if-eqz v3, :cond_0

    .line 323
    const/16 v3, 0x15

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 325
    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 329
    .end local v0           #deliveryFrequencyView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasPsvDescription()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 330
    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 332
    .local v2, psvDescriptionView:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getPsvDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 336
    .end local v2           #psvDescriptionView:Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method protected configureMovieDetailsByline(Lcom/google/android/finsky/api/model/Document;)V
    .locals 12
    .parameter "doc"

    .prologue
    const/16 v11, 0x15

    const v10, 0x7f040058

    const/4 v9, 0x0

    .line 281
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v4

    .line 282
    .local v4, videoDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    if-eqz v4, :cond_2

    .line 284
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasContentRating()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070119

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getContentRating()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, contentRating:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 289
    .local v1, contentRatingView:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-boolean v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSingleColumnMode:Z

    if-eqz v5, :cond_0

    .line 291
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 293
    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasReleaseDate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 297
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 299
    .local v3, releaseDateView:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 304
    .end local v3           #releaseDateView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDuration()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 305
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 307
    .local v2, durationView:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getDuration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 309
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 312
    .end local v0           #contentRating:Ljava/lang/String;
    .end local v1           #contentRatingView:Landroid/widget/TextView;
    .end local v2           #durationView:Landroid/widget/TextView;
    :cond_2
    return-void

    .line 284
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f07011a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setDocument(Lcom/google/android/finsky/api/model/Document;)V
    .locals 3
    .parameter "document"

    .prologue
    const v2, 0x7f040057

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->removeAllViews()V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->addView(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->addView(Landroid/view/View;)V

    .line 68
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSingleColumnMode:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureRating(Lcom/google/android/finsky/api/model/Document;)V

    .line 72
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureItemTextInfo(Lcom/google/android/finsky/api/model/Document;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureContentDescription(Lcom/google/android/finsky/api/model/Document;)V

    .line 74
    return-void
.end method
