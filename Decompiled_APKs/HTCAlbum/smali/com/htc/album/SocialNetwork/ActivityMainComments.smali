.class public Lcom/htc/album/SocialNetwork/ActivityMainComments;
.super Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;
.source "ActivityMainComments.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityMainComments"


# instance fields
.field private mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

.field private mBmpPhoto:Landroid/graphics/Bitmap;

.field private mBmpPhotoDefault:Landroid/graphics/Bitmap;

.field private mBmpPhotoFull:Landroid/graphics/Bitmap;

.field private mBmpUser:Landroid/graphics/Bitmap;

.field private mClickListener_EditComment:Landroid/view/View$OnClickListener;

.field protected mImgBtnEdit:Landroid/widget/TextView;

.field private mImgViewUser:Landroid/widget/ImageView;

.field private mIntent:Landroid/content/Intent;

.field mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field protected mListView:Lcom/htc/widget/HtcListView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

.field private mTxtHeader:Landroid/widget/TextView;

.field private mTxtSubHeader:Landroid/widget/TextView;

.field private mViewEmpty:Landroid/view/View;

.field private mViewuser:Landroid/view/View;

.field private mWrapperPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mListView:Lcom/htc/widget/HtcListView;

    .line 55
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mImgBtnEdit:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 58
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    .line 59
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    .line 62
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mWrapperPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 63
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpUser:Landroid/graphics/Bitmap;

    .line 64
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    .line 65
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    .line 66
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoDefault:Landroid/graphics/Bitmap;

    .line 67
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mViewuser:Landroid/view/View;

    .line 68
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mViewEmpty:Landroid/view/View;

    .line 69
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mTxtHeader:Landroid/widget/TextView;

    .line 70
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mTxtSubHeader:Landroid/widget/TextView;

    .line 71
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mImgViewUser:Landroid/widget/ImageView;

    .line 480
    new-instance v0, Lcom/htc/album/SocialNetwork/ActivityMainComments$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments$1;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainComments;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mClickListener_EditComment:Landroid/view/View$OnClickListener;

    .line 580
    new-instance v0, Lcom/htc/album/SocialNetwork/ActivityMainComments$5;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments$5;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainComments;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 587
    new-instance v0, Lcom/htc/album/SocialNetwork/ActivityMainComments$6;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments$6;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainComments;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/SocialNetwork/ActivityMainComments;)Lcom/htc/album/SocialNetwork/ListViewAdapterComments;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    return-object v0
.end method

.method private onUpdateCommentHeader()V
    .locals 4

    .prologue
    .line 501
    const-string v1, "ActivityMainComments"

    const-string v2, "[HTCAlbum][ActivityMainComments][onUpdateCommentHeader]: Begin"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentHeader()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    move-result-object v0

    .line 505
    .local v0, commentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;
    if-nez v0, :cond_0

    .line 528
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    if-eqz v1, :cond_1

    .line 510
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPersonName(Ljava/lang/String;)V

    .line 513
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    if-eqz v1, :cond_3

    .line 515
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 517
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhotoDescription(Ljava/lang/String;)V

    .line 524
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhotoDate(Ljava/lang/String;)V

    .line 527
    :cond_3
    const-string v1, "ActivityMainComments"

    const-string v2, "[HTCAlbum][ActivityMainComments][onUpdateCommentHeader]: End"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :cond_4
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 521
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhotoName(Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhotoDescription(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public RelayoutPageView(I)V
    .locals 0
    .parameter "nLayoutType"

    .prologue
    .line 498
    return-void
.end method

.method public initPageComponents()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 210
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mListView:Lcom/htc/widget/HtcListView;

    .line 211
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mListView:Lcom/htc/widget/HtcListView;

    invoke-static {v1, v2}, Lcom/htc/album/Customizable/CustHtcListViewStyle;->setStyle(Landroid/content/Context;Lcom/htc/widget/HtcListView;)V

    .line 212
    const v1, 0x7f0a000e

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mImgBtnEdit:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 214
    const-string v1, "ActivityMainComments"

    const-string v2, "[HTCAlbum][ActivityMainComments][initPageComponents]: setOnClickListener"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mImgBtnEdit:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mClickListener_EditComment:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mImgBtnEdit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_InputField(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 217
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mImgBtnEdit:Landroid/widget/TextView;

    const v2, 0x20c01f3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 218
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mImgBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 219
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mImgBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 220
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mImgBtnEdit:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 222
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 223
    .local v0, leftPadding:I
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mImgBtnEdit:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 226
    .end local v0           #leftPadding:I
    :cond_0
    new-instance v1, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    .line 227
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->setDataRequest(Ljava/lang/Object;)V

    .line 228
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 229
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 231
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 136
    const-string v2, "ActivityMainComments"

    const-string v3, "[HTCAlbum][ActivityMainComments][onActivityResult]: Begin"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/16 v2, 0x4e29

    if-ne v2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 139
    const-string v2, "comment_update"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, szComment:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    if-eqz v2, :cond_0

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "photo_id"

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 146
    const-string v2, "comment_update"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    const/16 v3, 0x4e30

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 151
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #szComment:Ljava/lang/String;
    :cond_0
    const-string v2, "ActivityMainComments"

    const-string v3, "[HTCAlbum][ActivityMainComments][onActivityResult]: End"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 86
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 87
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 74
    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onCreate]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->requestWindowFeature(I)Z

    .line 76
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->setContentView(I)V

    .line 78
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->onCreate(Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onCreate()V

    .line 81
    const/16 v0, 0x4ee9

    iput v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mUIState:I

    .line 82
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->onDestroy()V

    .line 103
    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onDestroy]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/16 v0, 0x4eee

    iput v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mUIState:I

    .line 105
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->setUIHandler(Landroid/os/Handler;)V

    .line 107
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDestroy()V

    .line 110
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpUser:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpUser:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 116
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpUser:Landroid/graphics/Bitmap;

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 121
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 131
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoDefault:Landroid/graphics/Bitmap;

    .line 133
    :cond_4
    return-void
.end method

.method public onErrorNoActiveUser()V
    .locals 3

    .prologue
    .line 406
    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onErrorNoActiveUser]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 408
    return-void
.end method

.method public onErrorNoList(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 423
    return-void
.end method

.method public onErrorNoPhotoInfo()V
    .locals 3

    .prologue
    .line 411
    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onErrorNoPhotoInfo]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/16 v0, 0x4e26

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 414
    return-void
.end method

.method public onListHeaderClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HelperUtil;->gotoFacebookProfileTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string v1, "ActivityMainComments"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainComments][onListItemClick]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    if-eqz p3, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, cacheComment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentCacher()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cacheComment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    .restart local v0       #cacheComment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    if-eqz v0, :cond_0

    .line 166
    const-string v1, "ActivityMainComments"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainComments][onListItemClick]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HelperUtil;->gotoFacebookProfileTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v2, 0x2738

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 427
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 476
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->onMessageHandler(Landroid/os/Message;)V

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 430
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onRequestActiveUser()V

    goto :goto_0

    .line 433
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onRequestCommentList()V

    goto :goto_0

    .line 436
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onSyncConection()V

    goto :goto_0

    .line 439
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onSyncActiveUser()V

    goto :goto_0

    .line 442
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onSyncPhotoInfo(Landroid/os/Message;)V

    goto :goto_0

    .line 445
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onSyncPhoto(Landroid/os/Message;)V

    goto :goto_0

    .line 448
    :sswitch_6
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .line 454
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onErrorNoActiveUser()V

    goto :goto_0

    .line 457
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onErrorNoPhotoInfo()V

    goto :goto_0

    .line 460
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onErrorNoList(Landroid/os/Message;)V

    goto :goto_0

    .line 463
    :sswitch_a
    invoke-virtual {p0, v2, v1, v3}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 466
    :sswitch_b
    invoke-virtual {p0, v2, v1, v3}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 469
    :sswitch_c
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mLoadingText:Ljava/lang/String;

    .line 470
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    .line 473
    :sswitch_d
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onListHeaderClick(Landroid/view/View;)V

    goto :goto_0

    .line 427
    nop

    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_c
        0x274f -> :sswitch_a
        0x2750 -> :sswitch_b
        0x2760 -> :sswitch_7
        0x2761 -> :sswitch_9
        0x2766 -> :sswitch_8
        0x4e20 -> :sswitch_0
        0x4e26 -> :sswitch_1
        0x4e3f -> :sswitch_d
        0x4e84 -> :sswitch_2
        0x4e85 -> :sswitch_3
        0x4e89 -> :sswitch_5
        0x4e8a -> :sswitch_4
        0x4e90 -> :sswitch_6
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onPause]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->onPause()V

    .line 98
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onPause()V

    .line 99
    return-void
.end method

.method public onRequestActiveUser()V
    .locals 2

    .prologue
    .line 263
    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onRequestActiveUser]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediaInfo3(Ljava/lang/String;)Z

    .line 266
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediumInfo2(Ljava/lang/String;)Z

    .line 268
    return-void
.end method

.method public onRequestCommentList()V
    .locals 4

    .prologue
    .line 271
    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onRequestCommentList]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentCacher()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->setCommentPhoto(Lcom/htc/opensense/social/MediumOp;)V

    .line 274
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    const/16 v1, 0x4e26

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 275
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onResume]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onResume()V

    .line 93
    return-void
.end method

.method public onSyncActiveUser()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 301
    const-string v2, "ActivityMainComments"

    const-string v3, "[HTCAlbum][ActivityMainComments][onSyncActiveUser]: "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/16 v2, 0x4eee

    iget v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mUIState:I

    if-ne v2, v3, :cond_0

    .line 329
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedUsers()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 311
    const/4 v0, 0x0

    .line 313
    .local v0, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .restart local v0       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v0, :cond_1

    .line 315
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iput-object v0, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 316
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentHeader()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    move-result-object v1

    .line 317
    .local v1, commentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;
    if-eqz v1, :cond_1

    .line 318
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPersonIconURL(Ljava/lang/String;)V

    .line 322
    .end local v0           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .end local v1           #commentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUpdateCommentHeader()V

    .line 324
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    if-eqz v2, :cond_2

    .line 325
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    const/16 v3, 0x4e89

    invoke-virtual {v2, v3, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 327
    :cond_2
    const/16 v2, 0x2728

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSyncConection()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 278
    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onSyncConection]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 298
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 284
    const/16 v0, 0x4e20

    invoke-virtual {p0, v0, v9, v8}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 286
    new-array v7, v4, [Lcom/htc/opensense/social/data/Medium;

    .line 287
    .local v7, medium:[Lcom/htc/opensense/social/data/Medium;
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v0

    aput-object v0, v7, v8

    .line 288
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediumOpFast([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/MediumOp;

    iput-object v0, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 290
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    .line 297
    const/16 v0, 0x4e26

    invoke-virtual {p0, v0, v9, v8}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSyncPhoto(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 343
    const-string v0, "ActivityMainComments"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainComments][onSyncPhoto]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 353
    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onSyncPhoto]: By bundle..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    .line 355
    .local v7, bundle:Landroid/os/Bundle;
    const-string v0, "index_id"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 357
    .local v9, nIndex:I
    const/4 v0, -0x2

    if-ne v0, v9, :cond_2

    .line 359
    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onSyncPhoto]: thumb: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    .line 367
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentHeader()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    move-result-object v8

    .line 368
    .local v8, commentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;
    if-eqz v8, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 370
    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onSyncPhoto]: thumb ready... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 372
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 381
    .end local v8           #commentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;
    :cond_2
    const/4 v0, -0x3

    if-ne v0, v9, :cond_0

    .line 383
    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onSyncPhoto]: full: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    .line 391
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentHeader()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    move-result-object v8

    .line 392
    .restart local v8       #commentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;
    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 394
    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onSyncPhoto]: full ready... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    const/16 v1, 0x4e89

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method public onSyncPhotoInfo(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 332
    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onSyncPhotoInfo]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 340
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    iput-object v0, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 338
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUpdateCommentHeader()V

    goto :goto_0
.end method

.method public setActivityTitle()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public setFooterView(Z)V
    .locals 2
    .parameter "bIsEmpty"

    .prologue
    .line 240
    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][setFooterView]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][setFooterView]: End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method protected showDialogErrorCommunication()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 532
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0037

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 537
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c01d6

    new-instance v2, Lcom/htc/album/SocialNetwork/ActivityMainComments$2;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments$2;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainComments;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 544
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected showDialogNoConnection()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 548
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x20c0162

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c0156

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 553
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c0200

    new-instance v2, Lcom/htc/album/SocialNetwork/ActivityMainComments$3;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments$3;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainComments;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 571
    const v1, 0x20c01d6

    new-instance v2, Lcom/htc/album/SocialNetwork/ActivityMainComments$4;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments$4;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainComments;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 578
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public syncExternalRequest()V
    .locals 4

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    const-string v3, "photo_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 196
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    const-string v2, "service_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mUserID:Ljava/lang/String;

    .line 199
    const-string v0, "ActivityMainComments"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainComments][setHeaderView]: photoID:     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, "ActivityMainComments"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainComments][setHeaderView]: userID:       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mUserID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "ActivityMainComments"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainComments][setHeaderView]: service:       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_1
    return-void
.end method
