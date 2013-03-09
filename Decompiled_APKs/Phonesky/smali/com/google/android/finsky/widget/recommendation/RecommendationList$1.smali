.class final Lcom/google/android/finsky/widget/recommendation/RecommendationList$1;
.super Ljava/lang/Object;
.source "RecommendationList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/recommendation/RecommendationList;
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
        "Lcom/google/android/finsky/widget/recommendation/RecommendationList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    .locals 6
    .parameter

    .prologue
    const-wide/16 v2, 0x1

    .line 196
    const-class v0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 199
    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;

    const-class v1, Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;-><init>(Ljava/lang/Class;JJ)V

    throw v0

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 207
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 208
    sget-object v3, Lcom/google/android/finsky/widget/recommendation/Recommendation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 210
    new-instance v3, Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-direct {v3, v0, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;-><init>(Ljava/lang/String;I)V

    .line 211
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/widget/recommendation/Recommendation;

    .line 212
    invoke-virtual {v3, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->add(Lcom/google/android/finsky/widget/recommendation/Recommendation;)Z

    goto :goto_0

    .line 215
    :cond_1
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    .locals 1
    .parameter "size"

    .prologue
    .line 220
    new-array v0, p1, [Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList$1;->newArray(I)[Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v0

    return-object v0
.end method
