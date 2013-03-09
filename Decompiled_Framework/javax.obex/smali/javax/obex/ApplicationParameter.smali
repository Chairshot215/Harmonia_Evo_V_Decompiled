.class public final Ljavax/obex/ApplicationParameter;
.super Ljava/lang/Object;
.source "ApplicationParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/obex/ApplicationParameter$TRIPLET_LENGTH;,
        Ljavax/obex/ApplicationParameter$TRIPLET_VALUE;,
        Ljavax/obex/ApplicationParameter$TRIPLET_TAGID;
    }
.end annotation


# instance fields
.field private mArray:[B

.field private mLength:I

.field private mMaxLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Ljavax/obex/ApplicationParameter;->mMaxLength:I

    iget v0, p0, Ljavax/obex/ApplicationParameter;->mMaxLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    const/4 v0, 0x0

    iput v0, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    return-void
.end method


# virtual methods
.method public addAPPHeader(BB[B)V
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Ljavax/obex/ApplicationParameter;->mMaxLength:I

    if-le v1, v2, :cond_0

    iget v1, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    new-array v0, v1, [B

    iget-object v1, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    iget v2, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    iget v1, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/obex/ApplicationParameter;->mMaxLength:I

    :cond_0
    iget-object v1, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    iget v2, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    aput-byte p1, v1, v2

    iget-object v1, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    iget v2, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    aput-byte p2, v1, v2

    iget-object v1, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    iget v2, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    invoke-static {p3, v4, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    add-int/2addr v1, p2

    iput v1, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    return-void
.end method

.method public getAPPparam()[B
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    new-array v0, v1, [B

    iget-object v1, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    iget v2, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
