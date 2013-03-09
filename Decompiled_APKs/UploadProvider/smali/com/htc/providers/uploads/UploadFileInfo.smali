.class public Lcom/htc/providers/uploads/UploadFileInfo;
.super Ljava/lang/Object;
.source "UploadFileInfo.java"


# instance fields
.field filename:Ljava/lang/String;

.field status:I

.field stream:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V
    .locals 0
    .parameter "filename"
    .parameter "stream"
    .parameter "status"

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/htc/providers/uploads/UploadFileInfo;->filename:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/htc/providers/uploads/UploadFileInfo;->stream:Ljava/io/FileOutputStream;

    .line 12
    iput p3, p0, Lcom/htc/providers/uploads/UploadFileInfo;->status:I

    .line 13
    return-void
.end method
