.class public Lcom/google/android/finsky/widget/recommendation/Recommendation;
.super Ljava/lang/Object;
.source "Recommendation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final APP_IMAGE_TYPES:[I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/widget/recommendation/Recommendation;",
            ">;"
        }
    .end annotation
.end field

.field private static final NONAPP_IMAGE_TYPES:[I


# instance fields
.field private final mDocument:Lcom/google/android/finsky/api/model/Document;

.field private final mExpirationTimeMs:J

.field private final mImage:Lcom/google/android/finsky/remoting/protos/Doc$Image;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->NONAPP_IMAGE_TYPES:[I

    .line 24
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->APP_IMAGE_TYPES:[I

    .line 111
    new-instance v0, Lcom/google/android/finsky/widget/recommendation/Recommendation$1;

    invoke-direct {v0}, Lcom/google/android/finsky/widget/recommendation/Recommendation$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 21
    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 24
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/model/Document;)V
    .locals 5
    .parameter "document"

    .prologue
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v0, Lcom/google/android/finsky/config/G;->recommendationTtlMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v0, v1, v3

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/widget/recommendation/Recommendation;-><init>(Lcom/google/android/finsky/api/model/Document;J)V

    .line 34
    return-void
.end method

.method private constructor <init>(Lcom/google/android/finsky/api/model/Document;J)V
    .locals 1
    .parameter "document"
    .parameter "expirationTimeMs"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 38
    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getImage()Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mImage:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 39
    iput-wide p2, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mExpirationTimeMs:J

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/api/model/Document;JLcom/google/android/finsky/widget/recommendation/Recommendation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/widget/recommendation/Recommendation;-><init>(Lcom/google/android/finsky/api/model/Document;J)V

    return-void
.end method

.method private getImage()Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 8

    .prologue
    .line 67
    iget-object v6, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    sget-object v5, Lcom/google/android/finsky/widget/recommendation/Recommendation;->APP_IMAGE_TYPES:[I

    .line 70
    .local v5, preference:[I
    :goto_0
    move-object v0, v5

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v4, :cond_2

    aget v2, v0, v1

    .line 71
    .local v2, imageType:I
    iget-object v6, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6, v2}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v3

    .line 72
    .local v3, images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 73
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 76
    .end local v2           #imageType:I
    .end local v3           #images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    :goto_2
    return-object v6

    .line 67
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #preference:[I
    :cond_0
    sget-object v5, Lcom/google/android/finsky/widget/recommendation/Recommendation;->NONAPP_IMAGE_TYPES:[I

    goto :goto_0

    .line 70
    .restart local v0       #arr$:[I
    .restart local v1       #i$:I
    .restart local v2       #imageType:I
    .restart local v3       #images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    .restart local v4       #len$:I
    .restart local v5       #preference:[I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    .end local v2           #imageType:I
    .end local v3           #images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 88
    instance-of v0, p1, Lcom/google/android/finsky/widget/recommendation/Recommendation;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Lcom/google/android/finsky/widget/recommendation/Recommendation;

    .end local p1
    iget-object v0, p1, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBackend()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    return v0
.end method

.method public getDocument()Lcom/google/android/finsky/api/model/Document;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public getImageType()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mImage:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mImage:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageUrl(I)Ljava/lang/String;
    .locals 2
    .parameter "maxHeight"

    .prologue
    .line 55
    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mImage:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mImage:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, url:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mImage:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mImage:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSupportsFifeUrlOptions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->buildFifeUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_0
    return-object v0

    .line 55
    .end local v0           #url:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 82
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mImage:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageType()I

    move-result v2

    add-int v0, v1, v2

    .line 83
    return v0
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mExpirationTimeMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getReasonUniqueId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 106
    const-wide/16 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 108
    iget-wide v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mExpirationTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    return-void
.end method
