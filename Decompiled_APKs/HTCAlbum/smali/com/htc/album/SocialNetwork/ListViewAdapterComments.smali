.class public Lcom/htc/album/SocialNetwork/ListViewAdapterComments;
.super Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;
.source "ListViewAdapterComments.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

.field private mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

.field private mIsNewCommentEntry:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .parameter "actParent"
    .parameter "szServiceName"
    .parameter "handlerUI"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;-><init>(Landroid/app/Activity;)V

    .line 54
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mIsNewCommentEntry:Z

    .line 56
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    .line 596
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments$1;-><init>(Lcom/htc/album/SocialNetwork/ListViewAdapterComments;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 61
    invoke-virtual {p0, p3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->setUIHandler(Landroid/os/Handler;)V

    .line 62
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iput-object p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private getShareImageShortSideLength(FFFZ)I
    .locals 4
    .parameter "fMaxLength"
    .parameter "fPhotoWidth"
    .parameter "fPhotoHeight"
    .parameter "isHeightLonger"

    .prologue
    const/4 v3, 0x0

    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, iShortSide:I
    cmpg-float v2, p1, v3

    if-ltz v2, :cond_0

    cmpg-float v2, p2, v3

    if-ltz v2, :cond_0

    cmpg-float v2, p3, v3

    if-gez v2, :cond_1

    :cond_0
    move v1, v0

    .line 403
    .end local v0           #iShortSide:I
    .local v1, iShortSide:I
    :goto_0
    return v1

    .line 381
    .end local v1           #iShortSide:I
    .restart local v0       #iShortSide:I
    :cond_1
    const/4 v2, 0x1

    if-ne v2, p4, :cond_3

    .line 383
    cmpl-float v2, p1, p3

    if-lez v2, :cond_2

    .line 385
    div-float v2, p1, p3

    div-float v2, p2, v2

    float-to-int v0, v2

    :goto_1
    move v1, v0

    .line 403
    .end local v0           #iShortSide:I
    .restart local v1       #iShortSide:I
    goto :goto_0

    .line 389
    .end local v1           #iShortSide:I
    .restart local v0       #iShortSide:I
    :cond_2
    div-float v2, p3, p1

    div-float v2, p2, v2

    float-to-int v0, v2

    goto :goto_1

    .line 394
    :cond_3
    cmpl-float v2, p1, p2

    if-lez v2, :cond_4

    .line 396
    div-float v2, p1, p2

    div-float v2, p3, v2

    float-to-int v0, v2

    goto :goto_1

    .line 400
    :cond_4
    div-float v2, p2, p1

    div-float v2, p3, v2

    float-to-int v0, v2

    goto :goto_1
.end method

.method private setCommentOwnerAvatar(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "convertView"
    .parameter "srcBmp"

    .prologue
    .line 418
    return-void
.end method

.method private setHeaderData(Landroid/view/View;I)V
    .locals 18
    .parameter "convertView"
    .parameter "nPos"

    .prologue
    .line 301
    const v1, 0x7f0a0065

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 303
    .local v10, imgViewOwnerAvatar:Landroid/widget/ImageView;
    const/4 v14, 0x0

    .line 305
    .local v14, srcBmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPersonIconURL()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Default_Avatar(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 319
    :goto_0
    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    const v1, 0x7f0a0066

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 323
    .local v16, textViewOwnerName:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPersonName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPersonName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPersonName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhotoDescription()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/htc/opensense2/album/util/HelperUtil;->getFormatedComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    const/4 v8, 0x0

    .line 330
    .local v8, bHasDescription:Z
    const v1, 0x7f0a0068

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 331
    .local v17, textViewPhotoName:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhotoName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhotoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 333
    :cond_1
    const/16 v1, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    :goto_1
    if-nez v8, :cond_2

    const v1, 0x7f0a0067

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 344
    :cond_2
    const v1, 0x7f0a006a

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 345
    .local v11, imgViewSharedPhoto:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 346
    .local v13, sharePhotoBmp:Landroid/graphics/Bitmap;
    if-nez v13, :cond_6

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Default_PictureAndVideo(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 371
    :goto_2
    const v1, 0x7f0a006b

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 372
    .local v15, textViewDate:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhotoDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhotoDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :cond_3
    return-void

    .line 311
    .end local v8           #bHasDescription:Z
    .end local v11           #imgViewSharedPhoto:Landroid/widget/ImageView;
    .end local v13           #sharePhotoBmp:Landroid/graphics/Bitmap;
    .end local v15           #textViewDate:Landroid/widget/TextView;
    .end local v16           #textViewOwnerName:Landroid/widget/TextView;
    .end local v17           #textViewPhotoName:Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPersonIconURL()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    goto/16 :goto_0

    .line 337
    .restart local v8       #bHasDescription:Z
    .restart local v16       #textViewOwnerName:Landroid/widget/TextView;
    .restart local v17       #textViewPhotoName:Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhotoName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    const/4 v8, 0x1

    goto :goto_1

    .line 352
    .restart local v11       #imgViewSharedPhoto:Landroid/widget/ImageView;
    .restart local v13       #sharePhotoBmp:Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 353
    .local v12, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v12, :cond_7

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v9, v1

    .line 356
    .local v9, iShareImageMaxLength:F
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_8

    .line 358
    float-to-int v1, v9

    iput v1, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 359
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v1, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getShareImageShortSideLength(FFFZ)I

    move-result v1

    iput v1, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 367
    .end local v9           #iShareImageMaxLength:F
    :cond_7
    :goto_3
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 363
    .restart local v9       #iShareImageMaxLength:F
    :cond_8
    float-to-int v1, v9

    iput v1, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 364
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v1, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getShareImageShortSideLength(FFFZ)I

    move-result v1

    iput v1, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3
.end method


# virtual methods
.method public getCommentCacher()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    return-object v0
.end method

.method public getCommentHeader()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x1

    .line 96
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_0
    return v0
.end method

.method public getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, obj:Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 111
    .end local v0           #obj:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 108
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 117
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .parameter "nPos"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 166
    const/4 v12, 0x0

    .line 168
    .local v12, comment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    if-nez p1, :cond_4

    const/4 v11, 0x1

    .line 171
    .local v11, bHeader:Z
    :goto_0
    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #comment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    check-cast v12, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    .line 173
    .restart local v12       #comment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    :cond_0
    const/4 v14, 0x0

    .line 174
    .local v14, currentSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    if-nez v11, :cond_1

    invoke-virtual {v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v14

    .line 176
    :cond_1
    if-nez p2, :cond_9

    .line 178
    if-eqz v11, :cond_5

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03002b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 232
    :cond_2
    :goto_1
    if-eqz v11, :cond_e

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    :goto_2
    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->setHeaderData(Landroid/view/View;I)V

    .line 295
    :cond_3
    :goto_3
    return-object p2

    .line 168
    .end local v11           #bHeader:Z
    .end local v14           #currentSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_4
    const/4 v11, 0x0

    goto :goto_0

    .line 182
    .restart local v11       #bHeader:Z
    .restart local v14       #currentSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_5
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v14, v3, :cond_6

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_7

    .line 185
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 187
    :cond_7
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_8

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 191
    :cond_8
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_2

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 198
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 200
    .local v10, aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    if-eqz v11, :cond_a

    .line 202
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_TOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v10, v3, :cond_2

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03002b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 207
    :cond_a
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v14, v3, :cond_b

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_c

    .line 210
    :cond_b
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v10, v3, :cond_2

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v10, v3, :cond_2

    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_1

    .line 216
    :cond_c
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_d

    .line 218
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v10, v3, :cond_2

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_1

    .line 223
    :cond_d
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_2

    .line 225
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v10, v3, :cond_2

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_1

    .line 233
    .end local v10           #aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_e
    invoke-virtual {v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 236
    :cond_f
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v14, v3, :cond_10

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_15

    .line 239
    :cond_10
    const/16 v16, 0x0

    .line 241
    .local v16, srcBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerAvatar()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20800c2

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 255
    :goto_4
    const v3, 0x7f0a0049

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    .line 256
    .local v17, topRound_layout:Landroid/widget/RelativeLayout;
    if-eqz v17, :cond_11

    .line 258
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_14

    .line 259
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 264
    :cond_11
    :goto_5
    const v3, 0x7f0a004a

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 265
    .local v15, imgViewAvatar:Landroid/widget/ImageView;
    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 267
    const v3, 0x7f0a004b

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 268
    .local v18, txtViewContent:Landroid/widget/TextView;
    if-eqz v18, :cond_12

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v12, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getFormatedComment(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_12
    const v3, 0x7f0a004c

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 272
    .local v19, txtViewDateTime:Landroid/widget/TextView;
    if-eqz v19, :cond_3

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v12, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getDateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 247
    .end local v15           #imgViewAvatar:Landroid/widget/ImageView;
    .end local v17           #topRound_layout:Landroid/widget/RelativeLayout;
    .end local v18           #txtViewContent:Landroid/widget/TextView;
    .end local v19           #txtViewDateTime:Landroid/widget/TextView;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerAvatar()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v5, p1

    invoke-virtual/range {v3 .. v9}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    goto :goto_4

    .line 261
    .restart local v17       #topRound_layout:Landroid/widget/RelativeLayout;
    :cond_14
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    .line 277
    .end local v16           #srcBmp:Landroid/graphics/Bitmap;
    .end local v17           #topRound_layout:Landroid/widget/RelativeLayout;
    :cond_15
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_16

    .line 279
    const v3, 0x7f0a0046

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/htc/widget/HtcProgressBar;

    .line 280
    .local v20, viewProgress:Lcom/htc/widget/HtcProgressBar;
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 282
    const v3, 0x7f0a0011

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/htc/widget/HtcListItem2LineText;

    .line 283
    .local v21, viewText_1:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v3, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem2LineText;->setVisibility(I)V

    .line 285
    const v3, 0x7f0a0047

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 286
    .local v22, viewText_2:Landroid/widget/TextView;
    const v3, 0x7f0b00a4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 287
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 289
    .end local v20           #viewProgress:Lcom/htc/widget/HtcProgressBar;
    .end local v21           #viewText_1:Lcom/htc/widget/HtcListItem2LineText;
    .end local v22           #viewText_2:Landroid/widget/TextView;
    :cond_16
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_3

    .line 291
    const v3, 0x7f0a000f

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 292
    .local v13, comment_empty_layout:Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    const v6, 0x205004d

    invoke-virtual {v13, v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto/16 :goto_3
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 122
    const/4 v0, 0x1

    .line 125
    .local v0, bResult:Z
    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v2, :cond_2

    .line 130
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getCommentSize()I

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->isEnabled(I)Z

    move-result v0

    :cond_2
    move v1, v0

    .line 137
    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    .line 67
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    iget-object v1, p0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    .line 68
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onDestroy]: Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    .line 85
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->clearAllCache()V

    .line 88
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    .line 90
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onDestroy]: End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public onErrorConnection()V
    .locals 3

    .prologue
    .line 539
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onErrorConnection]: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 541
    return-void
.end method

.method public onErrorNoList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 545
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onErrorNoList]: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v0, :cond_0

    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->refreshCommentList()Z

    .line 550
    const/16 v0, 0x2761

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 551
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 552
    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 556
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 580
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onMessageHandler(Landroid/os/Message;)V

    .line 583
    :goto_0
    return-void

    .line 559
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onRequestComments(Landroid/os/Message;)V

    goto :goto_0

    .line 562
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onRequestAddComment(Landroid/os/Message;)V

    goto :goto_0

    .line 565
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onSyncConnection()V

    goto :goto_0

    .line 568
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onSyncListComplete()V

    goto :goto_0

    .line 571
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 574
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onErrorConnection()V

    goto :goto_0

    .line 577
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onErrorNoList()V

    goto :goto_0

    .line 556
    nop

    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_5
        0x2761 -> :sswitch_6
        0x4e26 -> :sswitch_0
        0x4e30 -> :sswitch_1
        0x4e84 -> :sswitch_2
        0x4e89 -> :sswitch_4
        0x4e92 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onPause()V

    .line 78
    return-void
.end method

.method public onRequestAddComment(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 483
    sget-object v3, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][ListViewAdapterComments][onRequestAddComment]: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->setCommentLoader()V

    .line 489
    const/16 v3, 0x4e8d

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 491
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 493
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v3, 0x1

    new-array v1, v3, [Lcom/htc/opensense/social/data/Medium;

    .line 494
    .local v1, medium:[Lcom/htc/opensense/social/data/Medium;
    const-string v3, "photo_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/data/Medium;

    aput-object v3, v1, v5

    .line 495
    const-string v3, "comment_update"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, szComment:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    aget-object v4, v1, v5

    invoke-virtual {v3, v4, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setPhotoComment(Lcom/htc/opensense/social/data/Medium;Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public onRequestComments(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 464
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onRequestComments]: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mIsNewCommentEntry:Z

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->setCommentLoader()V

    .line 473
    const/16 v0, 0x2761

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 474
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 479
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->requestCommentList()Z

    .line 480
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    .line 73
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    .line 74
    return-void
.end method

.method public onSyncConnection()V
    .locals 3

    .prologue
    .line 503
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onSyncConnection]: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->setCommentLoader()V

    .line 508
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSyncListComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 514
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onSyncListComplete]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->refreshCommentList()Z

    .line 521
    :cond_2
    const/16 v0, 0x2761

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 522
    const/16 v0, 0x4e21

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 523
    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 525
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mIsNewCommentEntry:Z

    if-ne v0, v1, :cond_0

    .line 527
    const/16 v0, 0x4e90

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 528
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mIsNewCommentEntry:Z

    goto :goto_0
.end method

.method public onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 534
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 535
    return-void
.end method

.method public setScrollState(II)V
    .locals 0
    .parameter "nScrollState"
    .parameter "nFirstIndex"

    .prologue
    .line 594
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 0
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 589
    return-void
.end method

.method protected syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 7
    .parameter "szService"
    .parameter "hHandler"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 423
    const/4 v0, 0x0

    .line 426
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getDataHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v1

    if-ne v5, v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 430
    sget-object v1, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ListViewAdapterComments][syncBackgroundService]: no account..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/16 v1, 0x274f

    invoke-virtual {p0, v1, v6, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isExistingAccount()Z

    move-result v1

    if-ne v5, v1, :cond_3

    .line 437
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v1

    if-nez v1, :cond_2

    .line 439
    sget-object v1, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ListViewAdapterComments][syncBackgroundService]: no change just skip!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 443
    :cond_2
    const/16 v1, 0x2750

    invoke-virtual {p0, v1, v6, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 448
    :cond_3
    sget-object v1, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ListViewAdapterComments][syncBackgroundService]: InitConnection.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    .line 450
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1, v5, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    const/16 v1, 0x2724

    invoke-virtual {p0, v1, v6, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method
