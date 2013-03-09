.class Lcom/android/mms/view/impl/NotificationViewImpl$3;
.super Ljava/lang/Object;
.source "NotificationViewImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/view/impl/NotificationViewImpl;->setDownloading(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/view/impl/NotificationViewImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/NotificationViewImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/mms/view/impl/NotificationViewImpl$3;->this$0:Lcom/android/mms/view/impl/NotificationViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x2

    .line 219
    iget-object v2, p0, Lcom/android/mms/view/impl/NotificationViewImpl$3;->this$0:Lcom/android/mms/view/impl/NotificationViewImpl;

    #getter for: Lcom/android/mms/view/impl/NotificationViewImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/view/impl/NotificationViewImpl;->access$000(Lcom/android/mms/view/impl/NotificationViewImpl;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v4, v3}, Lcom/android/mms/ui/MessageUtils;->isNetworkAvailable(Landroid/content/Context;IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 222
    .local v1, sp:Landroid/content/SharedPreferences;
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 225
    .local v0, roamingRetrival:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSendUnderMobileNetworkUnChecked()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/view/impl/NotificationViewImpl$3;->this$0:Lcom/android/mms/view/impl/NotificationViewImpl;

    #getter for: Lcom/android/mms/view/impl/NotificationViewImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/view/impl/NotificationViewImpl;->access$000(Lcom/android/mms/view/impl/NotificationViewImpl;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/mms/ui/MessageUtils;->isMobileNetworkChecked(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    :cond_0
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->isRoaming()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 227
    iget-object v2, p0, Lcom/android/mms/view/impl/NotificationViewImpl$3;->this$0:Lcom/android/mms/view/impl/NotificationViewImpl;

    #getter for: Lcom/android/mms/view/impl/NotificationViewImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/view/impl/NotificationViewImpl;->access$000(Lcom/android/mms/view/impl/NotificationViewImpl;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/mms/view/impl/NotificationViewImpl$3$1;

    invoke-direct {v3, p0}, Lcom/android/mms/view/impl/NotificationViewImpl$3$1;-><init>(Lcom/android/mms/view/impl/NotificationViewImpl$3;)V

    new-instance v4, Lcom/android/mms/view/impl/NotificationViewImpl$3$2;

    invoke-direct {v4, p0}, Lcom/android/mms/view/impl/NotificationViewImpl$3$2;-><init>(Lcom/android/mms/view/impl/NotificationViewImpl$3;)V

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showRoamingDownloadConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 244
    .end local v0           #roamingRetrival:Z
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 239
    .restart local v0       #roamingRetrival:Z
    .restart local v1       #sp:Landroid/content/SharedPreferences;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/view/impl/NotificationViewImpl$3;->this$0:Lcom/android/mms/view/impl/NotificationViewImpl;

    #calls: Lcom/android/mms/view/impl/NotificationViewImpl;->downloadMmsData()V
    invoke-static {v2}, Lcom/android/mms/view/impl/NotificationViewImpl;->access$100(Lcom/android/mms/view/impl/NotificationViewImpl;)V

    goto :goto_0
.end method
