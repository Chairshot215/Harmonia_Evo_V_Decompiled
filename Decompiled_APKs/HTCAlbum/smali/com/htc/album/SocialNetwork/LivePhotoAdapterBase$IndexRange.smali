.class public Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;
.super Ljava/lang/Object;
.source "LivePhotoAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IndexRange"
.end annotation


# instance fields
.field public mIndexBegin:I

.field public mIndexEnd:I

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;


# direct methods
.method public constructor <init>(Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 65
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->this$0:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    .line 68
    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    return-void
.end method
