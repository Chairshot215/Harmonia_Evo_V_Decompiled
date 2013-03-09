.class Lcom/android/providers/contacts/HtcContactsProvider2$9;
.super Landroid/content/BroadcastReceiver;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;->initSocialNetworkSyncFinishReciever()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HtcContactsProvider2;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/HtcContactsProvider2;)V
    .locals 0
    .parameter

    .prologue
    .line 11265
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$9;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 11270
    if-nez p2, :cond_1

    .line 11304
    :cond_0
    :goto_0
    return-void

    .line 11272
    :cond_1
    const-string v2, "com.htc.opensense.provider.intent.EXTRA_RESULT"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 11280
    .local v0, bRESULT:Z
    const-string v2, "com.htc.opensense.provider.intent.EXTRA_ACCOUNT_TYPE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11286
    .local v1, sACCOUNT_TYPE:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11288
    const-string v2, "com.htc.socialnetwork.facebook"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11290
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$9;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->checkMergedFacebookLargeContactPhoto()V
    invoke-static {v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2500(Lcom/android/providers/contacts/HtcContactsProvider2;)V

    goto :goto_0

    .line 11291
    :cond_2
    const-string v2, "com.htc.socialnetwork.flickr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11293
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$9;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const-string v3, "flickr"

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->insertSocialNetworkSmallContactPhoto(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$100(Lcom/android/providers/contacts/HtcContactsProvider2;Ljava/lang/String;)V

    goto :goto_0

    .line 11294
    :cond_3
    const-string v2, "com.htc.htctwitter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11296
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$9;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const-string v3, "twitter"

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->insertSocialNetworkSmallContactPhoto(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$100(Lcom/android/providers/contacts/HtcContactsProvider2;Ljava/lang/String;)V

    goto :goto_0

    .line 11297
    :cond_4
    const-string v2, "com.htc.socialnetwork.plurk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 11299
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$9;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const-string v3, "plurk"

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->insertSocialNetworkSmallContactPhoto(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$100(Lcom/android/providers/contacts/HtcContactsProvider2;Ljava/lang/String;)V

    goto :goto_0

    .line 11300
    :cond_5
    const-string v2, "com.facebook.auth.login"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11302
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$9;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const-string v3, "com.facebook.auth.login"

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->syncSocialNetworkInfo(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2600(Lcom/android/providers/contacts/HtcContactsProvider2;Ljava/lang/String;)V

    goto :goto_0
.end method
