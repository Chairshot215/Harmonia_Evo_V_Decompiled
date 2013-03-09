.class Lcom/htc/android/mail/MediaFile$MediaFileType;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaFileType"
.end annotation


# instance fields
.field fileType:I

.field mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/htc/android/mail/MediaFile$MediaFileType;->fileType:I

    .line 87
    iput-object p2, p0, Lcom/htc/android/mail/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    .line 88
    return-void
.end method
