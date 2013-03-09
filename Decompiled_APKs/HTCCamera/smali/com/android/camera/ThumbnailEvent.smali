.class public final Lcom/android/camera/ThumbnailEvent;
.super Lcom/android/camera/Event;
.source "ThumbnailEvent.java"


# instance fields
.field public final filePath:Ljava/lang/String;

.field public final thumbnailImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Event;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/ThumbnailEvent;->filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/ThumbnailEvent;->thumbnailImage:Landroid/graphics/Bitmap;

    return-void
.end method
