.class public Lcom/htc/idlescreen/base/reminderview/NotificationView;
.super Lcom/htc/idlescreen/base/reminderview/ReminderView;
.source "NotificationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/reminderview/NotificationView$2;,
        Lcom/htc/idlescreen/base/reminderview/NotificationView$PhotoState;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "NotificationView"


# instance fields
.field protected mBorder:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mCallback:Lcom/htc/idlescreen/base/widget/ReminderPanel$PanelCallback;

.field private mContext:Landroid/content/Context;

.field private mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

.field private mEmojiEmotion:Lcom/htc/idlescreen/base/util/EmojiEmotion;

.field protected mIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mIndictorPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mNeedUpdate:Z

.field protected mNotificationViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field private mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

.field private mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

.field protected mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

.field private mPhotoBitmap:Landroid/graphics/Bitmap;

.field private mPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private mPhotoState:Lcom/htc/idlescreen/base/reminderview/NotificationView$PhotoState;

.field private mShowBtn:Z

.field protected mTimeline1:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mTimeline_notification:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;Lcom/htc/idlescreen/base/IdleState$ViewMode;)V
    .locals 2
    .parameter "context"
    .parameter "idleScreen"
    .parameter "container"
    .parameter "scene"
    .parameter "viewmode"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/idlescreen/base/reminderview/ReminderView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    .line 62
    sget-object v0, Lcom/htc/idlescreen/base/reminderview/NotificationView$PhotoState;->NONE:Lcom/htc/idlescreen/base/reminderview/NotificationView$PhotoState;

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPhotoState:Lcom/htc/idlescreen/base/reminderview/NotificationView$PhotoState;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    .line 66
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNeedUpdate:Z

    .line 167
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mShowBtn:Z

    .line 407
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/NotificationView$1;

    invoke-direct {v0, p0}, Lcom/htc/idlescreen/base/reminderview/NotificationView$1;-><init>(Lcom/htc/idlescreen/base/reminderview/NotificationView;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mCallback:Lcom/htc/idlescreen/base/widget/ReminderPanel$PanelCallback;

    .line 93
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mContext:Landroid/content/Context;

    .line 94
    iput-object p5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNotificationViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 95
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->initScene()V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/htc/idlescreen/base/reminderview/NotificationView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private enableDrag(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderPanel;->setEnable(Ljava/lang/Boolean;)V

    .line 406
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;ZLcom/htc/idlescreen/base/IdleState$ViewMode;)Lcom/htc/idlescreen/base/reminderview/NotificationView;
    .locals 7
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "isPortrait"
    .parameter "viewmode"

    .prologue
    .line 81
    const-string v6, "Port/base/Lockscreen_notification.m10"

    .line 82
    .local v6, m10Path:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 83
    const-string v6, "Land/base/Lockscreen_notification.m10"

    .line 85
    :cond_0
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    .line 86
    .local v4, scene:Lcom/htc/fusion/fx/FxScene;
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/NotificationView;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/idlescreen/base/reminderview/NotificationView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;Lcom/htc/idlescreen/base/IdleState$ViewMode;)V

    return-object v0
.end method

.method private setMessage([Ljava/lang/String;)V
    .locals 8
    .parameter "strings"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 263
    const-string v3, ""

    .line 264
    .local v3, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 265
    .local v2, temp:Ljava/lang/StringBuffer;
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    if-eqz p1, :cond_1

    .line 290
    array-length v1, p1

    .line 291
    .local v1, length:I
    if-lez v1, :cond_0

    aget-object v4, p1, v7

    if-eqz v4, :cond_0

    .line 292
    aget-object v3, p1, v7

    .line 295
    :cond_0
    if-le v1, v5, :cond_1

    aget-object v4, p1, v5

    if-eqz v4, :cond_1

    .line 296
    aget-object v4, p1, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    if-le v1, v6, :cond_1

    aget-object v4, p1, v6

    if-eqz v4, :cond_1

    .line 298
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    .end local v1           #length:I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->getDescript(Ljava/lang/StringBuffer;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 304
    .local v0, info:Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 305
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    invoke-virtual {v4, v3}, Lcom/htc/idlescreen/base/widget/ReminderPanel;->setTitle(Ljava/lang/String;)V

    .line 307
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    invoke-virtual {v4, v0}, Lcom/htc/idlescreen/base/widget/ReminderPanel;->setInfo(Ljava/lang/CharSequence;)V

    .line 308
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderPanel;->uninit()V

    .line 144
    iput-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->uninit()V

    .line 148
    iput-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->uninit()V

    .line 152
    iput-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 154
    :cond_2
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->cleanup()V

    .line 156
    return-void
.end method

.method public getDescript(Ljava/lang/StringBuffer;)Landroid/text/SpannableStringBuilder;
    .locals 12
    .parameter "descript"

    .prologue
    const/16 v11, 0x21

    const/4 v10, 0x0

    .line 421
    const-string v7, "LOG_PREFIX"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "descript "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isSupportImoji "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isSupportImoji()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v7, "\n"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 424
    .local v1, end:I
    const/4 v0, 0x0

    .line 425
    .local v0, contentStringBuilder:Landroid/text/SpannableStringBuilder;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .end local v0           #contentStringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 426
    .restart local v0       #contentStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v7, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNotificationViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    sget-object v8, Lcom/htc/idlescreen/base/IdleState$ViewMode;->MESSAGE_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne v7, v8, :cond_0

    .line 428
    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isSupportImoji()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 429
    new-instance v7, Lcom/htc/idlescreen/base/util/EmojiEmotion;

    iget-object v8, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/htc/idlescreen/base/util/EmojiEmotion;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mEmojiEmotion:Lcom/htc/idlescreen/base/util/EmojiEmotion;

    .line 430
    iget-object v7, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mEmojiEmotion:Lcom/htc/idlescreen/base/util/EmojiEmotion;

    invoke-virtual {v7, v0}, Lcom/htc/idlescreen/base/util/EmojiEmotion;->getImojiEmotion(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 433
    :cond_0
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 434
    const/4 v7, -0x1

    if-ne v1, v7, :cond_2

    .line 435
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 436
    .local v6, span_style:Landroid/text/style/CharacterStyle;
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v0, v6, v10, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 450
    .end local v6           #span_style:Landroid/text/style/CharacterStyle;
    :cond_1
    :goto_0
    return-object v0

    .line 438
    :cond_2
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const v7, -0x4c4c4d

    invoke-direct {v4, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 439
    .local v4, span_color:Landroid/text/style/CharacterStyle;
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-direct {v5, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 440
    .local v5, span_size:Landroid/text/style/CharacterStyle;
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 441
    .restart local v6       #span_style:Landroid/text/style/CharacterStyle;
    add-int/lit8 v7, v1, 0x1

    const-string v8, " "

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f05

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 443
    .local v3, snIcon:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/text/style/ImageSpan;

    iget-object v7, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7, v3, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 444
    .local v2, imageSpanSN:Landroid/text/style/ImageSpan;
    add-int/lit8 v7, v1, 0x1

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v0, v2, v7, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 445
    invoke-virtual {v0, v6, v10, v1, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 446
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v4, v7, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 447
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v5, v7, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public getViewType()Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNotificationViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method public initScene()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 99
    const-string v2, "NotificationView"

    const-string v3, "initScene"

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 102
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mScene:Lcom/htc/fusion/fx/FxScene;

    sget-object v3, Lcom/htc/idlescreen/base/mode10/M10R;->NOTIFICATION_RES_DRAG:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mTimeline1:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 103
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mTimeline1:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "timeline.notification_indicator"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 104
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mTimeline1:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "timeline.notification"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mTimeline_notification:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 105
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mTimeline1:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "textlabel.notification"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 106
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mTimeline1:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "textlabel.notification_event"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 108
    sget-object v2, Lcom/htc/idlescreen/base/mode10/M10R;->NOTIFICATION_RES_DRAG:[Ljava/lang/String;

    invoke-virtual {p0, p0, v2}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->getReminderPanel(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;)Lcom/htc/idlescreen/base/widget/ReminderPanel;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    .line 109
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mTimeline1:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "dynamicimage.incomingcallphoto"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 110
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "dynamicimage.notification"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mIndictorPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 111
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mTimeline1:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "timeline.incomingcall_border"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mBorder:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 112
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mCallback:Lcom/htc/idlescreen/base/widget/ReminderPanel$PanelCallback;

    invoke-virtual {v2, v3}, Lcom/htc/idlescreen/base/widget/ReminderPanel;->setCallback(Lcom/htc/idlescreen/base/widget/ReminderPanel$PanelCallback;)V

    .line 115
    :try_start_0
    sget-object v2, Lcom/htc/idlescreen/base/mode10/M10R;->NOTIFICATION_RES_DRAG_OK:[Ljava/lang/String;

    const v3, 0x20c01f4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 116
    sget-object v2, Lcom/htc/idlescreen/base/mode10/M10R;->NOTIFICATION_RES_DRAG_DISMISS:[Ljava/lang/String;

    const v3, 0x20c00ab

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mContext:Landroid/content/Context;

    const v4, 0x7f020005

    invoke-virtual {v2, v3, v4}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setFakeImage(Landroid/content/Context;I)V

    .line 125
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v2, v5}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setVisible(Z)V

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mContext:Landroid/content/Context;

    const v4, 0x7f020003

    invoke-virtual {v2, v3, v4}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setFakeImage(Landroid/content/Context;I)V

    .line 130
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v2, v5}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setVisible(Z)V

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->update()V

    .line 133
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NotificationView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initScene e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iput-object v6, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 121
    iput-object v6, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    goto :goto_0
.end method

.method public isShowShortcut()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mShowBtn:Z

    if-eqz v0, :cond_0

    .line 455
    const/4 v0, 0x0

    .line 457
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 161
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderPanel;->reset()V

    .line 162
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 164
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 166
    :cond_0
    return-void
.end method

.method protected onRingDragEnd(Z)V
    .locals 4
    .parameter "unlock"

    .prologue
    const/4 v3, 0x1

    .line 339
    const-string v0, "NotificationView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragEnd unlock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    if-nez p1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v3}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 344
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v3}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 347
    :cond_0
    return-void
.end method

.method protected onRingDragStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 352
    const-string v0, "NotificationView"

    const-string v1, "onDragStart"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 355
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 357
    :cond_0
    return-void
.end method

.method public onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 2
    .parameter "draggable"

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 314
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    const-string v0, "NotificationView"

    const-string v1, "onRingDropStart mOKBtn"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->sendLeftBtnIntent()Z

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    const-string v0, "NotificationView"

    const-string v1, "onRingDropStart mDismissBtn"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->sendRightBtnIntent()Z

    goto :goto_0

    .line 324
    :cond_2
    const-string v0, "NotificationView"

    const-string v1, "onRingDropStart panel"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->sendPendingIntent()Z

    goto :goto_0
.end method

.method public onSphereMoved(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 3
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 461
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSphereMoved(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 462
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setNameVisible(ZJ)V

    .line 463
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_1

    .line 468
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 471
    :cond_1
    return-void
.end method

.method public onSphereReleased(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 3
    .parameter "button"

    .prologue
    const/4 v2, 0x1

    .line 474
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSphereReleased(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 475
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setNameVisible(ZJ)V

    .line 476
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_0

    .line 478
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_1

    .line 481
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 484
    :cond_1
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "photo"
    .parameter "indicatorphoto"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 361
    const-string v1, "NotificationView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShadow bitmap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    if-eqz p1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPhotoBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPhotoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 365
    :cond_0
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPhotoBitmap:Landroid/graphics/Bitmap;

    .line 366
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1, p1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 367
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    invoke-virtual {v1, p1}, Lcom/htc/idlescreen/base/widget/ReminderPanel;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 368
    sget-object v1, Lcom/htc/idlescreen/base/reminderview/NotificationView$PhotoState;->DONE:Lcom/htc/idlescreen/base/reminderview/NotificationView$PhotoState;

    iput-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPhotoState:Lcom/htc/idlescreen/base/reminderview/NotificationView$PhotoState;

    .line 392
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 393
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 394
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mBorder:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 395
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mIndictorPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1, p2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 401
    :goto_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    invoke-virtual {v1, p2}, Lcom/htc/idlescreen/base/widget/ReminderPanel;->setIndictorPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 402
    return-void

    .line 372
    :cond_2
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPhotoState:Lcom/htc/idlescreen/base/reminderview/NotificationView$PhotoState;

    sget-object v2, Lcom/htc/idlescreen/base/reminderview/NotificationView$PhotoState;->NONE:Lcom/htc/idlescreen/base/reminderview/NotificationView$PhotoState;

    if-ne v1, v2, :cond_1

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, dPhone:Landroid/graphics/drawable/Drawable;
    sget-object v1, Lcom/htc/idlescreen/base/reminderview/NotificationView$2;->$SwitchMap$com$htc$idlescreen$base$IdleState$ViewMode:[I

    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNotificationViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/IdleState$ViewMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 386
    :goto_2
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 387
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    invoke-virtual {v1, v0}, Lcom/htc/idlescreen/base/widget/ReminderPanel;->setPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 388
    sget-object v1, Lcom/htc/idlescreen/base/reminderview/NotificationView$PhotoState;->DEFAULT:Lcom/htc/idlescreen/base/reminderview/NotificationView$PhotoState;

    iput-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPhotoState:Lcom/htc/idlescreen/base/reminderview/NotificationView$PhotoState;

    goto :goto_0

    .line 377
    :pswitch_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 378
    goto :goto_2

    .line 380
    :pswitch_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 381
    goto :goto_2

    .line 383
    :pswitch_2
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    .line 397
    .end local v0           #dPhone:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 398
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mBorder:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 399
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mIndictorPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public unlockByDrop(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Z
    .locals 1
    .parameter "drag"

    .prologue
    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public update()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 172
    const/4 v4, 0x0

    .line 173
    .local v4, photo:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 174
    .local v2, indicatorphoto:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/IdleState;->getNtfMonitor()Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->getCurrentNtf()Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    move-result-object v3

    .line 175
    .local v3, ntf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/widget/ReminderPanel;->isDragging()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    const-string v5, "NotificationView"

    const-string v6, "Droping don\'t update panel"

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iput-boolean v7, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNeedUpdate:Z

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iput-boolean v6, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNeedUpdate:Z

    .line 181
    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    .line 182
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    if-eqz v5, :cond_0

    .line 183
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    iget-object v5, v5, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v5, :cond_3

    .line 186
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    iget-object v5, v5, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v5, v6}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getButton(I)Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    move-result-object v0

    .line 187
    .local v0, btn:Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;
    if-eqz v0, :cond_2

    .line 188
    iput-boolean v7, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mShowBtn:Z

    .line 189
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v5, v7}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setVisible(Z)V

    .line 191
    :cond_2
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    iget-object v5, v5, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mNotification:Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-virtual {v5, v7}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getButton(I)Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_3

    .line 193
    iput-boolean v7, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mShowBtn:Z

    .line 194
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v5, v7}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setVisible(Z)V

    .line 197
    .end local v0           #btn:Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;
    :cond_3
    sget-object v5, Lcom/htc/idlescreen/base/reminderview/NotificationView$2;->$SwitchMap$com$htc$idlescreen$base$IdleState$ViewMode:[I

    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNotificationViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    invoke-virtual {v6}, Lcom/htc/idlescreen/base/IdleState$ViewMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 251
    const-string v5, "NotificationView"

    const-string v6, "unknow mode"

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_1
    invoke-virtual {p0, v4, v2}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->setPhoto(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 199
    :pswitch_0
    const-string v5, "NotificationView"

    const-string v6, "MESSAGE_MODE"

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    iget v5, v5, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 203
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->getContent()[Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, contents:[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->setMessage([Ljava/lang/String;)V

    .line 205
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 206
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 207
    invoke-virtual {v3}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->isSupportDrop()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->enableDrag(Z)V

    goto :goto_1

    .line 210
    .end local v1           #contents:[Ljava/lang/String;
    :cond_4
    const-string v5, "NotificationView"

    const-string v6, "update current ntf type is not right"

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, v8}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->setMessage([Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :pswitch_1
    const-string v5, "NotificationView"

    const-string v6, "MISSED_CALL"

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    iget v5, v5, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mType:I

    if-ne v5, v7, :cond_5

    .line 220
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->getContent()[Ljava/lang/String;

    move-result-object v1

    .line 221
    .restart local v1       #contents:[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->setMessage([Ljava/lang/String;)V

    .line 222
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 223
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 224
    invoke-virtual {v3}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->isSupportDrop()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->enableDrag(Z)V

    goto :goto_1

    .line 227
    .end local v1           #contents:[Ljava/lang/String;
    :cond_5
    const-string v5, "NotificationView"

    const-string v6, "update current ntf type is not right"

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-direct {p0, v8}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->setMessage([Ljava/lang/String;)V

    goto :goto_1

    .line 233
    :pswitch_2
    const-string v5, "NotificationView"

    const-string v6, "VOICE_MAIL"

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    iget v5, v5, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    iget v5, v5, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_7

    .line 238
    :cond_6
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->getContent()[Ljava/lang/String;

    move-result-object v1

    .line 239
    .restart local v1       #contents:[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->setMessage([Ljava/lang/String;)V

    .line 240
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 241
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/NotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 242
    invoke-virtual {v3}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->isSupportDrop()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->enableDrag(Z)V

    goto/16 :goto_1

    .line 245
    .end local v1           #contents:[Ljava/lang/String;
    :cond_7
    const-string v5, "NotificationView"

    const-string v6, "update current ntf type is not right"

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0, v8}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->setMessage([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
