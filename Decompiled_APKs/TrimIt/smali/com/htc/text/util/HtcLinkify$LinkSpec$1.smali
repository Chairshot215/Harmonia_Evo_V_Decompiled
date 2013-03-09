.class final Lcom/htc/text/util/HtcLinkify$LinkSpec$1;
.super Ljava/lang/Object;
.source "HtcLinkify.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/text/util/HtcLinkify$LinkSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/text/util/HtcLinkify$LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/text/util/HtcLinkify$LinkSpec;
    .locals 1
    .parameter "source"

    .prologue
    .line 495
    new-instance v0, Lcom/htc/text/util/HtcLinkify$LinkSpec;

    invoke-direct {v0, p1}, Lcom/htc/text/util/HtcLinkify$LinkSpec;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 492
    invoke-virtual {p0, p1}, Lcom/htc/text/util/HtcLinkify$LinkSpec$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/text/util/HtcLinkify$LinkSpec;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/text/util/HtcLinkify$LinkSpec;
    .locals 1
    .parameter "size"

    .prologue
    .line 499
    new-array v0, p1, [Lcom/htc/text/util/HtcLinkify$LinkSpec;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 492
    invoke-virtual {p0, p1}, Lcom/htc/text/util/HtcLinkify$LinkSpec$1;->newArray(I)[Lcom/htc/text/util/HtcLinkify$LinkSpec;

    move-result-object v0

    return-object v0
.end method
