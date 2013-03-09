.class final Lcom/google/android/finsky/services/ConsumptionAppDoc$1;
.super Ljava/lang/Object;
.source "ConsumptionAppDoc.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/ConsumptionAppDoc;
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
        "Lcom/google/android/finsky/services/ConsumptionAppDoc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/services/ConsumptionAppDoc;
    .locals 8
    .parameter

    .prologue
    .line 141
    const-class v0, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 144
    const-wide/16 v2, 0x1

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 145
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to unparcel v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_0
    new-instance v0, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/services/ConsumptionAppDoc;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;JLjava/lang/String;Landroid/content/Intent;Lcom/google/android/finsky/services/ConsumptionAppDoc$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/services/ConsumptionAppDoc$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/services/ConsumptionAppDoc;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/services/ConsumptionAppDoc;
    .locals 1
    .parameter "size"

    .prologue
    .line 159
    new-array v0, p1, [Lcom/google/android/finsky/services/ConsumptionAppDoc;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/services/ConsumptionAppDoc$1;->newArray(I)[Lcom/google/android/finsky/services/ConsumptionAppDoc;

    move-result-object v0

    return-object v0
.end method
