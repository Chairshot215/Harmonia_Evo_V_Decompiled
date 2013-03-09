.class final Lcom/google/android/finsky/utils/ParcelableProto$1;
.super Ljava/lang/Object;
.source "ParcelableProto.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/ParcelableProto;
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
        "Lcom/google/android/finsky/utils/ParcelableProto",
        "<",
        "Lcom/google/protobuf/micro/MessageMicro;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/utils/ParcelableProto;
    .locals 9
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Lcom/google/android/finsky/utils/ParcelableProto",
            "<",
            "Lcom/google/protobuf/micro/MessageMicro;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 73
    .local v5, size:I
    new-array v3, v5, [B

    .line 74
    .local v3, payload:[B
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, className:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 79
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/micro/MessageMicro;

    .line 82
    .local v4, proto:Lcom/google/protobuf/micro/MessageMicro;
    invoke-virtual {v4, v3}, Lcom/google/protobuf/micro/MessageMicro;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    .line 83
    new-instance v6, Lcom/google/android/finsky/utils/ParcelableProto;

    invoke-direct {v6, v4}, Lcom/google/android/finsky/utils/ParcelableProto;-><init>(Lcom/google/protobuf/micro/MessageMicro;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 84
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #proto:Lcom/google/protobuf/micro/MessageMicro;
    :catch_0
    move-exception v2

    .line 86
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when unmarshalling: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/ParcelableProto$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/utils/ParcelableProto;
    .locals 1
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/android/finsky/utils/ParcelableProto",
            "<",
            "Lcom/google/protobuf/micro/MessageMicro;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-array v0, p1, [Lcom/google/android/finsky/utils/ParcelableProto;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/ParcelableProto$1;->newArray(I)[Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v0

    return-object v0
.end method
