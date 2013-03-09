.class public Lcom/android/phone/CallCard;
.super Landroid/widget/FrameLayout;
.source "CallCard.java"

# interfaces
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$2;,
        Lcom/android/phone/CallCard$ImageLoadListener;,
        Lcom/android/phone/CallCard$RichPhoneCanvasQuery;,
        Lcom/android/phone/CallCard$OnRichPhoneCanvasQueryListener;,
        Lcom/android/phone/CallCard$SocialNetworkService;,
        Lcom/android/phone/CallCard$PhotoMode;,
        Lcom/android/phone/CallCard$CallCardMode;
    }
.end annotation


# static fields
.field static final CALLCARD_SIDE_MARGIN_LANDSCAPE:I = 0x32

#the value of this static final field might be set in the static constructor
.field private static final CITY_ID:Z = false

.field private static final DBG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final ENLARGE_CALLER_INFO_FONT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOCK_SCREEN_CITY_ID:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CallCard"

.field static final MAIN_CALLCARD_MIN_HEIGHT_LANDSCAPE:I = 0xc8

.field static final TITLE_TEXT_SIZE_LANDSCAPE:F = 22.0f

.field private static final TOKEN_UPDATE_IMAGE:I = 0x4d4

.field protected static final mSocialNetworkService:[Lcom/android/phone/CallCard$SocialNetworkService;


# instance fields
.field private destroyed:Z

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mAvatarDrawable:Landroid/graphics/drawable/Drawable;

.field private mCalendarEventPanel:Lcom/android/phone/widget/CalendarEventPanel;

.field private mCallCardMode:Lcom/android/phone/CallCard$CallCardMode;

.field private mCallMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mCdmaRedirectLabel:Landroid/widget/TextView;

.field private mCityId:Landroid/widget/TextView;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mElapsedTimeShadow:Landroid/widget/TextView;

.field private mEvent:Landroid/widget/TextView;

.field private mEventLayout:Landroid/widget/LinearLayout;

.field private mFrameMask:Landroid/graphics/Bitmap;

.field private mFrameRect:Landroid/graphics/Rect;

.field private mIconBm:Landroid/graphics/Bitmap;

.field private mIconRect:Landroid/graphics/Rect;

.field private mImageLoadListener:Lcom/android/phone/CallCard$ImageLoadListener;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInCallStatus:Landroid/widget/TextView;

.field private mInCallStatusShadow:Landroid/widget/TextView;

.field private mInCallStatusViewGroup:Landroid/view/ViewGroup;

.field private mIncallAvatarDrawable:Landroid/graphics/drawable/Drawable;

.field private mLockScreenCityId:Landroid/widget/TextView;

.field private mMCPanel:Lcom/android/phone/HtcMCCallCard;

.field private mMainCallCard:Landroid/view/ViewGroup;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mName:Landroid/widget/TextView;

.field private mNonCallStatus:Landroid/widget/TextView;

.field private mNonCallStatusShadow:Landroid/widget/TextView;

.field private mPaint:Landroid/graphics/Paint;

.field private mPersonInfoPanel:Landroid/view/ViewGroup;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoBm:Landroid/graphics/Bitmap;

.field private mPhotoDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mPhotoLayout:Landroid/widget/RelativeLayout;

.field private mPhotoRect:Landroid/graphics/Rect;

.field private mPhotoRef:Landroid/widget/ImageView;

.field private mPhotoTracker:Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;

.field private mPreCachedPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreCachedSNIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mRefBm:Landroid/graphics/Bitmap;

.field private mRefImageHeight:F

.field private mRefMask:Landroid/graphics/Bitmap;

.field private mRefRect:Landroid/graphics/Rect;

.field private mRichPhoneCanvasQueryHandler:Lcom/android/phone/CallCard$RichPhoneCanvasQuery;

.field private mRobot:Landroid/widget/VideoView;

.field private mRobotPlaying:Z

.field private mSNStatusPanel:Lcom/android/phone/widget/SNStatusPanel;

.field private mShadowView:Landroid/view/View;

.field private mStatus:Landroid/widget/TextView;

.field private mTextColorCallTypeSip:I

.field private mTextColorConnected:I

.field private mTitleElapsedTime:Landroid/widget/TextView;

.field private mTitleElapsedTimeShadow:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v4, 0xd8

    const/16 v3, 0xaa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    sget-boolean v0, Lcom/android/phone/CityIdInfo;->ENABLED:Z

    sput-boolean v0, Lcom/android/phone/CallCard;->CITY_ID:Z

    .line 216
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/CallCard;->LOCK_SCREEN_CITY_ID:Z

    .line 222
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/phone/CallCard;->ENLARGE_CALLER_INFO_FONT:Z

    .line 2745
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/CallCard$SocialNetworkService;

    new-instance v3, Lcom/android/phone/CallCard$SocialNetworkService;

    const-string v4, "vnd.android.cursor.item/vnd.facebook.profile"

    const-string v5, "content://com.htc.socialnetwork.facebook/status_update"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/phone/CallCard$SocialNetworkService;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v3, v0, v2

    new-instance v2, Lcom/android/phone/CallCard$SocialNetworkService;

    const-string v3, "vnd.android.cursor.item/vnd.htcfacebook.profile"

    const-string v4, "content://com.htc.socialnetwork.facebook/status_update"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/phone/CallCard$SocialNetworkService;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/phone/CallCard$SocialNetworkService;

    const-string v3, "vnd.android.cursor.item/vnd.htctwitter.profile"

    const-string v4, "content://com.htc.htctwitter/status_update"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/phone/CallCard$SocialNetworkService;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/phone/CallCard$SocialNetworkService;

    const-string v3, "vnd.android.cursor.item/vnd.plurk.profile"

    const-string v4, "content://com.htc.socialnetwork.plurk/status_update"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/phone/CallCard$SocialNetworkService;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallCard;->mSocialNetworkService:[Lcom/android/phone/CallCard$SocialNetworkService;

    return-void

    :cond_0
    move v0, v2

    .line 216
    goto :goto_0

    :cond_1
    move v0, v2

    .line 222
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 266
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 199
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mMatrix:Landroid/graphics/Matrix;

    .line 200
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPaint:Landroid/graphics/Paint;

    .line 207
    new-instance v1, Lcom/android/phone/CallCard$ImageLoadListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/phone/CallCard$ImageLoadListener;-><init>(Lcom/android/phone/CallCard$1;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mImageLoadListener:Lcom/android/phone/CallCard$ImageLoadListener;

    .line 273
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 274
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030003

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 279
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 281
    new-instance v1, Lcom/android/phone/CallTime;

    invoke-direct {v1, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 284
    new-instance v1, Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v1}, Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;

    .line 285
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallCard;)Lcom/android/phone/widget/SNStatusPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSNStatusPanel:Lcom/android/phone/widget/SNStatusPanel;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;JLcom/android/internal/telephony/CallerInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-static {p0, p1, p2, p3}, Lcom/android/phone/CallCard;->getEventQuery(Landroid/content/Context;JLcom/android/internal/telephony/CallerInfo;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/android/phone/CallCard;->getStatusQuery(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/CallCard;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallCard;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->setPhotoImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/phone/CallCard;->mEvent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallCard;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/phone/CallCard;->mEventLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallCard;)Lcom/android/phone/PhoneApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method private static adjustSizeForN11(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 4
    .parameter "view"
    .parameter "text"
    .parameter "res"

    .prologue
    const/4 v3, 0x0

    .line 2242
    const v1, 0x7f0c005e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2245
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 2246
    .local v0, tPaint:Landroid/text/TextPaint;
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 2248
    const v1, 0x7f0c00ea

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2252
    :cond_0
    return-void
.end method

.method private checkIfE911Call(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "displaynumber"

    .prologue
    .line 3504
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 3513
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 3507
    .restart local p1
    :cond_1
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CT_CUSTOMIZATION:Z

    if-nez v0, :cond_0

    .line 3509
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3510
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0173

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method static createSquareDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "res"
    .parameter "src"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 3309
    if-nez p0, :cond_0

    move-object v7, v9

    .line 3341
    :goto_0
    return-object v7

    .line 3312
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 3313
    .local v2, height:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 3315
    .local v6, width:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3318
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3323
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8, v8, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3324
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3326
    if-ne v2, v6, :cond_1

    .line 3327
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3331
    :cond_1
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3332
    .local v4, size:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3333
    .local v5, squareBm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    .end local v1           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3334
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3335
    .local v3, rect:Landroid/graphics/Rect;
    if-ne v6, v4, :cond_2

    move v7, v8

    :goto_1
    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 3336
    if-ne v2, v4, :cond_3

    move v7, v8

    :goto_2
    iput v7, v3, Landroid/graphics/Rect;->top:I

    .line 3337
    iget v7, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v4

    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 3338
    iget v7, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v4

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 3339
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8, v8, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v0, v3, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3341
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, p0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3335
    :cond_2
    sub-int v7, v6, v4

    div-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 3336
    :cond_3
    sub-int v7, v2, v4

    div-int/lit8 v7, v7, 0x2

    goto :goto_2
.end method

.method private displayFakePersonalInfo(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 7
    .parameter "ci"

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 1136
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1137
    .local v2, name:Ljava/lang/String;
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1138
    .local v0, displayNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1140
    .local v1, label:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1141
    iget-object v4, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 1142
    iget-object v4, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1150
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget v4, p1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 1152
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {v4, v5}, Landroid/provider/HtcUnionContact$ContactUtils;->getPhoneNumberTypeShortString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1157
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1160
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1167
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1169
    iget-object v4, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {p1, v4}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1170
    iget-object v4, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1171
    iget-object v4, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    .line 1172
    iget-object v4, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1180
    :cond_3
    :goto_1
    return-void

    .line 1145
    :cond_4
    iget-object v4, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    iget-object v4, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1147
    iget-object v4, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1176
    :cond_5
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 12
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 1192
    if-nez p2, :cond_1

    .line 1379
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    iget-object v9, p0, Lcom/android/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1199
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 1202
    .local v8, state:Lcom/android/internal/telephony/Call$State;
    sget-object v9, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1258
    const-string v9, "CallCard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "displayMainCallStatus: unexpected call state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-direct {p0, v9, p2}, Lcom/android/phone/CallCard;->updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 1265
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 1269
    .local v5, phoneType:I
    const/4 v9, 0x2

    if-ne v5, v9, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1271
    const/4 v9, 0x0

    sget v10, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11, p2}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    .line 1368
    :goto_2
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 1371
    sget-boolean v9, Lcom/android/phone/CityIdInfo;->ECID:Z

    if-eqz v9, :cond_0

    invoke-direct {p0}, Lcom/android/phone/CallCard;->isCityIdVisibled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1375
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/EcidClient;->updateLookupQueries(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 1204
    .end local v5           #phoneType:I
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showCallConnected()V

    .line 1207
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v9, p2}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 1208
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v9}, Lcom/android/phone/CallTime;->reset()V

    .line 1209
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v9}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    goto :goto_1

    .line 1214
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showCallOnhold()V

    .line 1215
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v9}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto :goto_1

    .line 1220
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->reset()V

    .line 1221
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showCallEnded()V

    .line 1222
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v9}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto :goto_1

    .line 1228
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showCallConnecting()V

    .line 1230
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v9}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto :goto_1

    .line 1236
    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showCallIncoming()V

    .line 1238
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v9}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto :goto_1

    .line 1247
    :pswitch_5
    const-string v9, "CallCard"

    const-string v10, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1274
    .restart local v5       #phoneType:I
    :cond_2
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1276
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    goto :goto_2

    .line 1280
    :cond_3
    const/4 v1, 0x0

    .line 1282
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    const/4 v9, 0x2

    if-ne v5, v9, :cond_4

    .line 1283
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1291
    :goto_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v6

    .line 1293
    .local v6, presentation:I
    if-nez v1, :cond_7

    .line 1299
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 1300
    .local v2, info:Lcom/android/internal/telephony/CallerInfo;
    const/4 v9, 0x0

    invoke-direct {p0, v2, v6, v9, p2}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto :goto_2

    .line 1284
    .end local v2           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v6           #presentation:I
    :cond_4
    const/4 v9, 0x1

    if-eq v5, v9, :cond_5

    const/4 v9, 0x3

    if-ne v5, v9, :cond_6

    .line 1286
    :cond_5
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_3

    .line 1288
    :cond_6
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1306
    .restart local v6       #presentation:I
    :cond_7
    const/4 v7, 0x1

    .line 1307
    .local v7, runQuery:Z
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v4

    .line 1310
    .local v4, o:Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    .line 1313
    invoke-static {v1, v4}, Lcom/android/phone/HtcCdmaPhoneApp;->callingNumberUpdate(Lcom/android/internal/telephony/Connection;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1316
    :cond_8
    instance-of v9, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v9, :cond_a

    .line 1317
    iget-object v10, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;

    move-object v9, v4

    check-cast v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v9, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v10, v9}, Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v7

    .line 1323
    :goto_4
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->isRoaming(Lcom/android/internal/telephony/Call;)[Z

    move-result-object v3

    .line 1325
    .local v3, isRoaming:[Z
    if-eqz v7, :cond_c

    .line 1327
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v1, p0, p2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 1330
    .local v2, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget-boolean v9, Lcom/android/phone/CityIdInfo;->ECID:Z

    if-eqz v9, :cond_9

    invoke-direct {p0}, Lcom/android/phone/CallCard;->isCityIdVisibled()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1331
    iget-object v9, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v10, 0x0

    aget-boolean v10, v3, v10

    const/4 v11, 0x1

    aget-boolean v11, v3, v11

    invoke-direct {p0, v9, v1, v10, v11}, Lcom/android/phone/CallCard;->doQueryECID(Ljava/lang/Object;Lcom/android/internal/telephony/Connection;ZZ)V

    .line 1334
    :cond_9
    iget-object v10, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v9, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v9, :cond_b

    const/4 v9, 0x1

    :goto_5
    invoke-direct {p0, v10, v6, v9, p2}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 1320
    .end local v2           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #isRoaming:[Z
    :cond_a
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v9, v1}, Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v7

    goto :goto_4

    .line 1334
    .restart local v2       #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v3       #isRoaming:[Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_5

    .line 1337
    .end local v2           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_c
    sget-boolean v9, Lcom/android/phone/CityIdInfo;->ECID:Z

    if-eqz v9, :cond_d

    invoke-direct {p0}, Lcom/android/phone/CallCard;->isCityIdVisibled()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1338
    const/4 v9, 0x0

    aget-boolean v9, v3, v9

    const/4 v10, 0x1

    aget-boolean v10, v3, v10

    invoke-direct {p0, v4, v1, v9, v10}, Lcom/android/phone/CallCard;->doQueryECID(Ljava/lang/Object;Lcom/android/internal/telephony/Connection;ZZ)V

    .line 1345
    :cond_d
    instance-of v9, v4, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v9, :cond_e

    move-object v0, v4

    .line 1346
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 1348
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v9, 0x0

    invoke-direct {p0, v0, v6, v9, p2}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 1349
    .end local v0           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_e
    instance-of v9, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v9, :cond_f

    .line 1350
    check-cast v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v4           #o:Ljava/lang/Object;
    iget-object v0, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1352
    .restart local v0       #ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v9, 0x1

    invoke-direct {p0, v0, v6, v9, p2}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 1354
    .end local v0           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v4       #o:Ljava/lang/Object;
    :cond_f
    const-string v9, "CallCard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 1624
    return-void
.end method

.method private doQueryECID(Ljava/lang/Object;Lcom/android/internal/telephony/Connection;ZZ)V
    .locals 11
    .parameter "c"
    .parameter "conn"
    .parameter "bIsRoaming"
    .parameter "bDataRoamingEnabled"

    .prologue
    const/4 v3, 0x1

    .line 3737
    if-eqz p2, :cond_0

    .line 3738
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3749
    :goto_0
    return-void

    .line 3744
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    if-nez p4, :cond_1

    move v0, v3

    :goto_1
    and-int v7, p3, v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v8

    move-object v0, p1

    move-object v2, p0

    move v6, v3

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lcom/android/phone/EcidClient;->sendLookupQueryToService(Ljava/lang/Object;Landroid/app/Activity;Lcom/android/phone/CallCard;IZZZZJLcom/android/internal/telephony/Connection;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 5
    .parameter "call"

    .prologue
    .line 1627
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1630
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 1634
    const v2, 0x7f0e03a1

    .line 1714
    .local v2, resID:I
    :goto_0
    const v3, 0x7f0e03a1

    if-ne v3, v2, :cond_3

    .line 1715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1718
    :goto_1
    return-object v3

    .line 1637
    .end local v2           #resID:I
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1643
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1709
    const v2, 0x7f0e03a1

    .restart local v2       #resID:I
    goto :goto_0

    .line 1645
    .end local v2           #resID:I
    :pswitch_0
    const v2, 0x7f0e0230

    .line 1646
    .restart local v2       #resID:I
    goto :goto_0

    .line 1649
    .end local v2           #resID:I
    :pswitch_1
    const v2, 0x7f0e0231

    .line 1650
    .restart local v2       #resID:I
    goto :goto_0

    .line 1653
    .end local v2           #resID:I
    :pswitch_2
    const v2, 0x7f0e0232

    .line 1654
    .restart local v2       #resID:I
    goto :goto_0

    .line 1657
    .end local v2           #resID:I
    :pswitch_3
    const v2, 0x7f0e0233

    .line 1658
    .restart local v2       #resID:I
    goto :goto_0

    .line 1661
    .end local v2           #resID:I
    :pswitch_4
    const v2, 0x7f0e0234

    .line 1662
    .restart local v2       #resID:I
    goto :goto_0

    .line 1665
    .end local v2           #resID:I
    :pswitch_5
    const v2, 0x7f0e0235

    .line 1666
    .restart local v2       #resID:I
    goto :goto_0

    .line 1669
    .end local v2           #resID:I
    :pswitch_6
    const v2, 0x7f0e0237

    .line 1670
    .restart local v2       #resID:I
    goto :goto_0

    .line 1673
    .end local v2           #resID:I
    :pswitch_7
    const v2, 0x7f0e0236

    .line 1674
    .restart local v2       #resID:I
    goto :goto_0

    .line 1678
    .end local v2           #resID:I
    :pswitch_8
    const v2, 0x7f0e0238

    .line 1679
    .restart local v2       #resID:I
    goto :goto_0

    .line 1682
    .end local v2           #resID:I
    :pswitch_9
    const v2, 0x7f0e0239

    .line 1683
    .restart local v2       #resID:I
    goto :goto_0

    .line 1686
    .end local v2           #resID:I
    :pswitch_a
    const v2, 0x7f0e023a

    .line 1687
    .restart local v2       #resID:I
    goto :goto_0

    .line 1690
    .end local v2           #resID:I
    :pswitch_b
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1691
    const v2, 0x7f0e023b

    .restart local v2       #resID:I
    goto :goto_0

    .line 1692
    .end local v2           #resID:I
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1693
    const v2, 0x7f0e023c

    .restart local v2       #resID:I
    goto :goto_0

    .line 1695
    .end local v2           #resID:I
    :cond_2
    const v2, 0x7f0e023d

    .line 1696
    .restart local v2       #resID:I
    goto :goto_0

    .line 1699
    .end local v2           #resID:I
    :pswitch_c
    const v2, 0x7f0e023e

    .line 1700
    .restart local v2       #resID:I
    goto :goto_0

    .line 1704
    .end local v2           #resID:I
    :pswitch_d
    const v2, 0x7f0e024d

    .line 1705
    .restart local v2       #resID:I
    goto :goto_0

    .line 1718
    .end local v1           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1643
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private getConferenceCallPanel(Lcom/android/phone/InCallScreen;)Lcom/android/phone/HtcMCCallCard;
    .locals 4
    .parameter "incallScreen"

    .prologue
    .line 2694
    iget-object v2, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 2697
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2698
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030033

    iget-object v3, p0, Lcom/android/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2699
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0800e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/HtcMCCallCard;

    iput-object v2, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    .line 2701
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #view:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    return-object v2
.end method

.method private static getEventQuery(Landroid/content/Context;JLcom/android/internal/telephony/CallerInfo;)V
    .locals 21
    .parameter "context"
    .parameter "contact_id"
    .parameter "info"

    .prologue
    .line 2916
    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    if-nez p3, :cond_1

    .line 2973
    :cond_0
    :goto_0
    return-void

    .line 2919
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 2920
    .local v11, currentTime:J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "show_events_within_days"

    const/4 v5, 0x3

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 2921
    .local v14, days:I
    move-wide/from16 v18, v11

    .line 2922
    .local v18, startTime:J
    const-wide/32 v4, 0x5265c00

    int-to-long v6, v14

    mul-long/2addr v4, v6

    add-long v16, v11, v4

    .line 2923
    .local v16, endTime:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 2924
    .local v9, calendar:Ljava/util/Calendar;
    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2925
    const/16 v2, 0xb

    const/16 v4, 0x17

    invoke-virtual {v9, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 2926
    const/16 v2, 0xc

    const/16 v4, 0x3b

    invoke-virtual {v9, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 2927
    const/16 v2, 0xd

    const/16 v4, 0x3b

    invoke-virtual {v9, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 2928
    const/16 v2, 0xe

    const/16 v4, 0x3e7

    invoke-virtual {v9, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 2929
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    .line 2930
    sget-object v2, Landroid/provider/HtcContactsContract$EventInstance;->WITH_RANGE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "e_start"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "e_end"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 2933
    .local v3, queryUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notify_location=1 AND contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2947
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_0

    .line 2949
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 2950
    .local v10, count:I
    if-lez v10, :cond_5

    .line 2951
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 2953
    .local v8, BestTimestamp:Ljava/lang/Long;
    :cond_2
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2954
    const-string v2, "time"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 2957
    .local v20, timestamp:Ljava/lang/Long;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    .line 2958
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    .line 2960
    :cond_3
    move-object/from16 v8, v20

    goto :goto_1

    .line 2963
    .end local v20           #timestamp:Ljava/lang/Long;
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_5

    .line 2964
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/htc/util/contacts/ContactsUtility;->getRelativeDayString(JJ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->date:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2970
    .end local v8           #BestTimestamp:Ljava/lang/Long;
    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2966
    .end local v10           #count:I
    :catch_0
    move-exception v15

    .line 2967
    .local v15, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when trying to query People event notification:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallCard;->logErr(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2970
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v15           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private getPresentationString(I)Ljava/lang/String;
    .locals 3
    .parameter "presentation"

    .prologue
    .line 2255
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e022b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2256
    .local v0, name:Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 2257
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e022c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2261
    :cond_0
    :goto_0
    return-object v0

    .line 2258
    :cond_1
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    .line 2259
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e022d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getStatusQuery(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 41
    .parameter "context"
    .parameter "info"

    .prologue
    .line 2758
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 2759
    .local v13, contact_id:J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->status_id:J

    move-wide/from16 v37, v0

    .line 2760
    .local v37, status_id:J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    .line 2761
    .local v32, mResolver:Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .line 2763
    .local v15, cursor:Landroid/database/Cursor;
    if-nez p1, :cond_1

    .line 2911
    :cond_0
    return-void

    .line 2767
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v37, v2

    if-lez v2, :cond_2

    .line 2768
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "status"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "status_res_package"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "status_icon"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "status_ts"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "status_label"

    aput-object v7, v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "status_update_data_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v37

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2779
    :cond_2
    if-eqz v15, :cond_5

    .line 2781
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2782
    const-string v2, "status"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->SN_status:Ljava/lang/String;

    .line 2785
    const-string v2, "status_res_package"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 2788
    .local v34, packageName:Ljava/lang/String;
    const-string v2, "status_icon"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 2792
    .local v18, iconId:I
    const v16, 0x208024b

    .line 2793
    .local v16, facebookIcon:I
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----get icon from package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----test facebook icon id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-lez v18, :cond_3

    .line 2797
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->SN_icon:Landroid/graphics/drawable/Drawable;

    .line 2802
    :cond_3
    sget-boolean v2, Lcom/android/phone/widget/SNStatusPanel;->ENABLE_CALLER_ID_ENHANCEMENT:Z

    if-eqz v2, :cond_4

    .line 2803
    const-string v2, "status_ts"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->SN_timestamp:Ljava/lang/Long;

    .line 2806
    const-string v2, "status_label"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 2809
    .local v30, labelRes:I
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-lez v30, :cond_4

    .line 2810
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v30

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->SN_label_clause:Ljava/lang/CharSequence;

    .line 2812
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStatusQuery(): SN_label_clause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->SN_label_clause:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2818
    .end local v16           #facebookIcon:I
    .end local v18           #iconId:I
    .end local v30           #labelRes:I
    .end local v34           #packageName:Ljava/lang/String;
    :cond_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2822
    :cond_5
    sget-object v12, Lcom/android/phone/CallCard;->mSocialNetworkService:[Lcom/android/phone/CallCard$SocialNetworkService;

    .local v12, arr$:[Lcom/android/phone/CallCard$SocialNetworkService;
    array-length v0, v12

    move/from16 v31, v0

    .local v31, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v31

    if-ge v0, v1, :cond_6

    aget-object v35, v12, v17

    .line 2823
    .local v35, sns:Lcom/android/phone/CallCard$SocialNetworkService;
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/CallCard$SocialNetworkService;->idSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 2822
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 2818
    .end local v12           #arr$:[Lcom/android/phone/CallCard$SocialNetworkService;
    .end local v17           #i$:I
    .end local v31           #len$:I
    .end local v35           #sns:Lcom/android/phone/CallCard$SocialNetworkService;
    :catchall_0
    move-exception v2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2826
    .restart local v12       #arr$:[Lcom/android/phone/CallCard$SocialNetworkService;
    .restart local v17       #i$:I
    .restart local v31       #len$:I
    :cond_6
    const-string v5, "mimetype=\'vnd.android.cursor.item/vnd.htcfacebook.profile\' OR mimetype=\'vnd.android.cursor.item/vnd.htctwitter.profile\' OR mimetype=\'vnd.android.cursor.item/vnd.plurk.profile\'"

    .line 2830
    .local v5, selection:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isFaceBookPhoneProject()Z

    move-result v3

    if-ne v2, v3, :cond_7

    .line 2831
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR mimetype= \'vnd.android.cursor.item/vnd.facebook.profile\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2834
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/simpledata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, v32

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2837
    if-eqz v15, :cond_b

    .line 2839
    :cond_8
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2841
    const-string v2, "mimetype"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 2843
    .local v25, idxMimetype:I
    const-string v2, "data1"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 2849
    .local v21, idxData:I
    move/from16 v0, v25

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 2850
    .local v33, mimetype:Ljava/lang/String;
    sget-object v12, Lcom/android/phone/CallCard;->mSocialNetworkService:[Lcom/android/phone/CallCard$SocialNetworkService;

    array-length v0, v12

    move/from16 v31, v0

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    aget-object v35, v12, v17

    .line 2851
    .restart local v35       #sns:Lcom/android/phone/CallCard$SocialNetworkService;
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/CallCard$SocialNetworkService;->mimetype:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2852
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/CallCard$SocialNetworkService;->idSet:Ljava/util/HashSet;

    move/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2850
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 2857
    .end local v21           #idxData:I
    .end local v25           #idxMimetype:I
    .end local v33           #mimetype:Ljava/lang/String;
    .end local v35           #sns:Lcom/android/phone/CallCard$SocialNetworkService;
    :cond_a
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2861
    :cond_b
    sget-object v12, Lcom/android/phone/CallCard;->mSocialNetworkService:[Lcom/android/phone/CallCard$SocialNetworkService;

    array-length v0, v12

    move/from16 v31, v0

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v31

    if-ge v0, v1, :cond_0

    aget-object v35, v12, v17

    .line 2862
    .restart local v35       #sns:Lcom/android/phone/CallCard$SocialNetworkService;
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/CallCard$SocialNetworkService;->idSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 2863
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/CallCard$SocialNetworkService;->idSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v10, v2, [Ljava/lang/String;

    .line 2865
    .local v10, idArray:[Ljava/lang/String;
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/CallCard$SocialNetworkService;->idSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .line 2866
    .local v29, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v28, 0x0

    .line 2867
    .local v28, index:I
    :goto_3
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2868
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 2869
    .local v20, id:Ljava/lang/String;
    aput-object v20, v10, v28

    .line 2870
    add-int/lit8 v28, v28, 0x1

    .line 2871
    goto :goto_3

    .line 2857
    .end local v10           #idArray:[Ljava/lang/String;
    .end local v20           #id:Ljava/lang/String;
    .end local v28           #index:I
    .end local v29           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v35           #sns:Lcom/android/phone/CallCard$SocialNetworkService;
    :catchall_1
    move-exception v2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2872
    .restart local v10       #idArray:[Ljava/lang/String;
    .restart local v28       #index:I
    .restart local v29       #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v35       #sns:Lcom/android/phone/CallCard$SocialNetworkService;
    :cond_c
    move-object/from16 v0, v35

    iget-object v7, v0, Lcom/android/phone/CallCard$SocialNetworkService;->uri:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, v32

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 2873
    .local v36, snsCursor:Landroid/database/Cursor;
    if-eqz v36, :cond_12

    .line 2875
    :try_start_2
    const-string v2, "message"

    move-object/from16 v0, v36

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 2876
    .local v24, idxMessage:I
    const-string v2, "timestamp"

    move-object/from16 v0, v36

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 2877
    .local v27, idxTimestamp:I
    const-string v2, "package_name"

    move-object/from16 v0, v36

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 2878
    .local v26, idxPackageName:I
    const-string v2, "label_id"

    move-object/from16 v0, v36

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 2879
    .local v23, idxLabelRes:I
    const-string v2, "icon_id"

    move-object/from16 v0, v36

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 2880
    .local v22, idxIconRes:I
    :cond_d
    :goto_4
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2881
    move-object/from16 v0, v36

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 2882
    .local v40, timeStr:Ljava/lang/String;
    move-object/from16 v0, v36

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    .line 2883
    .local v39, time:Ljava/lang/Long;
    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 2884
    .restart local v34       #packageName:Ljava/lang/String;
    move-object/from16 v0, v36

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 2885
    .restart local v30       #labelRes:I
    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 2886
    .local v19, iconRes:I
    if-eqz v40, :cond_e

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-gt v2, v3, :cond_e

    .line 2887
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    .line 2890
    :cond_e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->SN_timestamp:Ljava/lang/Long;

    if-eqz v2, :cond_f

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->SN_timestamp:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_d

    .line 2892
    :cond_f
    move-object/from16 v0, v36

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->SN_status:Ljava/lang/String;

    .line 2893
    move-object/from16 v0, v39

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->SN_timestamp:Ljava/lang/Long;

    .line 2894
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    if-lez v30, :cond_10

    .line 2895
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v30

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->SN_label_clause:Ljava/lang/CharSequence;

    .line 2898
    :cond_10
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    if-lez v19, :cond_d

    .line 2899
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->SN_icon:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_4

    .line 2905
    .end local v19           #iconRes:I
    .end local v22           #idxIconRes:I
    .end local v23           #idxLabelRes:I
    .end local v24           #idxMessage:I
    .end local v26           #idxPackageName:I
    .end local v27           #idxTimestamp:I
    .end local v30           #labelRes:I
    .end local v34           #packageName:Ljava/lang/String;
    .end local v39           #time:Ljava/lang/Long;
    .end local v40           #timeStr:Ljava/lang/String;
    :catchall_2
    move-exception v2

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v22       #idxIconRes:I
    .restart local v23       #idxLabelRes:I
    .restart local v24       #idxMessage:I
    .restart local v26       #idxPackageName:I
    .restart local v27       #idxTimestamp:I
    :cond_11
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 2861
    .end local v10           #idArray:[Ljava/lang/String;
    .end local v22           #idxIconRes:I
    .end local v23           #idxLabelRes:I
    .end local v24           #idxMessage:I
    .end local v26           #idxPackageName:I
    .end local v27           #idxTimestamp:I
    .end local v28           #index:I
    .end local v29           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v36           #snsCursor:Landroid/database/Cursor;
    :cond_12
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2
.end method

.method private getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 5
    .parameter "call"

    .prologue
    .line 1566
    const/4 v1, 0x0

    .line 1567
    .local v1, retVal:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1568
    .local v2, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1573
    .local v0, context:Landroid/content/Context;
    sget-object v3, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1612
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 1581
    :pswitch_1
    const/4 v1, 0x0

    .line 1583
    goto :goto_0

    .line 1586
    :pswitch_2
    const v3, 0x7f0e03a2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1589
    goto :goto_0

    .line 1593
    :pswitch_3
    const v3, 0x7f0e0399

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1594
    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v3, :cond_0

    .line 1596
    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->isAssistedDialUsing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1597
    const v3, 0x7f0e0149

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1603
    :pswitch_4
    const v3, 0x7f0e039f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1604
    goto :goto_0

    .line 1607
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1573
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private initAndStarCallTimeByCall(Lcom/android/internal/telephony/Call;)V
    .locals 1
    .parameter "call"

    .prologue
    .line 2688
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 2689
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 2690
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 2691
    return-void
.end method

.method private initializePhotoLayout()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 502
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 511
    .local v5, res:Landroid/content/res/Resources;
    const v8, 0x7f0c009f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v1, v8

    .line 513
    .local v1, fl:I
    const v8, 0x7f0c009d

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    .line 515
    .local v4, pl:I
    const v8, 0x7f0c00bd

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v3, v8

    .line 517
    .local v3, il:I
    sub-int v8, v1, v4

    div-int/lit8 v7, v8, 0x2

    .line 519
    .local v7, sl:I
    const v8, 0x7f0c00a1

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    .line 521
    .local v6, rh:I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v11, v11, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/phone/CallCard;->mFrameRect:Landroid/graphics/Rect;

    .line 522
    new-instance v8, Landroid/graphics/Rect;

    sub-int v9, v1, v7

    sub-int v10, v1, v7

    invoke-direct {v8, v7, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/phone/CallCard;->mPhotoRect:Landroid/graphics/Rect;

    .line 523
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v11, v11, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/phone/CallCard;->mRefRect:Landroid/graphics/Rect;

    .line 524
    new-instance v8, Landroid/graphics/Rect;

    sub-int v9, v1, v3

    sub-int/2addr v9, v7

    add-int v10, v3, v7

    sub-int v11, v1, v7

    invoke-direct {v8, v7, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/phone/CallCard;->mIconRect:Landroid/graphics/Rect;

    .line 526
    iget-object v8, p0, Lcom/android/phone/CallCard;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v9, 0x3f80

    const/high16 v10, -0x4080

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 527
    iget-object v8, p0, Lcom/android/phone/CallCard;->mPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 529
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallCard;->mPhotoBm:Landroid/graphics/Bitmap;

    .line 530
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallCard;->mRefBm:Landroid/graphics/Bitmap;

    .line 531
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallCard;->mIconBm:Landroid/graphics/Bitmap;

    .line 532
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallCard;->mPhotoBm:Landroid/graphics/Bitmap;

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v8, p0, Lcom/android/phone/CallCard;->mPhotoDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 534
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isGlacierTMO()Z

    move-result v8

    if-nez v8, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200a8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 537
    .local v2, frame:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/android/phone/CallCard;->mFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 538
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/android/phone/CallCard;->mPhotoBm:Landroid/graphics/Bitmap;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 539
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 542
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v2           #frame:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200a9

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallCard;->mFrameMask:Landroid/graphics/Bitmap;

    .line 544
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200ab

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallCard;->mRefMask:Landroid/graphics/Bitmap;

    .line 551
    return-void
.end method

.method private isCityIdVisibled()Z
    .locals 4

    .prologue
    .line 3453
    const-string v1, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CityIdInfo.CALL_LOCATION="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/CityIdInfo;->CALL_LOCATION:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3454
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3455
    .local v0, config:Landroid/content/res/Configuration;
    sget-boolean v1, Lcom/android/phone/CallCard;->CITY_ID:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/phone/util/ConfigUtils;->isCarTypeUiMode(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRoaming(Lcom/android/internal/telephony/Call;)[Z
    .locals 9
    .parameter "call"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3703
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 3704
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    .line 3707
    .local v1, bIsRoaming:Z
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.cequint.ecid.testRoaming"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3709
    .local v2, bRoamingTestSetting:I
    if-ne v2, v8, :cond_0

    .line 3710
    const/4 v1, 0x1

    .line 3714
    :cond_0
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    .line 3718
    .local v0, bDataRoamingEnabled:Z
    const/4 v5, 0x2

    new-array v4, v5, [Z

    aput-boolean v1, v4, v7

    aput-boolean v0, v4, v8

    .line 3720
    .local v4, result:[Z
    return-object v4
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2727
    const-string v0, "CallCard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    return-void
.end method

.method private static logErr(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2731
    const-string v0, "CallCard"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    return-void
.end method

.method private queryAndUpdateCallLocation(Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V
    .locals 5
    .parameter "info"
    .parameter "call"

    .prologue
    .line 3655
    if-eqz p1, :cond_0

    .line 3656
    invoke-static {p1}, Lcom/android/phone/CityIdInfo;->getCityIdInfo(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/CityIdInfo;

    move-result-object v1

    .line 3657
    .local v1, cidInfo:Lcom/android/phone/CityIdInfo;
    if-nez v1, :cond_3

    .line 3658
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/android/phone/CityIdInfo;

    .line 3664
    .end local v1           #cidInfo:Lcom/android/phone/CityIdInfo;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3665
    sget-boolean v2, Lcom/android/phone/CallCard;->LOCK_SCREEN_CITY_ID:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/CallCard;->mLockScreenCityId:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 3666
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLockScreenCityId:Landroid/widget/TextView;

    invoke-static {v2, p1}, Lcom/android/phone/CityIdInfo;->setCityIdDisplay(Landroid/widget/TextView;Lcom/android/internal/telephony/CallerInfo;)V

    .line 3667
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLockScreenCityId:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3674
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3687
    :cond_2
    :goto_2
    return-void

    .line 3659
    .restart local v1       #cidInfo:Lcom/android/phone/CityIdInfo;
    :cond_3
    iget-boolean v2, v1, Lcom/android/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    if-nez v2, :cond_0

    .line 3660
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 3669
    .end local v1           #cidInfo:Lcom/android/phone/CityIdInfo;
    :cond_4
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getLockScreenArc()Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    move-result-object v0

    .line 3670
    .local v0, arc:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;
    if-eqz v0, :cond_1

    .line 3671
    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->getCityIdView()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/phone/CityIdInfo;->setCityIdDisplay(Landroid/widget/TextView;Lcom/android/internal/telephony/CallerInfo;)V

    goto :goto_1

    .line 3675
    .end local v0           #arc:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/CallCard;->isCityIdVisibled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3676
    sget-boolean v2, Lcom/android/phone/CallCard;->LOCK_SCREEN_CITY_ID:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/CallCard;->mLockScreenCityId:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    .line 3677
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLockScreenCityId:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3678
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLockScreenCityId:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3685
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    invoke-static {v2, p1}, Lcom/android/phone/CityIdInfo;->setCityIdDisplay(Landroid/widget/TextView;Lcom/android/internal/telephony/CallerInfo;)V

    goto :goto_2

    .line 3680
    :cond_7
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getLockScreenArc()Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    move-result-object v0

    .line 3681
    .restart local v0       #arc:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;
    if-eqz v0, :cond_6

    .line 3682
    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->getCityIdView()Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private queryAndUpdateCityId(Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "info"
    .parameter "call"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3629
    sget-boolean v1, Lcom/android/phone/CityIdInfo;->CALL_LOCATION:Z

    if-eqz v1, :cond_1

    .line 3630
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->queryAndUpdateCallLocation(Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    .line 3646
    :cond_0
    :goto_0
    return-void

    .line 3632
    :cond_1
    invoke-static {p1}, Lcom/android/phone/EcidClient;->getClient(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/EcidClient;

    move-result-object v0

    .line 3633
    .local v0, eClient:Lcom/android/phone/EcidClient;
    if-eqz v0, :cond_3

    .line 3634
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3636
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getLockScreenArc()Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->getCityIdView()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1, v1, v3, v2}, Lcom/android/phone/EcidClient;->setEcidDisplay(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 3638
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/CallCard;->isCityIdVisibled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3639
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    invoke-static {p1, v1, v3, v2}, Lcom/android/phone/EcidClient;->setEcidDisplay(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 3641
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3642
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3643
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private requestUpdatingPhotoViaAsync(Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V
    .locals 9
    .parameter "ci"
    .parameter "call"

    .prologue
    .line 3351
    iget-boolean v0, p0, Lcom/android/phone/CallCard;->destroyed:Z

    if-nez v0, :cond_0

    .line 3352
    const/16 v1, 0x4d4

    iget-object v2, p0, Lcom/android/phone/CallCard;->mImageLoadListener:Lcom/android/phone/CallCard$ImageLoadListener;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0}, Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-static/range {v0 .. v8}, Lcom/htc/util/calendar/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    .line 3355
    :cond_0
    return-void
.end method

.method private setPhotoImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 13
    .parameter "photo"
    .parameter "icon"

    .prologue
    const/4 v1, 0x0

    const/4 v12, 0x0

    .line 3227
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 3306
    :goto_0
    return-void

    .line 3234
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPreCachedPhotoDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mPreCachedSNIconDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p2, :cond_1

    .line 3236
    const-string v0, "CallCard"

    const-string v1, "setPhotoImageDrawable:Duplicated drawable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3239
    :cond_1
    iput-object p1, p0, Lcom/android/phone/CallCard;->mPreCachedPhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 3240
    iput-object p2, p0, Lcom/android/phone/CallCard;->mPreCachedSNIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 3241
    const-string v0, "CallCard"

    const-string v2, "setPhotoImageDrawable:New assigned drawable"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    if-eqz p2, :cond_2

    .line 3246
    const-string v0, "CallCard"

    const-string v2, "setPhotoImageDrawable():Draw the icon drawable to icon bitmap"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/phone/CallCard;->mIconBm:Landroid/graphics/Bitmap;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3253
    .local v7, IconCanvas:Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/android/phone/CallCard;->mIconBm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/phone/CallCard;->mIconBm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p2, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3254
    invoke-virtual {p2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3261
    .end local v7           #IconCanvas:Landroid/graphics/Canvas;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200a8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 3262
    .local v10, frame:Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/phone/CallCard;->mFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3263
    new-instance v9, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoBm:Landroid/graphics/Bitmap;

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3264
    .local v9, canvas:Landroid/graphics/Canvas;
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3265
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3268
    if-eqz p1, :cond_3

    .line 3269
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/phone/CallCard;->createSquareDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 3271
    .local v11, squareDb:Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3272
    invoke-virtual {v11, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3274
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    .line 3275
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhotoBm:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3280
    .end local v11           #squareDb:Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz p2, :cond_4

    const-wide/high16 v2, 0x400c

    invoke-static {v2, v3}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3281
    const-string v0, "CallCard"

    const-string v2, "setPhotoImageDrawable():Draw the icon to the photo canvas on the icon position"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    iget-object v0, p0, Lcom/android/phone/CallCard;->mIconBm:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v0, v12, v2, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3286
    :cond_4
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isGlacierTMO()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3288
    iget-object v0, p0, Lcom/android/phone/CallCard;->mFrameMask:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhotoRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v12, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3292
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoBm:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhotoBm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhotoBm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/CallCard;->mMatrix:Landroid/graphics/Matrix;

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 3295
    .local v8, bitmap:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    .end local v9           #canvas:Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRefBm:Landroid/graphics/Bitmap;

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3298
    .restart local v9       #canvas:Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRefRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mRefRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v8, v0, v1, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3300
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRefMask:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mRefRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v12, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3301
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 3303
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoRef:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    .line 3304
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoRef:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mRefBm:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method private setPhotoImageResource(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "id"
    .parameter "icon"

    .prologue
    .line 3209
    const v0, 0x108042f

    if-ne p1, v0, :cond_0

    .line 3210
    const v0, 0x7f0200a7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->setPhotoImageResource(ILandroid/graphics/drawable/Drawable;)V

    .line 3215
    :goto_0
    return-void

    .line 3214
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/phone/CallCard;->setPhotoImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private showCallConnected()V
    .locals 0

    .prologue
    .line 1735
    return-void
.end method

.method private showCallConnecting()V
    .locals 0

    .prologue
    .line 1725
    return-void
.end method

.method private showCallEnded()V
    .locals 0

    .prologue
    .line 1740
    return-void
.end method

.method private showCallIncoming()V
    .locals 0

    .prologue
    .line 1730
    return-void
.end method

.method private showCallOnhold()V
    .locals 0

    .prologue
    .line 1744
    return-void
.end method

.method private showKeypadForVoicemail(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 2
    .parameter "call"
    .parameter "ci"

    .prologue
    .line 3364
    sget-boolean v1, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_DIAL_WITH_DIALPAD:Z

    if-eqz v1, :cond_0

    .line 3365
    if-eqz p1, :cond_0

    .line 3366
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3367
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3370
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 3372
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->showDialPad()V

    .line 3377
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_0
    return-void
.end method

.method private updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "call"

    .prologue
    .line 2433
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2434
    .local v0, phoneType:I
    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2435
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2447
    :goto_1
    return-void

    .line 2433
    .end local v0           #phoneType:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2445
    .restart local v0       #phoneType:I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method private updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V
    .locals 9
    .parameter "phone"
    .parameter "call"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 1447
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 1455
    .local v4, state:Lcom/android/internal/telephony/Call$State;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 1456
    .local v3, phoneType:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 1457
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1458
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .line 1470
    .local v0, cardTitle:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/phone/CallCard;->mTitleElapsedTime:Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 1471
    iget-object v5, p0, Lcom/android/phone/CallCard;->mTitleElapsedTimeShadow:Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/CallCard;->mElapsedTimeShadow:Landroid/widget/TextView;

    .line 1477
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_6

    .line 1479
    iget-object v5, p0, Lcom/android/phone/CallCard;->mInCallStatusViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1480
    iget-object v5, p0, Lcom/android/phone/CallCard;->mInCallStatus:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1481
    iget-object v5, p0, Lcom/android/phone/CallCard;->mInCallStatusShadow:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 1482
    iget-object v5, p0, Lcom/android/phone/CallCard;->mInCallStatusShadow:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1484
    :cond_0
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatus:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1485
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatus:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1486
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 1487
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1488
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1529
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_a

    .line 1537
    :goto_2
    return-void

    .line 1460
    .end local v0           #cardTitle:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e039c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #cardTitle:Ljava/lang/String;
    goto :goto_0

    .line 1462
    .end local v0           #cardTitle:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    if-eq v3, v5, :cond_4

    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    .line 1464
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #cardTitle:Ljava/lang/String;
    goto :goto_0

    .line 1466
    .end local v0           #cardTitle:Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1491
    .restart local v0       #cardTitle:Ljava/lang/String;
    :cond_6
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_9

    .line 1499
    iget-object v5, p0, Lcom/android/phone/CallCard;->mInCallStatusViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1500
    iget-object v5, p0, Lcom/android/phone/CallCard;->mInCallStatus:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1501
    iget-object v5, p0, Lcom/android/phone/CallCard;->mInCallStatusShadow:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 1502
    iget-object v5, p0, Lcom/android/phone/CallCard;->mInCallStatusShadow:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1504
    :cond_7
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatus:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1505
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatus:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1506
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    if-eqz v5, :cond_8

    .line 1507
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1508
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1511
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/phone/CallCard;->forceUpdateCallTime(Lcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 1514
    :cond_9
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatus:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1515
    iget-object v5, p0, Lcom/android/phone/CallCard;->mInCallStatusViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1516
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatus:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1517
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 1518
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1519
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1532
    :cond_a
    invoke-static {p2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v1

    .line 1533
    .local v1, duration:J
    const-wide/16 v5, 0x3e8

    div-long v5, v1, v5

    invoke-direct {p0, v5, v6}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto/16 :goto_2
.end method

.method private updateDisplayForConference(Lcom/android/internal/telephony/Call;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 2277
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v1, 0x7f0e039e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2278
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2284
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2289
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getInCallPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2291
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCdmaRedirectLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2292
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCdmaRedirectLabel:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2304
    :cond_0
    return-void
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V
    .locals 27
    .parameter "info"
    .parameter "presentation"
    .parameter "isTemporary"
    .parameter "call"

    .prologue
    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    invoke-virtual/range {v23 .. v24}, Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1764
    const/16 v17, 0x0

    .line 1765
    .local v17, name:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1766
    .local v10, displayNumber:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1767
    .local v15, label:Ljava/lang/String;
    const/16 v20, 0x0

    .line 1771
    .local v20, personUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getInCallPhoneType()I

    move-result v21

    .line 1772
    .local v21, phoneType:I
    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 1773
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v23

    const v24, 0x7f0e0086

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1774
    const/16 p1, 0x0

    .line 2028
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v23

    if-eqz v23, :cond_2d

    .line 2057
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 2058
    const/4 v10, 0x0

    .line 2059
    if-eqz p1, :cond_32

    .line 2060
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2065
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->updateLockScreenInCallName(Ljava/lang/String;)V

    .line 2071
    :cond_1
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->isCityIdVisibled()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 2072
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->queryAndUpdateCityId(Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    .line 2077
    :cond_2
    if-eqz p1, :cond_3

    .line 2078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mRichPhoneCanvasQueryHandler:Lcom/android/phone/CallCard$RichPhoneCanvasQuery;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mRichPhoneCanvasQueryHandler:Lcom/android/phone/CallCard$RichPhoneCanvasQuery;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->isDestroyed:Z
    invoke-static/range {v23 .. v23}, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->access$700(Lcom/android/phone/CallCard$RichPhoneCanvasQuery;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 2080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mRichPhoneCanvasQueryHandler:Lcom/android/phone/CallCard$RichPhoneCanvasQuery;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    #calls: Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->setCallerInfo(Lcom/android/internal/telephony/CallerInfo;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->access$800(Lcom/android/phone/CallCard$RichPhoneCanvasQuery;Lcom/android/internal/telephony/CallerInfo;)V

    .line 2081
    new-instance v23, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mRichPhoneCanvasQueryHandler:Lcom/android/phone/CallCard$RichPhoneCanvasQuery;

    move-object/from16 v24, v0

    const-string v25, "RichPhoneCanvasQueryHandler"

    invoke-direct/range {v23 .. v25}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->start()V

    .line 2085
    :cond_3
    const/4 v8, 0x0

    .line 2086
    .local v8, contactPhoto:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 2088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/InCallScreen;->getCallerPhotoData()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2090
    :cond_4
    if-eqz v8, :cond_34

    if-eqz p1, :cond_34

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    move/from16 v23, v0

    if-nez v23, :cond_34

    .line 2096
    if-eqz v8, :cond_6

    .line 2097
    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 2098
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 2103
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoSmall:Landroid/graphics/Bitmap;

    .line 2104
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cachedRefPhotoSmall:Landroid/graphics/Bitmap;

    .line 2105
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallCard;->updatePhotoLayout(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 2106
    if-eqz p1, :cond_5

    if-nez v20, :cond_33

    .line 2107
    :cond_5
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->showUnknownAvatarPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 2143
    :cond_6
    :goto_3
    if-eqz v10, :cond_3c

    .line 2145
    sget-short v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v24, 0x94

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 2147
    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->hyphenNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2148
    .local v18, newStr:Ljava/lang/String;
    if-eqz v18, :cond_7

    .line 2150
    move-object/from16 v10, v18

    .line 2153
    .end local v18           #newStr:Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v10, v15, v0}, Lcom/android/phone/PhoneUtils;->createDisplayNumber(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v10

    .line 2155
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v23

    if-nez v23, :cond_3b

    .line 2158
    sget-boolean v23, Lcom/android/phone/HtcFeatureList;->FEATURE_N11:Z

    if-nez v23, :cond_8

    .line 2159
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/phone/CallCard;->checkIfE911Call(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2163
    :cond_8
    if-eqz p1, :cond_39

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v23

    if-eqz v23, :cond_39

    sget-short v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_39

    const/4 v14, 0x1

    .line 2165
    .local v14, hideVoiceMailNumber:Z
    :goto_4
    if-eqz v14, :cond_3a

    .line 2166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2196
    .end local v14           #hideVoiceMailNumber:Z
    :cond_9
    :goto_5
    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 2198
    const/16 v16, 0x0

    .line 2199
    .local v16, labelRedirect:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v23

    if-nez v23, :cond_a

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v23

    if-nez v23, :cond_a

    .line 2201
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaPhoneApp;->getRedirectNumberPresentation(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v16

    .line 2202
    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCdmaRedirectLabel:Landroid/widget/TextView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    .line 2203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCdmaRedirectLabel:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2211
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCdmaRedirectLabel:Landroid/widget/TextView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    .line 2213
    if-eqz v16, :cond_3d

    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isCarTypeUiMode()Z

    move-result v23

    if-nez v23, :cond_3d

    const/16 v22, 0x0

    .line 2215
    .local v22, visibility:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCdmaRedirectLabel:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2219
    .end local v16           #labelRedirect:Ljava/lang/String;
    .end local v22           #visibility:I
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 2222
    if-eqz p1, :cond_c

    .line 2223
    const-string v23, "calendar_event_data"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallerInfo;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/util/calendar/EventInstance;

    .line 2224
    .local v12, ei:Lcom/htc/util/calendar/EventInstance;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCalendarEventPanel:Lcom/android/phone/widget/CalendarEventPanel;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c

    .line 2225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCalendarEventPanel:Lcom/android/phone/widget/CalendarEventPanel;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/phone/widget/CalendarEventPanel;->setEvent(Lcom/htc/util/calendar/EventInstance;)V

    .line 2230
    .end local v12           #ei:Lcom/htc/util/calendar/EventInstance;
    :cond_c
    return-void

    .line 1778
    .end local v8           #contactPhoto:Landroid/graphics/drawable/Drawable;
    :cond_d
    if-eqz p1, :cond_24

    .line 1801
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1802
    .local v19, number:Ljava/lang/String;
    if-eqz v19, :cond_e

    const-string v23, "sip:"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 1803
    const/16 v23, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 1806
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_22

    .line 1808
    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 1809
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1810
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 1811
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v7, :cond_f

    .line 1812
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1815
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    :cond_f
    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_13

    .line 1817
    sget-boolean v23, Lcom/android/phone/CityIdInfo;->ECID:Z

    if-eqz v23, :cond_10

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v23

    if-nez v23, :cond_11

    .line 1819
    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1821
    :cond_11
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1976
    :cond_12
    :goto_7
    sget-object v23, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v24, v0

    invoke-static/range {v23 .. v25}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 1977
    goto/16 :goto_0

    .line 1824
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 1830
    const/4 v6, 0x0

    .line 1831
    .local v6, c:Lcom/android/internal/telephony/Connection;
    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 1832
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 1843
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/android/phone/PhoneUtils;->getDisplayNameIfNumberEmpty(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v17

    .line 1845
    goto :goto_7

    .line 1833
    :cond_14
    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_15

    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_15

    const/16 v23, 0x4

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 1838
    :cond_15
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto :goto_8

    .line 1840
    :cond_16
    new-instance v23, Ljava/lang/IllegalStateException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unexpected phone type: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1847
    .end local v6           #c:Lcom/android/internal/telephony/Connection;
    :cond_17
    sget-boolean v23, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v23, :cond_19

    .line 1850
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/phone/HtcNBPCDUtil;->IsVMNumber(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 1852
    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->getVMTag()Ljava/lang/String;

    move-result-object v17

    .line 1853
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_7

    .line 1859
    :cond_18
    const/16 v17, 0x0

    .line 1860
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_7

    .line 1867
    :cond_19
    sget-boolean v23, Lcom/android/phone/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v23, :cond_1d

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    .line 1869
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1870
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 1871
    .restart local v7       #conn:Lcom/android/internal/telephony/Connection;
    if-eqz v7, :cond_1b

    .line 1873
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v9

    .line 1874
    .local v9, dialString:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_12

    .line 1876
    move-object v10, v9

    .line 1878
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1879
    .local v4, ServiceName:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1a

    .line 1881
    move-object/from16 v17, v4

    .line 1884
    :cond_1a
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->hyphenNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1885
    .restart local v18       #newStr:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_12

    .line 1887
    move-object/from16 v10, v18

    goto/16 :goto_7

    .line 1893
    .end local v4           #ServiceName:Ljava/lang/String;
    .end local v9           #dialString:Ljava/lang/String;
    .end local v18           #newStr:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 1894
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v7}, Lcom/android/phone/PhoneUtils;->getDisplayNameIfNumberEmpty(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_7

    .line 1896
    :cond_1c
    const/16 v17, 0x0

    .line 1897
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_7

    .line 1901
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    :cond_1d
    sget-short v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1f

    .line 1903
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1905
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 1906
    .restart local v7       #conn:Lcom/android/internal/telephony/Connection;
    if-eqz v7, :cond_1e

    .line 1908
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v9

    .line 1909
    .restart local v9       #dialString:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_12

    .line 1911
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getACGServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1912
    .local v3, ACGServiceName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_12

    .line 1914
    move-object/from16 v17, v3

    goto/16 :goto_7

    .line 1920
    .end local v3           #ACGServiceName:Ljava/lang/String;
    .end local v9           #dialString:Ljava/lang/String;
    :cond_1e
    const-string v23, "CallCard"

    const-string v24, "conn == null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 1923
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v7}, Lcom/android/phone/PhoneUtils;->getDisplayNameIfNumberEmpty(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_7

    .line 1929
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    :cond_1f
    const/4 v9, 0x0

    .line 1930
    .restart local v9       #dialString:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 1931
    .restart local v7       #conn:Lcom/android/internal/telephony/Connection;
    if-eqz v7, :cond_20

    .line 1933
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v10

    .line 1936
    :cond_20
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_21

    .line 1937
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1938
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_21

    .line 1940
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 1941
    .restart local v6       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/android/phone/PhoneUtils;->getDisplayNameIfNumberEmpty(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v17

    .line 1945
    .end local v6           #c:Lcom/android/internal/telephony/Connection;
    :cond_21
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_12

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 1946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x10402db

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_7

    .line 1952
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    .end local v9           #dialString:Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1953
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/CallerInfo;->OrigDialString:Ljava/lang/String;

    .line 1954
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_23

    .line 1956
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1957
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 1958
    .restart local v7       #conn:Lcom/android/internal/telephony/Connection;
    if-eqz v7, :cond_23

    .line 1960
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v9

    .line 1961
    .restart local v9       #dialString:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_23

    .line 1963
    move-object v10, v9

    .line 1969
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    .end local v9           #dialString:Ljava/lang/String;
    :cond_23
    if-eqz p1, :cond_12

    .line 1971
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Landroid/provider/HtcUnionContact$ContactUtils;->getPhoneNumberTypeShortString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_7

    .line 1983
    .end local v19           #number:Ljava/lang/String;
    :cond_24
    const/4 v6, 0x0

    .line 1984
    .restart local v6       #c:Lcom/android/internal/telephony/Connection;
    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_25

    .line 1985
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 1997
    :goto_9
    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_28

    if-eqz v6, :cond_28

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_28

    .line 2000
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 1986
    :cond_25
    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_26

    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_26

    const/16 v23, 0x4

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_27

    .line 1991
    :cond_26
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto :goto_9

    .line 1993
    :cond_27
    new-instance v23, Ljava/lang/IllegalStateException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unexpected phone type: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 2004
    :cond_28
    if-eqz v6, :cond_2b

    .line 2005
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v9

    .line 2006
    .restart local v9       #dialString:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 2007
    .local v5, address:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_29

    .line 2008
    const/16 v17, 0x0

    .line 2009
    move-object v10, v9

    goto/16 :goto_0

    .line 2010
    :cond_29
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_2a

    .line 2011
    const/16 v17, 0x0

    .line 2012
    move-object v10, v5

    goto/16 :goto_0

    .line 2014
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/android/phone/PhoneUtils;->getDisplayNameIfNumberEmpty(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 2017
    .end local v5           #address:Ljava/lang/String;
    .end local v9           #dialString:Ljava/lang/String;
    :cond_2b
    const-string v23, "CallCard"

    const-string v24, "no connection, try to recover it"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getVisibility()I

    move-result v23

    if-nez v23, :cond_2c

    .line 2019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2022
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 2031
    .end local v6           #c:Lcom/android/internal/telephony/Connection;
    :cond_2d
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_2f

    .line 2032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getVisibility()I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2e

    .line 2033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2043
    :cond_2e
    :goto_a
    sget-boolean v23, Lcom/android/phone/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v23, :cond_1

    .line 2045
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_30

    const/4 v13, 0x1

    .line 2046
    .local v13, hasName:Z
    :goto_b
    if-eqz v13, :cond_31

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 2047
    .local v11, displayView:Landroid/widget/TextView;
    :goto_c
    if-eqz v13, :cond_1

    goto/16 :goto_2

    .line 2036
    .end local v11           #displayView:Landroid/widget/TextView;
    .end local v13           #hasName:Z
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getVisibility()I

    move-result v23

    if-eqz v23, :cond_2e

    .line 2038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    .line 2045
    :cond_30
    const/4 v13, 0x0

    goto :goto_b

    .line 2046
    .restart local v13       #hasName:Z
    :cond_31
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    goto :goto_c

    .line 2062
    .end local v13           #hasName:Z
    :cond_32
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 2109
    .restart local v8       #contactPhoto:Landroid/graphics/drawable/Drawable;
    :cond_33
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->requestUpdatingPhotoViaAsync(Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_3

    .line 2126
    :cond_34
    if-eqz p3, :cond_36

    if-eqz p1, :cond_35

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    move/from16 v23, v0

    if-nez v23, :cond_36

    .line 2127
    :cond_35
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->showUnknownAvatarPhoto(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 2128
    :cond_36
    if-eqz p1, :cond_37

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move/from16 v23, v0

    if-eqz v23, :cond_37

    .line 2129
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->setPhotoImageResource(ILandroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 2130
    :cond_37
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallCard;->updatePhotoLayout(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 2134
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->requestUpdatingPhotoViaAsync(Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    .line 2136
    if-eqz p1, :cond_38

    const-wide/16 v23, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v25, v0

    cmp-long v23, v23, v25

    if-nez v23, :cond_6

    .line 2138
    :cond_38
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->showUnknownAvatarPhoto(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 2163
    :cond_39
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 2171
    .restart local v14       #hideVoiceMailNumber:Z
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 2178
    .end local v14           #hideVoiceMailNumber:Z
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/android/phone/InCallScreen;->updateLockScreenInCallNumber(Ljava/lang/String;)V

    .line 2180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/phone/InCallScreen;->setVisibilityLockScreenInCallNumber(I)V

    goto/16 :goto_5

    .line 2185
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2187
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 2192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Lcom/android/phone/InCallScreen;->setVisibilityLockScreenInCallNumber(I)V

    goto/16 :goto_5

    .line 2213
    .restart local v16       #labelRedirect:Ljava/lang/String;
    :cond_3d
    const/16 v22, 0x4

    goto/16 :goto_6
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 3
    .parameter "timeElapsed"

    .prologue
    .line 1545
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 1546
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1547
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTimeShadow:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1548
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTimeShadow:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1557
    :cond_0
    :goto_0
    return-void

    .line 1551
    :cond_1
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    .line 1552
    .local v0, time:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1553
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTimeShadow:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1554
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTimeShadow:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateFakeForRingingOrSingleCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;Ljava/lang/String;)V
    .locals 10
    .parameter "phone"
    .parameter "call"
    .parameter "personId"

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 1077
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 1079
    .local v6, state:Lcom/android/internal/telephony/Call$State;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    if-ne v7, v8, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1080
    const/4 v7, 0x0

    sget v8, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    invoke-direct {p0, v7, v8, v9, p2}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    .line 1131
    :goto_0
    return-void

    .line 1086
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1087
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    if-nez v1, :cond_1

    .line 1090
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 1091
    .local v2, info:Lcom/android/internal/telephony/CallerInfo;
    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    invoke-direct {p0, v2, v7, v9, p2}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 1093
    .end local v2           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 1098
    .local v4, presentation:I
    const/4 v5, 0x1

    .line 1099
    .local v5, runQuery:Z
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    .line 1102
    .local v3, o:Ljava/lang/Object;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    if-ne v7, v8, :cond_2

    .line 1103
    invoke-static {v1, v3}, Lcom/android/phone/HtcCdmaPhoneApp;->callingNumberUpdate(Lcom/android/internal/telephony/Connection;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1111
    :cond_2
    instance-of v7, v3, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v7, :cond_3

    move-object v0, v3

    .line 1112
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 1115
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->displayFakePersonalInfo(Lcom/android/internal/telephony/CallerInfo;)V

    goto :goto_0

    .line 1117
    .end local v0           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_3
    instance-of v7, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v7, :cond_4

    .line 1118
    check-cast v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v3           #o:Ljava/lang/Object;
    iget-object v0, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1120
    .restart local v0       #ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->displayFakePersonalInfo(Lcom/android/internal/telephony/CallerInfo;)V

    goto :goto_0

    .line 1122
    .end local v0           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v3       #o:Ljava/lang/Object;
    :cond_4
    const-string v7, "CallCard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateForRingingOrSingleCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;Ljava/lang/String;)V
    .locals 24
    .parameter "cm"
    .parameter "call"
    .parameter "personId"

    .prologue
    .line 844
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    .line 846
    .local v19, state:Lcom/android/internal/telephony/Call$State;
    sget-object v21, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 893
    const-string v21, "CallCard"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "displayMainCallStatus: unexpected call state: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 901
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    .line 905
    .local v13, inCallPhoneType:I
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v13, v0, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 907
    const/16 v21, 0x0

    sget v22, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    .line 1053
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 1060
    sget-boolean v21, Lcom/android/phone/CityIdInfo;->ECID:Z

    if-eqz v21, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->isCityIdVisibled()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1064
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/phone/EcidClient;->updateLookupQueries(Lcom/android/internal/telephony/Phone;)V

    .line 1068
    :cond_2
    return-void

    .line 848
    .end local v13           #inCallPhoneType:I
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->showCallConnected()V

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/CallTime;->reset()V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTimeShadow:Landroid/widget/TextView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTimeShadow:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 863
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->showCallOnhold()V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_0

    .line 869
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->reset()V

    .line 870
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->showCallEnded()V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_0

    .line 877
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->showCallConnecting()V

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_0

    .line 884
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->showCallIncoming()V

    goto/16 :goto_0

    .line 889
    :pswitch_5
    const-string v21, "CallCard"

    const-string v22, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 910
    .restart local v13       #inCallPhoneType:I
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 912
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 916
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v11

    .line 917
    .local v11, conn:Lcom/android/internal/telephony/Connection;
    if-nez v11, :cond_5

    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v11}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v14

    .line 925
    .local v14, info:Lcom/android/internal/telephony/CallerInfo;
    sget v21, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, p2

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 929
    .end local v14           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_5
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v17

    .line 935
    .local v17, presentation:I
    const/16 v18, 0x1

    .line 936
    .local v18, runQuery:Z
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v16

    .line 939
    .local v16, o:Ljava/lang/Object;
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v13, v0, :cond_6

    .line 942
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/android/phone/HtcCdmaPhoneApp;->callingNumberUpdate(Lcom/android/internal/telephony/Connection;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 945
    :cond_6
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v22, v0

    move-object/from16 v21, v16

    check-cast v21, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v18

    .line 952
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->isRoaming(Lcom/android/internal/telephony/Call;)[Z

    move-result-object v15

    .line 954
    .local v15, isRoaming:[Z
    if-eqz v18, :cond_f

    .line 956
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v11, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Ljava/lang/String;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v14

    .line 959
    .local v14, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/InCallScreen;->getCallerData()Lcom/android/phone/InCallScreen$CallerData;

    move-result-object v6

    .line 960
    .local v6, callerData:Lcom/android/phone/InCallScreen$CallerData;
    invoke-virtual {v6}, Lcom/android/phone/InCallScreen$CallerData;->getName()Ljava/lang/String;

    move-result-object v8

    .line 961
    .local v8, callerName:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/phone/InCallScreen$CallerData;->getCname()Ljava/lang/String;

    move-result-object v5

    .line 962
    .local v5, callerCname:Ljava/lang/String;
    iget-object v7, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 963
    .local v7, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    iget-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_9

    iget-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen$CallerData;->getNumber()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 966
    iget-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 967
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_d

    .line 968
    iput-object v8, v7, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 974
    :cond_7
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 975
    const-string v21, "cname"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v5}, Lcom/android/internal/telephony/CallerInfo;->addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    :cond_8
    invoke-virtual {v6}, Lcom/android/phone/InCallScreen$CallerData;->getNumberType()I

    move-result v9

    .line 979
    .local v9, callerNumberType:I
    iget v0, v7, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    move/from16 v21, v0

    if-gtz v21, :cond_9

    if-lez v9, :cond_9

    .line 980
    iput v9, v7, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 986
    .end local v9           #callerNumberType:I
    :cond_9
    sget-boolean v21, Lcom/android/phone/CityIdInfo;->ECID:Z

    if-eqz v21, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->isCityIdVisibled()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 987
    iget-object v0, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-boolean v22, v15, v22

    const/16 v23, 0x1

    aget-boolean v23, v15, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/phone/CallCard;->doQueryECID(Ljava/lang/Object;Lcom/android/internal/telephony/Connection;ZZ)V

    .line 994
    :cond_a
    invoke-virtual {v6}, Lcom/android/phone/InCallScreen$CallerData;->getCalendarEventUri()Ljava/lang/String;

    move-result-object v20

    .line 995
    .local v20, uri:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v21

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/util/calendar/HtcCalendarManager;->getEvent(Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;

    move-result-object v12

    .line 997
    .local v12, ei:Lcom/htc/util/calendar/EventInstance;
    if-eqz v12, :cond_b

    .line 998
    const-string v21, "calendar_event_data"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v12}, Lcom/android/internal/telephony/CallerInfo;->addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    .end local v12           #ei:Lcom/htc/util/calendar/EventInstance;
    :cond_b
    iget-object v0, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v22, v0

    iget-boolean v0, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    move/from16 v21, v0

    if-nez v21, :cond_e

    const/16 v21, 0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v17

    move/from16 v3, v21

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 949
    .end local v5           #callerCname:Ljava/lang/String;
    .end local v6           #callerData:Lcom/android/phone/InCallScreen$CallerData;
    .end local v7           #callerInfo:Lcom/android/internal/telephony/CallerInfo;
    .end local v8           #callerName:Ljava/lang/String;
    .end local v14           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v15           #isRoaming:[Z
    .end local v20           #uri:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v18

    goto/16 :goto_2

    .line 969
    .restart local v5       #callerCname:Ljava/lang/String;
    .restart local v6       #callerData:Lcom/android/phone/InCallScreen$CallerData;
    .restart local v7       #callerInfo:Lcom/android/internal/telephony/CallerInfo;
    .restart local v8       #callerName:Ljava/lang/String;
    .restart local v14       #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v15       #isRoaming:[Z
    :cond_d
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 970
    iput-object v5, v7, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_3

    .line 1003
    .restart local v20       #uri:Ljava/lang/String;
    :cond_e
    const/16 v21, 0x0

    goto :goto_4

    .line 1007
    .end local v5           #callerCname:Ljava/lang/String;
    .end local v6           #callerData:Lcom/android/phone/InCallScreen$CallerData;
    .end local v7           #callerInfo:Lcom/android/internal/telephony/CallerInfo;
    .end local v8           #callerName:Ljava/lang/String;
    .end local v14           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v20           #uri:Ljava/lang/String;
    :cond_f
    sget-boolean v21, Lcom/android/phone/CityIdInfo;->ECID:Z

    if-eqz v21, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->isCityIdVisibled()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 1008
    const/16 v21, 0x0

    aget-boolean v21, v15, v21

    const/16 v22, 0x1

    aget-boolean v22, v15, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/phone/CallCard;->doQueryECID(Ljava/lang/Object;Lcom/android/internal/telephony/Connection;ZZ)V

    .line 1015
    :cond_10
    const/4 v10, 0x0

    .line 1016
    .local v10, ci:Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v21, v0

    if-eqz v21, :cond_12

    move-object/from16 v10, v16

    .line 1017
    check-cast v10, Lcom/android/internal/telephony/CallerInfo;

    .line 1031
    .end local v16           #o:Ljava/lang/Object;
    :goto_5
    if-eqz v10, :cond_1

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/InCallScreen;->getCallerData()Lcom/android/phone/InCallScreen$CallerData;

    move-result-object v6

    .line 1034
    .restart local v6       #callerData:Lcom/android/phone/InCallScreen$CallerData;
    if-eqz v6, :cond_11

    .line 1035
    invoke-virtual {v6}, Lcom/android/phone/InCallScreen$CallerData;->getCalendarEventUri()Ljava/lang/String;

    move-result-object v20

    .line 1036
    .restart local v20       #uri:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_11

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v21

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/util/calendar/HtcCalendarManager;->getEvent(Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;

    move-result-object v12

    .line 1038
    .restart local v12       #ei:Lcom/htc/util/calendar/EventInstance;
    if-eqz v12, :cond_11

    .line 1039
    const-string v21, "calendar_event_data"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v12}, Lcom/android/internal/telephony/CallerInfo;->addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    .end local v12           #ei:Lcom/htc/util/calendar/EventInstance;
    .end local v20           #uri:Ljava/lang/String;
    :cond_11
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v21

    move-object/from16 v3, p2

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 1019
    .end local v6           #callerData:Lcom/android/phone/InCallScreen$CallerData;
    .restart local v16       #o:Ljava/lang/Object;
    :cond_12
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v21, v0

    if-eqz v21, :cond_13

    .line 1020
    check-cast v16, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v16           #o:Ljava/lang/Object;
    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_5

    .line 1023
    .restart local v16       #o:Ljava/lang/Object;
    :cond_13
    const-string v21, "CallCard"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 846
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    .line 747
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 748
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 750
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v4

    if-nez v4, :cond_0

    .line 758
    move-object v1, v0

    .line 761
    const/4 v0, 0x0

    .line 764
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 766
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 768
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 769
    .local v3, phoneType:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 770
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 782
    :cond_1
    :goto_0
    return-void

    .line 779
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)V
    .locals 4
    .parameter "cm"
    .parameter "personId"

    .prologue
    .line 676
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 677
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 679
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 687
    move-object v1, v0

    .line 690
    const/4 v0, 0x0

    .line 693
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/phone/CallCard;->setIfMultipleCallOrConference(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z

    .line 699
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/CallCard;->mCallMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isMultiple()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CallCard;->mCallMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isConference()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 705
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 707
    invoke-direct {p0, v1, v0}, Lcom/android/phone/CallCard;->updateMultipleOrConferenceCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V

    .line 723
    :cond_2
    :goto_0
    return-void

    .line 714
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPersonInfoPanel:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 716
    iget-object v2, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    if-eqz v2, :cond_4

    .line 718
    iget-object v2, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/phone/HtcMCCallCard;->setVisibility(I)V

    .line 721
    :cond_4
    invoke-direct {p0, p1, v1, p2}, Lcom/android/phone/CallCard;->updateForRingingOrSingleCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateMultipleOrConferenceCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .locals 10
    .parameter "fgCall"
    .parameter "bgCall"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v9, 0x8

    .line 2604
    iget-object v7, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    if-nez v7, :cond_0

    .line 2605
    iget-object v7, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {p0, v7}, Lcom/android/phone/CallCard;->getConferenceCallPanel(Lcom/android/phone/InCallScreen;)Lcom/android/phone/HtcMCCallCard;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    .line 2608
    :cond_0
    iget-object v7, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    if-nez v7, :cond_2

    .line 2609
    const-string v5, "CallCard"

    const-string v6, "no multiple call card created"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    :cond_1
    :goto_0
    return-void

    .line 2612
    :cond_2
    iget-object v7, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    iget-object v8, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7, p1, p2, v8}, Lcom/android/phone/HtcMCCallCard;->initIfNeeded(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Landroid/content/Context;)Z

    .line 2614
    iget-object v7, p0, Lcom/android/phone/CallCard;->mPersonInfoPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2615
    iget-object v7, p0, Lcom/android/phone/CallCard;->mInCallStatusViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2616
    iget-object v7, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    invoke-virtual {v7, v6}, Lcom/android/phone/HtcMCCallCard;->setVisibility(I)V

    .line 2623
    const/4 v3, 0x0

    .line 2625
    .local v3, isSingleConferenceCall:Z
    iget-object v7, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getInCallPhoneType()I

    move-result v4

    .line 2626
    .local v4, phoneType:I
    const/4 v7, 0x2

    if-ne v4, v7, :cond_7

    .line 2627
    iget-object v7, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_6

    move v3, v5

    .line 2634
    :goto_1
    iget-object v5, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    invoke-virtual {v5}, Lcom/android/phone/HtcMCCallCard;->updateStatusAndScreen()V

    .line 2637
    iget-object v5, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    invoke-virtual {v5}, Lcom/android/phone/HtcMCCallCard;->getActiveOrAliveCallGroup()Lcom/android/phone/HtcMCCallCard$CallGroup;

    move-result-object v1

    .line 2639
    .local v1, activeOrAliveCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;
    if-eqz v1, :cond_1

    .line 2642
    invoke-virtual {v1}, Lcom/android/phone/HtcMCCallCard$CallGroup;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2647
    .local v0, activeOrAliveCall:Lcom/android/internal/telephony/Call;
    if-eqz v3, :cond_a

    .line 2649
    iget-object v5, p0, Lcom/android/phone/CallCard;->mInCallStatusViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2650
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v2

    .line 2651
    .local v2, cardTitle:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/CallCard;->mInCallStatus:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2652
    iget-object v5, p0, Lcom/android/phone/CallCard;->mInCallStatusShadow:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 2653
    iget-object v5, p0, Lcom/android/phone/CallCard;->mInCallStatusShadow:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2656
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v7, :cond_9

    .line 2657
    iget-object v5, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2658
    iget-object v5, p0, Lcom/android/phone/CallCard;->mElapsedTimeShadow:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 2659
    iget-object v5, p0, Lcom/android/phone/CallCard;->mElapsedTimeShadow:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2668
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/phone/CallCard;->mTitleElapsedTime:Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 2669
    iget-object v5, p0, Lcom/android/phone/CallCard;->mTitleElapsedTimeShadow:Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/CallCard;->mElapsedTimeShadow:Landroid/widget/TextView;

    .line 2670
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatus:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2671
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 2672
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2683
    .end local v2           #cardTitle:Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->initAndStarCallTimeByCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .end local v0           #activeOrAliveCall:Lcom/android/internal/telephony/Call;
    .end local v1           #activeOrAliveCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;
    :cond_6
    move v3, v6

    .line 2627
    goto :goto_1

    .line 2631
    :cond_7
    iget-object v7, p0, Lcom/android/phone/CallCard;->mCallCardMode:Lcom/android/phone/CallCard$CallCardMode;

    sget-object v8, Lcom/android/phone/CallCard$CallCardMode;->SINGLE_CONFERENCE:Lcom/android/phone/CallCard$CallCardMode;

    if-ne v7, v8, :cond_8

    move v3, v5

    :goto_4
    goto :goto_1

    :cond_8
    move v3, v6

    goto :goto_4

    .line 2662
    .restart local v0       #activeOrAliveCall:Lcom/android/internal/telephony/Call;
    .restart local v1       #activeOrAliveCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;
    .restart local v2       #cardTitle:Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2663
    iget-object v5, p0, Lcom/android/phone/CallCard;->mElapsedTimeShadow:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 2664
    iget-object v5, p0, Lcom/android/phone/CallCard;->mElapsedTimeShadow:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 2675
    .end local v2           #cardTitle:Ljava/lang/String;
    :cond_a
    invoke-virtual {v1}, Lcom/android/phone/HtcMCCallCard$CallGroup;->getElapsedView()Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 2676
    iget-object v5, p0, Lcom/android/phone/CallCard;->mInCallStatusViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2677
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatus:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2678
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 2679
    iget-object v5, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "cm"

    .prologue
    .line 830
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 832
    return-void
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .locals 12
    .parameter "call"

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 2319
    iget-object v6, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getInCallPhoneType()I

    move-result v6

    if-ne v6, v11, :cond_0

    .line 2321
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2322
    invoke-virtual {p0, v8}, Lcom/android/phone/CallCard;->showUnknownAvatarPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 2326
    :cond_0
    const/4 v4, 0x0

    .line 2330
    .local v4, photoImageResource:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 2331
    .local v5, state:Lcom/android/internal/telephony/Call$State;
    sget-object v6, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2357
    :pswitch_0
    const/4 v0, 0x0

    .line 2359
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v1, 0x0

    .line 2360
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2361
    .local v3, phoneType:I
    if-ne v3, v11, :cond_5

    .line 2362
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2370
    :goto_0
    if-eqz v1, :cond_1

    .line 2371
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 2372
    .local v2, o:Ljava/lang/Object;
    instance-of v6, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v6, :cond_8

    move-object v0, v2

    .line 2373
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 2380
    .end local v2           #o:Ljava/lang/Object;
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 2381
    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 2395
    :cond_2
    if-nez v4, :cond_9

    .line 2396
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2397
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->updatePhotoLayout(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v6}, Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 2400
    invoke-direct {p0, v0, p1}, Lcom/android/phone/CallCard;->requestUpdatingPhotoViaAsync(Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    .line 2402
    iget-object v6, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v6, v10}, Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2414
    .end local v0           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    .end local v3           #phoneType:I
    :cond_3
    :pswitch_1
    if-eqz v4, :cond_4

    .line 2416
    invoke-direct {p0, v4, v8}, Lcom/android/phone/CallCard;->setPhotoImageResource(ILandroid/graphics/drawable/Drawable;)V

    .line 2418
    iget-object v6, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v6, v9}, Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2420
    :cond_4
    :goto_2
    return-void

    .line 2363
    .restart local v0       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v1       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v3       #phoneType:I
    :cond_5
    const/4 v6, 0x1

    if-eq v3, v6, :cond_6

    const/4 v6, 0x3

    if-ne v3, v6, :cond_7

    .line 2365
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 2367
    :cond_7
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2374
    .restart local v2       #o:Ljava/lang/Object;
    :cond_8
    instance-of v6, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v6, :cond_1

    .line 2375
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2           #o:Ljava/lang/Object;
    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1

    .line 2407
    :cond_9
    invoke-direct {p0, v4, v8}, Lcom/android/phone/CallCard;->setPhotoImageResource(ILandroid/graphics/drawable/Drawable;)V

    .line 2408
    iget-object v6, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v6, v10}, Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_2

    .line 2331
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updatePhotoLayout(Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 4
    .parameter "ci"

    .prologue
    .line 2456
    const/4 v0, 0x0

    .line 2457
    .local v0, hasPhoto:Z
    const/4 v1, 0x0

    .line 2458
    .local v1, snIcon:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 2459
    iget-boolean v2, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v2, :cond_3

    .line 2460
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 2461
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->SN_icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallCard;->setPhotoImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2462
    const/4 v0, 0x1

    .line 2472
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 2473
    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->showUnknownAvatarPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 2475
    :cond_1
    return v0

    .line 2464
    :cond_2
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->SN_icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/android/phone/CallCard;->showUnknownAvatarPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 2465
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->SN_icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 2467
    :cond_3
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->SN_icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 2468
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->SN_icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateRedirectNumberLabel(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "call"

    .prologue
    const/4 v2, 0x0

    .line 3595
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 3596
    .local v1, phoneType:I
    :goto_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 3598
    const/4 v0, 0x0

    .line 3599
    .local v0, labelRedirect:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3601
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/phone/HtcCdmaPhoneApp;->getRedirectNumberPresentation(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .line 3602
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallCard;->mCdmaRedirectLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 3603
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCdmaRedirectLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3611
    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCdmaRedirectLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 3613
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isCarTypeUiMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3615
    .local v2, visibility:I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCdmaRedirectLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3619
    .end local v0           #labelRedirect:Ljava/lang/String;
    .end local v2           #visibility:I
    :cond_1
    return-void

    .end local v1           #phoneType:I
    :cond_2
    move v1, v2

    .line 3595
    goto :goto_0

    .line 3613
    .restart local v0       #labelRedirect:Ljava/lang/String;
    .restart local v1       #phoneType:I
    :cond_3
    const/4 v2, 0x4

    goto :goto_1
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "cm"

    .prologue
    .line 807
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 810
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 817
    return-void
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)V
    .locals 4
    .parameter "cm"
    .parameter "personId"

    .prologue
    .line 789
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 791
    .local v1, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPersonInfoPanel:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 792
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->getConferenceCallPanel(Lcom/android/phone/InCallScreen;)Lcom/android/phone/HtcMCCallCard;

    move-result-object v0

    .line 793
    .local v0, mcCallCard:Lcom/android/phone/HtcMCCallCard;
    if-eqz v0, :cond_0

    .line 794
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/phone/HtcMCCallCard;->setVisibility(I)V

    .line 796
    :cond_0
    invoke-direct {p0, p1, v1, p2}, Lcom/android/phone/CallCard;->updateForRingingOrSingleCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;Ljava/lang/String;)V

    .line 797
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3472
    const-string v0, "destroy"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallCard;->destroyed:Z

    .line 3476
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->destroyTimer()V

    .line 3477
    iput-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 3478
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRichPhoneCanvasQueryHandler:Lcom/android/phone/CallCard$RichPhoneCanvasQuery;

    if-eqz v0, :cond_0

    .line 3479
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRichPhoneCanvasQueryHandler:Lcom/android/phone/CallCard$RichPhoneCanvasQuery;

    #calls: Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->destroy()V
    invoke-static {v0}, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->access$1600(Lcom/android/phone/CallCard$RichPhoneCanvasQuery;)V

    .line 3480
    iput-object v1, p0, Lcom/android/phone/CallCard;->mRichPhoneCanvasQueryHandler:Lcom/android/phone/CallCard$RichPhoneCanvasQuery;

    .line 3483
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    if-eqz v0, :cond_1

    .line 3484
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    invoke-virtual {v0}, Lcom/android/phone/HtcMCCallCard;->destroy()V

    .line 3485
    iput-object v1, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    .line 3488
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mImageLoadListener:Lcom/android/phone/CallCard$ImageLoadListener;

    if-eqz v0, :cond_2

    .line 3489
    iput-object v1, p0, Lcom/android/phone/CallCard;->mImageLoadListener:Lcom/android/phone/CallCard$ImageLoadListener;

    .line 3492
    :cond_2
    const/16 v0, 0x4d4

    invoke-static {v0}, Lcom/htc/util/calendar/ContactsAsyncHelper;->cancelUpdateImageView(I)V

    .line 3499
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2487
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public foceUpdateTitle(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 1
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 3053
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/phone/CallCard;->updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 3054
    return-void
.end method

.method forceUpdateCallTime(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "call"

    .prologue
    .line 3443
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 3444
    .local v0, duration:J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 3445
    return-void
.end method

.method public hideCallCardElements()V
    .locals 2

    .prologue
    .line 2720
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2723
    return-void
.end method

.method isMultipleCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .parameter "call1"
    .parameter "call2"

    .prologue
    const/4 v0, 0x0

    .line 2590
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2599
    :cond_0
    :goto_0
    return v0

    .line 2594
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    .line 2596
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResumed()V
    .locals 2

    .prologue
    .line 3464
    invoke-direct {p0}, Lcom/android/phone/CallCard;->isCityIdVisibled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3465
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3469
    :goto_0
    return-void

    .line 3467
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 3563
    iget-boolean v0, p0, Lcom/android/phone/CallCard;->mRobotPlaying:Z

    if-eqz v0, :cond_0

    .line 3564
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 3566
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 341
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 345
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 348
    .local v1, res:Landroid/content/res/Resources;
    sget-boolean v3, Lcom/android/phone/util/BuildUtils;->SENSE_TABLET:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/phone/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-eqz v3, :cond_5

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    .line 355
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    .line 358
    const v3, 0x7f0c00a1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/phone/CallCard;->mRefImageHeight:F

    .line 362
    const v3, 0x7f080058

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    .line 363
    const v3, 0x7f08005e

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mPhotoRef:Landroid/widget/ImageView;

    .line 364
    const v3, 0x7f08005c

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallCard;->mShadowView:Landroid/view/View;

    .line 377
    const v3, 0x7f08005b

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mPhotoLayout:Landroid/widget/RelativeLayout;

    .line 380
    const v3, 0x7f08005d

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    .line 381
    const v3, 0x7f080061

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 382
    const v3, 0x7f080062

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 383
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallCard;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    .line 384
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallCard;->mIncallAvatarDrawable:Landroid/graphics/drawable/Drawable;

    .line 386
    invoke-direct {p0}, Lcom/android/phone/CallCard;->initializePhotoLayout()V

    .line 389
    const v3, 0x7f080063

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    .line 390
    const v3, 0x7f080059

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mPersonInfoPanel:Landroid/view/ViewGroup;

    .line 400
    iget-object v3, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 402
    const v3, 0x7f080064

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mCdmaRedirectLabel:Landroid/widget/TextView;

    .line 407
    :cond_1
    const v3, 0x7f080069

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mEvent:Landroid/widget/TextView;

    .line 408
    const v3, 0x7f080067

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;

    .line 410
    iget-object v3, p0, Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMarqueeControlledAp(Z)V

    .line 414
    const v3, 0x7f08006b

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/phone/widget/SNStatusPanel;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mSNStatusPanel:Lcom/android/phone/widget/SNStatusPanel;

    .line 415
    sget-boolean v3, Lcom/android/phone/widget/SNStatusPanel;->ENABLE_CALLER_ID_ENHANCEMENT:Z

    if-nez v3, :cond_6

    .line 416
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSNStatusPanel:Lcom/android/phone/widget/SNStatusPanel;

    invoke-virtual {v3, v5}, Lcom/android/phone/widget/SNStatusPanel;->setVisibility(I)V

    .line 421
    :goto_1
    const v3, 0x7f080068

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mEventLayout:Landroid/widget/LinearLayout;

    .line 423
    new-instance v3, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;-><init>(Lcom/android/phone/CallCard;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/phone/CallCard;->mRichPhoneCanvasQueryHandler:Lcom/android/phone/CallCard$RichPhoneCanvasQuery;

    .line 424
    iget-object v3, p0, Lcom/android/phone/CallCard;->mRichPhoneCanvasQueryHandler:Lcom/android/phone/CallCard$RichPhoneCanvasQuery;

    new-instance v4, Lcom/android/phone/CallCard$1;

    invoke-direct {v4, p0}, Lcom/android/phone/CallCard$1;-><init>(Lcom/android/phone/CallCard;)V

    #calls: Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->setListener(Lcom/android/phone/CallCard$OnRichPhoneCanvasQueryListener;)V
    invoke-static {v3, v4}, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->access$600(Lcom/android/phone/CallCard$RichPhoneCanvasQuery;Lcom/android/phone/CallCard$OnRichPhoneCanvasQueryListener;)V

    .line 476
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "lockScreenCityId"

    const-string v5, "id"

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 477
    .local v0, id:I
    if-eqz v0, :cond_2

    .line 478
    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mLockScreenCityId:Landroid/widget/TextView;

    .line 480
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallCard;->mLockScreenCityId:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/phone/CallCard;->LOCK_SCREEN_CITY_ID:Z

    if-nez v3, :cond_3

    .line 481
    iget-object v3, p0, Lcom/android/phone/CallCard;->mLockScreenCityId:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/phone/CallCard;->mLockScreenCityId:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 482
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/CallCard;->mLockScreenCityId:Landroid/widget/TextView;

    .line 487
    :cond_3
    sget-boolean v3, Lcom/android/phone/CallCard;->ENLARGE_CALLER_INFO_FONT:Z

    if-eqz v3, :cond_4

    .line 488
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 489
    .local v2, size:F
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v3, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 490
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 495
    .end local v2           #size:F
    :cond_4
    const v3, 0x7f080050

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/phone/widget/CalendarEventPanel;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mCalendarEventPanel:Lcom/android/phone/widget/CalendarEventPanel;

    .line 498
    return-void

    .line 351
    .end local v0           #id:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20a005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    goto/16 :goto_0

    .line 418
    :cond_6
    iget-object v3, p0, Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "iView"
    .parameter "imagePresent"

    .prologue
    .line 1435
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 1436
    check-cast v0, Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 1437
    check-cast p2, Lcom/android/internal/telephony/Call;

    .end local p2
    invoke-static {p2}, Lcom/android/phone/util/Auxiliary;->notify3DLockscreen(Lcom/android/internal/telephony/Call;)V

    .line 1439
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 3572
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v7, 0x0

    .line 1388
    instance-of v5, p2, Lcom/android/internal/telephony/Call;

    if-eqz v5, :cond_6

    move-object v0, p2

    .line 1393
    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 1394
    .local v0, call:Lcom/android/internal/telephony/Call;
    const/4 v2, 0x0

    .line 1395
    .local v2, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 1396
    .local v3, phoneType:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 1397
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 1404
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v2, p0, v6}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v1

    .line 1407
    .local v1, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 1408
    .local v4, presentation:I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 1415
    :cond_0
    iget-boolean v5, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v5, :cond_5

    .line 1416
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    invoke-direct {p0, p3, v5, v7, v0}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    .line 1420
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 1422
    invoke-direct {p0, v0, p3}, Lcom/android/phone/CallCard;->showKeypadForVoicemail(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfo;)V

    .line 1427
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    .end local v1           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v2           #conn:Lcom/android/internal/telephony/Connection;
    .end local v3           #phoneType:I
    .end local v4           #presentation:I
    .end local p2
    :cond_1
    :goto_2
    return-void

    .line 1398
    .restart local v0       #call:Lcom/android/internal/telephony/Call;
    .restart local v2       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v3       #phoneType:I
    .restart local p2
    :cond_2
    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    .line 1400
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    goto :goto_0

    .line 1402
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1418
    .restart local v1       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v4       #presentation:I
    :cond_5
    iget-object v5, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {p0, v5, v4, v7, v0}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 1423
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    .end local v1           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v2           #conn:Lcom/android/internal/telephony/Connection;
    .end local v3           #phoneType:I
    .end local v4           #presentation:I
    :cond_6
    instance-of v5, p2, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 1425
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v5, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {p3, v5}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .parameter "timeElapsed"

    .prologue
    .line 331
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 332
    return-void
.end method

.method public onTickForCallTimeElapsed(JZ)V
    .locals 4
    .parameter "timeElapsed"
    .parameter "bfwin"

    .prologue
    .line 304
    if-eqz p3, :cond_2

    .line 306
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e039b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, talkingTime:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallStatus:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallStatusShadow:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 312
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallStatusShadow:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    .end local v1           #talkingTime:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 327
    return-void

    .line 317
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e039a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, callingTime:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallStatus:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 320
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallStatusShadow:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 323
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallStatusShadow:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method passCallStatusViews(Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/phone/InCallScreen;)V
    .locals 1
    .parameter "viewGroup"
    .parameter "callView"
    .parameter "callViewShadow"
    .parameter "elapsedView"
    .parameter "elapsedViewShadow"
    .parameter "nonCallView"
    .parameter "nonCallViewShadow"
    .parameter "inCallScreen"

    .prologue
    const/4 v0, 0x0

    .line 2524
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallStatusViewGroup:Landroid/view/ViewGroup;

    .line 2525
    iput-object p2, p0, Lcom/android/phone/CallCard;->mInCallStatus:Landroid/widget/TextView;

    .line 2526
    iput-object v0, p0, Lcom/android/phone/CallCard;->mInCallStatusShadow:Landroid/widget/TextView;

    .line 2527
    iput-object p4, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/android/phone/CallCard;->mTitleElapsedTime:Landroid/widget/TextView;

    .line 2528
    iput-object p5, p0, Lcom/android/phone/CallCard;->mElapsedTimeShadow:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/android/phone/CallCard;->mTitleElapsedTimeShadow:Landroid/widget/TextView;

    .line 2529
    iput-object p6, p0, Lcom/android/phone/CallCard;->mNonCallStatus:Landroid/widget/TextView;

    .line 2530
    iput-object v0, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    .line 2531
    iput-object p8, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 2532
    return-void
.end method

.method passCallStatusViews(Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "viewGroup"
    .parameter "callView"
    .parameter "elapsedView"
    .parameter "nonCallView"
    .parameter "inCallScreen"

    .prologue
    .line 2514
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallStatusViewGroup:Landroid/view/ViewGroup;

    .line 2515
    iput-object p2, p0, Lcom/android/phone/CallCard;->mInCallStatus:Landroid/widget/TextView;

    .line 2516
    iput-object p3, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/phone/CallCard;->mTitleElapsedTime:Landroid/widget/TextView;

    .line 2517
    iput-object p4, p0, Lcom/android/phone/CallCard;->mNonCallStatus:Landroid/widget/TextView;

    .line 2518
    iput-object p5, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 2519
    return-void
.end method

.method reset()V
    .locals 2

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showCallConnected()V

    .line 295
    iget-object v0, p0, Lcom/android/phone/CallCard;->mNonCallStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :cond_0
    return-void
.end method

.method public setCalendarEventPanelVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 3752
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCalendarEventPanel:Lcom/android/phone/widget/CalendarEventPanel;

    if-eqz v0, :cond_0

    .line 3753
    if-nez p1, :cond_1

    .line 3754
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCalendarEventPanel:Lcom/android/phone/widget/CalendarEventPanel;

    invoke-virtual {v0}, Lcom/android/phone/widget/CalendarEventPanel;->show()V

    .line 3759
    :cond_0
    :goto_0
    return-void

    .line 3756
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCalendarEventPanel:Lcom/android/phone/widget/CalendarEventPanel;

    invoke-virtual {v0}, Lcom/android/phone/widget/CalendarEventPanel;->hide()V

    goto :goto_0
.end method

.method setIfMultipleCallOrConference(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .parameter "fgCall"
    .parameter "bgCall"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2545
    iget-object v3, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getInCallPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 2547
    const/4 v0, 0x0

    .line 2548
    .local v0, multiCall:Z
    sget-object v3, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$phone$CdmaPhoneCallState$PhoneCallState:[I

    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2560
    :goto_0
    if-eqz v0, :cond_0

    .line 2586
    .end local v0           #multiCall:Z
    :goto_1
    return v1

    .line 2550
    .restart local v0       #multiCall:Z
    :pswitch_0
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->MULTIPLE_ALIVE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mCallMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 2551
    sget-object v3, Lcom/android/phone/CallCard$CallCardMode;->SINGLE_CONFERENCE:Lcom/android/phone/CallCard$CallCardMode;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mCallCardMode:Lcom/android/phone/CallCard$CallCardMode;

    .line 2552
    const/4 v0, 0x1

    .line 2553
    goto :goto_0

    .line 2555
    :pswitch_1
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->MULTIPLE_ALIVE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mCallMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 2556
    sget-object v3, Lcom/android/phone/CallCard$CallCardMode;->MULTIPLE:Lcom/android/phone/CallCard$CallCardMode;

    iput-object v3, p0, Lcom/android/phone/CallCard;->mCallCardMode:Lcom/android/phone/CallCard$CallCardMode;

    .line 2557
    const/4 v0, 0x1

    goto :goto_0

    .line 2565
    .end local v0           #multiCall:Z
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    move v1, v2

    .line 2566
    goto :goto_1

    .line 2569
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/CallCard;->isMultipleCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2570
    sget-object v2, Lcom/android/phone/CallCard$CallCardMode;->MULTIPLE:Lcom/android/phone/CallCard$CallCardMode;

    iput-object v2, p0, Lcom/android/phone/CallCard;->mCallCardMode:Lcom/android/phone/CallCard$CallCardMode;

    goto :goto_1

    .line 2574
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 2575
    sget-object v2, Lcom/android/phone/CallCard$CallCardMode;->SINGLE_CONFERENCE:Lcom/android/phone/CallCard$CallCardMode;

    iput-object v2, p0, Lcom/android/phone/CallCard;->mCallCardMode:Lcom/android/phone/CallCard$CallCardMode;

    goto :goto_1

    .line 2579
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_4

    .line 2580
    sget-object v2, Lcom/android/phone/CallCard$CallCardMode;->SINGLE_CONFERENCE:Lcom/android/phone/CallCard$CallCardMode;

    iput-object v2, p0, Lcom/android/phone/CallCard;->mCallCardMode:Lcom/android/phone/CallCard$CallCardMode;

    goto :goto_1

    .line 2584
    :cond_4
    sget-object v1, Lcom/android/phone/CallCard$CallCardMode;->SINGLE_CONNECTED:Lcom/android/phone/CallCard$CallCardMode;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallCardMode:Lcom/android/phone/CallCard$CallCardMode;

    move v1, v2

    .line 2586
    goto :goto_1

    .line 2548
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 289
    return-void
.end method

.method public setPersonInfoVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 3177
    if-eqz p1, :cond_0

    .line 3178
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPersonInfoPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3182
    :goto_0
    return-void

    .line 3180
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPersonInfoPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method showRobot(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 3534
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/CallCard;->showRobot(ZZ)V

    .line 3535
    return-void
.end method

.method showRobot(ZZ)V
    .locals 7
    .parameter "show"
    .parameter "force"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 3538
    const-string v4, "CallCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "robot show: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isPlaying: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CallCard;->mRobot:Landroid/widget/VideoView;

    invoke-virtual {v6}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/phone/CallCard;->mRobot:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3541
    const-string v4, "CallCard"

    const-string v5, "robot start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    iget-object v4, p0, Lcom/android/phone/CallCard;->mRobot:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->start()V

    .line 3549
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/phone/CallCard;->mRobotPlaying:Z

    .line 3551
    if-eqz p1, :cond_3

    move v0, v2

    .line 3553
    .local v0, imageVisibility:I
    :goto_1
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v4, v0}, Lcom/android/phone/util/Auxiliary$Views;->setVisibility(Landroid/view/View;I)V

    .line 3554
    iget-object v4, p0, Lcom/android/phone/CallCard;->mShadowView:Landroid/view/View;

    invoke-static {v4, v0}, Lcom/android/phone/util/Auxiliary$Views;->setVisibility(Landroid/view/View;I)V

    .line 3555
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhotoRef:Landroid/widget/ImageView;

    invoke-static {v4, v0}, Lcom/android/phone/util/Auxiliary$Views;->setVisibility(Landroid/view/View;I)V

    .line 3557
    if-eqz p1, :cond_4

    move v1, v3

    .line 3559
    .local v1, robotVisibility:I
    :goto_2
    iget-object v2, p0, Lcom/android/phone/CallCard;->mRobot:Landroid/widget/VideoView;

    invoke-static {v2, v1}, Lcom/android/phone/util/Auxiliary$Views;->setVisibility(Landroid/view/View;I)V

    .line 3560
    return-void

    .line 3543
    .end local v0           #imageVisibility:I
    .end local v1           #robotVisibility:I
    :cond_1
    if-nez p2, :cond_2

    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/android/phone/CallCard;->mRobot:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3545
    :cond_2
    const-string v4, "CallCard"

    const-string v5, "robot stop"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    iget-object v4, p0, Lcom/android/phone/CallCard;->mRobot:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->stopPlayback()V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 3551
    goto :goto_1

    .restart local v0       #imageVisibility:I
    :cond_4
    move v1, v2

    .line 3557
    goto :goto_2
.end method

.method showUnknownAvatarPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 3186
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/CallCard;->showUnknownAvatarPhoto(Landroid/graphics/drawable/Drawable;Z)V

    .line 3187
    return-void
.end method

.method showUnknownAvatarPhoto(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .parameter "icon"
    .parameter "clean"

    .prologue
    .line 3189
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallCardMode:Lcom/android/phone/CallCard$CallCardMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallCardMode:Lcom/android/phone/CallCard$CallCardMode;

    sget-object v1, Lcom/android/phone/CallCard$CallCardMode;->RINGING:Lcom/android/phone/CallCard$CallCardMode;

    if-eq v0, v1, :cond_0

    .line 3190
    iget-object v0, p0, Lcom/android/phone/CallCard;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcom/android/phone/CallCard;->setPhotoImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3198
    :goto_0
    return-void

    .line 3195
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mIncallAvatarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcom/android/phone/CallCard;->setPhotoImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public startSNStatusMarquee()V
    .locals 1

    .prologue
    .line 3429
    iget-object v0, p0, Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->forceStartMarquee()V

    .line 3430
    return-void
.end method

.method public stopSNStatusMarquee()V
    .locals 1

    .prologue
    .line 3434
    iget-object v0, p0, Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->forceStopMarquee()V

    .line 3435
    return-void
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 337
    return-void
.end method

.method public updateDialingCallCard()V
    .locals 14

    .prologue
    .line 3061
    sget-object v12, Lcom/android/phone/CallCard$CallCardMode;->SINGLE_CONNECTED:Lcom/android/phone/CallCard$CallCardMode;

    iput-object v12, p0, Lcom/android/phone/CallCard;->mCallCardMode:Lcom/android/phone/CallCard$CallCardMode;

    .line 3064
    iget-object v12, p0, Lcom/android/phone/CallCard;->mPersonInfoPanel:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3067
    iget-object v12, p0, Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3068
    iget-object v12, p0, Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3069
    iget-object v12, p0, Lcom/android/phone/CallCard;->mSNStatusPanel:Lcom/android/phone/widget/SNStatusPanel;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/android/phone/widget/SNStatusPanel;->setVisibility(I)V

    .line 3070
    iget-object v12, p0, Lcom/android/phone/CallCard;->mEventLayout:Landroid/widget/LinearLayout;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3073
    iget-object v12, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    if-eqz v12, :cond_0

    .line 3074
    iget-object v12, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/android/phone/HtcMCCallCard;->setVisibility(I)V

    .line 3078
    :cond_0
    iget-object v12, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v12}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 3082
    iget-object v12, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    const v13, 0x7f0e0399

    invoke-virtual {v12, v13}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3083
    .local v5, cardTitle:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/phone/CallCard;->mNonCallStatus:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3084
    iget-object v12, p0, Lcom/android/phone/CallCard;->mInCallStatusViewGroup:Landroid/view/ViewGroup;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3085
    iget-object v12, p0, Lcom/android/phone/CallCard;->mNonCallStatus:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3086
    iget-object v12, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    if-eqz v12, :cond_1

    .line 3087
    iget-object v12, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3088
    iget-object v12, p0, Lcom/android/phone/CallCard;->mNonCallStatusShadow:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3092
    :cond_1
    iget-object v12, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->getCallerData()Lcom/android/phone/InCallScreen$CallerData;

    move-result-object v1

    .line 3096
    .local v1, callerData:Lcom/android/phone/InCallScreen$CallerData;
    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$CallerData;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3097
    .local v3, callerName:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$CallerData;->getCname()Ljava/lang/String;

    move-result-object v0

    .line 3098
    .local v0, callerCname:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    move-object v7, v3

    .line 3100
    .local v7, displayName:Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 3102
    .local v2, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 3103
    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 3110
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 3111
    const-string v12, "cname"

    invoke-virtual {v2, v12, v0}, Lcom/android/internal/telephony/CallerInfo;->addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3114
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 3115
    iget-object v12, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v12

    const/4 v13, 0x4

    if-eq v12, v13, :cond_3

    .line 3116
    iget-object v12, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3126
    :cond_3
    :goto_2
    const/4 v10, 0x0

    .line 3128
    .local v10, phoneType:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$CallerData;->getNumberType()I

    move-result v4

    .line 3129
    .local v4, callerNumberType:I
    iget v12, v2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    if-gtz v12, :cond_4

    if-lez v4, :cond_4

    .line 3130
    iput v4, v2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 3132
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v12

    iget v13, v2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {v12, v13}, Landroid/provider/HtcUnionContact$ContactUtils;->getPhoneNumberTypeShortString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 3138
    :cond_4
    const/4 v8, 0x0

    .line 3139
    .local v8, displayNumber:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$CallerData;->getNumber()Ljava/lang/String;

    move-result-object v9

    .line 3140
    .local v9, phoneNumber:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v9, v10, v12}, Lcom/android/phone/PhoneUtils;->createDisplayNumber(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    .line 3142
    iget-object v12, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3143
    iget-object v12, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3146
    iget-object v12, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->getCallerPhotoData()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 3148
    .local v6, contactPhoto:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_b

    .line 3149
    iput-object v6, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 3150
    const/4 v12, 0x1

    iput-boolean v12, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 3151
    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->updatePhotoLayout(Lcom/android/internal/telephony/CallerInfo;)Z

    .line 3158
    :goto_3
    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$CallerData;->getCalendarEventUri()Ljava/lang/String;

    move-result-object v11

    .line 3159
    .local v11, uri:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 3160
    const-string v12, "com.htc.calendar.event_uri"

    invoke-virtual {v2, v12, v11}, Lcom/android/internal/telephony/CallerInfo;->addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3168
    :cond_5
    iget-object v12, p0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    if-eqz v12, :cond_6

    .line 3169
    iget-object v12, p0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3170
    iget-object v12, p0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3173
    :cond_6
    return-void

    .end local v2           #callerInfo:Lcom/android/internal/telephony/CallerInfo;
    .end local v4           #callerNumberType:I
    .end local v6           #contactPhoto:Landroid/graphics/drawable/Drawable;
    .end local v7           #displayName:Ljava/lang/String;
    .end local v8           #displayNumber:Ljava/lang/String;
    .end local v9           #phoneNumber:Ljava/lang/String;
    .end local v10           #phoneType:Ljava/lang/String;
    .end local v11           #uri:Ljava/lang/String;
    :cond_7
    move-object v7, v0

    .line 3098
    goto/16 :goto_0

    .line 3104
    .restart local v2       #callerInfo:Lcom/android/internal/telephony/CallerInfo;
    .restart local v7       #displayName:Ljava/lang/String;
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 3105
    iput-object v0, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_1

    .line 3107
    :cond_9
    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_1

    .line 3119
    :cond_a
    iget-object v12, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3120
    iget-object v12, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_3

    .line 3121
    iget-object v12, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 3153
    .restart local v4       #callerNumberType:I
    .restart local v6       #contactPhoto:Landroid/graphics/drawable/Drawable;
    .restart local v8       #displayNumber:Ljava/lang/String;
    .restart local v9       #phoneNumber:Ljava/lang/String;
    .restart local v10       #phoneType:Ljava/lang/String;
    :cond_b
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/phone/CallCard;->showUnknownAvatarPhoto(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method public updateDisplayForNoPerson()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 3581
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3582
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3583
    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->showUnknownAvatarPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 3585
    iget-object v0, p0, Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3586
    iget-object v0, p0, Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3587
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSNStatusPanel:Lcom/android/phone/widget/SNStatusPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/widget/SNStatusPanel;->setVisibility(I)V

    .line 3588
    iget-object v0, p0, Lcom/android/phone/CallCard;->mEventLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3590
    return-void
.end method

.method public updateDisplayForPerson(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "name"
    .parameter "phoneNumber"
    .parameter "mbHasPhoto"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 3385
    const/4 v1, 0x0

    .line 3389
    .local v1, displayNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getCallerPhotoData()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3390
    .local v0, contactPhoto:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 3391
    invoke-direct {p0, v0, v5}, Lcom/android/phone/CallCard;->setPhotoImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3396
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3397
    move-object p1, p2

    .line 3402
    :goto_1
    if-eqz p1, :cond_0

    .line 3403
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3404
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3407
    :cond_0
    if-eqz v1, :cond_5

    .line 3409
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3410
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3416
    :goto_2
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPersonInfoPanel:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 3417
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPersonInfoPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3419
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    if-eqz v2, :cond_2

    .line 3420
    iget-object v2, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    invoke-virtual {v2, v4}, Lcom/android/phone/HtcMCCallCard;->setVisibility(I)V

    .line 3422
    :cond_2
    return-void

    .line 3393
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/phone/CallCard;->showUnknownAvatarPhoto(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3399
    :cond_4
    move-object v1, p2

    goto :goto_1

    .line 3413
    :cond_5
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public updateFakeForegroundCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 3
    .parameter "phone"
    .parameter "personId"

    .prologue
    .line 729
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPersonInfoPanel:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 730
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 731
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    if-eqz v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMCPanel:Lcom/android/phone/HtcMCCallCard;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/phone/HtcMCCallCard;->setVisibility(I)V

    .line 735
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/phone/CallCard;->updateFakeForRingingOrSingleCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method updateForLandscapeMode()V
    .locals 0

    .prologue
    .line 2499
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    .line 625
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 626
    .local v3, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 627
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 628
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 635
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 639
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    .line 669
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    .line 650
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 667
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Lcom/android/phone/InCallScreen$InCallScreenMode;)V
    .locals 6
    .parameter "cm"
    .parameter "personId"
    .parameter "mode"

    .prologue
    .line 556
    iput-object p3, p0, Lcom/android/phone/CallCard;->mCallMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 562
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 563
    .local v3, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 564
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 565
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 566
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v4, p0, Lcom/android/phone/CallCard;->mCallMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 580
    sget-object v4, Lcom/android/phone/CallCard$CallCardMode;->RINGING:Lcom/android/phone/CallCard$CallCardMode;

    iput-object v4, p0, Lcom/android/phone/CallCard;->mCallCardMode:Lcom/android/phone/CallCard$CallCardMode;

    .line 584
    iget-object v4, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getCallerData()Lcom/android/phone/InCallScreen$CallerData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen$CallerData;->destroy()V

    .line 585
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_4

    .line 596
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0
.end method
