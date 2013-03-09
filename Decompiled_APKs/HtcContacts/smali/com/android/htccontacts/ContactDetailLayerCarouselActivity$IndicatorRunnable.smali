.class Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;
.super Ljava/lang/Object;
.source "ContactDetailLayerCarouselActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndicatorRunnable"
.end annotation


# instance fields
.field private result:Lcom/android/htccontacts/indicator/IndicatorResult;

.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;Lcom/android/htccontacts/indicator/IndicatorResult;)V
    .locals 0
    .parameter
    .parameter "result"

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1282
    iput-object p2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;->result:Lcom/android/htccontacts/indicator/IndicatorResult;

    .line 1283
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1286
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v1

    .line 1289
    .local v1, tabHost:Lcom/htc/widget/CarouselHost;
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;->result:Lcom/android/htccontacts/indicator/IndicatorResult;

    const-string v4, "MESSAGE"

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/indicator/IndicatorResult;->getCount(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->MESSAGE_UNREAD_COUNT:I

    .line 1290
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;->result:Lcom/android/htccontacts/indicator/IndicatorResult;

    const-string v4, "EMAIL"

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/indicator/IndicatorResult;->getCount(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->MAIL_UNREAD_COUNT:I

    .line 1292
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget v0, v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->MESSAGE_UNREAD_COUNT:I

    .line 1293
    .local v0, count:I
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget v2, v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->MAIL_UNREAD_COUNT:I

    add-int/2addr v0, v2

    .line 1294
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    const-string v4, "PEOPLE_DETAIL_TAG_COMMUNICATION"

    #calls: Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$100(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->updateCount(Lcom/htc/widget/CarouselHost;Ljava/lang/String;I)V
    invoke-static {v2, v1, v3, v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$1200(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;Lcom/htc/widget/CarouselHost;Ljava/lang/String;I)V

    .line 1296
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;->result:Lcom/android/htccontacts/indicator/IndicatorResult;

    const-string v3, "SOCIAL_NETWORK"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/indicator/IndicatorResult;->getCount(Ljava/lang/String;)I

    move-result v0

    .line 1297
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;->result:Lcom/android/htccontacts/indicator/IndicatorResult;

    const-string v3, "EVENT"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/indicator/IndicatorResult;->getCount(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1298
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    const-string v4, "PEOPLE_DETAIL_UPDATES_N_EVENTS"

    #calls: Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$100(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->updateCount(Lcom/htc/widget/CarouselHost;Ljava/lang/String;I)V
    invoke-static {v2, v1, v3, v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$1200(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;Lcom/htc/widget/CarouselHost;Ljava/lang/String;I)V

    .line 1299
    return-void
.end method
