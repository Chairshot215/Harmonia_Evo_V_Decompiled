.class public Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/image/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageListParam"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mBucketDisplayName:Ljava/lang/String;

.field public mBucketId:Ljava/lang/String;

.field public mCollection:Ljava/lang/String;

.field public mFolderType:Ljava/lang/String;

.field public mInclusion:I

.field public mIsEmptyImageList:Z

.field public mLocation:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

.field public mSingleImageUri:Landroid/net/Uri;

.field public mSort:I

.field public mWhereArgs:[Ljava/lang/String;

.field public mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam$1;

    invoke-direct {v0}, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam$1;-><init>()V

    sput-object v0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->values()[Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mLocation:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mInclusion:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mSort:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mFolderType:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mBucketDisplayName:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mCollection:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mWhereClause:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mWhereArgs:[Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 113
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/photowidget3d/image/ImageManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    const-string v0, "ImageListParam{loc=%s,inc=%d,sort=%d,bucket=%s,collection=%s,empty=%b,single=%s}"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mLocation:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mInclusion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mSort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mCollection:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mLocation:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mInclusion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mSort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mFolderType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mBucketDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mCollection:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mWhereClause:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mWhereArgs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 98
    iget-boolean v0, p0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
