.class public Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;
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
            "Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;",
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

    .prologue
    .line 42
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->nTotal:I

    .line 23
    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->nSearchReturnCode:I

    .line 24
    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->nStoreReturnCode:I

    .line 25
    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->nStatus:I

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->nTotal:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->nSearchReturnCode:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->nStoreReturnCode:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->nStatus:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .local v0, elementCount:I
    if-lez v0, :cond_0

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    .line 67
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 68
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/htc/android/pim/eas/EASGalElement;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 29
    iget v2, p0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->nTotal:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget v2, p0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->nSearchReturnCode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget v2, p0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->nStoreReturnCode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget v2, p0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->nStatus:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 35
    .local v0, elementCount:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 37
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v0           #elementCount:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method
