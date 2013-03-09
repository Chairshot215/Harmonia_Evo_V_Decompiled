.class public Lcom/htc/android/mail/util/AttachmentIconMap;
.super Ljava/lang/Object;
.source "AttachmentIconMap.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final LOWERCASE:I = 0x0

.field private static final ORIGINALCASE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AttachmentIconMap"

.field private static final UPPERCASE:I = 0x1

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

.field public static final defaultAttachmentIcon:I = 0x208082b

.field public static final defaultImageAttachmentIcon:I = 0x208082d

.field public static final defaultVideoAttachmentIcon:I = 0x2080203


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x2080829

    const v6, 0x208082e

    const v5, 0x208082d

    const v4, 0x20801f6

    const v3, 0x2080203

    .line 12
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/util/AttachmentIconMap;->DEBUG:Z

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    .line 29
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "jpg"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "jpe"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "jpeg"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "png"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "bmp"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "gif"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "tif"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "mp3"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "wav"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "m4a"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "mp3"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "mid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "midi"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "kar"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "amr"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "ogg"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "imy"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "wma"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "mp4"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "3gp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "wmv"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "avi"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "3gpp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "3g2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "mpe"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "mpeg"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "mpg"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "mov"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "qt"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "asf"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "wmv"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "pdf"

    const v2, 0x208082c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "doc"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "xls"

    const v2, 0x2080832

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "ppt"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "docx"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "xlsx"

    const v2, 0x2080832

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "pptx"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "docm"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "xlsm"

    const v2, 0x2080832

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "pptm"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "pps"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "txt"

    const v2, 0x208082b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "zip"

    const v2, 0x2080828

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "eml"

    const v2, 0x208082a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "vcf"

    const v2, 0x2080830

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "vcs"

    const v2, 0x2080831

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileIconResource(Ljava/lang/String;)I
    .locals 4
    .parameter "filename"

    .prologue
    const v2, 0x208082b

    .line 93
    if-nez p0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v2

    .line 96
    :cond_1
    invoke-static {p0}, Lcom/htc/android/mail/MailCommon;->getSubFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, subFileName:Ljava/lang/String;
    sget-object v3, Lcom/htc/android/mail/util/AttachmentIconMap;->attachmentIconMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 100
    .local v0, resultIconResource:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method
