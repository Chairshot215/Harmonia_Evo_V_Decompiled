.class public Lcom/htc/opensense2/album/util/HelperUtil;
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

    .prologue
    const/4 v1, 0x0

    .line 39
    const-class v0, Lcom/htc/opensense2/album/util/HelperUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/util/HelperUtil;->LOG_TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    .line 42
    sput-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    .line 43
    sput-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    .line 44
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/util/HelperUtil;->STYLESPAN_BOLD:Landroid/text/style/StyleSpan;

    .line 45
    const-string v0, " "

    sput-object v0, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    .line 46
    const-string v0, "\n"

    sput-object v0, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BREAK:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormatedComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 6
    .parameter "context"
    .parameter "szName"
    .parameter "szComment"
    .parameter "szIsHyperLink"

    .prologue
    const/16 v5, 0x21

    const/4 v4, 0x0

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, charContent:Ljava/lang/CharSequence;
    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20a001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    .line 77
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    if-nez v1, :cond_1

    .line 79
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x333334

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    .line 82
    :cond_1
    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 84
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 86
    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 89
    if-eqz p3, :cond_2

    .line 91
    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 98
    :cond_2
    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->STYLESPAN_BOLD:Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 103
    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 108
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 110
    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 113
    :cond_4
    sget-object v1, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 115
    return-object v0
.end method

.method public static getFormatedPhotoContent(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 11
    .parameter "context"
    .parameter "bitmap"
    .parameter "szText1"
    .parameter "szText2"
    .parameter "szText3"

    .prologue
    const/4 v10, 0x0

    const v9, 0x20a001c

    const/16 v8, 0x21

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, charContent:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 165
    .local v2, nIndexBeginNext:I
    const/4 v3, 0x0

    .line 166
    .local v3, nIndexBeginNext2:I
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    if-nez v4, :cond_0

    .line 168
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_1:Landroid/text/style/ForegroundColorSpan;

    .line 170
    :cond_0
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    if-nez v4, :cond_1

    .line 172
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const v5, -0x333334

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->COLORSPAN_2:Landroid/text/style/ForegroundColorSpan;

    .line 175
    :cond_1
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 177
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 179
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 182
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    sget-object v6, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    sget-object v7, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 188
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sget-object v6, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    sget-object v7, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 194
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 199
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 202
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 208
    :cond_3
    if-eqz p1, :cond_4

    .line 210
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BREAK:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 211
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 212
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, imgSpan:Landroid/text/style/ImageSpan;
    invoke-static {p0, p1, v10}, Lcom/htc/opensense2/album/util/HelperUtil;->getImageSpan(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/text/style/ImageSpan;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 216
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 226
    .end local v1           #imgSpan:Landroid/text/style/ImageSpan;
    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 228
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BREAK:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 229
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 232
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sget-object v6, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    sget-object v7, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 239
    :cond_5
    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v5, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v10, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 240
    return-object v0
.end method

.method public static getFormatedPhotoSubContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"
    .parameter "szText1"
    .parameter "szText2"

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, charContent:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 248
    .local v1, nIndexBeginNext:I
    return-object v0
.end method

.method public static getFormatedTagDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"
    .parameter "szName"
    .parameter "szComment"

    .prologue
    const/16 v8, 0x21

    const/4 v7, 0x0

    .line 119
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    .line 121
    :cond_1
    const/4 v0, 0x0

    .line 126
    .local v0, charContent:Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 127
    .local v2, styleSpenTitle:Landroid/text/style/StyleSpan;
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 129
    .local v1, styleSpenContent:Landroid/text/style/StyleSpan;
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 131
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 133
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 136
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v7, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 141
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->CHAR_BLANK:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 146
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 148
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 151
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v1, v4, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 157
    :cond_3
    sget-object v3, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    sget-object v4, Lcom/htc/opensense2/album/util/HelperUtil;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v7, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 159
    goto :goto_0
.end method

.method private static getImageSpan(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/text/style/ImageSpan;
    .locals 5
    .parameter "context"
    .parameter "bitmap"
    .parameter "VerticalAlignment"

    .prologue
    const/4 v4, 0x0

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    .line 255
    .local v1, imgSpan:Landroid/text/style/ImageSpan;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 256
    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 258
    new-instance v1, Landroid/text/style/ImageSpan;

    .end local v1           #imgSpan:Landroid/text/style/ImageSpan;
    invoke-direct {v1, v0, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 260
    .restart local v1       #imgSpan:Landroid/text/style/ImageSpan;
    return-object v1
.end method

.method private static getImageSpan(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/text/style/ImageSpan;
    .locals 2
    .parameter "context"
    .parameter "drawable"
    .parameter "VerticalAlignment"

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, imgSpan:Landroid/text/style/ImageSpan;
    new-instance v0, Landroid/text/style/ImageSpan;

    .end local v0           #imgSpan:Landroid/text/style/ImageSpan;
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 267
    .restart local v0       #imgSpan:Landroid/text/style/ImageSpan;
    return-object v0
.end method

.method public static getResourceBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "nResourceID"

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    return-object v0
.end method

.method public static gotoFacebookProfileTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "szID"
    .parameter "szName"
    .parameter "szPhoto"

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.htc.socialnetwork.facebook"

    const-string v3, "com.htc.socialnetwork.facebook.FacebookProfileTab"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 278
    const-string v1, "com.facebook.theuserid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v1, "com.facebook.theusername"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v1, "com.facebook.theusericon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 282
    return-void
.end method

.method public static removeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "szSource"

    .prologue
    const/16 v2, 0x20

    .line 59
    move-object v0, p0

    .line 61
    .local v0, szText:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 63
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 64
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 65
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_0
    return-object v0
.end method
