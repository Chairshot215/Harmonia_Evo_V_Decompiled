.class Lcom/google/android/googlequicksearchbox/google/LocationHelper$LocationHandler;
.super Landroid/os/Handler;
.source "LocationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/google/LocationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/LocationHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/google/LocationHelper;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelper$LocationHandler;->this$0:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    .line 72
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 76
    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelper$LocationHandler;->this$0:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->stopListening()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationHelper$LocationHandler;->this$0:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    #calls: Lcom/google/android/googlequicksearchbox/google/LocationHelper;->notifyLocationChanged()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->access$000(Lcom/google/android/googlequicksearchbox/google/LocationHelper;)V

    goto :goto_0
.end method
