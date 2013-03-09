.class final Lcom/google/android/finsky/api/model/DfeToc$1;
.super Ljava/lang/Object;
.source "DfeToc.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/api/model/DfeToc;
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
        "Lcom/google/android/finsky/api/model/DfeToc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/api/model/DfeToc;
    .locals 2
    .parameter

    .prologue
    .line 158
    const-class v0, Lcom/google/android/finsky/utils/ParcelableProto;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    .line 160
    new-instance v1, Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {v1, v0}, Lcom/google/android/finsky/api/model/DfeToc;-><init>(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeToc$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/api/model/DfeToc;
    .locals 1
    .parameter "size"

    .prologue
    .line 165
    new-array v0, p1, [Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeToc$1;->newArray(I)[Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    return-object v0
.end method
