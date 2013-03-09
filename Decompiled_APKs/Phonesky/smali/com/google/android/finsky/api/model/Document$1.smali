.class final Lcom/google/android/finsky/api/model/Document$1;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/api/model/Document;
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
        "Lcom/google/android/finsky/api/model/Document;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/api/model/Document;
    .locals 3
    .parameter

    .prologue
    .line 1082
    const-class v0, Lcom/google/android/finsky/utils/ParcelableProto;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 1084
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1085
    new-instance v2, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v2, v0, v1}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1079
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/Document$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "size"

    .prologue
    .line 1090
    new-array v0, p1, [Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1079
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/Document$1;->newArray(I)[Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    return-object v0
.end method
