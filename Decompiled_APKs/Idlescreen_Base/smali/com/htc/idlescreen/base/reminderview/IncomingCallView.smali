.class public Lcom/htc/idlescreen/base/reminderview/IncomingCallView;
.super Lcom/htc/idlescreen/base/reminderview/ReminderView;
.source "IncomingCallView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "IncomingCallView"

.field private static final MUTE:I = 0x2

.field private static final SEND_MESSAGE:I = 0x1

.field private static final VOICE_CALL:I


# instance fields
.field private MenuWidgetlisener:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MenuCallback;

.field mBgLooper:Landroid/os/Looper;

.field private mBirthday:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mDragAnswer:Lcom/htc/idlescreen/base/widget/ReminderButton;

.field private mDragDecline:Lcom/htc/idlescreen/base/widget/ReminderButton;

.field private mLastBirthday:Ljava/lang/String;

.field private mLocation:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mName:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mNumber:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mPhoto:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private mPhotoBitmap:Landroid/graphics/Bitmap;

.field private mPhotoState:Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

.field private mSocialTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mVideoCall:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;Z)V
    .locals 1
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "scene"
    .parameter "isPortrait"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/idlescreen/base/reminderview/ReminderView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    .line 59
    sget-object v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;->NONE:Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mPhotoState:Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mLastBirthday:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mVideoCall:Z

    .line 507
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$1;

    invoke-direct {v0, p0}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$1;-><init>(Lcom/htc/idlescreen/base/reminderview/IncomingCallView;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->MenuWidgetlisener:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MenuCallback;

    .line 92
    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isSupportMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/idlescreen/base/util/ProjectSetting;->isSupportAndMenu:Z

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0, p5}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->initMenu(Z)V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->initScene()V

    .line 96
    return-void
.end method

.method private enableButton(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragDecline:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragDecline:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, p1}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 486
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragDecline:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setEnable(Ljava/lang/Boolean;)V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragAnswer:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragAnswer:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, p1}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 490
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragAnswer:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setEnable(Ljava/lang/Boolean;)V

    .line 492
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/IncomingCallView;
    .locals 7
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "isPortrait"

    .prologue
    .line 79
    const-string v6, "Port/base/Lockscreen_incomingcall.m10"

    .line 80
    .local v6, m10Path:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 81
    const-string v6, "Land/base/Lockscreen_incomingcall.m10"

    .line 84
    :cond_0
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    .line 85
    .local v4, scene:Lcom/htc/fusion/fx/FxScene;
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;Z)V

    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "IncomingCallView"

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragDecline:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragDecline:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->uninit()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragAnswer:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragAnswer:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->uninit()V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mMenuWidget:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mMenuWidget:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->uninit()V

    .line 165
    :cond_2
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->cleanup()V

    .line 166
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->isUIResume()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/WakeLockUtil;->UIWakeLock(Landroid/content/Context;Z)V

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/WakeLockUtil;->reminderWakeLock(Landroid/content/Context;Z)V

    .line 170
    return-void
.end method

.method public closeMenu()V
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->enableButton(Z)V

    .line 504
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mMenuWidget:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->closeMenu()V

    .line 505
    return-void
.end method

.method public getBirthdayString(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .parameter "birthday"

    .prologue
    const/4 v5, 0x0

    .line 340
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 341
    .local v1, dLike:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 342
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, v1, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 344
    .local v2, imageSpanBirthday:Landroid/text/style/ImageSpan;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 345
    .local v0, contentStringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 347
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 351
    return-object v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    const v1, 0x7f040020

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocialTitle(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 7
    .parameter "snIcon"
    .parameter "snString"

    .prologue
    const/4 v6, 0x0

    .line 320
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 321
    .local v0, contentStringBuilder:Landroid/text/SpannableStringBuilder;
    if-eqz p1, :cond_0

    .line 322
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 323
    .local v3, size:I
    invoke-static {p1, v3, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 324
    .local v2, scaledBmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v2, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 326
    .local v1, imageSpanSN:Landroid/text/style/ImageSpan;
    const-string v4, " "

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 328
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 332
    const-string v4, " "

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 335
    .end local v1           #imageSpanSN:Landroid/text/style/ImageSpan;
    .end local v2           #scaledBmp:Landroid/graphics/Bitmap;
    .end local v3           #size:I
    :cond_0
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 336
    return-object v0
.end method

.method public getViewType()Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->CALL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method protected initMenu(Z)V
    .locals 6
    .parameter "isPortrait"

    .prologue
    const/4 v5, 0x1

    .line 439
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, leftlab:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, rightlab:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 443
    const-string v3, "Land/base/Lockscreen_fake_menu.m10"

    invoke-static {v3, v5}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 447
    .local v1, menuscene:Lcom/htc/fusion/fx/FxScene;
    :goto_0
    if-eqz v1, :cond_0

    .line 448
    new-instance v3, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;-><init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;)V

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mMenuWidget:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    .line 449
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mMenuWidget:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    invoke-virtual {v3, v0, v2}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mMenuWidget:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->MenuWidgetlisener:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MenuCallback;

    invoke-virtual {v3, v4}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->setCallback(Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MenuCallback;)V

    .line 453
    :cond_0
    return-void

    .line 445
    .end local v1           #menuscene:Lcom/htc/fusion/fx/FxScene;
    :cond_1
    const-string v3, "Port/base/Lockscreen_fake_menu.m10"

    invoke-static {v3, v5}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .restart local v1       #menuscene:Lcom/htc/fusion/fx/FxScene;
    goto :goto_0
.end method

.method public initScene()V
    .locals 6

    .prologue
    .line 99
    const-string v3, "IncomingCallView"

    const-string v4, "initScene"

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->initScene()V

    .line 101
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "dynamicimage.incomingcallphoto"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mPhoto:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 102
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "textlabel.incomingcall"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 103
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "textlabel.incomingcall_number"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mNumber:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 104
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "textlabel.incomingcall_name"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 106
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "textlabel.incomingcall_social"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mSocialTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 107
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "textlabel.incomingcall_city"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mLocation:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 108
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "textlabel.incomingcall_birthday"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mBirthday:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 110
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 116
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f040029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, answer:Ljava/lang/String;
    const v3, 0x7f04002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, decline:Ljava/lang/String;
    sget-object v3, Lcom/htc/idlescreen/base/mode10/IncomingCallR;->CALL_RES_DRAG_ANSWER:[Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {p0, p0, v3, v0, v4}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragAnswer:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 124
    sget-object v3, Lcom/htc/idlescreen/base/mode10/IncomingCallR;->CALL_RES_DRAG_DECLINE:[Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {p0, p0, v3, v1, v4}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragDecline:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 128
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragAnswer:Lcom/htc/idlescreen/base/widget/ReminderButton;

    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    const/high16 v5, 0x7f02

    invoke-virtual {v3, v4, v5}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setFakeImage(Landroid/content/Context;I)V

    .line 129
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragDecline:Lcom/htc/idlescreen/base/widget/ReminderButton;

    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    const v5, 0x7f020001

    invoke-virtual {v3, v4, v5}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setFakeImage(Landroid/content/Context;I)V

    .line 132
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mBirthday:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 133
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->update()V

    .line 134
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/util/WakeLockUtil;->reminderWakeLock(Landroid/content/Context;Z)V

    .line 135
    return-void
.end method

.method public isShowShortcut()Z
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 534
    sget-boolean v3, Lcom/htc/idlescreen/base/util/ProjectSetting;->isSupportAndMenu:Z

    if-eqz v3, :cond_1

    .line 535
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v6, v6, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 536
    .local v0, item1:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 537
    iget-boolean v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mVideoCall:Z

    if-eqz v3, :cond_0

    .line 538
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v5, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 539
    .local v2, item3:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 541
    .end local v2           #item3:Landroid/view/MenuItem;
    :cond_0
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v7, v7, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 542
    .local v1, item2:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 544
    .end local v0           #item1:Landroid/view/MenuItem;
    .end local v1           #item2:Landroid/view/MenuItem;
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 457
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 463
    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isSupportMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mMenuWidget:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    if-eqz v1, :cond_1

    .line 464
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mMenuWidget:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->isMenuPopup()Ljava/lang/Boolean;

    move-result-object v0

    .line 465
    .local v0, ismenupopup:Ljava/lang/Boolean;
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 466
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 467
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->popupMenu()V

    .line 473
    :cond_0
    :goto_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 474
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->closeMenu()V

    .line 479
    .end local v0           #ismenupopup:Ljava/lang/Boolean;
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 469
    .restart local v0       #ismenupopup:Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->closeMenu()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 547
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 560
    :goto_0
    return-void

    .line 550
    :pswitch_0
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->sendMessagetoRejectCall()V

    goto :goto_0

    .line 553
    :pswitch_1
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->MuteCall()V

    goto :goto_0

    .line 556
    :pswitch_2
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->answerCallByVoice()V

    goto :goto_0

    .line 547
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "IncomingCallView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "IncomingCallView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragDecline:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->reset()V

    .line 148
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragAnswer:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->reset()V

    .line 149
    return-void
.end method

.method public onRingDragEnd(Z)V
    .locals 3
    .parameter "unlock"

    .prologue
    const/4 v1, 0x1

    .line 419
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDragEnd(Z)V

    .line 420
    if-eqz p1, :cond_0

    .line 421
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/htc/idlescreen/base/IdleState;->answerCall(J)V

    .line 427
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragAnswer:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 425
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragDecline:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    goto :goto_0
.end method

.method public onRingDragStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 430
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDragStart()V

    .line 431
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragAnswer:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 432
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragDecline:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 433
    return-void
.end method

.method protected onRingDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 1
    .parameter "drag"

    .prologue
    .line 368
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 369
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragDecline:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->updateViewMode()V

    .line 372
    :cond_0
    return-void
.end method

.method protected onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 3
    .parameter "drag"

    .prologue
    .line 355
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 356
    const-string v0, "IncomingCallView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRingDrop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragDecline:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->endCall()V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragAnswer:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->fadeOut()V

    .line 363
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/htc/idlescreen/base/IdleState;->answerCall(J)V

    goto :goto_0
.end method

.method public onSphereMoved(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 3
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 397
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSphereMoved(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 398
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setNameVisible(ZJ)V

    .line 399
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragAnswer:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragAnswer:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragDecline:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_1

    .line 403
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragDecline:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 405
    :cond_1
    return-void
.end method

.method public onSpherePressed(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 393
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSpherePressed(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 394
    return-void
.end method

.method public onSphereReleased(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 3
    .parameter "button"

    .prologue
    const/4 v2, 0x1

    .line 408
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSphereReleased(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 409
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setNameVisible(ZJ)V

    .line 410
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragAnswer:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragAnswer:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragDecline:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_1

    .line 414
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mDragDecline:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 416
    :cond_1
    return-void
.end method

.method public popupMenu()V
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->enableButton(Z)V

    .line 498
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mMenuWidget:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->popupMenu()V

    .line 499
    return-void
.end method

.method public unlockByDrop(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Z
    .locals 1
    .parameter "drag"

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public unlockByRing()Z
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public update()V
    .locals 21

    .prologue
    .line 173
    const-string v18, "IncomingCallView"

    const-string v19, "update"

    invoke-static/range {v18 .. v19}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/idlescreen/base/IdleState;->getPhoneState()Lcom/htc/lockscreen/telephony/PhoneState;

    move-result-object v14

    .line 175
    .local v14, state:Lcom/htc/lockscreen/telephony/PhoneState;
    const/4 v11, 0x0

    .line 176
    .local v11, photo:Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 177
    .local v12, snIcon:Landroid/graphics/Bitmap;
    const-string v10, ""

    .line 178
    .local v10, number:Ljava/lang/String;
    const-string v8, ""

    .line 180
    .local v8, name:Ljava/lang/String;
    const-string v13, ""

    .line 181
    .local v13, social:Ljava/lang/String;
    const-string v7, ""

    .line 182
    .local v7, location:Ljava/lang/String;
    const-string v2, ""

    .line 184
    .local v2, birthday:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f040028

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 185
    .local v16, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 186
    if-nez v14, :cond_5

    .line 187
    const-string v18, "IncomingCallView"

    const-string v19, "update state is null"

    invoke-static/range {v18 .. v19}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :goto_0
    const-string v18, "IncomingCallView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "update mPhoto:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mDisplayNumber:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " update mName:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " update location:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " update socail:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " update birthday:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mVideoCall:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mVideoCall:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    const/4 v5, 0x1

    .line 224
    .local v5, hasLocation:Z
    :goto_1
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    const/4 v6, 0x1

    .line 225
    .local v6, hasSocial:Z
    :goto_2
    const/4 v15, 0x0

    .line 226
    .local v15, target:Lcom/htc/fusion/fx/Marker;
    if-eqz v6, :cond_a

    .line 227
    if-eqz v5, :cond_9

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mScene:Lcom/htc/fusion/fx/FxScene;

    move-object/from16 v18, v0

    const-string v19, "social_1"

    invoke-virtual/range {v18 .. v19}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v15

    .line 246
    :goto_3
    if-eqz v15, :cond_0

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mScene:Lcom/htc/fusion/fx/FxScene;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/fusion/fx/FxScene;->getFrame()F

    move-result v18

    move/from16 v0, v18

    float-to-int v9, v0

    .line 248
    .local v9, nowFrame:I
    iget v4, v15, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    .line 249
    .local v4, goalFrame:I
    if-eq v9, v4, :cond_0

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mScene:Lcom/htc/fusion/fx/FxScene;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mScene:Lcom/htc/fusion/fx/FxScene;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v4}, Lcom/htc/fusion/fx/FxScene;->playFrames(II)V

    .line 255
    .end local v4           #goalFrame:I
    .end local v9           #nowFrame:I
    :cond_0
    if-eqz v11, :cond_c

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mPhotoBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mPhotoBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 259
    :cond_1
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mPhotoBitmap:Landroid/graphics/Bitmap;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mPhoto:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 261
    sget-object v18, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;->DONE:Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mPhotoState:Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    .line 273
    :cond_2
    :goto_4
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mNumber:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 281
    :goto_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 288
    :goto_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_f

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mBirthday:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/fusion/fx/controls/FxTextLabel;->getVisibility()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mLastBirthday:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 290
    :cond_3
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mLastBirthday:Ljava/lang/String;

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mBirthday:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->getBirthdayString(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mBirthday:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 302
    :cond_4
    :goto_7
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_10

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mSocialTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->getSocialTitle(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 309
    :goto_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_11

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mLocation:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 315
    :goto_9
    return-void

    .line 190
    .end local v5           #hasLocation:Z
    .end local v6           #hasSocial:Z
    .end local v15           #target:Lcom/htc/fusion/fx/Marker;
    :cond_5
    iget-object v12, v14, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 191
    iget-object v11, v14, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 192
    iget-object v10, v14, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 193
    iget-object v8, v14, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 194
    iget-object v13, v14, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 195
    iget-object v7, v14, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 196
    iget-object v2, v14, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 197
    iget v0, v14, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    :goto_a
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mVideoCall:Z

    goto/16 :goto_0

    :cond_6
    const/16 v18, 0x0

    goto :goto_a

    .line 223
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 224
    .restart local v5       #hasLocation:Z
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 232
    .restart local v6       #hasSocial:Z
    .restart local v15       #target:Lcom/htc/fusion/fx/Marker;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mScene:Lcom/htc/fusion/fx/FxScene;

    move-object/from16 v18, v0

    const-string v19, "social_0"

    invoke-virtual/range {v18 .. v19}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v15

    goto/16 :goto_3

    .line 237
    :cond_a
    if-eqz v5, :cond_b

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mScene:Lcom/htc/fusion/fx/FxScene;

    move-object/from16 v18, v0

    const-string v19, "normal_1"

    invoke-virtual/range {v18 .. v19}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v15

    goto/16 :goto_3

    .line 242
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mScene:Lcom/htc/fusion/fx/FxScene;

    move-object/from16 v18, v0

    const-string v19, "normal_0"

    invoke-virtual/range {v18 .. v19}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v15

    goto/16 :goto_3

    .line 266
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mPhotoState:Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    move-object/from16 v18, v0

    sget-object v19, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;->NONE:Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f02000f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 268
    .local v3, dPhone:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mPhoto:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 269
    sget-object v18, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;->DEFAULT:Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mPhotoState:Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    goto/16 :goto_4

    .line 277
    .end local v3           #dPhone:Landroid/graphics/drawable/Drawable;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f04002b

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 278
    .local v17, unknown:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mNumber:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 285
    .end local v17           #unknown:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 296
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mBirthday:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 297
    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mLastBirthday:Ljava/lang/String;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mBirthday:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_7

    .line 306
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mSocialTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 313
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->mLocation:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto/16 :goto_9
.end method
