.class Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$1;
.super Landroid/os/Handler;
.source "MyContactLayerCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->setupHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$1;->this$0:Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 364
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 377
    :cond_0
    return-void

    .line 366
    :pswitch_0
    iget-object v2, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$1;->this$0:Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;

    #getter for: Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mLoadComplete:Z
    invoke-static {v2}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->access$100(Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$1;->this$0:Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;

    #getter for: Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mDetailLayerObservers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->access$300(Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/util/BaseDetailLayerObserver;

    .line 368
    .local v1, observer:Lcom/android/htccontacts/util/BaseDetailLayerObserver;
    if-eqz v1, :cond_1

    .line 369
    invoke-interface {v1}, Lcom/android/htccontacts/util/BaseDetailLayerObserver;->onDetailInfoInit()V

    goto :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method
