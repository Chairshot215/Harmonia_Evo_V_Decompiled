.class Lcom/android/mms/ui/GifPresenter$DecodeThread;
.super Ljava/lang/Thread;
.source "GifPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/GifPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/GifPresenter;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/GifPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/GifPresenter;Lcom/android/mms/ui/GifPresenter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/mms/ui/GifPresenter$DecodeThread;-><init>(Lcom/android/mms/ui/GifPresenter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 173
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 174
    .local v2, durations:[I
    new-array v1, v10, [Landroid/graphics/Bitmap;

    .line 175
    .local v1, bitmaps:[Landroid/graphics/Bitmap;
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #getter for: Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I
    invoke-static {v4}, Lcom/android/mms/ui/GifPresenter;->access$100(Lcom/android/mms/ui/GifPresenter;)I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #getter for: Lcom/android/mms/ui/GifPresenter;->mFrameCount:I
    invoke-static {v5}, Lcom/android/mms/ui/GifPresenter;->access$200(Lcom/android/mms/ui/GifPresenter;)I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #getter for: Lcom/android/mms/ui/GifPresenter;->mStop:Z
    invoke-static {v4}, Lcom/android/mms/ui/GifPresenter;->access$300(Lcom/android/mms/ui/GifPresenter;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 176
    iget-object v4, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #getter for: Lcom/android/mms/ui/GifPresenter;->mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;
    invoke-static {v4}, Lcom/android/mms/ui/GifPresenter;->access$400(Lcom/android/mms/ui/GifPresenter;)Lcom/android/mms/ui/GifView$FrameByFrameData;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #getter for: Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I
    invoke-static {v5}, Lcom/android/mms/ui/GifPresenter;->access$100(Lcom/android/mms/ui/GifPresenter;)I

    move-result v5

    invoke-virtual {v4, v5, v1, v2}, Lcom/android/mms/ui/GifView$FrameByFrameData;->decode(I[Landroid/graphics/Bitmap;[I)Z

    move-result v0

    .line 177
    .local v0, bRes:Z
    if-eqz v0, :cond_7

    .line 178
    iget-object v5, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    monitor-enter v5

    .line 181
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #getter for: Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I
    invoke-static {v4}, Lcom/android/mms/ui/GifPresenter;->access$100(Lcom/android/mms/ui/GifPresenter;)I

    move-result v4

    iget-object v6, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #getter for: Lcom/android/mms/ui/GifPresenter;->mCurrentDispPos:I
    invoke-static {v6}, Lcom/android/mms/ui/GifPresenter;->access$500(Lcom/android/mms/ui/GifPresenter;)I

    move-result v6

    if-gt v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #getter for: Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I
    invoke-static {v4}, Lcom/android/mms/ui/GifPresenter;->access$100(Lcom/android/mms/ui/GifPresenter;)I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #getter for: Lcom/android/mms/ui/GifPresenter;->mCurrentDispPos:I
    invoke-static {v4}, Lcom/android/mms/ui/GifPresenter;->access$500(Lcom/android/mms/ui/GifPresenter;)I

    move-result v4

    if-lez v4, :cond_3

    .line 183
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #getter for: Lcom/android/mms/ui/GifPresenter;->mStop:Z
    invoke-static {v4}, Lcom/android/mms/ui/GifPresenter;->access$300(Lcom/android/mms/ui/GifPresenter;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
    const-string v4, "GifPresenter"

    const-string v6, "quit DecodeThread"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    .end local v0           #bRes:Z
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #setter for: Lcom/android/mms/ui/GifPresenter;->mStop:Z
    invoke-static {v4, v10}, Lcom/android/mms/ui/GifPresenter;->access$302(Lcom/android/mms/ui/GifPresenter;Z)Z

    .line 220
    const-string v4, "GifPresenter"

    const-string v5, "DecodeThread terminated."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void

    .line 187
    .restart local v0       #bRes:Z
    :cond_2
    :try_start_2
    const-string v4, "GifPresenter"

    const-string v6, "Before DecodeThread\'s wait()"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v4, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 189
    const-string v4, "GifPresenter"

    const-string v6, "After DecodeThread\'s wait()"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #getter for: Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I
    invoke-static {v4}, Lcom/android/mms/ui/GifPresenter;->access$100(Lcom/android/mms/ui/GifPresenter;)I

    move-result v4

    if-nez v4, :cond_5

    .line 194
    const-string v4, "GifPresenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "frame count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #getter for: Lcom/android/mms/ui/GifPresenter;->mFrameCount:I
    invoke-static {v7}, Lcom/android/mms/ui/GifPresenter;->access$200(Lcom/android/mms/ui/GifPresenter;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v4, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #getter for: Lcom/android/mms/ui/GifPresenter;->mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;
    invoke-static {v4}, Lcom/android/mms/ui/GifPresenter;->access$400(Lcom/android/mms/ui/GifPresenter;)Lcom/android/mms/ui/GifView$FrameByFrameData;

    move-result-object v4

    iget-object v6, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #getter for: Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I
    invoke-static {v6}, Lcom/android/mms/ui/GifPresenter;->access$100(Lcom/android/mms/ui/GifPresenter;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/GifView$FrameByFrameData;->getFrameRect(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 196
    .local v3, size:Landroid/graphics/Rect;
    if-eqz v3, :cond_4

    .line 197
    iget-object v4, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    iget-object v6, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #calls: Lcom/android/mms/ui/GifPresenter;->countSampling(Landroid/graphics/Rect;)[I
    invoke-static {v6, v3}, Lcom/android/mms/ui/GifPresenter;->access$600(Lcom/android/mms/ui/GifPresenter;Landroid/graphics/Rect;)[I

    move-result-object v6

    iput-object v6, v4, Lcom/android/mms/ui/GifPresenter;->newSize:[I

    .line 199
    :cond_4
    const-string v4, "GifPresenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new w "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    iget-object v7, v7, Lcom/android/mms/ui/GifPresenter;->newSize:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", new h "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    iget-object v7, v7, Lcom/android/mms/ui/GifPresenter;->newSize:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v3           #size:Landroid/graphics/Rect;
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    iget-object v7, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    iget-object v7, v7, Lcom/android/mms/ui/GifPresenter;->newSize:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    iget-object v8, v8, Lcom/android/mms/ui/GifPresenter;->newSize:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    #setter for: Lcom/android/mms/ui/GifPresenter;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v6}, Lcom/android/mms/ui/GifPresenter;->access$702(Lcom/android/mms/ui/GifPresenter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 203
    iget-object v4, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    const/4 v6, 0x0

    aget v6, v2, v6

    #setter for: Lcom/android/mms/ui/GifPresenter;->mCurrentBmpDuration:I
    invoke-static {v4, v6}, Lcom/android/mms/ui/GifPresenter;->access$802(Lcom/android/mms/ui/GifPresenter;I)I

    .line 204
    iget-object v4, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    invoke-static {v4}, Lcom/android/mms/ui/GifPresenter;->access$104(Lcom/android/mms/ui/GifPresenter;)I

    .line 205
    const-string v4, "GifPresenter"

    const-string v6, "Before DecodeThread\'s notify()"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v4, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 207
    const-string v4, "GifPresenter"

    const-string v6, "After DecodeThread\'s notify()"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v4, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #getter for: Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I
    invoke-static {v4}, Lcom/android/mms/ui/GifPresenter;->access$100(Lcom/android/mms/ui/GifPresenter;)I

    move-result v4

    iget-object v6, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #getter for: Lcom/android/mms/ui/GifPresenter;->mFrameCount:I
    invoke-static {v6}, Lcom/android/mms/ui/GifPresenter;->access$200(Lcom/android/mms/ui/GifPresenter;)I

    move-result v6

    if-lt v4, v6, :cond_6

    .line 209
    iget-object v4, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    const/4 v6, 0x0

    #setter for: Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I
    invoke-static {v4, v6}, Lcom/android/mms/ui/GifPresenter;->access$102(Lcom/android/mms/ui/GifPresenter;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 213
    :cond_6
    :goto_1
    :try_start_3
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 216
    :cond_7
    const-string v4, "GifPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to decode the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/GifPresenter$DecodeThread;->this$0:Lcom/android/mms/ui/GifPresenter;

    #getter for: Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I
    invoke-static {v6}, Lcom/android/mms/ui/GifPresenter;->access$100(Lcom/android/mms/ui/GifPresenter;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "frame."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 211
    :catch_0
    move-exception v4

    goto :goto_1
.end method
