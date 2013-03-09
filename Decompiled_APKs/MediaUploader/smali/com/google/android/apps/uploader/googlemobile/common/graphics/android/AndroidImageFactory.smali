.class public Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImageFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;


# instance fields
.field private final context:Landroid/content/Context;

.field private drawableResourceClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImageFactory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createImage(II)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;
    .locals 1

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;

    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;-><init>(II)V

    return-object v0
.end method

.method public createImage(IIZ)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;
    .locals 1

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;-><init>(IIZ)V

    return-object v0
.end method

.method public createImage(Ljava/lang/String;)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImageFactory;->drawableResourceClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    :cond_0
    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImageFactory;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImageFactory;->drawableResourceClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public createImage([BII)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;
    .locals 1

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;-><init>([BII)V

    return-object v0
.end method

.method public createRGBImage([IIIZ)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;
    .locals 1

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;-><init>([IIIZ)V

    return-object v0
.end method

.method public createSquareImage([BI)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImageFactory;->createImage([BII)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageUtil;->createSquareImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;I)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object v0

    return-object v0
.end method

.method public setDrawableResourceClass(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImageFactory;->drawableResourceClass:Ljava/lang/Class;

    return-void
.end method
