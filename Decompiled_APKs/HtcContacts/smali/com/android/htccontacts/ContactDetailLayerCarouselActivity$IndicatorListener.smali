.class Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorListener;
.super Ljava/lang/Object;
.source "ContactDetailLayerCarouselActivity.java"

# interfaces
.implements Lcom/android/htccontacts/indicator/IndicatorResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndicatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorListener;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1315
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorListener;-><init>(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)V

    return-void
.end method


# virtual methods
.method public onIndicatorResult(Lcom/android/htccontacts/indicator/IndicatorResult;)V
    .locals 7
    .parameter "result"

    .prologue
    const-wide/16 v5, -0x1

    .line 1317
    invoke-virtual {p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 1318
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 1333
    :goto_0
    return-void

    .line 1320
    :cond_0
    invoke-static {}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ContactDetailLayerCarouselActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contactId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "contactId"

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorListener;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-wide v1, v1, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    const-string v3, "contactId"

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 1323
    const-string v1, "ContactDetailLayerCarouselActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indicator contactId verification failed - mInfo.id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorListener;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v3, v3, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-wide v3, v3, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bundle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "contactId"

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1327
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorListener;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-boolean v1, v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mDestroyed:Z

    if-nez v1, :cond_3

    .line 1328
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorListener;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorListener;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-direct {v2, v3, p1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;-><init>(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;Lcom/android/htccontacts/indicator/IndicatorResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1331
    :cond_3
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorListener;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getStatuses()Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mLatestStatus:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$502(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1332
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorListener;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorListener;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v2, v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x44e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public onPublishResult(Lcom/android/htccontacts/indicator/IndicatorResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1336
    return-void
.end method
