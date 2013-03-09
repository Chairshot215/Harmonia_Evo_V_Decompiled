.class Lcom/htc/music/util/MusicUtils$ServiceOwner;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceOwner"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mId:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/htc/music/util/MusicUtils$ServiceOwner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mId:Ljava/lang/String;

    check-cast p1, Lcom/htc/music/util/MusicUtils$ServiceOwner;

    iget-object v1, p1, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
