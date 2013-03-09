.class Lcom/google/android/talk/AvatarCache$WorkItem;
.super Ljava/lang/Object;
.source "AvatarCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AvatarCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WorkItem"
.end annotation


# instance fields
.field mAccountId:J

.field mAvatarData:[B

.field mAvatarHash:Ljava/lang/String;

.field mAvatarLoadedMessage:Landroid/os/Message;

.field mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

.field mUsername:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/talk/AvatarCache;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AvatarCache;Ljava/lang/String;[BLjava/lang/String;JLcom/google/android/talk/AvatarCache$BitmapCache;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter "username"
    .parameter "avatarData"
    .parameter "avatarHash"
    .parameter "accountId"
    .parameter "cache"
    .parameter "message"

    .prologue
    .line 543
    iput-object p1, p0, Lcom/google/android/talk/AvatarCache$WorkItem;->this$0:Lcom/google/android/talk/AvatarCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-object p3, p0, Lcom/google/android/talk/AvatarCache$WorkItem;->mAvatarData:[B

    .line 545
    iput-object p4, p0, Lcom/google/android/talk/AvatarCache$WorkItem;->mAvatarHash:Ljava/lang/String;

    .line 546
    iput-object p2, p0, Lcom/google/android/talk/AvatarCache$WorkItem;->mUsername:Ljava/lang/String;

    .line 547
    iput-wide p5, p0, Lcom/google/android/talk/AvatarCache$WorkItem;->mAccountId:J

    .line 548
    iput-object p7, p0, Lcom/google/android/talk/AvatarCache$WorkItem;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    .line 551
    if-eqz p8, :cond_0

    iget-object v0, p8, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 554
    :cond_0
    iput-object p8, p0, Lcom/google/android/talk/AvatarCache$WorkItem;->mAvatarLoadedMessage:Landroid/os/Message;

    .line 555
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    .line 559
    move-object v0, p1

    check-cast v0, Lcom/google/android/talk/AvatarCache$WorkItem;

    .line 560
    .local v0, otherWorkItem:Lcom/google/android/talk/AvatarCache$WorkItem;
    iget-object v1, v0, Lcom/google/android/talk/AvatarCache$WorkItem;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/talk/AvatarCache$WorkItem;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/google/android/talk/AvatarCache$WorkItem;->mAccountId:J

    iget-wide v3, p0, Lcom/google/android/talk/AvatarCache$WorkItem;->mAccountId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/talk/AvatarCache$WorkItem;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
