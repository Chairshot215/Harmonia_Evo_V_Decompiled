.class public Lcom/htc/android/mail/util/ImageLinkParser;
.super Ljava/lang/Object;
.source "ImageLinkParser.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ImageLinkParser"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/util/ImageLinkParser;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImgLinkFromHtml(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "mHtml"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 19
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v6, mImageLinkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 24
    .local v3, mHtmlStart:I
    const/4 v0, 0x0

    .line 25
    .local v0, mHtmlEnd:I
    const/4 v7, 0x0

    .line 26
    .local v7, mImageLinkStart:I
    const/4 v5, 0x0

    .line 28
    .local v5, mImageLinkEnd:I
    :goto_0
    invoke-static {p0}, Lcom/htc/android/mail/util/ImageLinkParser;->isImgLinkExistedInHtml(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 29
    const-string v8, "<"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 30
    const-string v8, ">"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 31
    if-eq v3, v9, :cond_0

    if-ne v0, v9, :cond_2

    .line 32
    :cond_0
    sget-boolean v8, Lcom/htc/android/mail/util/ImageLinkParser;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "ImageLinkParser"

    const-string v9, "HTML body incomplete."

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    return-object v6

    .line 35
    :cond_2
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, mHtmlFragment:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/util/ImageLinkParser;->isImgLinkExistedInHtml(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, mHtmlFragmentLowerCase:Ljava/lang/String;
    const-string v8, "src="

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 39
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string v8, "\""

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 41
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    const-string v8, "\""

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 43
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, mImageLink:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 45
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v2           #mHtmlFragmentLowerCase:Ljava/lang/String;
    .end local v4           #mImageLink:Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static isImgLinkExistedInHtml(Ljava/lang/String;)Z
    .locals 6
    .parameter "mHtml"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 14
    const-string v1, "img"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v5, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "src="

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v5, :cond_1

    :goto_1
    and-int v0, v1, v2

    .line 15
    .local v0, isExisted:Z
    return v0

    .end local v0           #isExisted:Z
    :cond_0
    move v1, v3

    .line 14
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method
