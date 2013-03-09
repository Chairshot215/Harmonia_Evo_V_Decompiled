.class public Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;
.super Ljava/lang/Object;
.source "HelperUtil.java"


# static fields
.field private static final CHAR_BLANK:Ljava/lang/CharSequence; = null

.field private static final CHAR_BREAK:Ljava/lang/CharSequence; = null

.field private static COLORSPAN_1:Landroid/text/style/ForegroundColorSpan; = null

.field private static COLORSPAN_2:Landroid/text/style/ForegroundColorSpan; = null

.field public static final FB_USER_ICON_CONFIG:Ljava/lang/String; = "com.facebook.theusericon"

.field public static final FB_USER_ID_CONFIG:Ljava/lang/String; = "com.facebook.theuserid"

.field public static final FB_USER_NAME_CONFIG:Ljava/lang/String; = "com.facebook.theusername"

.field private static LOG_TAG:Ljava/lang/String;

.field private static final STYLESPAN_BOLD:Landroid/text/style/StyleSpan;

.field private static final builder:Landroid/text/SpannableStringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sput-object v1, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    sput-object v1, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->STYLESPAN_BOLD:Landroid/text/style/StyleSpan;

    const-string v0, " "

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    const-string v0, "\n"

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->CHAR_BREAK:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormatedComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    const/16 v5, 0x21

    const/4 v4, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    if-nez v1, :cond_0

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20a001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    :cond_0
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    if-nez v1, :cond_1

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x333334

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    :cond_1
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->STYLESPAN_BOLD:Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatedPhotoContent(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 11

    const/4 v10, 0x0

    const v9, 0x20a001c

    const/16 v8, 0x21

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    if-nez v4, :cond_0

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v4, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    :cond_0
    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    if-nez v4, :cond_1

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const v5, -0x333334

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v4, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    :cond_1
    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    sget-object v6, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    sget-object v7, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sget-object v6, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    sget-object v7, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v5, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    if-eqz p1, :cond_4

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v5, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->CHAR_BREAK:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v5, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {p0, p1, v10}, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->getImageSpan(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/text/style/ImageSpan;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v5, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v5, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->CHAR_BREAK:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sget-object v6, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    sget-object v7, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v5, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v10, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatedPhotoSubContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    return-object v0
.end method

.method private static getImageSpan(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/text/style/ImageSpan;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v0, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v1
.end method

.method private static getImageSpan(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/text/style/ImageSpan;
    .locals 2

    const/4 v0, 0x0

    new-instance v0, Landroid/text/style/ImageSpan;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v0
.end method

.method public static getResourceBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static gotoFacebookProfileTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "social_htc://com.facebook.auth.login/user/friend/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launch user profile failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x20

    move-object v0, p0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
