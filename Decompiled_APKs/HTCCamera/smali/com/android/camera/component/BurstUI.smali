.class public final Lcom/android/camera/component/BurstUI;
.super Lcom/android/camera/component/UIComponent;
.source "BurstUI.java"


# static fields
.field public static final MSG_ADD_CONTENT_URI:I = 0x5

.field public static final MSG_BURST_COMPLETED:I = 0x3

.field public static final MSG_CAPTURE_START:I = 0x1

.field public static final MSG_PHOTO_SAVED:I = 0x4

.field public static final MSG_THUMB_CREATED:I = 0x2

.field public static final NAME:Ljava/lang/String; = "Burst UI"


# instance fields
.field private linearLayoutThumbBar:Landroid/widget/LinearLayout;

.field m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

.field private final m_ActionScreenOpenEventHandler:Lcom/android/camera/IEventHandler;

.field private m_BurstController:Lcom/android/camera/component/BurstController;

.field private m_CapturingInstanceID:J

.field private final m_HideEventHandler:Lcom/android/camera/IEventHandler;

.field private m_Inflater:Landroid/view/LayoutInflater;

.field private m_InstanceID:J

.field private m_IsModeEntered:Z

.field private m_IsResolutionSyncBackNeeded:Z

.field private m_IsRestartingPreviewNeeded:Z

.field private m_IsUIInitialized:Z

.field private final m_PausingEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_QueryDeletionMessageEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ResolutionHandler:Lcom/android/camera/component/BurstResolutionHandler;

.field private final m_ResolutionSelectedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_RotateReviewScreenContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private final m_SetMediaAsHandler:Lcom/android/camera/IEventHandler;

.field private final m_ShareMediaHandler:Lcom/android/camera/IEventHandler;

.field private m_StoredPictureUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ThumbClickedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

.field private m_ThumbnailHeight:I

.field private m_ThumbnailHeightWide:I

.field private m_ThumbnailWidth:I

.field private m_ThumbnailWidthWide:I

.field m_baseLayout:Landroid/view/View;

.field private m_burstReviewFrame:Landroid/widget/ImageView;

.field private m_burstReviewScreenHeightWide_l:I

.field private m_burstReviewScreenHeightWide_p:I

.field private m_burstReviewScreenHeight_l:I

.field private m_burstReviewScreenHeight_p:I

.field private m_burstReviewScreenWidthWide_p:I

.field private m_burstReviewScreenWidth_l:I

.field private m_burstReviewScreenWidth_p:I

.field private m_burstThumbBarHeight_l:I

.field private m_burstThumbBarHeight_p:I

.field private m_burstThumbBarPadding_l:I

.field private m_burstThumbBarPadding_p:I

.field private m_burstThumbBarWidth_l:I

.field private m_burstThumbBarWidth_p:I

.field private m_burstThumbItemMargin_l:I

.field private m_burstThumbItemMargin_p:I

.field private m_thumbItemsContainer:[Landroid/widget/RelativeLayout;

.field private m_thumbnailItemHeightController_l:I

.field private m_thumbnailItemHeightController_p:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "Burst UI"

    const/4 v1, 0x1

    const v2, 0x7f080053

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    new-instance v0, Lcom/android/camera/component/BurstUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/BurstUI$1;-><init>(Lcom/android/camera/component/BurstUI;)V

    iput-object v0, p0, Lcom/android/camera/component/BurstUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/BurstUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/BurstUI$2;-><init>(Lcom/android/camera/component/BurstUI;)V

    iput-object v0, p0, Lcom/android/camera/component/BurstUI;->m_PausingEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/BurstUI$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/BurstUI$3;-><init>(Lcom/android/camera/component/BurstUI;)V

    iput-object v0, p0, Lcom/android/camera/component/BurstUI;->m_QueryDeletionMessageEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/BurstUI$4;

    invoke-direct {v0, p0}, Lcom/android/camera/component/BurstUI$4;-><init>(Lcom/android/camera/component/BurstUI;)V

    iput-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ResolutionSelectedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/BurstUI$5;

    invoke-direct {v0, p0}, Lcom/android/camera/component/BurstUI$5;-><init>(Lcom/android/camera/component/BurstUI;)V

    iput-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ThumbClickedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/BurstUI$6;

    invoke-direct {v0, p0}, Lcom/android/camera/component/BurstUI$6;-><init>(Lcom/android/camera/component/BurstUI;)V

    iput-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreenOpenEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/BurstUI$7;

    invoke-direct {v0, p0}, Lcom/android/camera/component/BurstUI$7;-><init>(Lcom/android/camera/component/BurstUI;)V

    iput-object v0, p0, Lcom/android/camera/component/BurstUI;->m_SetMediaAsHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/BurstUI$8;

    invoke-direct {v0, p0}, Lcom/android/camera/component/BurstUI$8;-><init>(Lcom/android/camera/component/BurstUI;)V

    iput-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ShareMediaHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/BurstResolutionHandler;

    invoke-direct {v0}, Lcom/android/camera/component/BurstResolutionHandler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ResolutionHandler:Lcom/android/camera/component/BurstResolutionHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/component/BurstUI;->autoInflateView(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/BurstUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->hideThumbnailBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/BurstUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/BurstUI;Lcom/android/camera/widget/ImageCheckBox;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/BurstUI;->updateReviewScreenStatus(Lcom/android/camera/widget/ImageCheckBox;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/BurstUI;)Lcom/android/camera/IEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;

    return-object v0
.end method

.method static synthetic access$304(Lcom/android/camera/component/BurstUI;)J
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/camera/component/BurstUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/BurstUI;->m_IsResolutionSyncBackNeeded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/component/BurstUI;)Lcom/android/camera/component/BurstResolutionHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ResolutionHandler:Lcom/android/camera/component/BurstResolutionHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/BurstUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/BurstUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/BurstUI;->showThunbmailBar(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/BurstUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewFrame:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getBurstUIOrientation()I
    .locals 1

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private hideThumbnailBar()V
    .locals 8

    const/4 v7, 0x0

    iget-boolean v5, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    invoke-virtual {p0, v5, v7, v7}, Lcom/android/camera/component/BurstUI;->showUI(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    invoke-virtual {v2}, Lcom/android/camera/widget/ImageCheckBox;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/camera/widget/ImageCheckBox;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Lcom/android/camera/widget/ImageCheckBox;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {v1}, Lcom/android/camera/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private initializeUI()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->prepareContentLayout()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/camera/component/BurstUI;->m_IsUIInitialized:Z

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean v7, p0, Lcom/android/camera/component/BurstUI;->m_IsUIInitialized:Z

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v5, 0x7f080022

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v4, p0, Lcom/android/camera/component/BurstUI;->m_RotateReviewScreenContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v5, 0x7f080024

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewFrame:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v5, 0x7f080025

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/camera/component/BurstUI;->linearLayoutThumbBar:Landroid/widget/LinearLayout;

    const/4 v4, 0x5

    new-array v5, v4, [Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f080026

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    aput-object v4, v5, v9

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f080028

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    aput-object v4, v5, v7

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f08002a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    aput-object v4, v5, v10

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f08002c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    aput-object v4, v5, v11

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f08002e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    aput-object v4, v5, v8

    iput-object v5, p0, Lcom/android/camera/component/BurstUI;->m_thumbItemsContainer:[Landroid/widget/RelativeLayout;

    const/4 v4, 0x5

    new-array v5, v4, [Lcom/android/camera/widget/ImageCheckBox;

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f080027

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/widget/ImageCheckBox;

    aput-object v4, v5, v9

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f080029

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/widget/ImageCheckBox;

    aput-object v4, v5, v7

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f08002b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/widget/ImageCheckBox;

    aput-object v4, v5, v10

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f08002d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/widget/ImageCheckBox;

    aput-object v4, v5, v11

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f08002f

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/widget/ImageCheckBox;

    aput-object v4, v5, v8

    iput-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    new-instance v4, Lcom/android/camera/component/BurstUI$9;

    invoke-direct {v4, p0, v1}, Lcom/android/camera/component/BurstUI$9;-><init>(Lcom/android/camera/component/BurstUI;Lcom/android/camera/widget/ImageCheckBox;)V

    invoke-virtual {v1, v4}, Lcom/android/camera/widget/ImageCheckBox;->setOnClickChangedListener(Lcom/android/camera/widget/ImageCheckBox$OnClickChangedListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/camera/component/BurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method

.method private onBurstCompleted()V
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    iget-wide v2, p0, Lcom/android/camera/component/BurstUI;->m_CapturingInstanceID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/component/BurstUI;->showProcessingDialog(Z)V

    goto :goto_0
.end method

.method private onPhotoSaved()V
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    iget-wide v2, p0, Lcom/android/camera/component/BurstUI;->m_CapturingInstanceID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/component/BurstUI;->showProcessingDialog(Z)V

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->showActionScreen()V

    goto :goto_0
.end method

.method private onThumbnailCreated(ILandroid/graphics/Bitmap;)V
    .locals 19

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/component/BurstUI;->m_CapturingInstanceID:J

    move-wide/from16 v17, v0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    aget-object v15, v15, p1

    invoke-virtual {v15}, Lcom/android/camera/widget/ImageCheckBox;->getImageView()Landroid/widget/ImageView;

    move-result-object v7

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v15

    invoke-static {v15}, Lcom/android/camera/rotate/OrientationConfig;->mapUIOrientationToDegree(I)I

    move-result v15

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/camera/ImageUtility;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-nez p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbnailWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbnailHeight()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getBurstReviewHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getBurstReviewWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    array-length v9, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_2

    aget-object v5, v2, v6

    invoke-virtual {v5}, Lcom/android/camera/widget/ImageCheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v14, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/android/camera/widget/ImageCheckBox;->setCheck(Z)V

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/android/camera/widget/ImageCheckBox;->setFocus(Z)V

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/android/camera/widget/ImageCheckBox;->addImageUri(Landroid/net/Uri;)V

    invoke-virtual {v5}, Lcom/android/camera/widget/ImageCheckBox;->requestLayout()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->linearLayoutThumbBar:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbBarWidth()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->linearLayoutThumbBar:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbBarHeight()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbBarPadding()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->linearLayoutThumbBar:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbItemMargin()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/BurstUI;->m_thumbItemsContainer:[Landroid/widget/RelativeLayout;

    array-length v9, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v9, :cond_3

    aget-object v11, v2, v6

    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v14, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbnailItemControllerHeight()I

    move-result v15

    iput v15, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->requestLayout()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    aget-object v15, v15, p1

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/widget/ImageCheckBox;->setCheck(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    aget-object v15, v15, p1

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/widget/ImageCheckBox;->setFocus(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/component/BurstController;->updateThumbItemsStatus(Ljava/util/ArrayList;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_burstReviewFrame:Landroid/widget/ImageView;

    invoke-static {v15, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_burstReviewFrame:Landroid/widget/ImageView;

    invoke-static {v15, v4}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_burstReviewFrame:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/android/camera/rotate/OrientationConfig;->mapUIOrientationToDegree(I)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/camera/ImageUtility;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private registerListeners()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "eventManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "CameraActivity.PreviewStarted"

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.Pausing"

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_PausingEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Query.ConfirmDeletingMediaMessage"

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_QueryDeletionMessageEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Resolution.Selected"

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_ResolutionSelectedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "ThumbnailButton.Clicked"

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_ThumbClickedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "ActionScreen.Open"

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreenOpenEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Query.MediaToSetAs"

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_SetMediaAsHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Query.MediaToShare"

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_ShareMediaHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    goto :goto_0
.end method

.method private showThunbmailBar(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_RotateReviewScreenContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_RotateReviewScreenContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private syncResolutionBack()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoModeHandler;->setResolutionHandler(Lcom/android/camera/IResolutionHandler;)V

    iget-boolean v2, p0, Lcom/android/camera/component/BurstUI;->m_IsResolutionSyncBackNeeded:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_ResolutionHandler:Lcom/android/camera/component/BurstResolutionHandler;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/camera/PhotoModeHandler;->getResolutionPreferenceKey(Lcom/android/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/BurstUI;->m_ResolutionHandler:Lcom/android/camera/component/BurstResolutionHandler;

    invoke-virtual {v3, v0}, Lcom/android/camera/component/BurstResolutionHandler;->getResolution(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/BurstUI;->m_IsResolutionSyncBackNeeded:Z

    :cond_0
    return-void
.end method

.method private updateReviewScreenStatus(Lcom/android/camera/widget/ImageCheckBox;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    invoke-virtual {v1, v7}, Lcom/android/camera/widget/ImageCheckBox;->setFocus(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v8}, Lcom/android/camera/widget/ImageCheckBox;->setFocus(Z)V

    invoke-virtual {p1}, Lcom/android/camera/widget/ImageCheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/camera/widget/ImageCheckBox;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    iget-object v6, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/camera/component/BurstController;->updateThumbItemsStatus(Ljava/util/ArrayList;)V

    :cond_2
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v7}, Lcom/android/camera/actionscreen/CommonActionScreen;->setDeleteButtonEnabled(Z)V

    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v7}, Lcom/android/camera/actionscreen/CommonActionScreen;->setSetAsButtonEnabled(Z)V

    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v7}, Lcom/android/camera/actionscreen/CommonActionScreen;->setShareButtonEnabled(Z)V

    :goto_2
    return-void

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/camera/widget/ImageCheckBox;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v8, :cond_6

    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v8}, Lcom/android/camera/actionscreen/CommonActionScreen;->setDeleteButtonEnabled(Z)V

    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v8}, Lcom/android/camera/actionscreen/CommonActionScreen;->setSetAsButtonEnabled(Z)V

    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v8}, Lcom/android/camera/actionscreen/CommonActionScreen;->setShareButtonEnabled(Z)V

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v7}, Lcom/android/camera/actionscreen/CommonActionScreen;->setSetAsButtonEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public enterBurstMode()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-enter burst mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Re-enter burst mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    const-string v1, "Burst Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/BurstController;

    iput-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    invoke-virtual {v0, p0}, Lcom/android/camera/component/BurstController;->link(Lcom/android/camera/component/BurstUI;)V

    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    iget-wide v4, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/BurstUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsRestartingPreviewNeeded:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraThread;->restartPreview(I)V

    iput-boolean v3, p0, Lcom/android/camera/component/BurstUI;->m_IsRestartingPreviewNeeded:Z

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Waiting for re-starting preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->initializeUI()V

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableFlash()V

    goto :goto_1
.end method

.method public exitBurstMode()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-exit burst mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsRestartingPreviewNeeded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->restartPreview(I)V

    iput-boolean v1, p0, Lcom/android/camera/component/BurstUI;->m_IsRestartingPreviewNeeded:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    iput-boolean v1, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/BurstUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->collapseContentLayout()V

    goto :goto_0
.end method

.method public getBurstReviewHeight()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_image_ratio"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeightWide_p:I

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeight_p:I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidth_l:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidth_l:I

    goto :goto_0
.end method

.method public getBurstReviewWidth()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_image_ratio"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidthWide_p:I

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidth_p:I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeightWide_l:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeight_l:I

    goto :goto_0
.end method

.method protected getContentLayoutID()I
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f030006

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030007

    goto :goto_0
.end method

.method public getThumbBarHeight()I
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarHeight_p:I

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarHeight_l:I

    goto :goto_0
.end method

.method public getThumbBarPadding()I
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarPadding_p:I

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarPadding_l:I

    goto :goto_0
.end method

.method public getThumbBarWidth()I
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarWidth_p:I

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarWidth_l:I

    goto :goto_0
.end method

.method public getThumbItemMargin()I
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbItemMargin_p:I

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbItemMargin_l:I

    goto :goto_0
.end method

.method public getThumbnailHeight()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_image_ratio"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidthWide:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidth:I

    goto :goto_0
.end method

.method public getThumbnailItemControllerHeight()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_image_ratio"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_thumbnailItemHeightController_p:I

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_thumbnailItemHeightController_p:I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_thumbnailItemHeightController_l:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_thumbnailItemHeightController_l:I

    goto :goto_0
.end method

.method public getThumbnailWidth()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_image_ratio"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidthWide:I

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidth:I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->onBurstCompleted()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/component/BurstUI;->m_CapturingInstanceID:J

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->onPhotoSaved()V

    goto :goto_0

    :pswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v1}, Lcom/android/camera/component/BurstUI;->onThumbnailCreated(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    aget-object v2, v1, v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v2, v1}, Lcom/android/camera/widget/ImageCheckBox;->addImageUri(Landroid/net/Uri;)V

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    const v3, 0x7f0b0136

    const v2, 0x7f0b0134

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    const v1, 0x7f0b0135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidth:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_thumbnailItemHeightController_l:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_thumbnailItemHeightController_p:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidthWide:I

    const v1, 0x7f0b012c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeightWide_p:I

    const v1, 0x7f0b012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeight_p:I

    const v1, 0x7f0b012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidth_p:I

    const v1, 0x7f0b012a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidthWide_p:I

    const v1, 0x7f0b0139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeight_l:I

    const v1, 0x7f0b0138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeightWide_l:I

    const v1, 0x7f0b0137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidth_l:I

    const v1, 0x7f0b013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarHeight_l:I

    const v1, 0x7f0b013c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarWidth_l:I

    const v1, 0x7f0b0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarHeight_p:I

    const v1, 0x7f0b0130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarWidth_p:I

    const v1, 0x7f0b0132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarPadding_p:I

    const v1, 0x7f0b0133

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbItemMargin_p:I

    const v1, 0x7f0b013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarPadding_l:I

    const v1, 0x7f0b013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbItemMargin_l:I

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->registerListeners()V

    return-void

    :cond_0
    const v1, 0x7f0b008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidth:I

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidthWide:I

    goto :goto_0
.end method

.method public isBurstModeEntered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    return v0
.end method

.method public prepareEnteringBurstMode(Z)V
    .locals 7

    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareEnteringBurstMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_ResolutionHandler:Lcom/android/camera/component/BurstResolutionHandler;

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_ResolutionHandler:Lcom/android/camera/component/BurstResolutionHandler;

    invoke-virtual {v3, v0}, Lcom/android/camera/PhotoModeHandler;->getResolution(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/camera/component/BurstResolutionHandler;->syncFromCurrentResolution(Lcom/android/camera/HTCCamera;Lcom/android/camera/Resolution;)V

    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/camera/component/BurstUI;->m_IsResolutionSyncBackNeeded:Z

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_ResolutionHandler:Lcom/android/camera/component/BurstResolutionHandler;

    invoke-virtual {v3, v4}, Lcom/android/camera/PhotoModeHandler;->setResolutionHandler(Lcom/android/camera/IResolutionHandler;)V

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMenuHandler()Lcom/android/camera/MenuHandler;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/MenuHandler;->updateResolutionList()V

    :cond_2
    iput-boolean p1, p0, Lcom/android/camera/component/BurstUI;->m_IsRestartingPreviewNeeded:Z

    goto :goto_0
.end method

.method public final prepareExitingBurstMode(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareExitingBurstMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->syncResolutionBack()V

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getMenuHandler()Lcom/android/camera/MenuHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->updateResolutionList()V

    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/component/BurstUI;->m_IsRestartingPreviewNeeded:Z

    goto :goto_0
.end method
