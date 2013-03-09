.class public Lcom/htc/htcmailwidgets/AttachmentIconMap;
.super Ljava/lang/Object;
.source "AttachmentIconMap.java"


# static fields
.field static attachmentIconMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final defaultAttachmentIcon:I = 0x7f020004

.field public static final defaultImageAttachmentIcon:I = 0x7f020006

.field public static final defaultVideoAttachmentIcon:I = 0x7f020009


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, 0x7f020006

    const v5, 0x7f020003

    const v4, 0x7f020002

    const v3, 0x7f020009

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    .line 20
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "jpg"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "jpe"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "jpeg"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "png"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "bmp"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "gif"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "tif"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "mp3"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "wav"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "m4a"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "mp3"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "mid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "midi"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "kar"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "amr"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "ogg"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "imy"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "wma"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "mp4"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "3gp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "wmv"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "avi"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "3gpp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "3g2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "mpe"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "mpeg"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "mpg"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "mov"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "qt"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "asf"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "wmv"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "pdf"

    const v2, 0x7f020005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "doc"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "xls"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "ppt"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "docx"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "xlsx"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "pptx"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "docm"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "xlsm"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "pptm"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "pps"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "txt"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "zip"

    const v2, 0x7f02000a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "eml"

    const v2, 0x7f020001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "vcf"

    const v2, 0x7f020008

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "vcs"

    const v2, 0x7f020007

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileIconResource(Ljava/lang/String;)I
    .locals 4
    .parameter "filename"

    .prologue
    const v2, 0x7f020004

    .line 85
    if-nez p0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v2

    .line 88
    :cond_1
    invoke-static {p0}, Lcom/htc/htcmailwidgets/AttachmentIconMap;->getSubFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, subFileName:Ljava/lang/String;
    sget-object v3, Lcom/htc/htcmailwidgets/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 92
    .local v0, resultIconResource:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public static getSubFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filename"

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    const-string v2, ""

    .line 109
    :goto_0
    return-object v2

    .line 104
    :cond_0
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, location:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 106
    const/4 v2, 0x0

    goto :goto_0

    .line 108
    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, subfilename:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
