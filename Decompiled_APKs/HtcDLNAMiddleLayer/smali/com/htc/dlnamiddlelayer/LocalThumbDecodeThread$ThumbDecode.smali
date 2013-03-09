.class public abstract Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;
.super Ljava/lang/Object;
.source "LocalThumbDecodeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ThumbDecode"
.end annotation


# instance fields
.field public filePath:Ljava/lang/String;

.field public nModifiedTime:J

.field public nSize:I

.field public nType:I

.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;


# direct methods
.method public constructor <init>(Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;Ljava/lang/String;JII)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "modifiedTime"
    .parameter "size"
    .parameter "type"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->this$0:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->filePath:Ljava/lang/String;

    .line 135
    iput-wide p3, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->nModifiedTime:J

    .line 136
    iput p5, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->nSize:I

    .line 137
    iput p6, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->nType:I

    .line 138
    return-void
.end method


# virtual methods
.method public abstract decodeThumbnail()Landroid/graphics/Bitmap;
.end method
