.class Lcom/google/android/talk/PictureCache$WorkItem;
.super Ljava/lang/Object;
.source "PictureCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/PictureCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WorkItem"
.end annotation


# instance fields
.field mCache:Lcom/google/android/talk/PictureCache$BitmapCache;

.field mDesiredBitmapHeight:I

.field mDesiredBitmapWidth:I

.field mPictureLoadedMessage:Landroid/os/Message;

.field mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/talk/PictureCache;


# direct methods
.method constructor <init>(Lcom/google/android/talk/PictureCache;Ljava/lang/String;Lcom/google/android/talk/PictureCache$BitmapCache;IILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter "url"
    .parameter "cache"
    .parameter "bitmapWidth"
    .parameter "bitmapHeight"
    .parameter "message"

    .prologue
    .line 838
    iput-object p1, p0, Lcom/google/android/talk/PictureCache$WorkItem;->this$0:Lcom/google/android/talk/PictureCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    iput-object p2, p0, Lcom/google/android/talk/PictureCache$WorkItem;->mUrl:Ljava/lang/String;

    .line 840
    iput-object p3, p0, Lcom/google/android/talk/PictureCache$WorkItem;->mCache:Lcom/google/android/talk/PictureCache$BitmapCache;

    .line 841
    iput p4, p0, Lcom/google/android/talk/PictureCache$WorkItem;->mDesiredBitmapWidth:I

    .line 842
    iput p5, p0, Lcom/google/android/talk/PictureCache$WorkItem;->mDesiredBitmapHeight:I

    .line 845
    if-eqz p6, :cond_0

    iget-object v0, p6, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 846
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 848
    :cond_0
    iput-object p6, p0, Lcom/google/android/talk/PictureCache$WorkItem;->mPictureLoadedMessage:Landroid/os/Message;

    .line 849
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "other"

    .prologue
    .line 853
    move-object v0, p1

    check-cast v0, Lcom/google/android/talk/PictureCache$WorkItem;

    .line 854
    .local v0, otherWorkItem:Lcom/google/android/talk/PictureCache$WorkItem;
    iget-object v1, v0, Lcom/google/android/talk/PictureCache$WorkItem;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/talk/PictureCache$WorkItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/google/android/talk/PictureCache$WorkItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
