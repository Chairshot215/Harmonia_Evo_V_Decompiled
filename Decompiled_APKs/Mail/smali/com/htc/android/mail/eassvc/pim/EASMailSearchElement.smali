.class public Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;
.super Ljava/lang/Object;
.source "EASMailSearchElement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public includeSubFolder:Z

.field public queryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;",
            ">;"
        }
    .end annotation
.end field

.field public rangeFrom:I

.field public rangeTo:I

.field public rebuildResults:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->includeSubFolder:Z

    .line 71
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->rebuildResults:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->queryList:Ljava/util/ArrayList;

    .line 77
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->includeSubFolder:Z

    .line 78
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->rebuildResults:Z

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->rangeFrom:I

    .line 80
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->rangeTo:I

    .line 81
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->queryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->includeSubFolder:Z

    .line 71
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->rebuildResults:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->queryList:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->includeSubFolder:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->rebuildResults:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->rangeFrom:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->rangeTo:I

    .line 113
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->queryList:Ljava/util/ArrayList;

    sget-object v1, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 114
    return-void

    :cond_0
    move v0, v2

    .line 109
    goto :goto_0

    :cond_1
    move v1, v2

    .line 110
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 101
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->includeSubFolder:Z

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->rebuildResults:Z

    if-ne v0, v1, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->rangeFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->rangeTo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->queryList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 106
    return-void

    :cond_0
    move v0, v2

    .line 101
    goto :goto_0

    :cond_1
    move v1, v2

    .line 102
    goto :goto_1
.end method
