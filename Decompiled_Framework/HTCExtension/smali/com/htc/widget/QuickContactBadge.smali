.class public Lcom/htc/widget/QuickContactBadge;
.super Landroid/widget/ImageView;
.source "QuickContactBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/QuickContactBadge$QueryHandler;
    }
.end annotation


# static fields
.field static final CONTACT_ID_COLUMN_INDEX:I = 0x0

.field static final CONTACT_LOOKUPKEY_COLUMN_INDEX:I = 0x1

.field static final CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field private static final DEFAULT_SIZE_MASK_TYPES:I = 0x0

.field static final EMAIL_ID_COLUMN_INDEX:I = 0x0

.field static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static final EMAIL_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field static final PHONE_ID_COLUMN_INDEX:I = 0x0

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static final PHONE_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field private static final SUPPORT_MASK_TYPES:I = 0x3

.field private static final TOKEN_CONTACT_LOOKUP_AND_TRIGGER:I = 0x4

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP_AND_TRIGGER:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final TOKEN_PHONE_LOOKUP_AND_TRIGGER:I = 0x3

.field private static mask_height:[I

.field private static mask_width:[I

.field private static sBmpMaskBadgePool:[Landroid/graphics/Bitmap;

.field private static sBmpMaskNoBadgePool:[Landroid/graphics/Bitmap;

.field private static sBmpRetBadgePool:[Landroid/graphics/Bitmap;

.field private static sBmpRetNoBadgePool:[Landroid/graphics/Bitmap;

.field private static sPaint:Landroid/graphics/Paint;


# instance fields
.field private mBadgeBackground:Landroid/graphics/drawable/Drawable;

.field private mContactEmail:Ljava/lang/String;

.field private mContactPhone:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mMode:I

.field private mNoBadgeBackground:Landroid/graphics/drawable/Drawable;

.field private mQueryHandler:Lcom/htc/widget/QuickContactBadge$QueryHandler;

.field private mSelectedContactsAppTabIndex:I

.field private sBmpMaskBadge:Landroid/graphics/Bitmap;

.field private sBmpMaskNoBadge:Landroid/graphics/Bitmap;

.field private sBmpRetBadge:Landroid/graphics/Bitmap;

.field private sBmpRetNoBadge:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x3

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "contact_id"

    aput-object v2, v1, v4

    const-string v2, "lookup"

    aput-object v2, v1, v6

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "lookup"

    aput-object v2, v1, v6

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "lookup"

    aput-object v2, v1, v6

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    new-array v1, v3, [I

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    new-array v1, v3, [I

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->mask_height:[I

    new-array v1, v3, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadgePool:[Landroid/graphics/Bitmap;

    new-array v1, v3, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadgePool:[Landroid/graphics/Bitmap;

    new-array v1, v3, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadgePool:[Landroid/graphics/Bitmap;

    new-array v1, v3, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadgePool:[Landroid/graphics/Bitmap;

    sput-object v5, Lcom/htc/widget/QuickContactBadge;->sPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadgePool:[Landroid/graphics/Bitmap;

    aput-object v5, v1, v0

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadgePool:[Landroid/graphics/Bitmap;

    aput-object v5, v1, v0

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadgePool:[Landroid/graphics/Bitmap;

    aput-object v5, v1, v0

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadgePool:[Landroid/graphics/Bitmap;

    aput-object v5, v1, v0

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    aput v4, v1, v0

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->mask_height:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/widget/QuickContactBadge;->mSelectedContactsAppTabIndex:I

    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadge:Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadge:Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadge:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v7}, Lcom/htc/widget/QuickContactBadge;->setLayerType(ILandroid/graphics/Paint;)V

    sget-object v3, Lcom/android/internal/R$styleable;->QuickContactBadge:[I

    invoke-virtual {p1, p2, v3, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/QuickContactBadge;->mMode:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/htc/widget/QuickContactBadge;->init()V

    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/QuickContactBadge;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v4, "1.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v4, "1.5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v4, "1.6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v4, "2.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v4, "2.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/QuickContactBadge;->onContactUriChanged()V

    :cond_0
    sget-object v3, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    aget v3, v3, v6

    if-nez v3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "common_photo_frame_mask"

    const v5, 0x2080703

    invoke-static {p1, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadgePool:[Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v3, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    aput v5, v3, v4

    sget-object v3, Lcom/htc/widget/QuickContactBadge;->mask_height:[I

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    aput v5, v3, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "common_photo_frame_quick_contact_mask"

    const v5, 0x208078c

    invoke-static {p1, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadgePool:[Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    sget-object v3, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadgePool:[Landroid/graphics/Bitmap;

    aput-object v7, v3, v6

    const-string v3, "QuickContactBadge"

    const-string v4, "Failed to obtain sBmpMaskNoBadge bitmap"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v3, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadgePool:[Landroid/graphics/Bitmap;

    aput-object v7, v3, v6

    const-string v3, "QuickContactBadge"

    const-string v4, "Failed to obtain sBmpMaskBadge bitmap"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/htc/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/widget/QuickContactBadge;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/QuickContactBadge;->onContactUriChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/QuickContactBadge;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/QuickContactBadge;->trigger(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/widget/QuickContactBadge;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/QuickContactBadge;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/QuickContactBadge;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/QuickContactBadge;->trigger(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private hasContactInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 2

    new-instance v0, Lcom/htc/widget/QuickContactBadge$QueryHandler;

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/QuickContactBadge$QueryHandler;-><init>(Lcom/htc/widget/QuickContactBadge;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mQueryHandler:Lcom/htc/widget/QuickContactBadge$QueryHandler;

    invoke-virtual {p0, p0}, Lcom/htc/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isSenseVersionEqualOrAbove(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    new-instance v1, Ljava/lang/Double;

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, p1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ltz v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onContactUriChanged()V
    .locals 4

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mNoBadgeBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_photo_frame"

    const v3, 0x2080702

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mNoBadgeBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mNoBadgeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/QuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_photo_frame_selector"

    const v3, 0x2080790

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/QuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private trigger(Landroid/net/Uri;)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/QuickContactBadge;->mMode:I

    iget-object v2, p0, Lcom/htc/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v0, p0, p1, v1, v2}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    return-void
.end method

.method private trigger(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f00

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/htc/widget/QuickContactBadge;->mMode:I

    iget-object v6, p0, Lcom/htc/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v4, p0, p1, v5, v6}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/4 v4, 0x2

    new-array v2, v4, [I

    invoke-virtual {p0, v2}, Lcom/htc/widget/QuickContactBadge;->getLocationOnScreen([I)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aget v4, v2, v8

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    aget v4, v2, v9

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    aget v4, v2, v8

    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    aget v4, v2, v9

    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1420

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    const-string v4, "mode"

    iget v5, p0, Lcom/htc/widget/QuickContactBadge;->mMode:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "exclude_mimes"

    iget-object v5, p0, Lcom/htc/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "email"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "phone"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public assignContactFromEmail(Ljava/lang/String;Z)V
    .locals 8

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mQueryHandler:Lcom/htc/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/htc/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lcom/htc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/htc/widget/QuickContactBadge;->onContactUriChanged()V

    goto :goto_0
.end method

.method public assignContactFromPhone(Ljava/lang/String;Z)V
    .locals 8

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mQueryHandler:Lcom/htc/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x1

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/htc/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lcom/htc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/htc/widget/QuickContactBadge;->onContactUriChanged()V

    goto :goto_0
.end method

.method public assignContactUri(Landroid/net/Uri;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "1.6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/QuickContactBadge;->onContactUriChanged()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mQueryHandler:Lcom/htc/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    sget-object v4, Lcom/htc/widget/QuickContactBadge;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->mQueryHandler:Lcom/htc/widget/QuickContactBadge$QueryHandler;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/htc/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    invoke-virtual/range {v3 .. v10}, Lcom/htc/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->mQueryHandler:Lcom/htc/widget/QuickContactBadge$QueryHandler;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/htc/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    invoke-virtual/range {v3 .. v10}, Lcom/htc/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/widget/QuickContactBadge;->hasContactInfo()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadge:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadge:Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-super {p0, v2}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v3, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingTop:I

    int-to-float v4, v4

    sget-object v5, Lcom/htc/widget/QuickContactBadge;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadge:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 15

    invoke-super/range {p0 .. p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v14, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v8, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v9, 0x0

    if-lez v14, :cond_0

    if-gtz v8, :cond_1

    :cond_0
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    aget v1, v1, v9

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingRight:I

    add-int v14, v1, v2

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->mask_height:[I

    aget v1, v1, v9

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingBottom:I

    add-int v8, v1, v2

    invoke-virtual {p0, v14, v8}, Lcom/htc/widget/QuickContactBadge;->setMeasuredDimension(II)V

    :cond_1
    const/4 v9, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v9, v1, :cond_2

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    aget v1, v1, v9

    if-nez v1, :cond_9

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingLeft:I

    sub-int v2, v14, v2

    iget v3, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingRight:I

    sub-int/2addr v2, v3

    aput v2, v1, v9

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->mask_height:[I

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingTop:I

    sub-int v2, v8, v2

    iget v3, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingBottom:I

    sub-int/2addr v2, v3

    aput v2, v1, v9

    :cond_2
    const/4 v1, 0x3

    if-lt v9, v1, :cond_3

    const/4 v9, 0x0

    :cond_3
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadgePool:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadge:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadgePool:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadge:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadgePool:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadgePool:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadge:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadge:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    int-to-float v1, v14

    :try_start_0
    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingLeft:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingRight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    sget-object v2, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    div-float v13, v1, v2

    int-to-float v1, v8

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingTop:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingBottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    sget-object v2, Lcom/htc/widget/QuickContactBadge;->mask_height:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    div-float v12, v1, v2

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/QuickContactBadge;->mContext:Landroid/content/Context;

    const-string v3, "common_photo_frame_mask"

    const v4, 0x2080703

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v5, v13, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadgePool:[Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadgePool:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadge:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadge:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    int-to-float v1, v14

    :try_start_1
    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingLeft:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingRight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    sget-object v2, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    div-float v13, v1, v2

    int-to-float v1, v8

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingTop:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingBottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    sget-object v2, Lcom/htc/widget/QuickContactBadge;->mask_height:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    div-float v12, v1, v2

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/QuickContactBadge;->mContext:Landroid/content/Context;

    const-string v3, "common_photo_frame_quick_contact_mask"

    const v4, 0x208078c

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v5, v13, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadgePool:[Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadgePool:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadge:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadge:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    :try_start_2
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadgePool:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadge:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadge:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingTop:I

    add-int/2addr v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadgePool:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    :cond_6
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadge:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadge:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    :try_start_3
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadgePool:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadge:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadge:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingTop:I

    add-int/2addr v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadgePool:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadge:Landroid/graphics/Bitmap;

    :cond_7
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_8

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_8
    return-void

    :cond_9
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    aget v1, v1, v9

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingRight:I

    add-int/2addr v1, v2

    if-eq v14, v1, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v7

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadgePool:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v9

    const-string v1, "QuickContactBadge"

    const-string v2, "Failed to obtain sBmpMaskNoBadge bitmap"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_1
    move-exception v7

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadgePool:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v9

    const-string v1, "QuickContactBadge"

    const-string v2, "Failed to obtain sBmpMaskBadge bitmap"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_2
    move-exception v7

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadgePool:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v9

    const-string v1, "QuickContactBadge"

    const-string v2, "Failed to create sBmpRetNoBadge bitmap"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_3
    move-exception v7

    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadgePool:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v9

    const-string v1, "QuickContactBadge"

    const-string v2, "Failed to create sBmpMaskBadge bitmap"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public setDefaultOnClickListener(Z)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/htc/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/QuickContactBadge;->mMode:I

    return-void
.end method

.method public setSelectedContactsAppTabIndex(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/QuickContactBadge;->mSelectedContactsAppTabIndex:I

    return-void
.end method
