.class public Lcom/htc/android/pim/eas/EASGalSearchResult;
.super Ljava/lang/Object;
.source "EASGalSearchResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/pim/eas/EASGalSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FAIL:I = -0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_SERVER_ERROR:I = -0x2


# instance fields
.field public elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/pim/eas/EASGalElement;",
            ">;"
        }
    .end annotation
.end field

.field public nSearchReturnCode:I

.field public nStatus:I

.field public nStoreReturnCode:I

.field public nTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/android/pim/eas/EASGalSearchResult$1;

    invoke-direct {v0}, Lcom/htc/android/pim/eas/EASGalSearchResult$1;-><init>()V

    sput-object v0, Lcom/htc/android/pim/eas/EASGalSearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nTotal:I

    iput v1, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nSearchReturnCode:I

    iput v1, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStoreReturnCode:I

    iput v1, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStatus:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nTotal:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nSearchReturnCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStoreReturnCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/htc/android/pim/eas/EASGalElement;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/pim/eas/EASGalSearchResult$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/android/pim/eas/EASGalSearchResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nTotal:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nSearchReturnCode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStoreReturnCode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStatus:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
