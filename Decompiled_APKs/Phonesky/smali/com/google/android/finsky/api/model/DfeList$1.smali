.class final Lcom/google/android/finsky/api/model/DfeList$1;
.super Ljava/lang/Object;
.source "DfeList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/api/model/DfeList;
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
        "Lcom/google/android/finsky/api/model/DfeList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/api/model/DfeList;
    .locals 9
    .parameter "source"

    .prologue
    const/4 v3, 0x1

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 136
    .local v7, urlMapCount:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v1, urls:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 138
    new-instance v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v5, v8}, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .local v2, count:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 142
    .local v3, autoLoadNextPage:Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, filteredDocId:Ljava/lang/String;
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Ljava/util/List;IZLjava/lang/String;Lcom/google/android/finsky/api/model/DfeList$1;)V

    return-object v0

    .line 141
    .end local v3           #autoLoadNextPage:Z
    .end local v4           #filteredDocId:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/api/model/DfeList;
    .locals 1
    .parameter "size"

    .prologue
    .line 148
    new-array v0, p1, [Lcom/google/android/finsky/api/model/DfeList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeList$1;->newArray(I)[Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    return-object v0
.end method
