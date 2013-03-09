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

.field private static final EVENT_LOAD_IMAGE:I = 0x2

.field private static final EVENT_LOAD_THUMBNAIL_IMAGE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ContactsAsyncHelper"

.field private static sInstance:Lcom/htc/util/calendar/ContactsAsyncHelper;

.field private static sThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/util/calendar/ContactsAsyncHelper;

    invoke-direct {v0}, Lcom/htc/util/calendar/ContactsAsyncHelper;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/ContactsAsyncHelper;->sInstance:Lcom/htc/util/calendar/ContactsAsyncHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerHandler;-><init>(Lcom/htc/util/calendar/ContactsAsyncHelper;Landroid/os/Looper;)V

    sput-object v1, Lcom/htc/util/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final cancelUpdateImageView(I)V
    .locals 1

    sget-object v0, Lcom/htc/util/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-object v0, Lcom/htc/util/calendar/ContactsAsyncHelper;->sInstance:Lcom/htc/util/calendar/ContactsAsyncHelper;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/util/calendar/ContactsAsyncHelper;->sInstance:Lcom/htc/util/calendar/ContactsAsyncHelper;

    invoke-virtual {v0, p0}, Lcom/htc/util/calendar/ContactsAsyncHelper;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    move-object v2, v0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/htc/util/calendar/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/htc/util/calendar/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;IZ)V
    .locals 4

    const/4 v3, 0x0

    if-nez p6, :cond_0

    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;-><init>(Lcom/htc/util/calendar/ContactsAsyncHelper$1;)V

    iput-object p3, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object p4, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    iput-object p5, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iput-object p6, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    iput p7, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    iput-object p2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;

    iput-object p0, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    sget-object v2, Lcom/htc/util/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    if-eqz p8, :cond_1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    :goto_1
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eq p7, v2, :cond_2

    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    sget-object v2, Lcom/htc/util/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    invoke-virtual {p5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public static final updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, -0x1

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/htc/util/calendar/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;

    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x0

    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iput-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    :cond_3
    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;

    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v4, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v5, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;->onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V

    goto :goto_0

    :cond_4
    iget v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget v3, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
