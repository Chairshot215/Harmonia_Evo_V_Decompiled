.class public Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;
.super Lcom/google/android/finsky/activities/DetailsTextViewBinder;
.source "DetailsDescriptionViewBinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    return-void
.end method

.method private getExtraSummary(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;
    .locals 15
    .parameter "doc"

    .prologue
    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v5

    .line 46
    .local v5, docType:I
    const/4 v8, 0x1

    if-ne v5, v8, :cond_6

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 48
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v2, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionString()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 52
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    const v9, 0x7f070116

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasUploadDate()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 58
    const-string v8, "<br>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_1
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    const v9, 0x7f0701d6

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getUploadDate()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasInstallationSize()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 66
    const-string v8, "<br>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_3
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    const v9, 0x7f0701d7

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getInstallationSize()J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 74
    const-string v8, "<br>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getNormalizedContentRating()I

    move-result v3

    .line 77
    .local v3, contentRating:I
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    const v9, 0x7f070114

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v12, v3}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 130
    .end local v0           #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .end local v2           #builder:Ljava/lang/StringBuilder;
    .end local v3           #contentRating:I
    :goto_0
    return-object v8

    .line 83
    :cond_6
    const/4 v8, 0x5

    if-ne v5, v8, :cond_8

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v1

    .line 85
    .local v1, bookDetails:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasIsbn()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 86
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getIsbn()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 88
    :cond_7
    const/4 v8, 0x0

    goto :goto_0

    .line 91
    .end local v1           #bookDetails:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    :cond_8
    const/16 v8, 0x10

    if-ne v5, v8, :cond_a

    .line 92
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/utils/DocUtils;->getMagazineCurrentIssueDocument(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    .line 93
    .local v4, currentIssue:Lcom/google/android/finsky/api/model/Document;
    if-eqz v4, :cond_a

    .line 94
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getMagazineDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    move-result-object v6

    .line 95
    .local v6, magazineDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeviceAvailabilityDescriptionHtml()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 97
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getDeviceAvailabilityDescriptionHtml()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 99
    :cond_9
    const/4 v8, 0x0

    goto :goto_0

    .line 103
    .end local v4           #currentIssue:Lcom/google/android/finsky/api/model/Document;
    .end local v6           #magazineDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    :cond_a
    const/16 v8, 0x11

    if-ne v5, v8, :cond_c

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getMagazineDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    move-result-object v6

    .line 105
    .restart local v6       #magazineDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeviceAvailabilityDescriptionHtml()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 106
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getDeviceAvailabilityDescriptionHtml()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 108
    :cond_b
    const/4 v8, 0x0

    goto :goto_0

    .line 111
    .end local v6           #magazineDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    :cond_c
    const/4 v8, 0x6

    if-ne v5, v8, :cond_10

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v7

    .line 113
    .local v7, videoDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .restart local v2       #builder:Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getAudioLanguageCount()I

    move-result v8

    if-lez v8, :cond_d

    .line 116
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    const v9, 0x7f0701d8

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, ","

    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getAudioLanguageList()Ljava/util/List;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_d
    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getCaptionLanguageCount()I

    move-result v8

    if-lez v8, :cond_f

    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_e

    .line 122
    const-string v8, "<br>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_e
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    const v9, 0x7f0701d9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, ","

    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getCaptionLanguageList()Ljava/util/List;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 130
    .end local v2           #builder:Ljava/lang/StringBuilder;
    .end local v7           #videoDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V
    .locals 8
    .parameter "view"
    .parameter "doc"
    .parameter "savedState"

    .prologue
    .line 26
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getDescriptionHeaderStringId(I)I

    move-result v3

    .line 27
    .local v3, headerStringId:I
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getOriginalDescription()Ljava/lang/String;

    move-result-object v6

    .line 28
    .local v6, descriptionText:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->getExtraSummary(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;

    move-result-object v7

    .line 30
    .local v7, extraDescriptionText:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .local v4, fullDesc:Ljava/lang/CharSequence;
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 33
    invoke-super/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 34
    return-void

    .line 30
    .end local v4           #fullDesc:Ljava/lang/CharSequence;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    goto :goto_0
.end method
