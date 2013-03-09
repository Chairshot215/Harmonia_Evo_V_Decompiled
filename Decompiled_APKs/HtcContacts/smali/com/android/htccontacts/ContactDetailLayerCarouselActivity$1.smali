.class Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 154
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.mms.ACTION_MESSAGE_TAB_ENTER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    const/4 v3, 0x1

    #setter for: Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIsMessageTabSelected:Z
    invoke-static {v2, v3}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$002(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;Z)Z

    .line 160
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v1

    .line 161
    .local v1, tabHost:Lcom/htc/widget/CarouselHost;
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    const-string v3, "PEOPLE_DETAIL_MESSAGE"

    #calls: Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$100(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/htc/widget/CarouselHost;->setCountVisibility(Ljava/lang/String;Z)V

    .line 162
    const-string v2, "t"

    const-string v3, "Message tab selected - set message bubble function off"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v1           #tabHost:Lcom/htc/widget/CarouselHost;
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string v2, "com.android.mms.ACTION_MESSAGE_TAB_LEAVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    #setter for: Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIsMessageTabSelected:Z
    invoke-static {v2, v4}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$002(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;Z)Z

    .line 166
    const-string v2, "t"

    const-string v3, "Message tab unselected - restore message bubble function"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
