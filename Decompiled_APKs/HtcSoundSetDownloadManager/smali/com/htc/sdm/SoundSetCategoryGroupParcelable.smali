.class public Lcom/htc/sdm/SoundSetCategoryGroupParcelable;
.super Ljava/lang/Object;
.source "SoundSetCategoryGroupParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final PREFIX:Ljava/lang/String; = "[SoundSetCagegoryGroupParcelable]"


# instance fields
.field private mCat:Ljava/lang/String;

.field private mCatCounter:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "Cat"
    .parameter "CatCounter"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sdm/SoundSetCategoryGroupParcelable;->mCatCounter:I

    .line 23
    iput-object p1, p0, Lcom/htc/sdm/SoundSetCategoryGroupParcelable;->mCat:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/htc/sdm/SoundSetCategoryGroupParcelable;->mCatCounter:I

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public getCat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/sdm/SoundSetCategoryGroupParcelable;->mCat:Ljava/lang/String;

    return-object v0
.end method

.method public getCatCounter()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/sdm/SoundSetCategoryGroupParcelable;->mCatCounter:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/sdm/SoundSetCategoryGroupParcelable;->mCat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget v0, p0, Lcom/htc/sdm/SoundSetCategoryGroupParcelable;->mCatCounter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    return-void
.end method
