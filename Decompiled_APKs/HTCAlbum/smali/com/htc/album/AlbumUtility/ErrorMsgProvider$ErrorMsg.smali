.class public Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;
.super Ljava/lang/Object;
.source "ErrorMsgProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumUtility/ErrorMsgProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorMsg"
.end annotation


# instance fields
.field mIcon:I

.field mResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const v0, 0x20c01e6

    iput v0, p0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->mResId:I

    .line 26
    const v0, 0x20802cc

    iput v0, p0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->mIcon:I

    .line 27
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "resId"
    .parameter "icon"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const v0, 0x20c01e6

    iput v0, p0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->mResId:I

    .line 26
    const v0, 0x20802cc

    iput v0, p0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->mIcon:I

    .line 30
    iput p1, p0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->mResId:I

    .line 31
    iput p2, p0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->mIcon:I

    .line 32
    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->mIcon:I

    return v0
.end method

.method public getMsg()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->mResId:I

    return v0
.end method
