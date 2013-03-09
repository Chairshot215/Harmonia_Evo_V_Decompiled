.class Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;
.super Landroid/os/Handler;
.source "ContactDetailLayerCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 175
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 179
    :sswitch_0
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v2, v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v2, v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-object v2, v2, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    #calls: Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->handleContactNotFound()V
    invoke-static {v2}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$200(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v2, v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    invoke-virtual {v2}, Lcom/android/htccontacts/HtcContactInfoBase;->isUnknownType()Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I
    invoke-static {v3}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$300(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 189
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v2, v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    if-nez v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    new-instance v3, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    invoke-direct {v3}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;-><init>()V

    iput-object v3, v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->updateIndicator()V

    goto :goto_0

    .line 199
    :sswitch_1
    invoke-static {}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$400()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ContactDetailLayerCarouselActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_NOTIFY_URI_READY - update count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mLatestStatus:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$500(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", observer count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    #getter for: Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mDetailLayerObservers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$600(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_3
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mLatestStatus:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$500(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    #getter for: Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mDetailLayerObservers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$700(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/util/BaseDetailLayerObserver;

    .line 202
    .local v1, observer:Lcom/android/htccontacts/util/BaseDetailLayerObserver;
    instance-of v2, v1, Lcom/android/htccontacts/util/ContactDetailLayerObserver;

    if-eqz v2, :cond_4

    .line 203
    check-cast v1, Lcom/android/htccontacts/util/ContactDetailLayerObserver;

    .end local v1           #observer:Lcom/android/htccontacts/util/BaseDetailLayerObserver;
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mLatestStatus:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$500(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/htccontacts/util/ContactDetailLayerObserver;->updateStatusResult(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 210
    .end local v0           #i$:Ljava/util/Iterator;
    :sswitch_2
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    #getter for: Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mDetailLayerObservers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$800(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/util/BaseDetailLayerObserver;

    .line 211
    .restart local v1       #observer:Lcom/android/htccontacts/util/BaseDetailLayerObserver;
    invoke-interface {v1}, Lcom/android/htccontacts/util/BaseDetailLayerObserver;->onDetailInfoInit()V

    goto :goto_2

    .line 176
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x44e -> :sswitch_1
        0x44f -> :sswitch_2
    .end sparse-switch
.end method
