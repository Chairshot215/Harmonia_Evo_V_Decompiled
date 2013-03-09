.class public Lcom/android/mms/ui/MessageViewActivity;
.super Landroid/app/Activity;
.source "MessageViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;,
        Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;,
        Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;
    }
.end annotation


# static fields
.field private static final DEBUG_TRACE:Z = false

.field private static final DELETE_MESSAGE:I = 0x1

.field private static final DELETE_TOKEN:I = 0xc9

.field private static final INTENT_EXTRA_CATEGORY:Ljava/lang/String; = "category"

.field private static final INTENT_EXTRA_FOLDER:Ljava/lang/String; = "folder"

.field private static final INTENT_EXTRA_MSG_ID:Ljava/lang/String; = "msg_Id"

.field private static final INTENT_EXTRA_MSG_TYPE:Ljava/lang/String; = "msg_type"

.field private static final INTENT_EXTRA_THREAD_ID:Ljava/lang/String; = "thread_id"

.field private static final LOG_TAG:Ljava/lang/String; = "MessageViewActivity"

.field private static final MENU_ADD_TO_CONTACTS:I = 0xd

.field private static final MENU_CALL:I = 0x5

.field private static final MENU_COMPOSE_NEW:I = 0x9

.field private static final MENU_DELETE:I = 0x1

.field private static final MENU_DOWNLOAD:I = 0x6

.field private static final MENU_FORWARD:I = 0x4

.field private static final MENU_MOVE_TO:I = 0x10

.field private static final MENU_MOVE_TO_GENERAL_BOX:I = 0x3

.field private static final MENU_MOVE_TO_SECURE_BOX:I = 0x2

.field private static final MENU_OPEN_BLOCK_BOX:I = 0xe

.field private static final MENU_OPEN_BLOCK_LIST:I = 0xf

.field private static final MENU_OPEN_CONTACT:I = 0xc

.field private static final MENU_PLAY:I = 0x7

.field private static final MENU_REPLY:I = 0x0

.field private static final MENU_SAVE_ATTACHMENT:I = 0x8

.field private static final MENU_SEARCH:I = 0xb

.field private static final MENU_TRADITION_LIST:I = 0xa

.field private static final MENU_VT_CALL:I = 0x11

.field private static final MSG_UPDATE_CONTACT_NAME:I = 0x65

.field private static final READ_REPORT:I = 0x0

.field public static final REQUEST_CODE_IMPORT_VCARD:I = 0x3e

.field private static final SUBJECT_FONT_SIZE:I = 0x14

.field private static final THREAD_READ_QUERY_TOKEN:I = 0xca

.field private static final TYPE_AUDIO:I = 0x65

.field private static final TYPE_IMAGE:I = 0x64

.field private static final TYPE_VCALENDAR:I = 0x68

.field private static final TYPE_VCARD:I = 0x67

.field private static final TYPE_VIDEO:I = 0x66

.field private static final UPDATE_LIST_TOKEN:I = 0xcc

.field private static final UPDATE_READ_TOKEN:I = 0xcb

.field public static final VCALENDAR_REQUEST_CODE:I = 0x3d

.field public static sCurrentActivity:Landroid/app/Activity;


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAppContext:Landroid/content/Context;

.field private mCategory:Lcom/android/mms/category/Category;

.field private mContactHandler:Landroid/os/Handler;

.field public mDeleteProgressDialog:Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;

.field private mFolderType:Ljava/lang/String;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mIsForeground:Z

.field private mMediaViewClickListener:Landroid/view/View$OnClickListener;

.field private mMessageUri:Landroid/net/Uri;

.field private mMixMultiMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

.field private mMmsBodyView:Landroid/widget/LinearLayout;

.field private mMsg:Lcom/android/mms/msg/AbstractMessage;

.field private mMsgId:I

.field private mMsgType:Ljava/lang/String;

.field private mPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private mPhoneNum:Ljava/lang/String;

.field protected mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

.field private mSecureIcon:Landroid/widget/ImageView;

.field private mSmsBodyView:Landroid/widget/TextView;

.field private mSubjectView:Landroid/widget/TextView;

.field private mSubjectViewLayout:Landroid/view/View;

.field private mThreadId:J

.field private mUIlistenter:Lcom/android/mms/ui/MessagingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MessageViewActivity;->sCurrentActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mIsForeground:Z

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;

    .line 2415
    new-instance v0, Lcom/android/mms/ui/MessageViewActivity$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageViewActivity$11;-><init>(Lcom/android/mms/ui/MessageViewActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    .line 2432
    new-instance v0, Lcom/android/mms/ui/MessageViewActivity$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageViewActivity$12;-><init>(Lcom/android/mms/ui/MessageViewActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mContactHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageViewActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageViewActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageViewActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageViewActivity;->showSmsMms(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->updateStatusNotification()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessageViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->isReadReportRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->goToRootActivity()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessageViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MessageViewActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mContactHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MessageViewActivity;)Lcom/android/mms/msg/AbstractMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MessageViewActivity;Lcom/android/mms/msg/AbstractMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageViewActivity;->showCommonInfo(Lcom/android/mms/msg/AbstractMessage;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/MessageViewActivity;Lcom/android/mms/msg/AbstractMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageViewActivity;->showMms(Lcom/android/mms/msg/AbstractMessage;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/MessageViewActivity;Lcom/android/mms/msg/AbstractMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageViewActivity;->showSms(Lcom/android/mms/msg/AbstractMessage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageViewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsgId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->playSlideshow()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->saveAttachment()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageViewActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageViewActivity;->importVMedia(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageViewActivity;ILcom/android/mms/model/MediaModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageViewActivity;->onClickHandler(ILcom/android/mms/model/MediaModel;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->isMmsMessage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mFolderType:Ljava/lang/String;

    return-object v0
.end method

.method private addMediaView(Lcom/android/mms/model/MediaModel;)V
    .locals 31
    .parameter "media"

    .prologue
    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f030036

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/mms/ui/SlideAttachmentItemView;

    .line 1228
    .local v19, slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    const/4 v13, 0x0

    .line 1239
    .local v13, layout:Landroid/widget/LinearLayout$LayoutParams;
    const v27, 0x7f0e00b2

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1240
    .local v11, infoLayout:Landroid/view/View;
    const v27, 0x7f0e00ba

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 1241
    .local v9, imageView:Landroid/widget/ImageView;
    const v27, 0x7f0e00bb

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    .line 1242
    .local v26, videoView:Landroid/widget/ImageView;
    const v27, 0x7f0e00b4

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1243
    .local v10, infoImageView:Landroid/widget/ImageView;
    const v27, 0x7f0e00b6

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 1244
    .local v24, titleView:Landroid/widget/TextView;
    const v27, 0x7f0e00bd

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 1245
    .local v22, textView:Landroid/widget/TextView;
    const v27, 0x7f0e00b5

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1246
    .local v4, btnInfoAction:Landroid/widget/ImageView;
    const v27, 0x7f0e00b7

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1247
    .local v18, sizeView:Landroid/widget/TextView;
    const v27, 0x7f0e00bc

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1249
    .local v5, btnPlay:Landroid/widget/ImageView;
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v27

    if-eqz v27, :cond_3

    move-object/from16 v27, p1

    .line 1252
    check-cast v27, Lcom/android/mms/model/ImageModel;

    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1254
    .local v3, bitmap:Landroid/graphics/Bitmap;
    if-nez v3, :cond_2

    .line 1256
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1264
    :goto_0
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .end local v13           #layout:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v27, -0x1

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1423
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .restart local v13       #layout:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mMmsBodyView:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1425
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v27

    if-eqz v27, :cond_15

    .line 1427
    new-instance v27, Lcom/android/mms/ui/MessageViewActivity$5;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageViewActivity$5;-><init>(Lcom/android/mms/ui/MessageViewActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1476
    :cond_1
    :goto_2
    return-void

    .line 1260
    .restart local v3       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1261
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1266
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 1269
    const/16 v23, 0x0

    .local v23, thumbnail:Landroid/graphics/Bitmap;
    move-object/from16 v25, p1

    .line 1270
    check-cast v25, Lcom/android/mms/model/VideoModel;

    .line 1274
    .local v25, video:Lcom/android/mms/model/VideoModel;
    :try_start_0
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/VideoModel;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 1281
    :goto_3
    if-nez v23, :cond_4

    .line 1283
    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1284
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1292
    :goto_4
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .end local v13           #layout:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v27, -0x1

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1293
    .restart local v13       #layout:Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_1

    .line 1276
    :catch_0
    move-exception v7

    .line 1278
    .local v7, e:Landroid/drm/mobile1/DrmException;
    invoke-virtual {v7}, Landroid/drm/mobile1/DrmException;->printStackTrace()V

    goto :goto_3

    .line 1288
    .end local v7           #e:Landroid/drm/mobile1/DrmException;
    :cond_4
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1289
    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 1294
    .end local v23           #thumbnail:Landroid/graphics/Bitmap;
    .end local v25           #video:Lcom/android/mms/model/VideoModel;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v27

    if-eqz v27, :cond_8

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f090029

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .local v12, kb:Ljava/lang/String;
    move-object/from16 v27, p1

    .line 1298
    check-cast v27, Lcom/android/mms/model/AudioModel;

    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/AudioModel;->getMediaSize()I

    move-result v17

    .line 1299
    .local v17, size:I
    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    if-nez v27, :cond_6

    const/4 v14, 0x1

    .line 1301
    .local v14, mSize:I
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v27

    if-eqz v27, :cond_7

    .line 1302
    const v27, 0x7f02014b

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1306
    :goto_6
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1307
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1309
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1310
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1312
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .end local v13           #layout:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v27, -0x1

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1313
    .restart local v13       #layout:Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_1

    .line 1299
    .end local v14           #mSize:I
    :cond_6
    move/from16 v0, v17

    div-int/lit16 v14, v0, 0x400

    goto :goto_5

    .line 1304
    .restart local v14       #mSize:I
    :cond_7
    const v27, 0x7f0201a7

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 1314
    .end local v12           #kb:Ljava/lang/String;
    .end local v14           #mSize:I
    .end local v17           #size:I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v27

    if-eqz v27, :cond_b

    move-object/from16 v27, p1

    .line 1317
    check-cast v27, Lcom/android/mms/model/TextModel;

    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 1319
    .local v21, text:Ljava/lang/String;
    if-nez v21, :cond_9

    .line 1321
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1346
    :goto_7
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .end local v13           #layout:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v27, -0x1

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1347
    .restart local v13       #layout:Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_1

    .line 1325
    :cond_9
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v16

    .line 1326
    .local v16, parser:Lcom/android/mms/util/SmileyParser;
    new-instance v6, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1328
    .local v6, buffer:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v22

    invoke-static {v0, v6}, Lcom/android/mms/ui/MyLinkify;->parseLinks(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 1329
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1330
    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1331
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mMediaViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1333
    const/high16 v27, -0x100

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1335
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSelection()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 1337
    const/16 v27, 0x1

    const/16 v28, 0xa

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->enableHtcTextSelection(ZI)V

    .line 1343
    :goto_8
    const/16 v27, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_7

    .line 1341
    :cond_a
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_8

    .line 1348
    .end local v6           #buffer:Landroid/text/SpannableStringBuilder;
    .end local v16           #parser:Lcom/android/mms/util/SmileyParser;
    .end local v21           #text:Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v27

    if-eqz v27, :cond_10

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f090140

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, filename:Ljava/lang/String;
    move-object/from16 v15, p1

    .line 1352
    check-cast v15, Lcom/android/mms/model/VCardModel;

    .line 1353
    .local v15, model:Lcom/android/mms/model/VCardModel;
    invoke-virtual {v15}, Lcom/android/mms/model/VCardModel;->getSrc()Ljava/lang/String;

    move-result-object v20

    .line 1354
    .local v20, src:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f090029

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1355
    .restart local v12       #kb:Ljava/lang/String;
    invoke-virtual {v15}, Lcom/android/mms/model/VCardModel;->getMediaSize()I

    move-result v17

    .line 1357
    .restart local v17       #size:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v27

    if-eqz v27, :cond_e

    .line 1358
    const v27, 0x7f02014a

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1362
    :goto_9
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1363
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1365
    if-eqz v20, :cond_c

    .line 1366
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1368
    :cond_c
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1370
    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f80

    cmpg-float v27, v27, v28

    if-gez v27, :cond_f

    .line 1371
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "1 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1375
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mMsgId:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getMmsSavedStatus(J)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 1377
    if-eqz v18, :cond_d

    .line 1378
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0902c9

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1381
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1383
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .end local v13           #layout:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v27, -0x1

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1384
    .restart local v13       #layout:Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_1

    .line 1360
    :cond_e
    const v27, 0x7f0200f5

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 1373
    :cond_f
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x400

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1385
    .end local v8           #filename:Ljava/lang/String;
    .end local v12           #kb:Ljava/lang/String;
    .end local v15           #model:Lcom/android/mms/model/VCardModel;
    .end local v17           #size:I
    .end local v20           #src:Ljava/lang/String;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f090141

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #filename:Ljava/lang/String;
    move-object/from16 v15, p1

    .line 1389
    check-cast v15, Lcom/android/mms/model/VCalendarModel;

    .line 1390
    .local v15, model:Lcom/android/mms/model/VCalendarModel;
    invoke-virtual {v15}, Lcom/android/mms/model/VCalendarModel;->getSrc()Ljava/lang/String;

    move-result-object v20

    .line 1391
    .restart local v20       #src:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f090029

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1392
    .restart local v12       #kb:Ljava/lang/String;
    invoke-virtual {v15}, Lcom/android/mms/model/VCalendarModel;->getMediaSize()I

    move-result v17

    .line 1394
    .restart local v17       #size:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v27

    if-eqz v27, :cond_13

    .line 1395
    const v27, 0x7f02014f

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1399
    :goto_b
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1400
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1402
    if-eqz v20, :cond_11

    .line 1403
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1405
    :cond_11
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1407
    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f80

    cmpg-float v27, v27, v28

    if-gez v27, :cond_14

    .line 1408
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "1 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1412
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mMsgId:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getMmsSavedStatus(J)Z

    move-result v27

    if-eqz v27, :cond_12

    .line 1414
    if-eqz v18, :cond_12

    .line 1415
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0902c9

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1418
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1420
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .end local v13           #layout:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v27, -0x1

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v13       #layout:Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_1

    .line 1397
    :cond_13
    const v27, 0x7f0200f4

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 1410
    :cond_14
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x400

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 1436
    .end local v8           #filename:Ljava/lang/String;
    .end local v12           #kb:Ljava/lang/String;
    .end local v15           #model:Lcom/android/mms/model/VCalendarModel;
    .end local v17           #size:I
    .end local v20           #src:Ljava/lang/String;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v27

    if-eqz v27, :cond_16

    .line 1438
    new-instance v27, Lcom/android/mms/ui/MessageViewActivity$6;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageViewActivity$6;-><init>(Lcom/android/mms/ui/MessageViewActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 1446
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v27

    if-eqz v27, :cond_17

    .line 1448
    new-instance v27, Lcom/android/mms/ui/MessageViewActivity$7;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageViewActivity$7;-><init>(Lcom/android/mms/ui/MessageViewActivity;Lcom/android/mms/model/MediaModel;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 1456
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v27

    if-eqz v27, :cond_18

    .line 1458
    new-instance v27, Lcom/android/mms/ui/MessageViewActivity$8;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageViewActivity$8;-><init>(Lcom/android/mms/ui/MessageViewActivity;Lcom/android/mms/model/MediaModel;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 1466
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 1468
    new-instance v27, Lcom/android/mms/ui/MessageViewActivity$9;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageViewActivity$9;-><init>(Lcom/android/mms/ui/MessageViewActivity;Lcom/android/mms/model/MediaModel;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2
.end method

.method private bindCollapseView(Lcom/android/mms/msg/MultimediaMessage;)V
    .locals 29
    .parameter "mms"

    .prologue
    .line 985
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v18

    .line 986
    .local v18, inflater:Landroid/view/LayoutInflater;
    const/16 v27, 0x0

    .line 987
    .local v27, textCount:I
    const/16 v20, 0x0

    .line 988
    .local v20, isVcardVcalendar:Z
    const/16 v19, 0x0

    .line 990
    .local v19, isMedia:Z
    const v3, 0x7f030020

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    .line 991
    .local v23, mmsView:Landroid/view/View;
    const v3, 0x7f0e0077

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 992
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "common_button_small"

    const v6, 0x7f0200d4

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 996
    const v3, 0x7f0e007a

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 997
    .local v17, imageView:Landroid/widget/ImageView;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 999
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/msg/MultimediaMessage;->withMixedMessageBody()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1001
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageViewActivity;->mMixMultiMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageBody()Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v21

    .line 1002
    .local v21, mMedia:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageViewActivity;->mMixMultiMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/MixedMultimediaMessage;->getFirstImage()Lcom/android/mms/model/ImageModel;

    move-result-object v16

    .line 1004
    .local v16, image:Lcom/android/mms/model/ImageModel;
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/mms/model/MediaModel;

    .line 1006
    .local v22, media:Lcom/android/mms/model/MediaModel;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextAttachment()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1008
    add-int/lit8 v27, v27, 0x1

    .line 1010
    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_1

    .line 1011
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageViewActivity;->addMediaView(Lcom/android/mms/model/MediaModel;)V

    .line 1014
    :cond_1
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1016
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageViewActivity;->addMediaView(Lcom/android/mms/model/MediaModel;)V

    .line 1017
    const/16 v20, 0x1

    goto :goto_0

    .line 1019
    :cond_3
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1020
    const/16 v19, 0x1

    goto :goto_0

    .line 1024
    .end local v22           #media:Lcom/android/mms/model/MediaModel;
    :cond_4
    if-nez v19, :cond_c

    .line 1138
    .end local v21           #mMedia:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    :cond_5
    :goto_1
    return-void

    .line 1030
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #image:Lcom/android/mms/model/ImageModel;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageBody()Lcom/android/mms/model/Model;

    move-result-object v24

    check-cast v24, Lcom/android/mms/model/SlideshowModel;

    .line 1031
    .local v24, model:Lcom/android/mms/model/SlideshowModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/RelatedMultimediaMessage;->findFirstImage()Lcom/android/mms/model/ImageModel;

    move-result-object v16

    .line 1033
    .restart local v16       #image:Lcom/android/mms/model/ImageModel;
    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/mms/model/SlideModel;

    .line 1035
    .local v25, slide:Lcom/android/mms/model/SlideModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030036

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/SlideAttachmentItemView;

    .line 1037
    .local v2, slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->setCaller(Landroid/app/Activity;)V

    .line 1039
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1041
    const-string v5, ""

    .line 1042
    .local v5, text:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/SlideModel;->getVcard()Lcom/android/mms/model/VCardModel;

    move-result-object v22

    .line 1044
    .local v22, media:Lcom/android/mms/model/VCardModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1045
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1047
    :cond_8
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/VCardModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/VCardModel;->getMediaSize()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v6}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageId()J

    move-result-wide v6

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/VCardModel;->getPduPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/android/mms/ui/SlideAttachmentItemView;->setVCard(Ljava/lang/String;ILjava/lang/String;JLcom/google/android/mms/pdu/PduPart;)V

    .line 1050
    const/16 v20, 0x1

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageViewActivity;->mMmsBodyView:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1070
    .end local v5           #text:Ljava/lang/String;
    .end local v22           #media:Lcom/android/mms/model/VCardModel;
    :cond_9
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextAttachment()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1072
    add-int/lit8 v27, v27, 0x1

    .line 1073
    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_7

    .line 1075
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    .line 1076
    .local v5, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v8

    const/4 v3, -0x1

    invoke-virtual {v5, v3}, Lcom/android/mms/model/TextModel;->isTopLayout(I)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v2

    invoke-virtual/range {v6 .. v12}, Lcom/android/mms/ui/SlideAttachmentItemView;->setText(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageViewActivity;->mMmsBodyView:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 1054
    .end local v5           #text:Lcom/android/mms/model/TextModel;
    :cond_a
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/SlideModel;->hasVCalendar()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1056
    const-string v5, ""

    .line 1057
    .local v5, text:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/SlideModel;->getVCalendar()Lcom/android/mms/model/VCalendarModel;

    move-result-object v22

    .line 1059
    .local v22, media:Lcom/android/mms/model/VCalendarModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1060
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1062
    :cond_b
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/VCalendarModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/VCalendarModel;->getMediaSize()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v6}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageId()J

    move-result-wide v6

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/VCalendarModel;->getPduPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/android/mms/ui/SlideAttachmentItemView;->setVCalendar(Ljava/lang/String;ILjava/lang/String;JLcom/google/android/mms/pdu/PduPart;)V

    .line 1065
    const/16 v20, 0x1

    .line 1066
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageViewActivity;->mMmsBodyView:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 1086
    .end local v2           #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    .end local v5           #text:Ljava/lang/String;
    .end local v22           #media:Lcom/android/mms/model/VCalendarModel;
    .end local v24           #model:Lcom/android/mms/model/SlideshowModel;
    .end local v25           #slide:Lcom/android/mms/model/SlideModel;
    :cond_c
    if-nez v20, :cond_5

    .line 1090
    if-eqz v16, :cond_d

    .line 1092
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1095
    const v3, 0x7f0e0079

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    const v3, 0x7f0e007b

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    :goto_4
    const v3, 0x7f0e007c

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 1106
    .local v28, type:Landroid/widget/TextView;
    const v3, 0x20c01f6

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1109
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/msg/MultimediaMessage;->withMixedMessageBody()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageViewActivity;->mMixMultiMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageBody()Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1117
    .local v13, count:I
    :goto_5
    const/4 v3, 0x1

    if-le v13, v3, :cond_f

    .line 1119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090143

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1126
    .local v26, slideCount:Ljava/lang/String;
    :goto_6
    const v3, 0x7f0e007d

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1127
    .local v14, detail:Landroid/widget/TextView;
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    new-instance v3, Lcom/android/mms/ui/MessageViewActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/mms/ui/MessageViewActivity$3;-><init>(Lcom/android/mms/ui/MessageViewActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageViewActivity;->mMmsBodyView:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1101
    .end local v13           #count:I
    .end local v14           #detail:Landroid/widget/TextView;
    .end local v26           #slideCount:Ljava/lang/String;
    .end local v28           #type:Landroid/widget/TextView;
    :cond_d
    const v3, 0x7f020182

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 1112
    .restart local v28       #type:Landroid/widget/TextView;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageBody()Lcom/android/mms/model/Model;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideshowModel;

    check-cast v3, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v13

    .restart local v13       #count:I
    goto :goto_5

    .line 1123
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090117

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .restart local v26       #slideCount:Ljava/lang/String;
    goto :goto_6
.end method

.method private bindExpandView(Lcom/android/mms/model/SlideshowModel;)V
    .locals 15
    .parameter "model"

    .prologue
    .line 897
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v1}, Lcom/android/mms/msg/RelatedMultimediaMessage;->hasOtherAttachment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 899
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030036

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideAttachmentItemView;

    .line 902
    .local v0, slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v1}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getURI()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v2}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getAttachmentsNumber()I

    move-result v2

    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getAttachmentsSize()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/mms/ui/SlideAttachmentItemView;->setAttachments(Landroid/net/Uri;II)V

    .line 904
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mMmsBodyView:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 906
    invoke-virtual {v0, p0}, Lcom/android/mms/ui/SlideAttachmentItemView;->setCaller(Landroid/app/Activity;)V

    .line 909
    .end local v0           #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/mms/model/SlideModel;

    .line 911
    .local v14, slide:Lcom/android/mms/model/SlideModel;
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030036

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideAttachmentItemView;

    .line 913
    .restart local v0       #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    invoke-virtual {v0, p0}, Lcom/android/mms/ui/SlideAttachmentItemView;->setCaller(Landroid/app/Activity;)V

    .line 915
    const/4 v13, -0x1

    .line 917
    .local v13, mediaTop:I
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 919
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v12

    .line 920
    .local v12, media:Lcom/android/mms/model/ImageModel;
    invoke-virtual {v12}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lcom/android/mms/ui/SlideAttachmentItemView;->setImage(Ljava/lang/String;Lcom/android/mms/model/ImageModel;)V

    .line 922
    invoke-virtual {v12}, Lcom/android/mms/model/ImageModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 923
    invoke-virtual {v12}, Lcom/android/mms/model/ImageModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v13

    .line 956
    .end local v12           #media:Lcom/android/mms/model/ImageModel;
    :cond_1
    :goto_1
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 958
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v12

    .line 959
    .local v12, media:Lcom/android/mms/model/AudioModel;
    invoke-virtual {v0, v12}, Lcom/android/mms/ui/SlideAttachmentItemView;->setAudio(Lcom/android/mms/model/AudioModel;)V

    .line 962
    .end local v12           #media:Lcom/android/mms/model/AudioModel;
    :cond_2
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 964
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    .line 965
    .local v3, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v13}, Lcom/android/mms/model/TextModel;->isTopLayout(I)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v0

    invoke-virtual/range {v4 .. v10}, Lcom/android/mms/ui/SlideAttachmentItemView;->setText(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 969
    .end local v3           #text:Lcom/android/mms/model/TextModel;
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mMmsBodyView:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 925
    :cond_4
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 927
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v12

    .line 928
    .local v12, media:Lcom/android/mms/model/VideoModel;
    invoke-virtual {v0, v12}, Lcom/android/mms/ui/SlideAttachmentItemView;->setVideo(Lcom/android/mms/model/VideoModel;)V

    .line 930
    invoke-virtual {v12}, Lcom/android/mms/model/VideoModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 931
    invoke-virtual {v12}, Lcom/android/mms/model/VideoModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v13

    goto :goto_1

    .line 933
    .end local v12           #media:Lcom/android/mms/model/VideoModel;
    :cond_5
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 935
    const-string v3, ""

    .line 936
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getVcard()Lcom/android/mms/model/VCardModel;

    move-result-object v12

    .line 938
    .local v12, media:Lcom/android/mms/model/VCardModel;
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v1}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 939
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v1}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    .line 941
    :cond_6
    invoke-virtual {v12}, Lcom/android/mms/model/VCardModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcom/android/mms/model/VCardModel;->getMediaSize()I

    move-result v2

    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageId()J

    move-result-wide v4

    invoke-virtual {v12}, Lcom/android/mms/model/VCardModel;->getPduPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/ui/SlideAttachmentItemView;->setVCard(Ljava/lang/String;ILjava/lang/String;JLcom/google/android/mms/pdu/PduPart;)V

    goto/16 :goto_1

    .line 944
    .end local v3           #text:Ljava/lang/String;
    .end local v12           #media:Lcom/android/mms/model/VCardModel;
    :cond_7
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasVCalendar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 946
    const-string v3, ""

    .line 947
    .restart local v3       #text:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getVCalendar()Lcom/android/mms/model/VCalendarModel;

    move-result-object v12

    .line 949
    .local v12, media:Lcom/android/mms/model/VCalendarModel;
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v1}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 950
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v1}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    .line 952
    :cond_8
    invoke-virtual {v12}, Lcom/android/mms/model/VCalendarModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcom/android/mms/model/VCalendarModel;->getMediaSize()I

    move-result v2

    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageId()J

    move-result-wide v4

    invoke-virtual {v12}, Lcom/android/mms/model/VCalendarModel;->getPduPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/ui/SlideAttachmentItemView;->setVCalendar(Ljava/lang/String;ILjava/lang/String;JLcom/google/android/mms/pdu/PduPart;)V

    goto/16 :goto_1

    .line 972
    .end local v0           #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    .end local v3           #text:Ljava/lang/String;
    .end local v12           #media:Lcom/android/mms/model/VCalendarModel;
    .end local v13           #mediaTop:I
    .end local v14           #slide:Lcom/android/mms/model/SlideModel;
    :cond_9
    return-void
.end method

.method private callBackSender(Z)V
    .locals 6
    .parameter "isVTCall"

    .prologue
    .line 2181
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2183
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 2212
    :goto_0
    return-void

    .line 2189
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageViewActivity;->mPhoneNum:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 2193
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mPhoneNum:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->getMakeCallDirectlyIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2195
    .local v2, it:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 2197
    const-string v3, "isVTCall"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2200
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2202
    .end local v2           #it:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2204
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MessageViewActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[callbacksender] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2209
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v3, "MessageViewActivity"

    const-string v4, "[callbacksender] Empty phone number"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private download()V
    .locals 3

    .prologue
    .line 2399
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2400
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2401
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2402
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageViewActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2404
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->finish()V

    .line 2405
    return-void
.end method

.method private forwardMessage(Landroid/content/Context;Lcom/android/mms/msg/AbstractMessage;)V
    .locals 13
    .parameter "context"
    .parameter "orig"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2234
    new-instance v3, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v3, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2236
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "compose_mode"

    invoke-virtual {v3, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2237
    const-string v9, "exit_on_sent"

    invoke-virtual {v3, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2238
    const-string v9, "Forward_msg"

    invoke-virtual {v3, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2240
    const/4 v8, 0x0

    .line 2242
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {p2}, Lcom/android/mms/msg/AbstractMessage;->isTextMessage()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2245
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p2}, Lcom/android/mms/msg/AbstractMessage;->getFrom()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v11}, Lcom/android/mms/ui/MessageUtils;->getPrefix(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 2246
    .local v6, subject:Ljava/lang/String;
    const-string v9, "sms_body"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lcom/android/mms/msg/AbstractMessage;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2247
    const-string v9, "msg_type"

    const-string v10, "sms"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2312
    :goto_0
    const/4 v9, -0x1

    invoke-virtual {p0, v3, v9}, Lcom/android/mms/ui/MessageViewActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    .line 2313
    :goto_1
    return-void

    .end local v6           #subject:Ljava/lang/String;
    :cond_0
    move-object v4, p2

    .line 2251
    check-cast v4, Lcom/android/mms/msg/MultimediaMessage;

    .line 2252
    .local v4, mmi:Lcom/android/mms/msg/MultimediaMessage;
    new-instance v5, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v5}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 2254
    .local v5, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-virtual {v4}, Lcom/android/mms/msg/MultimediaMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 2256
    .local v0, contentType:Ljava/lang/String;
    const-string v9, "application/vnd.wap.multipart.related"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2261
    invoke-virtual {v4}, Lcom/android/mms/msg/MultimediaMessage;->willDiscardAttachmentWhileForwading()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2263
    const v9, 0x7f090308

    invoke-static {p0, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 2267
    :cond_1
    const-string v9, "application/vnd.wap.multipart.related"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    .line 2272
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p2}, Lcom/android/mms/msg/AbstractMessage;->getFrom()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v12}, Lcom/android/mms/ui/MessageUtils;->getPrefix(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 2274
    .restart local v6       #subject:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/mms/msg/MultimediaMessage;->getSubject()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 2277
    invoke-virtual {v4}, Lcom/android/mms/msg/MultimediaMessage;->getSubject()Ljava/lang/String;

    move-result-object v2

    .line 2278
    .local v2, encstr:Ljava/lang/String;
    const-string v7, ""

    .line 2280
    .local v7, substr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v9, v10, :cond_3

    .line 2282
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2285
    :cond_3
    invoke-virtual {v7, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_5

    .line 2286
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2291
    .end local v2           #encstr:Ljava/lang/String;
    .end local v7           #substr:Ljava/lang/String;
    :cond_4
    :goto_2
    new-instance v9, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v9, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 2292
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/mms/msg/MultimediaMessage;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 2297
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->getPduPersister()Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v5, v10}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 2307
    const-string v9, "msg_uri"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2308
    const-string v9, "subject"

    invoke-virtual {v3, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2309
    const-string v9, "msg_type"

    const-string v10, "mms"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2288
    .restart local v2       #encstr:Ljava/lang/String;
    .restart local v7       #substr:Ljava/lang/String;
    :cond_5
    move-object v6, v2

    goto :goto_2

    .line 2299
    .end local v2           #encstr:Ljava/lang/String;
    .end local v7           #substr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2301
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v9, "MessageViewActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to copy message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lcom/android/mms/msg/AbstractMessage;->getURI()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2302
    const v9, 0x7f09005f

    invoke-static {p0, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method private getConfirmDeleteDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "msgResId"

    .prologue
    const/4 v6, 0x0

    .line 2135
    new-instance v2, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;

    iget v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsgId:I

    invoke-direct {v2, p0, v4}, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/MessageViewActivity;I)V

    .line 2136
    .local v2, listener:Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;
    const v4, 0x7f030005

    invoke-static {p0, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2137
    .local v1, contents:Landroid/view/View;
    const v4, 0x7f0e0024

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2138
    .local v3, textDelete:Landroid/widget/TextView;
    const v4, 0x7f0e0025

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2140
    .local v0, checkbox:Landroid/widget/CheckBox;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2141
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageViewActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2143
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20c01fc

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0200d1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20c015f

    invoke-virtual {v4, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20c0164

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    return-object v4
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 1827
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1
    :goto_0
    return-wide p1

    .restart local p1
    :cond_0
    neg-long p1, p1

    goto :goto_0
.end method

.method private getMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;
    .locals 9
    .parameter "adapter"

    .prologue
    .line 1790
    iget-object v6, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsgType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageId()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageViewActivity;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1791
    .local v2, key:J
    invoke-static {}, Lcom/android/mms/util/MessageCache;->getInstance()Lcom/android/mms/util/MessageCache;

    move-result-object v0

    .line 1792
    .local v0, cache:Lcom/android/mms/util/MessageCache;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/mms/util/MessageCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/msg/AbstractMessage;

    .line 1794
    .local v4, msg:Lcom/android/mms/msg/AbstractMessage;
    if-nez v4, :cond_1

    .line 1798
    :try_start_0
    const-string v6, "sms"

    iget-object v7, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsgType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1800
    new-instance v5, Lcom/android/mms/msg/TextMessage;

    iget-object v6, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v5, v6, p1, v7}, Lcom/android/mms/msg/TextMessage;-><init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V

    .end local v4           #msg:Lcom/android/mms/msg/AbstractMessage;
    .local v5, msg:Lcom/android/mms/msg/AbstractMessage;
    move-object v4, v5

    .line 1807
    .end local v5           #msg:Lcom/android/mms/msg/AbstractMessage;
    .restart local v4       #msg:Lcom/android/mms/msg/AbstractMessage;
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lcom/android/mms/util/MessageCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    :cond_1
    :goto_1
    return-object v4

    .line 1802
    :cond_2
    const-string v6, "mms"

    iget-object v7, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsgType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1804
    iget-object v6, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, p1, v7}, Lcom/android/mms/msg/MultimediaMessage;->create(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)Lcom/android/mms/msg/AbstractMessage;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 1809
    :catch_0
    move-exception v1

    .line 1811
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v6, "MessageViewActivity"

    invoke-virtual {v1}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getNotificationIndDetails(Landroid/content/Context;Lcom/android/mms/msg/Notification;)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "notification"

    .prologue
    const/16 v12, 0xa

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    .local v0, details:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 725
    .local v3, res:Landroid/content/res/Resources;
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget v7, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsgId:I

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 730
    .local v5, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    check-cast v2, Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .local v2, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    const v6, 0x7f0900b5

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const v6, 0x7f0900b8

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 743
    const v6, 0x7f0900b9

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {p2}, Lcom/android/mms/msg/Notification;->getFrom()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 748
    const v6, 0x7f090028

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v10}, Lcom/android/mms/msg/AbstractMessage;->getTimestamp()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringEx(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 753
    const v6, 0x7f0900bf

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-virtual {p2}, Lcom/android/mms/msg/Notification;->getSubject()Ljava/lang/String;

    move-result-object v4

    .line 756
    .local v4, subject:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 758
    const v6, 0x7f0900f3

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    :goto_0
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 767
    const v6, 0x7f0900c5

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageClass()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->getMessageClassId([B)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 774
    const v6, 0x7f0900c0

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {p2}, Lcom/android/mms/msg/Notification;->getMessageSize()I

    move-result v6

    add-int/lit16 v6, v6, 0x3ff

    div-int/lit16 v6, v6, 0x400

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    const v6, 0x7f090029

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v2           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v4           #subject:Ljava/lang/String;
    :goto_1
    return-object v6

    .line 732
    :catch_0
    move-exception v1

    .line 734
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v6, "MessageViewActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load the message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900b3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 762
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    .restart local v2       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .restart local v4       #subject:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getPduPersister()Lcom/google/android/mms/pdu/PduPersister;
    .locals 1

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    if-eqz v0, :cond_0

    .line 2320
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 2323
    :goto_0
    return-object v0

    .line 2322
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 2323
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    goto :goto_0
.end method

.method private getThreadUri()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 1682
    iget v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsgId:I

    .line 1684
    .local v1, id:I
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->isMmsMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1686
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1693
    .local v0, builder:Landroid/net/Uri$Builder;
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageViewActivity;->mFolderType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1694
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1695
    const-string v3, "category"

    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v4}, Lcom/android/mms/category/Category;->value()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1697
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1699
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "MessageViewActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getThreadUri >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    return-object v2

    .line 1690
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto :goto_0
.end method

.method private getVcardByteArry(Lcom/google/android/mms/pdu/PduPart;)[B
    .locals 7
    .parameter "part"

    .prologue
    .line 1614
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v3

    .line 1616
    .local v3, mVcard:[B
    if-nez v3, :cond_0

    .line 1618
    const/4 v1, 0x0

    .line 1622
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1623
    .local v2, mContentResolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 1624
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v3, v4, [B

    .line 1625
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 1637
    if-eqz v1, :cond_0

    .line 1641
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1651
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #mContentResolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-object v3

    .line 1643
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #mContentResolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 1645
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MessageViewActivity"

    const-string v5, "[Vcard] Failed to close stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1627
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #mContentResolver:Landroid/content/ContentResolver;
    :catch_1
    move-exception v0

    .line 1629
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_2
    const-string v4, "MessageViewActivity"

    const-string v5, "[Vcard] Failed to load part data"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1637
    if-eqz v1, :cond_0

    .line 1641
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1643
    :catch_2
    move-exception v0

    .line 1645
    const-string v4, "MessageViewActivity"

    const-string v5, "[Vcard] Failed to close stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1631
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1633
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v4, "MessageViewActivity"

    const-string v5, "[Vcard] Failed to allocate mvCard memory"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1637
    if-eqz v1, :cond_0

    .line 1641
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 1643
    :catch_4
    move-exception v0

    .line 1645
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MessageViewActivity"

    const-string v5, "[Vcard] Failed to close stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1637
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    .line 1641
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1646
    :cond_1
    :goto_1
    throw v4

    .line 1643
    :catch_5
    move-exception v0

    .line 1645
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MessageViewActivity"

    const-string v6, "[Vcard] Failed to close stream"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private goToRootActivity()V
    .locals 3

    .prologue
    .line 2156
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/android/mms/ui/TraditionalList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2158
    .local v0, it:Landroid/content/Intent;
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2159
    const-string v1, "category"

    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2}, Lcom/android/mms/category/Category;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2160
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 2161
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->finish()V

    .line 2162
    return-void
.end method

.method private importVMedia(I)V
    .locals 14
    .parameter "ntype"

    .prologue
    .line 1547
    const/16 v10, 0x67

    if-eq p1, v10, :cond_0

    const/16 v10, 0x68

    if-ne p1, v10, :cond_3

    .line 1554
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v12, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v12}, Lcom/android/mms/msg/AbstractMessage;->getMessageId()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/msg/body/MixedMessageBody;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1563
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v7

    .line 1565
    .local v7, partNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_3

    .line 1567
    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    .line 1568
    .local v6, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>([B)V

    .line 1571
    .local v8, type:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1573
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v4

    .line 1574
    .local v4, mediaName:Ljava/lang/String;
    const-string v5, ""

    .line 1575
    .local v5, mimeType:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getContentTypeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1577
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1579
    move-object v8, v5

    .line 1587
    .end local v4           #mediaName:Ljava/lang/String;
    .end local v5           #mimeType:Ljava/lang/String;
    :cond_1
    const-string v10, "text/x-vCard"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1590
    invoke-direct {p0, v6}, Lcom/android/mms/ui/MessageViewActivity;->getVcardByteArry(Lcom/google/android/mms/pdu/PduPart;)[B

    move-result-object v9

    .line 1592
    .local v9, vCard:[B
    if-eqz v9, :cond_2

    .line 1595
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1596
    .local v3, intent:Landroid/content/Intent;
    const-string v10, "android.intent.action.IMPORT_VCARD_SELECT_FIELDS"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1597
    const-string v10, "result"

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1598
    const-string v10, "MMS_ID"

    iget-object v11, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v11}, Lcom/android/mms/msg/AbstractMessage;->getMessageId()J

    move-result-wide v11

    invoke-virtual {v3, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1599
    const/16 v10, 0x3e

    invoke-virtual {p0, v3, v10}, Lcom/android/mms/ui/MessageViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1565
    .end local v3           #intent:Landroid/content/Intent;
    .end local v9           #vCard:[B
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1557
    .end local v0           #body:Lcom/google/android/mms/pdu/PduBody;
    .end local v2           #i:I
    .end local v6           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v7           #partNum:I
    .end local v8           #type:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1559
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v10, "MessageViewActivity"

    invoke-virtual {v1}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1609
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :cond_3
    return-void

    .line 1603
    .restart local v0       #body:Lcom/google/android/mms/pdu/PduBody;
    .restart local v2       #i:I
    .restart local v6       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v7       #partNum:I
    .restart local v8       #type:Ljava/lang/String;
    :cond_4
    const-string v10, "text/x-vCalendar"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1605
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v11}, Lcom/android/mms/msg/AbstractMessage;->getMessageId()J

    move-result-wide v11

    invoke-static {v10, v6, v11, v12}, Lcom/android/mms/ui/MessageUtils;->launchVcalendarPrompt(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;J)V

    goto :goto_1
.end method

.method private initLayoutView()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 569
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 572
    .local v2, inflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/htc/widget/HeaderBarMiddle;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    .line 574
    .local v0, headerMiddle:Lcom/htc/widget/HeaderBarMiddle;
    new-instance v4, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v4, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 575
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarMiddle;->addCenterView(Landroid/view/View;)V

    .line 576
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 577
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 581
    new-instance v1, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v1, p0}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    .line 582
    .local v1, headerRImage:Lcom/htc/widget/HeaderBarImage;
    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->addView(Landroid/view/View;)V

    .line 583
    invoke-virtual {v0, v6}, Lcom/htc/widget/HeaderBarMiddle;->enableRightDivider(Z)V

    .line 584
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 585
    invoke-virtual {v1, v6}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 586
    const v4, 0x7f02017e

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 587
    invoke-virtual {v1, v6}, Lcom/htc/widget/HeaderBarImage;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mSecureIcon:Landroid/widget/ImageView;

    .line 588
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mSecureIcon:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 590
    const v4, 0x7f0e0071

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 592
    .local v3, one_message_view:Landroid/widget/LinearLayout;
    const v4, 0x7f0e0072

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mSubjectViewLayout:Landroid/view/View;

    .line 593
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mSubjectViewLayout:Landroid/view/View;

    const v5, 0x2020010

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mSubjectView:Landroid/widget/TextView;

    .line 594
    const v4, 0x7f0e0073

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mSmsBodyView:Landroid/widget/TextView;

    .line 595
    const v4, 0x7f0e0074

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mMmsBodyView:Landroid/widget/LinearLayout;

    .line 597
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, v7, v7}, Landroid/widget/TextView;->setRoundedCornerEnabled(ZZ)V

    .line 598
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mMmsBodyView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7, v7}, Landroid/widget/LinearLayout;->setRoundedCornerEnabled(ZZ)V

    .line 600
    invoke-virtual {v3, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 603
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 605
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSelection()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 607
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mSmsBodyView:Landroid/widget/TextView;

    const/16 v5, 0xa

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->enableHtcTextSelection(ZI)V

    .line 613
    :goto_0
    new-instance v4, Lcom/android/mms/ui/MessageViewActivity$2;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessageViewActivity$2;-><init>(Lcom/android/mms/ui/MessageViewActivity;)V

    iput-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mMediaViewClickListener:Landroid/view/View$OnClickListener;

    .line 629
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageViewActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/MessagingController;->addListener(Lcom/android/mms/ui/MessagingListener;)V

    .line 633
    return-void

    .line 611
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method private initMessage(Landroid/database/Cursor;)Lcom/android/mms/msg/AbstractMessage;
    .locals 3
    .parameter "c"

    .prologue
    .line 1778
    new-instance v1, Lcom/android/mms/msg/util/ColumnsMap;

    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsgType:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/android/mms/msg/util/ColumnsMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1779
    .local v1, columnsMap:Lcom/android/mms/msg/util/ColumnsMap;
    new-instance v0, Lcom/android/mms/msg/util/MessageDataAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1, v1}, Lcom/android/mms/msg/util/MessageDataAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/msg/util/ColumnsMap;)V

    .line 1781
    .local v0, adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageViewActivity;->getMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    .line 1782
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1783
    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    return-object v2
.end method

.method private initMessageView()V
    .locals 10

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 643
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 644
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "thread_id"

    const-wide/16 v1, -0x1

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mThreadId:J

    .line 645
    const-string v0, "msg_Id"

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsgId:I

    .line 646
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/category/Category;->getCategory(I)Lcom/android/mms/category/Category;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mCategory:Lcom/android/mms/category/Category;

    .line 647
    const-string v0, "msg_type"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsgType:Ljava/lang/String;

    .line 648
    const-string v0, "folder"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mFolderType:Ljava/lang/String;

    .line 650
    const-string v0, "MessageViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<ThreadId>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/MessageViewActivity;->mThreadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<Message Id>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsgId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<category>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<MsgType>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsgType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<FolerType>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity;->mFolderType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->getThreadUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mMessageUri:Landroid/net/Uri;

    .line 655
    const-string v0, "MessageViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageUri>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " QueryHandler is >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 661
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->isMmsMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0xca

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/MessageViewActivity;->mMessageUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/msg/util/ColumnsMap;->MMS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->updateTextSize()V

    .line 672
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 676
    return-void

    .line 664
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0xca

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/MessageViewActivity;->mMessageUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/msg/util/ColumnsMap;->SMS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 666
    :catch_0
    move-exception v8

    .line 668
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private isMmsMessage()Z
    .locals 2

    .prologue
    .line 1821
    const-string v0, "mms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsgType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isReadReportRequired()Z
    .locals 1

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v0}, Lcom/android/mms/msg/AbstractMessage;->isReadReportRequired()Z

    move-result v0

    return v0
.end method

.method private markAsRead()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0xcb

    const/4 v2, 0x1

    .line 1867
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1868
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1869
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1870
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageViewActivity;->mMessageUri:Landroid/net/Uri;

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1871
    return-void
.end method

.method private moveTo(Lcom/android/mms/category/Category;)V
    .locals 7
    .parameter "category"

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0xcc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2167
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2169
    .local v4, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    invoke-virtual {v0, p1}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2170
    const-string v0, "htc_category"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2174
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 2175
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageViewActivity;->mMessageUri:Landroid/net/Uri;

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2176
    return-void

    .line 2172
    :cond_0
    const-string v0, "htc_category"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private onClickHandler(ILcom/android/mms/model/MediaModel;)V
    .locals 8
    .parameter "type"
    .parameter "media"

    .prologue
    const/4 v7, 0x1

    .line 1482
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1484
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1486
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v3

    .line 1487
    .local v3, mDrmObject:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual {v3}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 1488
    .local v2, mDrmContentType:Ljava/lang/String;
    const-string v4, "MessageViewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onClickhandler] mDrmContentType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUriWithDrmCheck()Landroid/net/Uri;
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1506
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1507
    const-string v4, "viewSingleImage"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1539
    .end local v2           #mDrmContentType:Ljava/lang/String;
    .end local v3           #mDrmObject:Lcom/android/mms/drm/DrmWrapper;
    :cond_0
    :goto_0
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1540
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1542
    :goto_1
    return-void

    .line 1495
    .restart local v2       #mDrmContentType:Ljava/lang/String;
    .restart local v3       #mDrmObject:Lcom/android/mms/drm/DrmWrapper;
    :catch_0
    move-exception v0

    .line 1497
    .local v0, e:Landroid/drm/mobile1/DrmException;
    const-string v4, "MessageViewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onClickHandler] DrmException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    const v6, 0x7f090034

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1509
    .end local v0           #e:Landroid/drm/mobile1/DrmException;
    :cond_1
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1511
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1513
    const-string v4, "landscape"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 1516
    :cond_2
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1518
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1527
    .end local v2           #mDrmContentType:Ljava/lang/String;
    .end local v3           #mDrmObject:Lcom/android/mms/drm/DrmWrapper;
    :cond_3
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1529
    const/16 v4, 0x64

    if-ne p1, v4, :cond_4

    .line 1531
    const-string v4, "viewSingleImage"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 1533
    :cond_4
    const/16 v4, 0x66

    if-ne p1, v4, :cond_0

    .line 1535
    const-string v4, "landscape"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private playSlideshow()V
    .locals 3

    .prologue
    .line 2383
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2384
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2385
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 2386
    return-void
.end method

.method private replyMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 2225
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2226
    .local v0, i:Landroid/content/Intent;
    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2227
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 2228
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->finish()V

    .line 2229
    return-void
.end method

.method private saveAttachment()V
    .locals 3

    .prologue
    .line 2391
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/ExtractObjectViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2392
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2393
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 2394
    return-void
.end method

.method private setSecureIndicator(Lcom/android/mms/category/Category;)V
    .locals 2
    .parameter "category"

    .prologue
    .line 2410
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mSecureIcon:Landroid/widget/ImageView;

    sget-object v0, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    invoke-virtual {v0, p1}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2411
    return-void

    .line 2410
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private showAttachmentView(Ljava/util/ArrayList;)V
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1147
    .local p1, mMedia:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f030036

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/mms/ui/SlideAttachmentItemView;

    .line 1149
    .local v14, slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    const/4 v9, 0x0

    .line 1156
    .local v9, layout:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090029

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1157
    .local v8, kb:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mMixMultiMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageSize()I

    move-result v12

    .line 1158
    .local v12, size:I
    div-int/lit16 v0, v12, 0x400

    move/from16 v17, v0

    if-nez v17, :cond_3

    const/4 v10, 0x1

    .line 1159
    .local v10, mSize:I
    :goto_0
    const/4 v15, 0x0

    .line 1160
    .local v15, textCount:I
    const/4 v7, 0x0

    .line 1162
    .local v7, isVcardVcalendar:Z
    const v17, 0x7f0e00b2

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1163
    .local v6, infoLayout:Landroid/view/View;
    const v17, 0x7f0e00b4

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1164
    .local v5, infoImageView:Landroid/widget/ImageView;
    const v17, 0x7f0e00b6

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1165
    .local v16, titleView:Landroid/widget/TextView;
    const v17, 0x7f0e00b5

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1166
    .local v3, btnInfoAction:Landroid/widget/ImageView;
    const v17, 0x7f0e00b7

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1168
    .local v13, sizeView:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/model/MediaModel;

    .line 1170
    .local v11, media:Lcom/android/mms/model/MediaModel;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextAttachment()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual {v11}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1172
    add-int/lit8 v15, v15, 0x1

    .line 1174
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_1

    .line 1175
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/mms/ui/MessageViewActivity;->addMediaView(Lcom/android/mms/model/MediaModel;)V

    .line 1178
    :cond_1
    invoke-virtual {v11}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual {v11}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1180
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/mms/ui/MessageViewActivity;->addMediaView(Lcom/android/mms/model/MediaModel;)V

    .line 1181
    const/4 v7, 0x1

    goto :goto_1

    .line 1158
    .end local v3           #btnInfoAction:Landroid/widget/ImageView;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #infoImageView:Landroid/widget/ImageView;
    .end local v6           #infoLayout:Landroid/view/View;
    .end local v7           #isVcardVcalendar:Z
    .end local v10           #mSize:I
    .end local v11           #media:Lcom/android/mms/model/MediaModel;
    .end local v13           #sizeView:Landroid/widget/TextView;
    .end local v15           #textCount:I
    .end local v16           #titleView:Landroid/widget/TextView;
    :cond_3
    div-int/lit16 v10, v12, 0x400

    goto :goto_0

    .line 1186
    .restart local v3       #btnInfoAction:Landroid/widget/ImageView;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #infoImageView:Landroid/widget/ImageView;
    .restart local v6       #infoLayout:Landroid/view/View;
    .restart local v7       #isVcardVcalendar:Z
    .restart local v10       #mSize:I
    .restart local v13       #sizeView:Landroid/widget/TextView;
    .restart local v15       #textCount:I
    .restart local v16       #titleView:Landroid/widget/TextView;
    :cond_4
    if-eqz v7, :cond_5

    .line 1217
    :goto_2
    return-void

    .line 1190
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1191
    const v17, 0x7f0200f2

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1195
    :goto_3
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1196
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1198
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextAttachment()Z

    move-result v17

    if-nez v17, :cond_7

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mMixMultiMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMediaNumber()I

    move-result v17

    sub-int v17, v17, v15

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1203
    .local v2, attachments:Ljava/lang/String;
    :goto_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0902f0

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1204
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1207
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .end local v9           #layout:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, -0x1

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v9, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1208
    .restart local v9       #layout:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mMmsBodyView:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1210
    new-instance v17, Lcom/android/mms/ui/MessageViewActivity$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageViewActivity$4;-><init>(Lcom/android/mms/ui/MessageViewActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 1193
    .end local v2           #attachments:Ljava/lang/String;
    :cond_6
    const v17, 0x7f02019a

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 1201
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mMixMultiMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMediaNumber()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #attachments:Ljava/lang/String;
    goto/16 :goto_4
.end method

.method private showCommonInfo(Lcom/android/mms/msg/AbstractMessage;)V
    .locals 10
    .parameter "msg"

    .prologue
    const v7, 0x7f0900ba

    const/4 v9, 0x0

    .line 1715
    iget-object v6, p0, Lcom/android/mms/ui/MessageViewActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MessageViewActivity;->setSecureIndicator(Lcom/android/mms/category/Category;)V

    .line 1717
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMessageBox()I

    move-result v5

    .line 1719
    .local v5, msgBox:I
    if-gez v5, :cond_0

    .line 1721
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 1724
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/MessageViewActivity;->mPhoneNum:Ljava/lang/String;

    .line 1725
    packed-switch v5, :pswitch_data_0

    .line 1749
    const-string v6, "MessageViewActivity"

    const-string v7, "Invalid SMS box type"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    :goto_0
    return-void

    .line 1728
    :pswitch_0
    const v6, 0x7f0900b9

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1729
    .local v0, addrLabel:Ljava/lang/String;
    const v6, 0x7f0900bd

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1730
    .local v3, dateLabel:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 1731
    .local v1, address:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/MessageViewActivity;->mPhoneNum:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/mms/ui/MessageUtils;->getLocationAppendString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1753
    .local v4, locationAppendAtring:Ljava/lang/String;
    :goto_1
    iput-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mAddress:Ljava/lang/String;

    .line 1754
    iget-object v6, p0, Lcom/android/mms/ui/MessageViewActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageViewActivity;->mAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 1756
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isPending()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1758
    const v6, 0x7f090177

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1766
    .local v2, date:Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/android/mms/ui/MessageViewActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isNotification()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1769
    iget-object v6, p0, Lcom/android/mms/ui/MessageViewActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0

    .line 1734
    .end local v0           #addrLabel:Ljava/lang/String;
    .end local v1           #address:Ljava/lang/String;
    .end local v2           #date:Ljava/lang/String;
    .end local v3           #dateLabel:Ljava/lang/String;
    .end local v4           #locationAppendAtring:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1735
    .restart local v0       #addrLabel:Ljava/lang/String;
    const v6, 0x7f0900be

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1736
    .restart local v3       #dateLabel:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 1737
    .restart local v1       #address:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/MessageViewActivity;->mPhoneNum:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/android/mms/ui/MessageUtils;->getLocationAppendString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1738
    .restart local v4       #locationAppendAtring:Ljava/lang/String;
    goto :goto_1

    .line 1743
    .end local v0           #addrLabel:Ljava/lang/String;
    .end local v1           #address:Ljava/lang/String;
    .end local v3           #dateLabel:Ljava/lang/String;
    .end local v4           #locationAppendAtring:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1744
    .restart local v0       #addrLabel:Ljava/lang/String;
    const v6, 0x7f0900bc

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1745
    .restart local v3       #dateLabel:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 1746
    .restart local v1       #address:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/MessageViewActivity;->mPhoneNum:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/android/mms/ui/MessageUtils;->getLocationAppendString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1747
    .restart local v4       #locationAppendAtring:Ljava/lang/String;
    goto :goto_1

    .line 1762
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getTimestamp()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringEx(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #date:Ljava/lang/String;
    goto :goto_2

    .line 1771
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/MessageViewActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto/16 :goto_0

    .line 1725
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private showMms(Lcom/android/mms/msg/AbstractMessage;)V
    .locals 14
    .parameter "abstractMessage"

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 785
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 786
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030020

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0e007e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .local v6, mmsView:Landroid/view/View;
    move-object v5, p1

    .line 788
    check-cast v5, Lcom/android/mms/msg/MultimediaMessage;

    .line 789
    .local v5, mms:Lcom/android/mms/msg/MultimediaMessage;
    invoke-direct {p0, v5}, Lcom/android/mms/ui/MessageViewActivity;->showCommonInfo(Lcom/android/mms/msg/AbstractMessage;)V

    .line 790
    invoke-direct {p0, v5}, Lcom/android/mms/ui/MessageViewActivity;->showMmsSubject(Lcom/android/mms/msg/MultimediaMessage;)V

    .line 792
    invoke-virtual {v5}, Lcom/android/mms/msg/MultimediaMessage;->isNotification()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 794
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 795
    .local v2, info:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    check-cast v5, Lcom/android/mms/msg/Notification;

    .end local v5           #mms:Lcom/android/mms/msg/MultimediaMessage;
    invoke-direct {p0, v8, v5}, Lcom/android/mms/ui/MessageViewActivity;->getNotificationIndDetails(Landroid/content/Context;Lcom/android/mms/msg/Notification;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    const/high16 v8, -0x100

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 797
    const/4 v8, 0x0

    const/high16 v9, 0x4000

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 798
    iget-object v8, p0, Lcom/android/mms/ui/MessageViewActivity;->mMmsBodyView:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
    .end local v2           #info:Landroid/widget/TextView;
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/mms/ui/MessageViewActivity;->mMmsBodyView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 875
    return-void

    .line 802
    .restart local v5       #mms:Lcom/android/mms/msg/MultimediaMessage;
    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/MessageViewActivity;->mMmsBodyView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 804
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v5}, Lcom/android/mms/msg/MultimediaMessage;->withMixedMessageBody()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v5

    .line 809
    check-cast v8, Lcom/android/mms/msg/MixedMultimediaMessage;

    iput-object v8, p0, Lcom/android/mms/ui/MessageViewActivity;->mMixMultiMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    .line 811
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCollapseMode()Z

    move-result v8

    if-nez v8, :cond_5

    .line 813
    iget-object v8, p0, Lcom/android/mms/ui/MessageViewActivity;->mMixMultiMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v8}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageBody()Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v3

    .line 815
    .local v3, mMedia:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 817
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 819
    iget-object v8, p0, Lcom/android/mms/ui/MessageViewActivity;->mMixMultiMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v8}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMediaNumber()I

    move-result v8

    if-nez v8, :cond_0

    .line 820
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 826
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v12, :cond_4

    .line 827
    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageViewActivity;->showAttachmentView(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 830
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 835
    .local v4, media:Lcom/android/mms/model/MediaModel;
    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageViewActivity;->addMediaView(Lcom/android/mms/model/MediaModel;)V

    goto :goto_1

    .line 841
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #mMedia:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/mms/ui/MessageViewActivity;->bindCollapseView(Lcom/android/mms/msg/MultimediaMessage;)V

    goto :goto_0

    :cond_6
    move-object v8, v5

    .line 848
    check-cast v8, Lcom/android/mms/msg/RelatedMultimediaMessage;

    iput-object v8, p0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    .line 850
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 851
    iget-object v8, p0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v8}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageBody()Lcom/android/mms/model/Model;

    move-result-object v7

    check-cast v7, Lcom/android/mms/model/SlideshowModel;

    .line 853
    .local v7, model:Lcom/android/mms/model/SlideshowModel;
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    if-nez v8, :cond_9

    .line 855
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 857
    iget-object v8, p0, Lcom/android/mms/ui/MessageViewActivity;->mRelMultiMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v8}, Lcom/android/mms/msg/RelatedMultimediaMessage;->hasOtherAttachment()Z

    move-result v8

    if-nez v8, :cond_8

    .line 858
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 870
    :cond_8
    :goto_2
    invoke-virtual {v6, v12}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_0

    .line 863
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCollapseMode()Z

    move-result v8

    if-nez v8, :cond_a

    .line 864
    invoke-direct {p0, v7}, Lcom/android/mms/ui/MessageViewActivity;->bindExpandView(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_2

    .line 867
    :cond_a
    invoke-direct {p0, v5}, Lcom/android/mms/ui/MessageViewActivity;->bindCollapseView(Lcom/android/mms/msg/MultimediaMessage;)V

    goto :goto_2
.end method

.method private showMmsSubject(Lcom/android/mms/msg/MultimediaMessage;)V
    .locals 6
    .parameter "mms"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 880
    invoke-virtual {p1}, Lcom/android/mms/msg/MultimediaMessage;->getSubject()Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, sub:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 884
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mSubjectView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0900bf

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mSubjectViewLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 886
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setRoundedCornerEnabled(ZZ)V

    .line 887
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mMmsBodyView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->setRoundedCornerEnabled(ZZ)V

    .line 889
    :cond_0
    return-void
.end method

.method private showSms(Lcom/android/mms/msg/AbstractMessage;)V
    .locals 6
    .parameter "abstractMessage"

    .prologue
    .line 1660
    move-object v3, p1

    check-cast v3, Lcom/android/mms/msg/TextMessage;

    .line 1661
    .local v3, sms:Lcom/android/mms/msg/TextMessage;
    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageViewActivity;->showCommonInfo(Lcom/android/mms/msg/AbstractMessage;)V

    .line 1663
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Lcom/android/mms/msg/TextMessage;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1665
    .local v0, buffer:Landroid/text/SpannableStringBuilder;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1667
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v2

    .line 1668
    .local v2, parser:Lcom/android/mms/util/SmileyParser;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1669
    .end local v0           #buffer:Landroid/text/SpannableStringBuilder;
    .local v1, buffer:Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-static {v4, v1}, Lcom/android/mms/ui/MyLinkify;->parseLinks(Landroid/widget/TextView;Landroid/text/Spannable;)V

    move-object v0, v1

    .line 1672
    .end local v1           #buffer:Landroid/text/SpannableStringBuilder;
    .end local v2           #parser:Lcom/android/mms/util/SmileyParser;
    .restart local v0       #buffer:Landroid/text/SpannableStringBuilder;
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1673
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mSmsBodyView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/ui/MessageViewActivity;->mMediaViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1674
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mSmsBodyView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1675
    return-void
.end method

.method private showSmsMms(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 683
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mMessageUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 685
    const-string v1, "MessageViewActivity"

    const-string v2, "messageUri is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :goto_0
    return-void

    .line 691
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageViewActivity;->initMessage(Landroid/database/Cursor;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v0

    .line 693
    .local v0, abstractMessage:Lcom/android/mms/msg/AbstractMessage;
    if-nez v0, :cond_2

    .line 695
    if-eqz p1, :cond_1

    .line 696
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 698
    :cond_1
    const-string v1, "MessageViewActivity"

    const-string v2, "abstract message is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto :goto_0

    .line 703
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->isMmsMessage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 704
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageViewActivity;->showMms(Lcom/android/mms/msg/AbstractMessage;)V

    .line 708
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v1}, Lcom/android/mms/msg/AbstractMessage;->isRead()Z

    move-result v1

    if-nez v1, :cond_3

    .line 709
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->markAsRead()V

    .line 712
    :cond_3
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 716
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto :goto_0

    .line 706
    :cond_4
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageViewActivity;->showSms(Lcom/android/mms/msg/AbstractMessage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 716
    .end local v0           #abstractMessage:Lcom/android/mms/msg/AbstractMessage;
    :catchall_0
    move-exception v1

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v1
.end method

.method private startNewCompose()V
    .locals 2

    .prologue
    .line 2217
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2218
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 2219
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->finish()V

    .line 2220
    return-void
.end method

.method private updateChildTextSize(Landroid/view/ViewGroup;I)V
    .locals 4
    .parameter "viewGroup"
    .parameter "size"

    .prologue
    .line 1846
    const/4 v0, 0x0

    .local v0, childCount:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1848
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1850
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 1852
    check-cast v1, Landroid/widget/TextView;

    .end local v1           #view:Landroid/view/View;
    const/4 v2, 0x0

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1846
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1854
    .restart local v1       #view:Landroid/view/View;
    :cond_1
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1856
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #view:Landroid/view/View;
    invoke-direct {p0, v1, p2}, Lcom/android/mms/ui/MessageViewActivity;->updateChildTextSize(Landroid/view/ViewGroup;I)V

    goto :goto_1

    .line 1859
    :cond_2
    return-void
.end method

.method private updateStatusNotification()V
    .locals 2

    .prologue
    .line 2009
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/MessageViewActivity$10;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageViewActivity$10;-><init>(Lcom/android/mms/ui/MessageViewActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2021
    return-void
.end method

.method private updateTextSize()V
    .locals 4

    .prologue
    .line 1833
    invoke-static {}, Lcom/android/mms/util/TextSizeManager;->getInstance()Lcom/android/mms/util/TextSizeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/TextSizeManager;->getFontSize()I

    move-result v0

    .line 1836
    .local v0, fontSize:I
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mSmsBodyView:Landroid/widget/TextView;

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1838
    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mMmsBodyView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/MessageViewActivity;->updateChildTextSize(Landroid/view/ViewGroup;I)V

    .line 1839
    return-void
.end method


# virtual methods
.method public handleReadReport()V
    .locals 1

    .prologue
    .line 1882
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSReadReport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1886
    :goto_0
    return-void

    .line 1885
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageViewActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    const/4 v5, -0x1

    .line 2469
    const/16 v4, 0x3e

    if-ne p1, v4, :cond_2

    if-ne p2, v5, :cond_2

    .line 2472
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2474
    const-string v4, "SMS_ID"

    invoke-virtual {p3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2475
    .local v2, smsID:J
    const-string v4, "MMS_ID"

    invoke-virtual {p3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2482
    .local v0, mmsID:J
    cmp-long v4, v2, v8

    if-ltz v4, :cond_0

    .line 2484
    invoke-static {v2, v3}, Lcom/android/mms/util/VCardSaveIndicatorCache;->saveSmsVCard(J)V

    .line 2487
    :cond_0
    cmp-long v4, v0, v8

    if-ltz v4, :cond_1

    .line 2489
    invoke-static {v0, v1}, Lcom/android/mms/util/VCardSaveIndicatorCache;->saveMmsVCard(J)V

    .line 2503
    .end local v0           #mmsID:J
    .end local v2           #smsID:J
    :cond_1
    :goto_0
    return-void

    .line 2493
    :cond_2
    const/16 v4, 0x3d

    if-ne p1, v4, :cond_1

    if-ne p2, v5, :cond_1

    .line 2495
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2496
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsgId:I

    int-to-long v5, v5

    iput-wide v5, v4, Lcom/android/mms/util/VCardSaveIndicatorCache;->currentSaveVCalendar:J

    .line 2498
    :cond_3
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->saveVCalendar()V

    .line 2500
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    if-eqz v4, :cond_1

    .line 2501
    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageViewActivity;->showMms(Lcom/android/mms/msg/AbstractMessage;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 207
    const-string v0, "MessageViewActivity"

    const-string v1, "onCreate() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageViewActivity;->setContentView(I)V

    .line 211
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    .line 212
    new-instance v0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;-><init>(Lcom/android/mms/ui/MessageViewActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 213
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->initLayoutView()V

    .line 214
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->initMessageView()V

    .line 215
    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    const-string v0, "MessageViewActivity"

    const-string v1, "onCreate() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 470
    packed-switch p1, :pswitch_data_0

    .line 498
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 473
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900ef

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900f0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09033b

    invoke-virtual {v0, v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09006c

    new-instance v2, Lcom/android/mms/ui/MessageViewActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageViewActivity$1;-><init>(Lcom/android/mms/ui/MessageViewActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 493
    :pswitch_1
    const v0, 0x7f0900ad

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageViewActivity;->getConfirmDeleteDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 505
    const-string v0, "MessageViewActivity"

    const-string v1, "onDestroy() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 508
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;->dismiss()V

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mContactHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mContactHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingController;->removeListener(Lcom/android/mms/ui/MessagingListener;)V

    .line 525
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->removeMessages(I)V

    .line 528
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->removeMessages(I)V

    .line 529
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->removeMessages(I)V

    .line 530
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->removeMessages(I)V

    .line 534
    :cond_2
    const-string v0, "MessageViewActivity"

    const-string v1, "onDestroy() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 224
    const-string v0, "MessageViewActivity"

    const-string v1, "[New Intent Start]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageViewActivity;->setIntent(Landroid/content/Intent;)V

    .line 228
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageViewActivity;->setContentView(I)V

    .line 229
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->initLayoutView()V

    .line 230
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->initMessageView()V

    .line 231
    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    const-string v0, "MessageViewActivity"

    const-string v1, "[New Intent End]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 404
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 463
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 407
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->goToRootActivity()V

    goto :goto_0

    .line 410
    :pswitch_2
    new-instance v0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;

    iget v2, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsgId:I

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/MessageViewActivity;I)V

    .line 412
    .local v0, delListener:Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/DeletedItemsActivity;->isDeleteImmediatelyEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 413
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageViewActivity;->showDialog(I)V

    goto :goto_0

    .line 418
    .end local v0           #delListener:Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;
    :pswitch_3
    sget-object v2, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageViewActivity;->moveTo(Lcom/android/mms/category/Category;)V

    goto :goto_0

    .line 421
    :pswitch_4
    sget-object v2, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageViewActivity;->moveTo(Lcom/android/mms/category/Category;)V

    goto :goto_0

    .line 424
    :pswitch_5
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->goToRootActivity()V

    goto :goto_0

    .line 427
    :pswitch_6
    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageViewActivity;->callBackSender(Z)V

    goto :goto_0

    .line 430
    :pswitch_7
    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageViewActivity;->callBackSender(Z)V

    .line 433
    :pswitch_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 435
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 436
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 439
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_9
    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity;->mPhoneNum:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageViewActivity;->replyMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :pswitch_a
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->startNewCompose()V

    goto :goto_0

    .line 445
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity;->onSearchRequested()Z

    goto :goto_0

    .line 448
    :pswitch_c
    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/MessageViewActivity;->forwardMessage(Landroid/content/Context;Lcom/android/mms/msg/AbstractMessage;)V

    goto :goto_0

    .line 451
    :pswitch_d
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->playSlideshow()V

    goto :goto_0

    .line 454
    :pswitch_e
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->saveAttachment()V

    goto :goto_0

    .line 457
    :pswitch_f
    invoke-direct {p0}, Lcom/android/mms/ui/MessageViewActivity;->download()V

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_c
        :pswitch_6
        :pswitch_f
        :pswitch_d
        :pswitch_e
        :pswitch_a
        :pswitch_1
        :pswitch_b
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 554
    const-string v0, "MessageViewActivity"

    const-string v1, "onPause() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mIsForeground:Z

    .line 558
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MessageViewActivity;->sCurrentActivity:Landroid/app/Activity;

    .line 560
    const-string v0, "MessageViewActivity"

    const-string v1, "onPause() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 13
    .parameter "menu"

    .prologue
    .line 240
    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    if-nez v9, :cond_0

    .line 241
    const/4 v9, 0x0

    .line 395
    :goto_0
    return v9

    .line 243
    :cond_0
    const/4 v3, 0x1

    .line 244
    .local v3, isPhoneNum:Z
    const-wide/16 v6, -0x1

    .line 245
    .local v6, person_id:J
    const/4 v4, 0x0

    .line 246
    .local v4, isSim:Z
    const/4 v0, 0x1

    .line 248
    .local v0, addToContacts:Z
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 250
    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x0

    const v12, 0x7f09010c

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02011b

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 253
    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v9}, Lcom/android/mms/msg/AbstractMessage;->isNotification()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 255
    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const v12, 0x7f090030

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020123

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 259
    :cond_1
    const/4 v9, 0x0

    const/16 v10, 0x9

    const/4 v11, 0x0

    const v12, 0x7f09001a

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020117

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 262
    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v9}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 264
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f09010d

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02012f

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 267
    :cond_2
    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v9}, Lcom/android/mms/msg/AbstractMessage;->isNotification()Z

    move-result v9

    if-nez v9, :cond_3

    .line 269
    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const v12, 0x7f09002f

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020127

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 273
    :cond_3
    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v9}, Lcom/android/mms/msg/AbstractMessage;->isMultimediaMessage()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v9}, Lcom/android/mms/msg/AbstractMessage;->isNotification()Z

    move-result v9

    if-nez v9, :cond_5

    .line 275
    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    check-cast v9, Lcom/android/mms/msg/MultimediaMessage;

    invoke-virtual {v9}, Lcom/android/mms/msg/MultimediaMessage;->withRelatedMessageBody()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    check-cast v9, Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v9}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getAttachmentCount()I

    move-result v9

    if-lez v9, :cond_4

    .line 277
    const/4 v9, 0x0

    const/4 v10, 0x7

    const/4 v11, 0x0

    const v12, 0x7f0902ed

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02012c

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 280
    :cond_4
    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    const v12, 0x7f090149

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02011d

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 284
    :cond_5
    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v9}, Lcom/android/mms/msg/AbstractMessage;->isLocked()Z

    move-result v9

    if-nez v9, :cond_6

    .line 285
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const v12, 0x20c01fc

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020121

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 287
    :cond_6
    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v9}, Lcom/android/mms/msg/AbstractMessage;->getMessageBox()I

    move-result v9

    if-lez v9, :cond_8

    .line 289
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 291
    sget-object v9, Lcom/android/mms/category/Category;->BLOCKED:Lcom/android/mms/category/Category;

    iget-object v10, p0, Lcom/android/mms/ui/MessageViewActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v9, v10}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 293
    const/4 v9, 0x0

    const/16 v10, 0xe

    const/4 v11, 0x0

    const v12, 0x7f090337

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02011f

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 295
    const/4 v9, 0x0

    const/16 v10, 0xf

    const/4 v11, 0x0

    const v12, 0x7f090336

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02011f

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 298
    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    const v12, 0x7f090338

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v9

    const v10, 0x7f020129

    invoke-interface {v9, v10}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v8

    .line 300
    .local v8, sub:Landroid/view/SubMenu;
    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    const v12, 0x7f09028a

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 301
    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    const v12, 0x7f090289

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 305
    .end local v8           #sub:Landroid/view/SubMenu;
    :cond_7
    sget-object v9, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    iget-object v10, p0, Lcom/android/mms/ui/MessageViewActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v9, v10}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 307
    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    const v12, 0x7f09028a

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02011a

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 318
    :cond_8
    :goto_1
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x30

    if-ne v9, v10, :cond_9

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x9b

    if-eq v9, v10, :cond_a

    .line 321
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSearchInMenu()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 323
    const/4 v9, 0x0

    const/16 v10, 0xb

    const/4 v11, 0x0

    const v12, 0x20c0138

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020133

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 328
    :cond_a
    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mPhoneNum:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    .line 330
    if-eqz v3, :cond_b

    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v9}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mPhoneNum:Ljava/lang/String;

    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 332
    const/4 v9, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x0

    const v12, 0x7f0901b9

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020119

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 334
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVT()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 335
    const/4 v9, 0x0

    const/16 v10, 0x11

    const/4 v11, 0x0

    const v12, 0x7f090018

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020119

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 339
    :cond_b
    if-nez v3, :cond_d

    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mPhoneNum:Ljava/lang/String;

    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 341
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 310
    :cond_c
    sget-object v9, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    iget-object v10, p0, Lcom/android/mms/ui/MessageViewActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v9, v10}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 312
    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    const v12, 0x7f090289

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020134

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 344
    :cond_d
    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/mms/ui/MessageViewActivity;->mPhoneNum:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/mms/ui/MessageUtils;->getContactInfoFromEmailAddr(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 345
    .local v2, info:Landroid/os/Bundle;
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v1

    .line 346
    .local v1, cache:Lcom/android/mms/util/ContactNameCache;
    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/mms/ui/MessageViewActivity;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Lcom/android/mms/util/ContactNameCache;->getContactInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$namephoto;

    move-result-object v5

    .line 347
    .local v5, name_info:Landroid/provider/Telephony$namephoto;
    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/mms/ui/MessageViewActivity;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Lcom/android/mms/util/ContactNameCache;->getPersonalId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    .line 349
    const-wide/16 v9, -0x2

    cmp-long v9, v6, v9

    if-nez v9, :cond_11

    .line 351
    if-eqz v3, :cond_10

    .line 353
    iget-wide v9, v5, Landroid/provider/Telephony$namephoto;->mPersonId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_e

    .line 355
    const/4 v0, 0x0

    .line 356
    iget-wide v6, v5, Landroid/provider/Telephony$namephoto;->mPersonId:J

    .line 357
    iget-boolean v4, v5, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    .line 379
    :cond_e
    :goto_2
    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mPhoneNum:Ljava/lang/String;

    if-eqz v9, :cond_f

    .line 381
    if-nez v0, :cond_13

    .line 383
    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    const v12, 0x7f0901bf

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MessageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {v6, v7, v4}, Lcom/android/mms/ui/MessageUtils;->getOpenContactCardIntent(JZ)Landroid/content/Intent;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02013b

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 395
    :cond_f
    :goto_3
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 362
    :cond_10
    if-eqz v2, :cond_e

    .line 364
    const/4 v0, 0x0

    .line 365
    const-string v9, "personId"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_2

    .line 369
    :cond_11
    const-wide/16 v9, -0x1

    cmp-long v9, v6, v9

    if-nez v9, :cond_12

    .line 371
    const/4 v0, 0x1

    goto :goto_2

    .line 375
    :cond_12
    const/4 v0, 0x0

    .line 376
    iget-object v9, p0, Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/mms/ui/MessageViewActivity;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Lcom/android/mms/util/ContactNameCache;->getIsFromSim(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    goto :goto_2

    .line 389
    :cond_13
    const/4 v9, 0x0

    const/16 v10, 0xd

    const/4 v11, 0x0

    const v12, 0x7f0901d7

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/MessageViewActivity;->mPhoneNum:Ljava/lang/String;

    invoke-static {v10, v3}, Lcom/android/mms/ui/MessageUtils;->createAddToNewContactIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020117

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 541
    const-string v0, "MessageViewActivity"

    const-string v1, "onResume() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageViewActivity;->mIsForeground:Z

    .line 545
    sput-object p0, Lcom/android/mms/ui/MessageViewActivity;->sCurrentActivity:Landroid/app/Activity;

    .line 547
    const-string v0, "MessageViewActivity"

    const-string v1, "onResume() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void
.end method

.method public onSearchRequested()Z
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    .line 2331
    const/4 v0, 0x0

    .line 2334
    .local v0, bLaunched:Z
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v8, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v4, v5, :cond_1

    :cond_0
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x1b

    if-ne v4, v5, :cond_2

    .line 2341
    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x2

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/mms/ui/MessageViewActivity;->mCategory:Lcom/android/mms/category/Category;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/android/mms/ui/IntentFactory;->newIntent(I[Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2344
    const/4 v0, 0x1

    .line 2353
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 2355
    sget-object v4, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 2357
    .local v1, builder:Landroid/net/Uri$Builder;
    const-string v4, "search"

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2358
    const-string v4, "category"

    iget-object v5, p0, Lcom/android/mms/ui/MessageViewActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v5}, Lcom/android/mms/category/Category;->value()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2362
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const-class v6, Lcom/android/mms/ui/MessageSearch;

    invoke-direct {v3, v4, v5, p0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 2363
    .local v3, intent:Landroid/content/Intent;
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2364
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 2377
    .end local v1           #builder:Landroid/net/Uri$Builder;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    return v8

    .line 2346
    :catch_0
    move-exception v2

    .line 2348
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "MessageViewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not start activity. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
