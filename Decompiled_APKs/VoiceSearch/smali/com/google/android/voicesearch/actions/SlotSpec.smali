.class public Lcom/google/android/voicesearch/actions/SlotSpec;
.super Ljava/lang/Object;
.source "SlotSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/SlotSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFlags:I

.field private final mIdentifier:Ljava/lang/String;

.field private final mIndex:I

.field private final mMaxLength:I

.field private final mTitle:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/google/android/voicesearch/actions/SlotSpec$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/SlotSpec$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/SlotSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIdentifier:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mTitle:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mType:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIndex:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mMaxLength:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mFlags:I

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7
    .parameter "identifier"
    .parameter "title"
    .parameter "type"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 74
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .parameter "identifier"
    .parameter "title"
    .parameter "type"
    .parameter "index"
    .parameter "maxLength"
    .parameter "flags"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIdentifier:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mTitle:Ljava/lang/String;

    .line 64
    iput p3, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mType:I

    .line 65
    iput p4, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIndex:I

    .line 66
    iput p5, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mMaxLength:I

    .line 67
    iput p6, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mFlags:I

    .line 68
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIndex:I

    return v0
.end method

.method public getMaxLength()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mMaxLength:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mType:I

    return v0
.end method

.method public isDefault()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 108
    iget v1, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMandatory()Z
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mFlags:I

    and-int/lit8 v0, v0, 0x6

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShownInitially()Z
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mMaxLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return-void
.end method
