.class public Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;
.super Ljava/lang/Object;
.source "ImageBatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/consumption/ImageBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageSpec"
.end annotation


# instance fields
.field public final height:I

.field public final uri:Landroid/net/Uri;

.field public final width:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;II)V
    .locals 0
    .parameter "uri"
    .parameter "widthDips"
    .parameter "heightDips"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    .line 55
    iput p2, p0, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->width:I

    .line 56
    iput p3, p0, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->height:I

    .line 57
    return-void
.end method

.method public static merge(Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;)Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;
    .locals 5
    .parameter "wrapper1"
    .parameter "wrapper2"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tried to merge wrappers with different uris!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    new-instance v0, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    iget-object v1, p0, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    iget v2, p0, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->width:I

    iget v3, p1, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->width:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->height:I

    iget v4, p1, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->height:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;-><init>(Landroid/net/Uri;II)V

    return-object v0
.end method


# virtual methods
.method public satisfies(Landroid/net/Uri;II)Z
    .locals 1
    .parameter "uri"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->width:I

    if-lt v0, p2, :cond_0

    iget v0, p0, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->height:I

    if-lt v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    const-string v0, "uri=[%s], [%s x %s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
