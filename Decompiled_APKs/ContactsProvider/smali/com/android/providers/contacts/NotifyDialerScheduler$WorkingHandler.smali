.class Lcom/android/providers/contacts/NotifyDialerScheduler$WorkingHandler;
.super Landroid/os/Handler;
.source "NotifyDialerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/NotifyDialerScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/NotifyDialerScheduler;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/NotifyDialerScheduler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler$WorkingHandler;->this$0:Lcom/android/providers/contacts/NotifyDialerScheduler;

    .line 175
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 176
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 180
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 182
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 187
    .local v1, isSyncToNetwork:Z
    invoke-static {}, Lcom/android/providers/contacts/NotifyDialerScheduler;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 192
    .end local v1           #isSyncToNetwork:Z
    :pswitch_1
    const-string v2, "NotifyDialerScheduler"

    const-string v3, "------NOTIFICATION_TYPE_SUGGESTION:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v2, p0, Lcom/android/providers/contacts/NotifyDialerScheduler$WorkingHandler;->this$0:Lcom/android/providers/contacts/NotifyDialerScheduler;

    iget-object v2, v2, Lcom/android/providers/contacts/NotifyDialerScheduler;->mRawContactsMarkedForArrange:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 205
    .local v0, RawContactsMarkedForArrange:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/providers/contacts/NotifyDialerScheduler$WorkingHandler;->this$0:Lcom/android/providers/contacts/NotifyDialerScheduler;

    iget-object v2, v2, Lcom/android/providers/contacts/NotifyDialerScheduler;->mRawContactsMarkedForArrange:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->LIMIT_IN_ONE_THREAD:I

    if-lt v2, v3, :cond_1

    invoke-static {}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->getInstance()Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->getInstance()Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 210
    :cond_1
    invoke-static {v0}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->callUpdateSuggestionAtHandlerThread(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 212
    :cond_2
    const-string v2, "NotifyDialerScheduler"

    const-string v3, "------CANCLE SUGGETION DUE TO EXCEED LIMIT!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    .end local v0           #RawContactsMarkedForArrange:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_2
    invoke-static {}, Lcom/android/providers/contacts/NotifyDialerScheduler;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
