.class Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapHolder"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field bitmapRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final bytes:[B

.field volatile fresh:Z


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .parameter "bytes"

    .prologue
    .line 220
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    .line 223
    return-void
.end method
