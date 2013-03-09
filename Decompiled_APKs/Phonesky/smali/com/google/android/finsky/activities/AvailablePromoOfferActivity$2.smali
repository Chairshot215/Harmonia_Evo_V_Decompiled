.class Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;
.super Ljava/lang/Object;
.source "AvailablePromoOfferActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

.field final synthetic val$noActionMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;->val$noActionMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 197
    iget-object v1, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    const-string v2, "promoOfferSkip"

    #calls: Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->logAnalytics(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->access$000(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;->val$noActionMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;->val$noActionMessage:Ljava/lang/String;

    const v2, 0x7f07019f

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(Ljava/lang/String;II)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 201
    .local v0, sad:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    const/16 v1, 0x65

    invoke-virtual {v0, v4, v1, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 202
    iget-object v1, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "no_action_message"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 206
    .end local v0           #sad:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    #calls: Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->setResultAndFinish()V
    invoke-static {v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->access$300(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;)V

    goto :goto_0
.end method
