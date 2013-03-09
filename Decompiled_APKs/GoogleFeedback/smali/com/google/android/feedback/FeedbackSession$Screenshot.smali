.class public Lcom/google/android/feedback/FeedbackSession$Screenshot;
.super Ljava/lang/Object;
.source "FeedbackSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/feedback/FeedbackSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Screenshot"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/feedback/FeedbackSession$Screenshot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public base64EncodedScreenshot:Ljava/lang/String;

.field public height:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 571
    new-instance v0, Lcom/google/android/feedback/FeedbackSession$Screenshot$1;

    invoke-direct {v0}, Lcom/google/android/feedback/FeedbackSession$Screenshot$1;-><init>()V

    sput-object v0, Lcom/google/android/feedback/FeedbackSession$Screenshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Landroid/graphics/Bitmap;)Lcom/google/android/feedback/FeedbackSession$Screenshot;
    .locals 4
    .parameter "screenshot"

    .prologue
    .line 541
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 542
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x46

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 543
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/android/feedback/FeedbackSession$Screenshot;->from([BII)Lcom/google/android/feedback/FeedbackSession$Screenshot;

    move-result-object v1

    return-object v1
.end method

.method public static from([BII)Lcom/google/android/feedback/FeedbackSession$Screenshot;
    .locals 2
    .parameter "bytes"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 532
    new-instance v0, Lcom/google/android/feedback/FeedbackSession$Screenshot;

    invoke-direct {v0}, Lcom/google/android/feedback/FeedbackSession$Screenshot;-><init>()V

    .line 533
    .local v0, newScreenshotInstance:Lcom/google/android/feedback/FeedbackSession$Screenshot;
    iput p1, v0, Lcom/google/android/feedback/FeedbackSession$Screenshot;->width:I

    .line 534
    iput p2, v0, Lcom/google/android/feedback/FeedbackSession$Screenshot;->height:I

    .line 535
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/feedback/FeedbackSession$Screenshot;->base64EncodedScreenshot:Ljava/lang/String;

    .line 537
    return-object v0
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lcom/google/android/feedback/FeedbackSession$Screenshot;
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 547
    new-instance v1, Lcom/google/android/feedback/FeedbackSession$Screenshot;

    invoke-direct {v1}, Lcom/google/android/feedback/FeedbackSession$Screenshot;-><init>()V

    .line 548
    .local v1, newScreenshotInstance:Lcom/google/android/feedback/FeedbackSession$Screenshot;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/feedback/FeedbackSession$Screenshot;->base64EncodedScreenshot:Ljava/lang/String;

    .line 550
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/google/android/feedback/FeedbackSession$Screenshot;->width:I

    .line 551
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/google/android/feedback/FeedbackSession$Screenshot;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :goto_0
    return-object v1

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, e:Ljava/lang/Exception;
    iput v3, v1, Lcom/google/android/feedback/FeedbackSession$Screenshot;->width:I

    .line 554
    iput v3, v1, Lcom/google/android/feedback/FeedbackSession$Screenshot;->height:I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession$Screenshot;->base64EncodedScreenshot:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    iget v0, p0, Lcom/google/android/feedback/FeedbackSession$Screenshot;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    iget v0, p0, Lcom/google/android/feedback/FeedbackSession$Screenshot;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    return-void
.end method
