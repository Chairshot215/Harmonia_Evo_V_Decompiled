.class public Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
.super Ljava/lang/Object;
.source "EASMailSearchResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public httpStatus:I

.field public range:Ljava/lang/String;

.field public searchStatus:I

.field public storeStatus:I

.field public total:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->total:I

    .line 8
    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->httpStatus:I

    .line 9
    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->searchStatus:I

    .line 10
    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->storeStatus:I

    .line 11
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->range:Ljava/lang/String;

    .line 14
    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->total:I

    .line 15
    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->httpStatus:I

    .line 16
    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->searchStatus:I

    .line 17
    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->storeStatus:I

    .line 18
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->range:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->total:I

    .line 8
    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->httpStatus:I

    .line 9
    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->searchStatus:I

    .line 10
    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->storeStatus:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->range:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->total:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->httpStatus:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->searchStatus:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->storeStatus:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->range:Ljava/lang/String;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->total:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->httpStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->searchStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->storeStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->range:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return-void
.end method
