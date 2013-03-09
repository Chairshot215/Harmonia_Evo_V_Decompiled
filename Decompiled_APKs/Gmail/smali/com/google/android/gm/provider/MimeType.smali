.class public Lcom/google/android/gm/provider/MimeType;
.super Ljava/lang/Object;
.source "MimeType.java"


# static fields
.field static final EML_ATTACHMENT_CONTENT_TYPE:Ljava/lang/String; = "application/eml"

.field static final GENERIC_MIMETYPE:Ljava/lang/String; = "application/octet-stream"

.field private static final UNACCEPTABLE_ATTACHMENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGviewSupportedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 34
    const-string v0, "application/zip"

    const-string v1, "application/x-gzip"

    const-string v2, "application/x-bzip2"

    const-string v3, "application/x-compress"

    const-string v4, "application/x-compressed"

    const-string v5, "application/x-tar"

    new-array v6, v7, [Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MimeType;->UNACCEPTABLE_ATTACHMENT_TYPES:Ljava/util/Set;

    .line 38
    const-string v0, "application/pdf"

    const-string v1, "application/vnd.ms-powerpoint"

    const-string v2, "image/tiff"

    const-string v3, "application/msword"

    const-string v4, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v5, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    new-array v6, v7, [Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MimeType;->sGviewSupportedTypes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fileName"

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, extension:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 118
    .local v1, lastDot:I
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 119
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 122
    .end local v1           #lastDot:I
    :cond_0
    return-object v0
.end method

.method static inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "name"
    .parameter "mimeType"

    .prologue
    .line 136
    invoke-static {p0}, Lcom/google/android/gm/provider/MimeType;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, extension:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 142
    .restart local p1
    :cond_1
    const-string v4, "text/plain"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 143
    .local v2, isTextPlain:Z
    if-nez v2, :cond_2

    const-string v4, "application/octet-stream"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    const/4 v1, 0x1

    .line 146
    .local v1, isGenericType:Z
    :goto_1
    const/4 v3, 0x0

    .line 147
    .local v3, type:Ljava/lang/String;
    if-nez v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 148
    :cond_3
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object p1, v3

    .line 151
    goto :goto_0

    .line 143
    .end local v1           #isGenericType:Z
    .end local v3           #type:Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 152
    .restart local v1       #isGenericType:Z
    .restart local v3       #type:Ljava/lang/String;
    :cond_6
    const-string v4, "eml"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 154
    const-string p1, "application/eml"

    goto :goto_0

    .line 157
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, "application/octet-stream"

    goto :goto_0
.end method

.method public static isBlocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "contentType"

    .prologue
    .line 97
    sget-object v0, Lcom/google/android/gm/provider/MimeType;->UNACCEPTABLE_ATTACHMENT_TYPES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInstallable(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 50
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPlayable(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 57
    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPreviewable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "contentType"

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gmail_gview_supported_types"

    invoke-static {v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, supportedTypes:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 104
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/provider/MimeType;->sGviewSupportedTypes:Ljava/util/Set;

    .line 106
    :cond_0
    sget-object v1, Lcom/google/android/gm/provider/MimeType;->sGviewSupportedTypes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isViewable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "contentUri"
    .parameter "contentType"

    .prologue
    const/4 v4, 0x0

    .line 68
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "null"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v4

    .line 73
    :cond_1
    invoke-static {p2}, Lcom/google/android/gm/provider/MimeType;->isBlocked(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 77
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v3, mimetypeIntent:Landroid/content/Intent;
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 88
    .local v2, manager:Landroid/content/pm/PackageManager;
    const/high16 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 85
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #manager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method
