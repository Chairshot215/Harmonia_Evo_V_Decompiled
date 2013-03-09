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
    .parameter
    .parameter "looper"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/htc/util/calendar/ContactsAsyncHelper;

    .line 162
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 163
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    .line 167
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;

    .line 169
    .local v0, args:Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;
    iget v7, p1, Landroid/os/Message;->arg1:I

    packed-switch v7, :pswitch_data_0

    .line 201
    :goto_0
    iget-object v7, p0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/htc/util/calendar/ContactsAsyncHelper;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Lcom/htc/util/calendar/ContactsAsyncHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 202
    .local v5, reply:Landroid/os/Message;
    iget v7, p1, Landroid/os/Message;->arg1:I

    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 203
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 204
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 205
    return-void

    .line 172
    .end local v5           #reply:Landroid/os/Message;
    :pswitch_0
    const/4 v6, 0x0

    .line 173
    .local v6, thumbnailIcon:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 175
    .local v4, loaded:Z
    :try_start_0
    iget-object v7, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 176
    .local v1, contactId:J
    const/4 v7, 0x0

    iget-object v8, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v1, v2, v7, v8}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 179
    const/4 v4, 0x1

    .line 184
    .end local v1           #contactId:J
    :goto_1
    if-eqz v4, :cond_1

    .line 185
    if-nez v6, :cond_0

    .line 186
    iput-object v10, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    .line 187
    const-string v7, "ContactsAsyncHelper"

    const-string v8, "loadContactThumbnail is null..."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :catch_0
    move-exception v3

    .line 181
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "ContactsAsyncHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadContactThumbnail exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 189
    .end local v3           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v7, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    .line 192
    :cond_1
    iput-object v10, v0, Lcom/htc/util/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    .line 193
    const-string v7, "ContactsAsyncHelper"

    const-string v8, "loadContactThumbnail fail..."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
