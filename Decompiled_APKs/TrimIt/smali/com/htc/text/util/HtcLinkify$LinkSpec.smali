.class public final Lcom/htc/text/util/HtcLinkify$LinkSpec;
.super Ljava/lang/Object;
.source "HtcLinkify.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/text/util/HtcLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinkSpec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/text/util/HtcLinkify$LinkSpec;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/text/util/HtcLinkify$LinkSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public end:I

.field public start:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 492
    new-instance v0, Lcom/htc/text/util/HtcLinkify$LinkSpec$1;

    invoke-direct {v0}, Lcom/htc/text/util/HtcLinkify$LinkSpec$1;-><init>()V

    sput-object v0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 517
    .local v0, isUrlNull:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 518
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->url:Ljava/lang/String;

    .line 522
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    .line 524
    return-void

    .line 520
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->url:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/htc/text/util/HtcLinkify$LinkSpec;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 527
    iget v0, p0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    iget v1, p1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 477
    check-cast p1, Lcom/htc/text/util/HtcLinkify$LinkSpec;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/text/util/HtcLinkify$LinkSpec;->compareTo(Lcom/htc/text/util/HtcLinkify$LinkSpec;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 506
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    :goto_0
    iget v0, p0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    iget v0, p0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    return-void

    .line 508
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget-object v0, p0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
