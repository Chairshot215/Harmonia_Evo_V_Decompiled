.class final Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Request"
.end annotation


# instance fields
.field private final mDarkTheme:Z

.field private final mDefaultProvider:Lcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;

.field private final mHires:Z

.field private final mId:J

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(JLandroid/net/Uri;ZZLcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;)V
    .locals 0
    .parameter "id"
    .parameter "uri"
    .parameter "hires"
    .parameter "darkTheme"
    .parameter "defaultProvider"

    .prologue
    .line 873
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 874
    iput-wide p1, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mId:J

    .line 875
    iput-object p3, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    .line 876
    iput-boolean p5, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mDarkTheme:Z

    .line 877
    iput-boolean p4, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mHires:Z

    .line 878
    iput-object p6, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mDefaultProvider:Lcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;

    .line 879
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 865
    iget-wide v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mId:J

    return-wide v0
.end method

.method public static createFromId(JZZLcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;)Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;
    .locals 7
    .parameter "id"
    .parameter "hires"
    .parameter "darkTheme"
    .parameter "defaultProvider"

    .prologue
    .line 883
    new-instance v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;

    const/4 v3, 0x0

    move-wide v1, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;-><init>(JLandroid/net/Uri;ZZLcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;)V

    return-object v0
.end method

.method public static createFromUri(Landroid/net/Uri;ZZLcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;)Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;
    .locals 7
    .parameter "uri"
    .parameter "hires"
    .parameter "darkTheme"
    .parameter "defaultProvider"

    .prologue
    .line 888
    new-instance v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;

    const-wide/16 v1, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;-><init>(JLandroid/net/Uri;ZZLcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;)V

    return-object v0
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mDefaultProvider:Lcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;

    iget-boolean v1, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mHires:Z

    iget-boolean v2, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mDarkTheme:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;ZZ)V

    .line 928
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 913
    instance-of v2, p1, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;

    if-nez v2, :cond_1

    .line 919
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 914
    check-cast v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;

    .line 919
    .local v0, that:Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;
    iget-wide v2, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mId:J

    iget-wide v4, v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/htccontacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    .line 908
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mId:J

    iget-wide v2, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public isDarkTheme()Z
    .locals 1

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mDarkTheme:Z

    return v0
.end method

.method public isHires()Z
    .locals 1

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mHires:Z

    return v0
.end method

.method public isUriRequest()Z
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
