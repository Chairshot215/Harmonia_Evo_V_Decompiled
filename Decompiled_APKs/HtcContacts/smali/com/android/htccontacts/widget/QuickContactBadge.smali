.class public Lcom/android/htccontacts/widget/QuickContactBadge;
.super Landroid/widget/ImageView;
.source "QuickContactBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;
    }
.end annotation


# static fields
.field static EMAIL_ID_COLUMN_INDEX:I = 0x0

.field static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static EMAIL_LOOKUP_STRING_COLUMN_INDEX:I = 0x0

.field static PHONE_ID_COLUMN_INDEX:I = 0x0

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static PHONE_LOOKUP_STRING_COLUMN_INDEX:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP_AND_TRIGGER:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final TOKEN_PHONE_LOOKUP_AND_TRIGGER:I = 0x3


# instance fields
.field private mBadgeBackground:Landroid/graphics/drawable/Drawable;

.field private mContactEmail:Ljava/lang/String;

.field private mContactPhone:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mMode:I

.field private mNoBadgeBackground:Landroid/graphics/drawable/Drawable;

.field private mQueryHandler:Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/htccontacts/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 48
    sput v2, Lcom/android/htccontacts/widget/QuickContactBadge;->EMAIL_ID_COLUMN_INDEX:I

    .line 49
    sput v3, Lcom/android/htccontacts/widget/QuickContactBadge;->EMAIL_LOOKUP_STRING_COLUMN_INDEX:I

    .line 51
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/htccontacts/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 55
    sput v2, Lcom/android/htccontacts/widget/QuickContactBadge;->PHONE_ID_COLUMN_INDEX:I

    .line 56
    sput v3, Lcom/android/htccontacts/widget/QuickContactBadge;->PHONE_LOOKUP_STRING_COLUMN_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htccontacts/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    .line 71
    sget-object v1, Lcom/android/internal/R$styleable;->QuickContactBadge:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mMode:I

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-direct {p0}, Lcom/android/htccontacts/widget/QuickContactBadge;->init()V

    .line 82
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/QuickContactBadge;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    .line 83
    return-void
.end method

.method static synthetic access$002(Lcom/android/htccontacts/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/widget/QuickContactBadge;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/htccontacts/widget/QuickContactBadge;->onContactUriChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/widget/QuickContactBadge;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/widget/QuickContactBadge;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/widget/QuickContactBadge;->trigger(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htccontacts/widget/QuickContactBadge;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/QuickContactBadge;->trigger(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/htccontacts/widget/QuickContactBadge;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/widget/QuickContactBadge;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/QuickContactBadge;->trigger(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;

    iget-object v1, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;-><init>(Lcom/android/htccontacts/widget/QuickContactBadge;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mQueryHandler:Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;

    .line 87
    invoke-virtual {p0, p0}, Lcom/android/htccontacts/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method private onContactUriChanged()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mNoBadgeBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mNoBadgeBackground:Landroid/graphics/drawable/Drawable;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mNoBadgeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/QuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/QuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private trigger(Landroid/net/Uri;)V
    .locals 3
    .parameter "lookupUri"

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mMode:I

    iget-object v2, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v0, p0, p1, v1, v2}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method private trigger(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8
    .parameter "lookupUri"
    .parameter "phone"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f00

    .line 204
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 205
    .local v0, appScale:F
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 206
    .local v2, pos:[I
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/widget/QuickContactBadge;->getLocationOnScreen([I)V

    .line 208
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 209
    .local v3, rect:Landroid/graphics/Rect;
    aget v4, v2, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 210
    aget v4, v2, v7

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 211
    aget v4, v2, v5

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/QuickContactBadge;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 212
    aget v4, v2, v7

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/QuickContactBadge;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 215
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1420

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 219
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 220
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 221
    const-string v4, "mode"

    iget v5, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mMode:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string v4, "exclude_mimes"

    iget-object v5, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v4, "phone"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method private trigger(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "lookupUri"
    .parameter "email"
    .parameter "phone"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f00

    .line 229
    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mMode:I

    iget-object v6, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v4, p0, p1, v5, v6}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 232
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 235
    .local v0, appScale:F
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 236
    .local v2, pos:[I
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/widget/QuickContactBadge;->getLocationOnScreen([I)V

    .line 238
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 239
    .local v3, rect:Landroid/graphics/Rect;
    aget v4, v2, v8

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 240
    aget v4, v2, v9

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 241
    aget v4, v2, v8

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/QuickContactBadge;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 242
    aget v4, v2, v9

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/QuickContactBadge;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 245
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1420

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 249
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 250
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 251
    const-string v4, "mode"

    iget v5, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mMode:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const-string v4, "exclude_mimes"

    iget-object v5, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 254
    const-string v4, "email"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 257
    const-string v4, "phone"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    :cond_3
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 261
    .end local v0           #appScale:F
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pos:[I
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_4
    return-void
.end method


# virtual methods
.method public assignContactFromEmail(Ljava/lang/String;Z)V
    .locals 8
    .parameter "emailAddress"
    .parameter "lazyLookup"

    .prologue
    const/4 v2, 0x0

    .line 136
    iput-object p1, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    .line 137
    if-nez p2, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mQueryHandler:Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/htccontacts/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    iput-object v2, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 143
    invoke-direct {p0}, Lcom/android/htccontacts/widget/QuickContactBadge;->onContactUriChanged()V

    goto :goto_0
.end method

.method public assignContactFromPhone(Ljava/lang/String;Z)V
    .locals 8
    .parameter "phoneNumber"
    .parameter "lazyLookup"

    .prologue
    const/4 v2, 0x0

    .line 157
    iput-object p1, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    .line 158
    if-nez p2, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mQueryHandler:Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x1

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/htccontacts/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    iput-object v2, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 164
    invoke-direct {p0}, Lcom/android/htccontacts/widget/QuickContactBadge;->onContactUriChanged()V

    goto :goto_0
.end method

.method public assignContactUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactUri"

    .prologue
    const/4 v0, 0x0

    .line 108
    iput-object p1, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 109
    iput-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 169
    iget-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 171
    .local v9, resolver:Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    invoke-static {v9, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 172
    .local v8, lookupUri:Landroid/net/Uri;
    invoke-direct {p0, v8}, Lcom/android/htccontacts/widget/QuickContactBadge;->trigger(Landroid/net/Uri;)V

    .line 185
    .end local v8           #lookupUri:Landroid/net/Uri;
    .end local v9           #resolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mQueryHandler:Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/htccontacts/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mQueryHandler:Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/htccontacts/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .locals 0
    .parameter "excludeMimes"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 96
    iput p1, p0, Lcom/android/htccontacts/widget/QuickContactBadge;->mMode:I

    .line 97
    return-void
.end method
