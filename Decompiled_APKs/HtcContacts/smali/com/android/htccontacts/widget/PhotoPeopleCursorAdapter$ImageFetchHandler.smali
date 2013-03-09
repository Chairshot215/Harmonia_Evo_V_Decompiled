.class Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$ImageFetchHandler;
.super Landroid/os/Handler;
.source "PhotoPeopleCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageFetchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$ImageFetchHandler;->this$0:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$ImageFetchHandler;-><init>(Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;)V

    return-void
.end method


# virtual methods
.method public clearImageFecthing()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$ImageFetchHandler;->removeMessages(I)V

    .line 130
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "message"

    .prologue
    .line 74
    iget-object v9, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$ImageFetchHandler;->this$0:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;

    #getter for: Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;
    invoke-static {v9}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->access$000(Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    if-nez v9, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v9, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$ImageFetchHandler;->this$0:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;

    #getter for: Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;
    invoke-static {v9}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->access$000(Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 79
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_0

    .line 84
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/widget/ImageView;

    .line 87
    .local v5, imageView:Landroid/widget/ImageView;
    if-eqz v5, :cond_0

    .line 91
    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;

    .line 92
    .local v6, info:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;
    if-eqz v6, :cond_0

    .line 96
    iget-wide v1, v6, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;->contactId:J

    .line 97
    .local v1, contactId:J
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-eqz v9, :cond_0

    .line 101
    const/4 v7, 0x0

    .line 104
    .local v7, photo:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v1, v2, v9}, Lcom/android/htccontacts/util/PhotoUtils;->loadContactThumbnail(JLandroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 108
    :goto_1
    if-eqz v7, :cond_0

    .line 112
    iget-object v9, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$ImageFetchHandler;->this$0:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;

    #getter for: Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mBitmapCache:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->access$100(Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-instance v11, Ljava/lang/ref/SoftReference;

    invoke-direct {v11, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    monitor-enter v5

    .line 117
    :try_start_1
    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;

    .line 118
    .local v8, updatedInfo:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;
    iget-wide v3, v8, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;->photoId:J

    .line 119
    .local v3, currentContactId:J
    cmp-long v9, v3, v1

    if-nez v9, :cond_2

    .line 120
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    iget-object v9, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$ImageFetchHandler;->this$0:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;

    #getter for: Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mItemsMissingImages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->access$200(Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 123
    :cond_2
    monitor-exit v5

    goto :goto_0

    .end local v3           #currentContactId:J
    .end local v8           #updatedInfo:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;
    :catchall_0
    move-exception v9

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 105
    :catch_0
    move-exception v9

    goto :goto_1

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
