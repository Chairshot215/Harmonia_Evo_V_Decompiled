.class Lcom/android/settings/NetSharingEnabler$1;
.super Ljava/lang/Object;
.source "NetSharingEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NetSharingEnabler;->toggleISState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NetSharingEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/NetSharingEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/settings/NetSharingEnabler$1;->this$0:Lcom/android/settings/NetSharingEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 317
    const/4 v1, 0x0

    .line 320
    .local v1, nRes:I
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler$1;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->tmpCommand:Z
    invoke-static {v2}, Lcom/android/settings/NetSharingEnabler;->access$000(Lcom/android/settings/NetSharingEnabler;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 321
    const-string v2, "NetSharing"

    const-string v3, "setNetSharing(1):"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v2, 0x1

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/NetSharingEnabler;->setNetSharing(ZLandroid/content/Context;)I

    move-result v1

    .line 325
    if-nez v1, :cond_1

    .line 328
    sget-boolean v2, Lcom/android/settings/NetSharingEnabler;->closing:Z

    if-nez v2, :cond_0

    .line 331
    const/4 v2, 0x1

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 332
    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler$1;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler$1;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 334
    const-string v2, "NetSharing"

    const-string v3, "send intent topic_tag-connections_internet-tethering"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "topic_tag-connections_internet-tethering"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler$1;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler$1;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 370
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 343
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-boolean v2, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v2, :cond_4

    .line 345
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/ModemLinkTypeEnabler;->Get_Connection_Type(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_3

    .line 347
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/NetSharingEnabler;->setNetSharing(ZLandroid/content/Context;)I

    .line 348
    const-string v2, "NetSharing"

    const-string v3, "setNetSharing(0)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :goto_1
    sget-boolean v2, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v2, :cond_0

    .line 363
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 364
    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler$1;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler$1;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 352
    :cond_3
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/NetSharingEnabler;->stopML(Landroid/content/Context;)V

    goto :goto_1

    .line 357
    :cond_4
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/NetSharingEnabler;->setNetSharing(ZLandroid/content/Context;)I

    .line 359
    const-string v2, "NetSharing"

    const-string v3, "setNetSharing(0)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
