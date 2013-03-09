.class public Lcom/android/mms/wrapper/MimeTypeMap;
.super Ljava/lang/Object;
.source "MimeTypeMap.java"


# static fields
.field private static sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;


# instance fields
.field private mExtensionToMimeTypeMap:Ljava/util/HashMap;
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

.field private mMimeTypeToExtensionMap:Ljava/util/HashMap;
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


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/wrapper/MimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/wrapper/MimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method public static addExtensionFromMime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"
    .parameter "mimeType"

    .prologue
    .line 144
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 145
    .local v0, dotIndex:I
    if-gez v0, :cond_0

    .line 146
    invoke-static {}, Lcom/android/mms/wrapper/MimeTypeMap;->getSingleton()Lcom/android/mms/wrapper/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/mms/wrapper/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, extension:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 151
    .end local v1           #extension:Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"

    .prologue
    .line 57
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 58
    invoke-static {p0}, Lcom/android/mms/wrapper/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 60
    const/16 v4, 0x3f

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 61
    .local v3, query:I
    if-lez v3, :cond_0

    .line 62
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 64
    :cond_0
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 65
    .local v2, filenamePos:I
    if-ltz v2, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, filename:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 71
    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 72
    .local v0, dotPos:I
    if-ltz v0, :cond_2

    .line 73
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    .end local v0           #dotPos:I
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #filenamePos:I
    .end local v3           #query:I
    :goto_1
    return-object v4

    .restart local v2       #filenamePos:I
    .restart local v3       #query:I
    :cond_1
    move-object v1, p0

    .line 65
    goto :goto_0

    .line 78
    .end local v2           #filenamePos:I
    .end local v3           #query:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getSingleton()Lcom/android/mms/wrapper/MimeTypeMap;
    .locals 3

    .prologue
    .line 158
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/android/mms/wrapper/MimeTypeMap;

    invoke-direct {v0}, Lcom/android/mms/wrapper/MimeTypeMap;-><init>()V

    sput-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    .line 163
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/html"

    const-string v2, "htm"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/html"

    const-string v2, "html"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/html"

    const-string v2, "shtml"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/vnd.wap.wbmp"

    const-string v2, "wbmp"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.wap.wbxml"

    const-string v2, "wbxml"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/vnd.wap.wml"

    const-string v2, "wml"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.wap.wmlc"

    const-string v2, "wmlc"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/vnd.wap.wmlscript"

    const-string v2, "wmls"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.wap.wmlscriptc"

    const-string v2, "wmlsc"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/xhtml+xml"

    const-string v2, "xht"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/xhtml+xml"

    const-string v2, "xhtml"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/andrew-inset"

    const-string v2, "ez"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/dsptype"

    const-string v2, "tsp"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/futuresplash"

    const-string v2, "spl"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/hta"

    const-string v2, "hta"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/mac-binhex40"

    const-string v2, "hqx"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/mac-compactpro"

    const-string v2, "cpt"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/mathematica"

    const-string v2, "nb"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/msaccess"

    const-string v2, "mdb"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/oda"

    const-string v2, "oda"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/ogg"

    const-string v2, "ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/pdf"

    const-string v2, "pdf"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/pgp-keys"

    const-string v2, "key"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/pgp-signature"

    const-string v2, "pgp"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/pics-rules"

    const-string v2, "prf"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/rar"

    const-string v2, "rar"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/rdf+xml"

    const-string v2, "rdf"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/rss+xml"

    const-string v2, "rss"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/zip"

    const-string v2, "zip"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.android.package-archive"

    const-string v2, "apk"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.cinderella"

    const-string v2, "cdy"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.ms-pki.stl"

    const-string v2, "stl"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.database"

    const-string v2, "odb"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.formula"

    const-string v2, "odf"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.graphics"

    const-string v2, "odg"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.graphics-template"

    const-string v2, "otg"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.image"

    const-string v2, "odi"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.spreadsheet"

    const-string v2, "ods"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.spreadsheet-template"

    const-string v2, "ots"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.text"

    const-string v2, "odt"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.text-master"

    const-string v2, "odm"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.text-template"

    const-string v2, "ott"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.text-web"

    const-string v2, "oth"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.rim.cod"

    const-string v2, "cod"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.smaf"

    const-string v2, "mmf"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.stardivision.calc"

    const-string v2, "sdc"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.stardivision.draw"

    const-string v2, "sda"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.stardivision.impress"

    const-string v2, "sdd"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.stardivision.impress"

    const-string v2, "sdp"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.stardivision.math"

    const-string v2, "smf"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.stardivision.writer"

    const-string v2, "sdw"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.stardivision.writer"

    const-string v2, "vor"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.stardivision.writer-global"

    const-string v2, "sgl"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.calc"

    const-string v2, "sxc"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.calc.template"

    const-string v2, "stc"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.draw"

    const-string v2, "sxd"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.draw.template"

    const-string v2, "std"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.impress"

    const-string v2, "sxi"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.impress.template"

    const-string v2, "sti"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.math"

    const-string v2, "sxm"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.writer"

    const-string v2, "sxw"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.writer.global"

    const-string v2, "sxg"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.writer.template"

    const-string v2, "stw"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/vnd.visio"

    const-string v2, "vsd"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-abiword"

    const-string v2, "abw"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-apple-diskimage"

    const-string v2, "dmg"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-bcpio"

    const-string v2, "bcpio"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-bittorrent"

    const-string v2, "torrent"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-cdf"

    const-string v2, "cdf"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-cdlink"

    const-string v2, "vcd"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-chess-pgn"

    const-string v2, "pgn"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-cpio"

    const-string v2, "cpio"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-debian-package"

    const-string v2, "deb"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-debian-package"

    const-string v2, "udeb"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-director"

    const-string v2, "dcr"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-director"

    const-string v2, "dir"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-director"

    const-string v2, "dxr"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-dms"

    const-string v2, "dms"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-doom"

    const-string v2, "wad"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-dvi"

    const-string v2, "dvi"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-flac"

    const-string v2, "flac"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-font"

    const-string v2, "pfa"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-font"

    const-string v2, "pfb"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-font"

    const-string v2, "gsf"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-font"

    const-string v2, "pcf"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-font"

    const-string v2, "pcf.Z"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-freemind"

    const-string v2, "mm"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-futuresplash"

    const-string v2, "spl"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-gnumeric"

    const-string v2, "gnumeric"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-go-sgf"

    const-string v2, "sgf"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-graphing-calculator"

    const-string v2, "gcf"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-gtar"

    const-string v2, "gtar"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-gtar"

    const-string v2, "tgz"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-gtar"

    const-string v2, "taz"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-hdf"

    const-string v2, "hdf"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-ica"

    const-string v2, "ica"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-internet-signup"

    const-string v2, "ins"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-internet-signup"

    const-string v2, "isp"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-iphone"

    const-string v2, "iii"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-iso9660-image"

    const-string v2, "iso"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-jmol"

    const-string v2, "jmz"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-kchart"

    const-string v2, "chrt"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-killustrator"

    const-string v2, "kil"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-koan"

    const-string v2, "skp"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-koan"

    const-string v2, "skd"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-koan"

    const-string v2, "skt"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-koan"

    const-string v2, "skm"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-kpresenter"

    const-string v2, "kpr"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-kpresenter"

    const-string v2, "kpt"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-kspread"

    const-string v2, "ksp"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-kword"

    const-string v2, "kwd"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-kword"

    const-string v2, "kwt"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-latex"

    const-string v2, "latex"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-lha"

    const-string v2, "lha"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-lzh"

    const-string v2, "lzh"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-lzx"

    const-string v2, "lzx"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-maker"

    const-string v2, "frm"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-maker"

    const-string v2, "maker"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-maker"

    const-string v2, "frame"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-maker"

    const-string v2, "fb"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-maker"

    const-string v2, "book"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-maker"

    const-string v2, "fbdoc"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-mif"

    const-string v2, "mif"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-ms-wmd"

    const-string v2, "wmd"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-ms-wmz"

    const-string v2, "wmz"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-msi"

    const-string v2, "msi"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-ns-proxy-autoconfig"

    const-string v2, "pac"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-nwc"

    const-string v2, "nwc"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-object"

    const-string v2, "o"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-oz-application"

    const-string v2, "oza"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-pkcs7-certreqresp"

    const-string v2, "p7r"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-pkcs7-crl"

    const-string v2, "crl"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-quicktimeplayer"

    const-string v2, "qtl"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-shar"

    const-string v2, "shar"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-stuffit"

    const-string v2, "sit"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-sv4cpio"

    const-string v2, "sv4cpio"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-sv4crc"

    const-string v2, "sv4crc"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-tar"

    const-string v2, "tar"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-texinfo"

    const-string v2, "texinfo"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-texinfo"

    const-string v2, "texi"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-troff"

    const-string v2, "t"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-troff"

    const-string v2, "roff"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-troff-man"

    const-string v2, "man"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-ustar"

    const-string v2, "ustar"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-wais-source"

    const-string v2, "src"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-wingz"

    const-string v2, "wz"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-webarchive"

    const-string v2, "webarchive"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-x509-ca-cert"

    const-string v2, "crt"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-xcf"

    const-string v2, "xcf"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "application/x-xfig"

    const-string v2, "fig"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/amr"

    const-string v2, "amr"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/basic"

    const-string v2, "snd"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/midi"

    const-string v2, "mid"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/midi"

    const-string v2, "midi"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/midi"

    const-string v2, "kar"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/mpeg"

    const-string v2, "mpga"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/mpeg"

    const-string v2, "mpega"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/mpeg"

    const-string v2, "mp2"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/mpeg"

    const-string v2, "mp3"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/mpeg"

    const-string v2, "m4a"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/mpegurl"

    const-string v2, "m3u"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/prs.sid"

    const-string v2, "sid"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/x-aiff"

    const-string v2, "aif"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/x-aiff"

    const-string v2, "aiff"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/x-aiff"

    const-string v2, "aifc"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/x-gsm"

    const-string v2, "gsm"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/x-mpegurl"

    const-string v2, "m3u"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/x-ms-wma"

    const-string v2, "wma"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/x-ms-wax"

    const-string v2, "wax"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/x-pn-realaudio"

    const-string v2, "ra"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/x-pn-realaudio"

    const-string v2, "rm"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/x-pn-realaudio"

    const-string v2, "ram"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/x-realaudio"

    const-string v2, "ra"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/x-scpls"

    const-string v2, "pls"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/x-sd2"

    const-string v2, "sd2"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "audio/x-wav"

    const-string v2, "wav"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/bmp"

    const-string v2, "bmp"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/gif"

    const-string v2, "gif"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/ico"

    const-string v2, "cur"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/ico"

    const-string v2, "ico"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/ief"

    const-string v2, "ief"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/jpeg"

    const-string v2, "jpeg"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/jpeg"

    const-string v2, "jpg"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/jpeg"

    const-string v2, "jpe"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/pcx"

    const-string v2, "pcx"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/png"

    const-string v2, "png"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/svg+xml"

    const-string v2, "svg"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/svg+xml"

    const-string v2, "svgz"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/tiff"

    const-string v2, "tiff"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/tiff"

    const-string v2, "tif"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/vnd.djvu"

    const-string v2, "djvu"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/vnd.djvu"

    const-string v2, "djv"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/vnd.wap.wbmp"

    const-string v2, "wbmp"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/x-cmu-raster"

    const-string v2, "ras"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/x-coreldraw"

    const-string v2, "cdr"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/x-coreldrawpattern"

    const-string v2, "pat"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/x-coreldrawtemplate"

    const-string v2, "cdt"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/x-corelphotopaint"

    const-string v2, "cpt"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/x-icon"

    const-string v2, "ico"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/x-jg"

    const-string v2, "art"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/x-jng"

    const-string v2, "jng"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/x-ms-bmp"

    const-string v2, "bmp"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/x-photoshop"

    const-string v2, "psd"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/x-portable-anymap"

    const-string v2, "pnm"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/x-portable-bitmap"

    const-string v2, "pbm"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/x-portable-graymap"

    const-string v2, "pgm"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/x-portable-pixmap"

    const-string v2, "ppm"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/x-rgb"

    const-string v2, "rgb"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/x-xbitmap"

    const-string v2, "xbm"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/x-xpixmap"

    const-string v2, "xpm"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "image/x-xwindowdump"

    const-string v2, "xwd"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "model/iges"

    const-string v2, "igs"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "model/iges"

    const-string v2, "iges"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "model/mesh"

    const-string v2, "msh"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "model/mesh"

    const-string v2, "mesh"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "model/mesh"

    const-string v2, "silo"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/calendar"

    const-string v2, "ics"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/calendar"

    const-string v2, "icz"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/comma-separated-values"

    const-string v2, "csv"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/css"

    const-string v2, "css"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/h323"

    const-string v2, "323"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/iuls"

    const-string v2, "uls"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/mathml"

    const-string v2, "mml"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/plain"

    const-string v2, "txt"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/plain"

    const-string v2, "asc"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/plain"

    const-string v2, "text"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/plain"

    const-string v2, "diff"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/plain"

    const-string v2, "pot"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/richtext"

    const-string v2, "rtx"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/rtf"

    const-string v2, "rtf"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/texmacs"

    const-string v2, "ts"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/text"

    const-string v2, "phps"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/tab-separated-values"

    const-string v2, "tsv"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-bibtex"

    const-string v2, "bib"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-boo"

    const-string v2, "boo"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-c++hdr"

    const-string v2, "h++"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-c++hdr"

    const-string v2, "hpp"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-c++hdr"

    const-string v2, "hxx"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-c++hdr"

    const-string v2, "hh"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-c++src"

    const-string v2, "c++"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-c++src"

    const-string v2, "cpp"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-c++src"

    const-string v2, "cxx"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-chdr"

    const-string v2, "h"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-component"

    const-string v2, "htc"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-csh"

    const-string v2, "csh"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-csrc"

    const-string v2, "c"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-dsrc"

    const-string v2, "d"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-haskell"

    const-string v2, "hs"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-java"

    const-string v2, "java"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-literate-haskell"

    const-string v2, "lhs"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-moc"

    const-string v2, "moc"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-pascal"

    const-string v2, "p"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-pascal"

    const-string v2, "pas"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-pcs-gcd"

    const-string v2, "gcd"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-setext"

    const-string v2, "etx"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-tcl"

    const-string v2, "tcl"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-tex"

    const-string v2, "tex"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-tex"

    const-string v2, "ltx"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-tex"

    const-string v2, "sty"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-tex"

    const-string v2, "cls"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-vcalendar"

    const-string v2, "vcs"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "text/x-vcard"

    const-string v2, "vcf"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/3gpp"

    const-string v2, "3gp"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/3gpp"

    const-string v2, "3g2"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/dl"

    const-string v2, "dl"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/dv"

    const-string v2, "dif"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/dv"

    const-string v2, "dv"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/fli"

    const-string v2, "fli"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/mpeg"

    const-string v2, "mpeg"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/mpeg"

    const-string v2, "mpg"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/mpeg"

    const-string v2, "mpe"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/mp4"

    const-string v2, "mp4"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/mpeg"

    const-string v2, "VOB"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/quicktime"

    const-string v2, "qt"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/quicktime"

    const-string v2, "mov"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/vnd.mpegurl"

    const-string v2, "mxu"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/x-la-asf"

    const-string v2, "lsf"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/x-la-asf"

    const-string v2, "lsx"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/x-mng"

    const-string v2, "mng"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/x-ms-asf"

    const-string v2, "asf"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/x-ms-asf"

    const-string v2, "asx"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/x-ms-wm"

    const-string v2, "wm"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/x-ms-wmv"

    const-string v2, "wmv"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/x-ms-wmx"

    const-string v2, "wmx"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/x-ms-wvx"

    const-string v2, "wvx"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/x-msvideo"

    const-string v2, "avi"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "video/x-sgi-movie"

    const-string v2, "movie"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "x-conference/x-cooltalk"

    const-string v2, "ice"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    const-string v1, "x-epoc/x-sisx-app"

    const-string v2, "sisx"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/wrapper/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_0
    sget-object v0, Lcom/android/mms/wrapper/MimeTypeMap;->sMimeTypeMap:Lcom/android/mms/wrapper/MimeTypeMap;

    return-object v0
.end method

.method private loadEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "mimeType"
    .parameter "extension"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/mms/wrapper/MimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/mms/wrapper/MimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/mms/wrapper/MimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/mms/wrapper/MimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_1
    return-void
.end method


# virtual methods
.method public getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mimetype"

    .prologue
    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mms/wrapper/MimeTypeMap;->hasMimetype(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/wrapper/MimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "extension"

    .prologue
    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/mms/wrapper/MimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMimeTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 95
    invoke-static {p1}, Lcom/android/mms/wrapper/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/wrapper/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .locals 1
    .parameter "extension"

    .prologue
    .line 121
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/mms/wrapper/MimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMimetype(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimetype"

    .prologue
    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/mms/wrapper/MimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
