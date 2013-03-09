.class Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/calendar/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/util/calendar/ContactsAsyncHelper;


# direct methods
.method public constructor <init>(Lcom/htc/util/calendar/ContactsAsyncHelper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/htc/util/calendar/ContactsAsyncHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v11, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;

    iget v8, p1, Landroid/os/Message;->arg1:I

    packed-switch v8, :pswitch_data_0

    :goto_0
    iget-object v8, p0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/htc/util/calendar/ContactsAsyncHelper;

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Lcom/htc/util/calendar/ContactsAsyncHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget v8, p1, Landroid/os/Message;->arg1:I

    iput v8, v6, Landroid/os/Message;->arg1:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v8, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_0
    const/4 v7, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v8, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v1, v2, v8, v9}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_1

    if-nez v7, :cond_0

    iput-object v11, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    const-string v8, "ContactsAsyncHelper"

    const-string v9, "loadContactThumbnail is null..."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v8, "ContactsAsyncHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadContactThumbnail exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v8, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v11, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    const-string v8, "ContactsAsyncHelper"

    const-string v9, "loadContactThumbnail fail..."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x0

    :try_start_1
    iget-object v8, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_2

    iget-object v8, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-string v8, "ContactsAsyncHelper"

    const-string v9, "Error opening photo input stream"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    iput-object v11, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
