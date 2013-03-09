.class final Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$1;
.super Ljava/lang/Object;
.source "AbstractGDataSyncAdapter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
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
        "Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    .locals 3
    .parameter "in"

    .prologue
    .line 314
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    invoke-direct {v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;-><init>()V

    .line 316
    .local v0, gDataSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    iget-object v1, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 317
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    .locals 1
    .parameter "size"

    .prologue
    .line 321
    new-array v0, p1, [Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$1;->newArray(I)[Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object v0

    return-object v0
.end method
