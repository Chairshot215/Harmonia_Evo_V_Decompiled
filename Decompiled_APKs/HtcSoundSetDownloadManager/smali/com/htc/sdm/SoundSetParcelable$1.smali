.class final Lcom/htc/sdm/SoundSetParcelable$1;
.super Ljava/lang/Object;
.source "SoundSetParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/SoundSetParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/sdm/SoundSetParcelable;
    .locals 2
    .parameter "in"

    .prologue
    .line 91
    new-instance v0, Lcom/htc/sdm/SoundSetParcelable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/sdm/SoundSetParcelable;-><init>(Landroid/os/Parcel;Lcom/htc/sdm/SoundSetParcelable$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/htc/sdm/SoundSetParcelable$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/sdm/SoundSetParcelable;
    .locals 1
    .parameter "size"

    .prologue
    .line 96
    new-array v0, p1, [Lcom/htc/sdm/SoundSetParcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/htc/sdm/SoundSetParcelable$1;->newArray(I)[Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v0

    return-object v0
.end method
