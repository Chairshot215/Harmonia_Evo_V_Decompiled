.class Lcom/android/settings/framework/app/HtcIntentService$InternalServiceHandler;
.super Lcom/android/settings/framework/app/HtcServiceHandler;
.source "HtcIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcIntentService;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/app/HtcIntentService;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcIntentService$InternalServiceHandler;->this$0:Lcom/android/settings/framework/app/HtcIntentService;

    .line 43
    invoke-direct {p0, p2, p3}, Lcom/android/settings/framework/app/HtcServiceHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 44
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcServiceHandler;->handleMessage(Landroid/os/Message;)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcIntentService$InternalServiceHandler;->this$0:Lcom/android/settings/framework/app/HtcIntentService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/app/HtcIntentService;->stopSelf(I)V

    .line 54
    return-void
.end method
