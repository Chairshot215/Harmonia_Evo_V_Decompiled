.class public Lcom/android/camera/PictureEvent;
.super Lcom/android/camera/Event;
.source "PictureEvent.java"


# instance fields
.field private final m_Bitmap:Landroid/graphics/Bitmap;

.field private final m_Data:[B

.field private m_IsLastPicture:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLandroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Event;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/camera/PictureEvent;->m_Bitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/android/camera/PictureEvent;->m_Data:[B

    iput-boolean p4, p0, Lcom/android/camera/PictureEvent;->m_IsLastPicture:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/camera/PictureEvent;-><init>(Ljava/lang/String;[BLandroid/graphics/Bitmap;Z)V

    return-void
.end method


# virtual methods
.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/PictureEvent;->m_Bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/camera/PictureEvent;->m_Data:[B

    return-object v0
.end method

.method public final isLastPicture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/PictureEvent;->m_IsLastPicture:Z

    return v0
.end method
