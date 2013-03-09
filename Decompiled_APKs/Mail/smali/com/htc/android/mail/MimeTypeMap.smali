.class public Lcom/htc/android/mail/MimeTypeMap;
.super Ljava/lang/Object;
.source "MimeTypeMap.java"


# static fields
.field private static TypeMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mDefaultMimetype:Ljava/lang/String; = null

.field public static final mMimetypeVCard:Ljava/lang/String; = "text/x-vCard"

.field public static final mMimetypeVCardShare:Ljava/lang/String; = "text/x-vcard"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    .line 11
    const-string v0, "application/octet-stream"

    sput-object v0, Lcom/htc/android/mail/MimeTypeMap;->mDefaultMimetype:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "bmp"

    const-string v2, "image/bmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "png"

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "jpg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "jpe"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "jpeg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "gif"

    const-string v2, "image/gif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "mpo"

    const-string v2, "image/mpo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "jps"

    const-string v2, "image/jps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "mp3"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "mid"

    const-string v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "midi"

    const-string v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "kar"

    const-string v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "wav"

    const-string v2, "audio/x-wav"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "m4a"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "3gp"

    const-string v2, "audio/3gpp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "amr"

    const-string v2, "audio/amr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "ogg"

    const-string v2, "audio/ogg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "aac"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "imy"

    const-string v2, "audio/imelody"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "3gp"

    const-string v2, "video/3gpp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "3gpp"

    const-string v2, "video/3gpp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "3g2"

    const-string v2, "video/3gpp2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "mp4"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "wmv"

    const-string v2, "video/x-ms-wmv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "vcf"

    const-string v2, "text/x-vcard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    const-string v1, "vcs"

    const-string v2, "text/calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "mimeType"

    .prologue
    .line 139
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 140
    .local v1, location:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    .line 143
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, contentType:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getMimetype(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filename"

    .prologue
    .line 86
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 97
    :goto_0
    return-object v2

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/htc/android/mail/MimeTypeMap;->getSubFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, subname:Ljava/lang/String;
    if-nez v1, :cond_1

    sget-object v2, Lcom/htc/android/mail/MimeTypeMap;->mDefaultMimetype:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_1
    sget-object v2, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    sget-object v2, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, mimetype:Ljava/lang/String;
    if-eqz v0, :cond_3

    move-object v2, v0

    .line 95
    goto :goto_0

    .line 97
    :cond_3
    sget-object v2, Lcom/htc/android/mail/MimeTypeMap;->mDefaultMimetype:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMimetype(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filename"
    .parameter "defaultType"

    .prologue
    .line 69
    if-nez p0, :cond_1

    .line 80
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 70
    .restart local p1
    :cond_1
    invoke-static {p0}, Lcom/htc/android/mail/MimeTypeMap;->getSubFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, subname:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 73
    sget-object v2, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    sget-object v2, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object p1, v2

    goto :goto_0

    .line 76
    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, mimetype:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 78
    goto :goto_0
.end method

.method public static getSubFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filename"

    .prologue
    .line 129
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 130
    .local v0, location:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 131
    const/4 v1, 0x0

    .line 134
    :goto_0
    return-object v1

    .line 133
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, subfilename:Ljava/lang/String;
    goto :goto_0
.end method

.method public static isSupport(Ljava/lang/String;)Z
    .locals 4
    .parameter "filename"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 104
    if-nez p0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v1

    .line 106
    :cond_1
    invoke-static {p0}, Lcom/htc/android/mail/MimeTypeMap;->getSubFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, subname:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 109
    sget-object v2, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSupportByMIME(Ljava/lang/String;)Z
    .locals 3
    .parameter "mimeType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 118
    if-nez p0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    sget-object v1, Lcom/htc/android/mail/MimeTypeMap;->TypeMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const/4 v0, 0x1

    goto :goto_0
.end method
