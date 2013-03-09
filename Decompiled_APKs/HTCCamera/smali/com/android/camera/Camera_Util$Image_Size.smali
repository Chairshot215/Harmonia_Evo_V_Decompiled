.class public Lcom/android/camera/Camera_Util$Image_Size;
.super Ljava/lang/Object;
.source "Camera_Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera_Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image_Size"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/Camera_Util$Image_Size;->width:I

    iput p2, p0, Lcom/android/camera/Camera_Util$Image_Size;->height:I

    return-void
.end method
