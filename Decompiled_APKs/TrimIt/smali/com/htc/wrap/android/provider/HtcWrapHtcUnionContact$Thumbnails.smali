.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$Thumbnails;
.super Ljava/lang/Object;
.source "HtcWrapHtcUnionContact.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Thumbnails"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCenterCroppedBitmap([BI)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "data"
    .parameter "targetSize"

    .prologue
    .line 457
    invoke-static {p0, p1}, Landroid/provider/HtcUnionContact$Thumbnails;->getCenterCroppedBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
