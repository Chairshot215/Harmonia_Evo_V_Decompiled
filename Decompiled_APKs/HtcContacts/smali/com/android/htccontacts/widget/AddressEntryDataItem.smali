.class public Lcom/android/htccontacts/widget/AddressEntryDataItem;
.super Ljava/lang/Object;
.source "AddressEntryDataItem.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/htccontacts/widget/AddressEntryDataItem;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/htccontacts/widget/AddressEntryDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIM_ID_MASK:I = -0x1000000


# instance fields
.field public addressType:I

.field public data_address:Ljava/lang/String;

.field public data_rowId:I

.field public datatype:I

.field public element:Lcom/htc/android/pim/eas/EASGalElement;

.field public isChecked:Z

.field public isCompany:Z

.field public isSIM:Z

.field public keyId:I

.field public peopleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/android/htccontacts/widget/AddressEntryDataItem$1;

    invoke-direct {v0}, Lcom/android/htccontacts/widget/AddressEntryDataItem$1;-><init>()V

    sput-object v0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->datatype:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->addressType:I

    .line 47
    iput v1, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_rowId:I

    .line 49
    iput-boolean v1, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isSIM:Z

    .line 40
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/AddressEntryDataItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIZZ)V
    .locals 2
    .parameter "name"
    .parameter "data"
    .parameter "type"
    .parameter "rowid"
    .parameter "key"
    .parameter "sim"
    .parameter "company"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->datatype:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->addressType:I

    .line 47
    iput v1, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_rowId:I

    .line 49
    iput-boolean v1, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isSIM:Z

    .line 28
    iput-object p1, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_address:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->datatype:I

    .line 31
    iput p4, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_rowId:I

    .line 32
    iput-boolean p6, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isSIM:Z

    .line 33
    iput-boolean p7, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isCompany:Z

    .line 34
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isSIM:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x100

    or-int/2addr p4, v0

    .end local p4
    :cond_0
    iput p4, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->keyId:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    .line 36
    iput p5, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->keyId:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIZZLcom/htc/android/pim/eas/EASGalElement;)V
    .locals 2
    .parameter "name"
    .parameter "data"
    .parameter "type"
    .parameter "rowid"
    .parameter "key"
    .parameter "sim"
    .parameter "company"
    .parameter "elem"

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->datatype:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->addressType:I

    .line 47
    iput v1, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_rowId:I

    .line 49
    iput-boolean v1, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isSIM:Z

    .line 14
    iput-object p1, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_address:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->datatype:I

    .line 17
    iput p4, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_rowId:I

    .line 18
    iput-boolean p6, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isSIM:Z

    .line 19
    iput-boolean p7, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isCompany:Z

    .line 20
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isSIM:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x100

    or-int/2addr p4, v0

    .end local p4
    :cond_0
    iput p4, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->keyId:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    .line 22
    iput p5, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->keyId:I

    .line 23
    iput-object p8, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->element:Lcom/htc/android/pim/eas/EASGalElement;

    .line 24
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_address:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->datatype:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->addressType:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_rowId:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->keyId:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isSIM:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isCompany:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    .line 79
    const-class v0, Lcom/htc/android/pim/eas/EASGalElement;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/android/pim/eas/EASGalElement;

    iput-object v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->element:Lcom/htc/android/pim/eas/EASGalElement;

    .line 80
    return-void

    :cond_0
    move v0, v2

    .line 76
    goto :goto_0

    :cond_1
    move v0, v2

    .line 77
    goto :goto_1

    :cond_2
    move v1, v2

    .line 78
    goto :goto_2
.end method


# virtual methods
.method public compareTo(Lcom/android/htccontacts/widget/AddressEntryDataItem;)I
    .locals 2
    .parameter "entry"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, -0x1

    .line 62
    :goto_0
    return v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 60
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    check-cast p1, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/AddressEntryDataItem;->compareTo(Lcom/android/htccontacts/widget/AddressEntryDataItem;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 107
    const-string v1, "(%s, %s, %d, %d, %h, %h, %b ,%b, %b)"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_address:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->datatype:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->addressType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_rowId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->keyId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isSIM:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-boolean v4, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isCompany:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-boolean v4, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 83
    iget-object v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->peopleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->datatype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->addressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_rowId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->keyId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isSIM:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isCompany:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isChecked:Z

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->element:Lcom/htc/android/pim/eas/EASGalElement;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 93
    return-void

    :cond_1
    move v0, v2

    .line 89
    goto :goto_0

    :cond_2
    move v0, v2

    .line 90
    goto :goto_1
.end method
