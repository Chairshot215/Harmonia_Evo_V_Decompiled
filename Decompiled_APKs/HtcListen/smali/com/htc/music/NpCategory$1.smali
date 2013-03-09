.class final Lcom/htc/music/NpCategory$1;
.super Ljava/lang/Object;
.source "NpCategory.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NpCategory;
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
        "Lcom/htc/music/NpCategory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/music/NpCategory;
    .locals 2

    new-instance v0, Lcom/htc/music/NpCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/music/NpCategory;-><init>(Landroid/os/Parcel;Lcom/htc/music/NpCategory$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/music/NpCategory$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/music/NpCategory;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/music/NpCategory;
    .locals 1

    new-array v0, p1, [Lcom/htc/music/NpCategory;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/music/NpCategory$1;->newArray(I)[Lcom/htc/music/NpCategory;

    move-result-object v0

    return-object v0
.end method
