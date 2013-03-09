.class Lcom/htc/wrap/android/media/HtcWrapMediaFile$MediaFileType;
.super Ljava/lang/Object;
.source "HtcWrapMediaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/media/HtcWrapMediaFile;
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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/htc/wrap/android/media/HtcWrapMediaFile$MediaFileType;->fileType:I

    iput-object p2, p0, Lcom/htc/wrap/android/media/HtcWrapMediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    return-void
.end method
