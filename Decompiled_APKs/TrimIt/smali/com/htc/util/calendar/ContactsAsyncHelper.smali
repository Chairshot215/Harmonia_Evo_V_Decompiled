.class public Lcom/htc/util/calendar/ContactsAsyncHelper;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/calendar/ContactsAsyncHelper$1;,
        Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerHandler;,
        Lcom/htc/util/calendar/ContactsAsyncHelper$ImageTracker;,
        Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;,
        Lcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_TOKEN:I = -0x1

.field private static final EVENT_LOAD_IMAGE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ContactsAsyncHelper"

.field private static sInstance:Lcom/htc/util/calendar/ContactsAsyncHelper;

.field private static sThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/htc/util/calendar/ContactsAsyncHelper;

    invoke-direct {v0}, Lcom/htc/util/calendar/ContactsAsyncHelper;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/ContactsAsyncHelper;->sInstance:Lcom/htc/util/calendar/ContactsAsyncHelper;

    .line 53
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 211
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 212
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 214
    new-instance v1, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerHandler;-><init>(Lcom/htc/util/calendar/ContactsAsyncHelper;Landroid/os/Looper;)V

    sput-object v1, Lcom/htc/util/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    .line 215
    return-void
.end method

.method public static final cancelUpdateImageView(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 335
    sget-object v0, Lcom/htc/util/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Lcom/htc/util/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 338
    :cond_0
    sget-object v0, Lcom/htc/util/calendar/ContactsAsyncHelper;->sInstance:Lcom/htc/util/calendar/ContactsAsyncHelper;

    if-eqz v0, :cond_1

    .line 339
    sget-object v0, Lcom/htc/util/calendar/ContactsAsyncHelper;->sInstance:Lcom/htc/util/calendar/ContactsAsyncHelper;

    invoke-virtual {v0, p0}, Lcom/htc/util/calendar/ContactsAsyncHelper;->removeMessages(I)V

    .line 341
    :cond_1
    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 8
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v0, 0x0

    .line 223
    const/4 v1, -0x1

    move-object v2, v0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/htc/util/calendar/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 225
    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 4
    .parameter "info"
    .parameter "token"
    .parameter "listener"
    .parameter "cookie"
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v3, 0x0

    .line 251
    if-nez p6, :cond_0

    .line 253
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 290
    :goto_0
    return-void

    .line 262
    :cond_0
    new-instance v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;-><init>(Lcom/htc/util/calendar/ContactsAsyncHelper$1;)V

    .line 263
    .local v0, args:Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;
    iput-object p3, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 264
    iput-object p4, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 265
    iput-object p5, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    .line 266
    iput-object p6, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    .line 267
    iput p7, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    .line 268
    iput-object p2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;

    .line 269
    iput-object p0, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    .line 272
    sget-object v2, Lcom/htc/util/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 273
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 274
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 281
    const/4 v2, -0x1

    if-eq p7, v2, :cond_1

    .line 282
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    :goto_1
    sget-object v2, Lcom/htc/util/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 285
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {p5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static final updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 8
    .parameter "info"
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v2, 0x0

    .line 234
    const/4 v1, -0x1

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/htc/util/calendar/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 236
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 297
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;

    .line 298
    .local v0, args:Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 300
    :pswitch_0
    const/4 v1, 0x0

    .line 304
    .local v1, imagePresent:Z
    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 305
    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v3, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    .line 309
    iget-object v3, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iput-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 311
    :cond_1
    const/4 v1, 0x1

    .line 318
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_3

    .line 319
    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 323
    :cond_3
    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;

    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v4, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v5, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;->onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 312
    :cond_4
    iget v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 313
    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget v3, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
