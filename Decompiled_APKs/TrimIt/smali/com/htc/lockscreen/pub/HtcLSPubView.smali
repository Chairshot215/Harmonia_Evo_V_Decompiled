.class public Lcom/htc/lockscreen/pub/HtcLSPubView;
.super Ljava/lang/Object;
.source "HtcLSPubView.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/pub/HtcLSPubView;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "HtcLSPubView"


# instance fields
.field private mDescript:Ljava/lang/String;

.field private mDescriptId:I

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconResId:I

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/htc/lockscreen/pub/HtcLSPubView$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/pub/HtcLSPubView$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/pub/HtcLSPubView;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    const/4 v3, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mPackageName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mPackageName:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mIconResId:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .local v0, iUseBitmap:I
    if-ne v0, v3, :cond_0

    .line 68
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mIcon:Landroid/graphics/Bitmap;

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mDescriptId:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 72
    .local v1, iUseDes:I
    if-ne v1, v3, :cond_1

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mDescript:Ljava/lang/String;

    .line 75
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"
    .parameter "icon"
    .parameter "descript"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mPackageName:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mPackageName:Ljava/lang/String;

    .line 57
    iput v1, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mIconResId:I

    .line 58
    iput-object p2, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mIcon:Landroid/graphics/Bitmap;

    .line 59
    iput v1, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mDescriptId:I

    .line 60
    iput-object p3, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mDescript:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public getDescript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mDescript:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setDescript(Ljava/lang/String;)V
    .locals 1
    .parameter "descript"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mDescript:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mDescriptId:I

    .line 127
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mIcon:Landroid/graphics/Bitmap;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mIconResId:I

    .line 109
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 87
    :goto_0
    iget v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mDescriptId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mDescript:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Lcom/htc/lockscreen/pub/HtcLSPubView;->mDescript:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    :goto_1
    return-void

    .line 85
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
