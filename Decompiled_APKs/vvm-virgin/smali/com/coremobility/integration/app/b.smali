.class final Lcom/coremobility/integration/app/b;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/16 v5, 0x8a

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mounted"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/coremobility/integration/app/k;->E:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/e;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x89

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/app/e;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mounted"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/coremobility/integration/app/k;->E:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/e;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v5, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/app/e;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mounted"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/coremobility/integration/app/k;->E:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/e;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v5, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/app/e;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
