.class Lcom/android/mms/MessagesCustomizeService$ServiceHandler;
.super Landroid/os/Handler;
.source "MessagesCustomizeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/MessagesCustomizeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceHandler"
.end annotation


# instance fields
.field private mservice:Landroid/app/Service;

.field final synthetic this$0:Lcom/android/mms/MessagesCustomizeService;


# direct methods
.method public constructor <init>(Lcom/android/mms/MessagesCustomizeService;Landroid/os/Looper;Landroid/app/Service;)V
    .locals 1
    .parameter
    .parameter "looper"
    .parameter "service"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/mms/MessagesCustomizeService$ServiceHandler;->this$0:Lcom/android/mms/MessagesCustomizeService;

    .line 275
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/MessagesCustomizeService$ServiceHandler;->mservice:Landroid/app/Service;

    .line 276
    iput-object p3, p0, Lcom/android/mms/MessagesCustomizeService$ServiceHandler;->mservice:Landroid/app/Service;

    .line 277
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 286
    invoke-static {}, Lcom/android/mms/MessagesCustomizeService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const-string v1, "Cust_MMSMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "4-Handling incoming message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 303
    const-string v1, "Cust_MMSMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_0
    return-void

    .line 293
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 294
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/MessagesCustomizeService$ServiceHandler;->this$0:Lcom/android/mms/MessagesCustomizeService;

    invoke-virtual {v1, v0}, Lcom/android/mms/MessagesCustomizeService;->doInBackground(Landroid/content/Intent;)V

    .line 295
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/mms/MessagesCustomizeService$ServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 298
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/MessagesCustomizeService$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 299
    iget-object v1, p0, Lcom/android/mms/MessagesCustomizeService$ServiceHandler;->mservice:Landroid/app/Service;

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    .line 300
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/MessagesCustomizeService$ServiceHandler;->mservice:Landroid/app/Service;

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
