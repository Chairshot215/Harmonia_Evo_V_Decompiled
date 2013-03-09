.class public Lcom/htc/album/TagUtils/TagInfo;
.super Ljava/lang/Object;
.source "TagInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mH:F

.field public mW:F

.field public mX:F

.field public mY:F

.field public mnRefID:I

.field public mszTagID:Ljava/lang/String;

.field public mszTagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/htc/album/TagUtils/TagInfo$1;

    invoke-direct {v0}, Lcom/htc/album/TagUtils/TagInfo$1;-><init>()V

    sput-object v0, Lcom/htc/album/TagUtils/TagInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, -0x4080

    const/4 v1, 0x0

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    .line 13
    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    .line 14
    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    .line 15
    iput v2, p0, Lcom/htc/album/TagUtils/TagInfo;->mW:F

    .line 16
    iput v2, p0, Lcom/htc/album/TagUtils/TagInfo;->mH:F

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mnRefID:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    .line 30
    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    .line 31
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x4080

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    .line 13
    iput v2, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    .line 14
    iput v2, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    .line 15
    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mW:F

    .line 16
    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mH:F

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mnRefID:I

    .line 48
    invoke-virtual {p0, p1}, Lcom/htc/album/TagUtils/TagInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 3
    .parameter "str"
    .parameter "strID"
    .parameter "fX"
    .parameter "fY"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x4080

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    .line 13
    iput v2, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    .line 14
    iput v2, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    .line 15
    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mW:F

    .line 16
    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mH:F

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mnRefID:I

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    .line 23
    iput p4, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mW:F

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mH:F

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mnRefID:I

    .line 60
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 72
    iget v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 73
    iget v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mW:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 74
    iget v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mH:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 75
    iget v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mnRefID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return-void
.end method
