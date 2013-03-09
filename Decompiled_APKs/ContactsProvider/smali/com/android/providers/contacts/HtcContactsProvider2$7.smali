.class Lcom/android/providers/contacts/HtcContactsProvider2$7;
.super Landroid/os/Handler;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
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
    .line 2379
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$7;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/16 v11, 0x29

    const/4 v8, 0x1

    .line 2381
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 2534
    :cond_0
    :goto_0
    return-void

    .line 2383
    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 2384
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/accounts/Account;

    .line 2389
    .local v0, acc:Landroid/accounts/Account;
    const-string v7, "com.android.contacts"

    invoke-static {v0, v7}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2391
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2392
    .local v2, b:Landroid/os/Bundle;
    const-string v7, "force"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2393
    const-string v7, "com.android.contacts"

    invoke-static {v0, v7, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2407
    .end local v0           #acc:Landroid/accounts/Account;
    .end local v2           #b:Landroid/os/Bundle;
    :pswitch_1
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v7

    new-instance v8, Lcom/android/providers/contacts/HtcContactsProvider2$7$1;

    invoke-direct {v8, p0}, Lcom/android/providers/contacts/HtcContactsProvider2$7$1;-><init>(Lcom/android/providers/contacts/HtcContactsProvider2$7;)V

    invoke-virtual {v7, v8}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0

    .line 2420
    :pswitch_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 2421
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/accounts/Account;

    .line 2426
    .restart local v0       #acc:Landroid/accounts/Account;
    iget-object v7, p0, Lcom/android/providers/contacts/HtcContactsProvider2$7;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v7, v11}, Lcom/android/providers/contacts/HtcContactsProvider2;->removeBackgroundTask(I)V

    .line 2427
    iget-object v7, p0, Lcom/android/providers/contacts/HtcContactsProvider2$7;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    new-instance v8, Landroid/accounts/Account;

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v9, 0x1388

    invoke-virtual {v7, v11, v8, v9, v10}, Lcom/android/providers/contacts/HtcContactsProvider2;->scheduleBackgroundTaskDelayed(ILjava/lang/Object;J)V

    goto :goto_0

    .line 2432
    .end local v0           #acc:Landroid/accounts/Account;
    :pswitch_3
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 2433
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 2434
    .local v1, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 2435
    .restart local v0       #acc:Landroid/accounts/Account;
    const-string v7, "com.android.contacts"

    invoke-static {v0, v7}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2437
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2438
    .restart local v2       #b:Landroid/os/Bundle;
    const-string v7, "force"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2440
    const-string v7, "com.android.contacts"

    invoke-static {v0, v7, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 2457
    .end local v0           #acc:Landroid/accounts/Account;
    .end local v1           #accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .end local v2           #b:Landroid/os/Bundle;
    .end local v4           #i$:Ljava/util/Iterator;
    :pswitch_4
    :try_start_0
    iget-object v7, p0, Lcom/android/providers/contacts/HtcContactsProvider2$7;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v7}, Lcom/android/providers/contacts/HtcContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "com.android.htccontacts"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 2464
    .local v6, prefs:Landroid/content/SharedPreferences;
    if-eqz v6, :cond_0

    const-string v7, "default_contact_initialized"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2468
    iget-object v7, p0, Lcom/android/providers/contacts/HtcContactsProvider2$7;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v7}, Lcom/android/providers/contacts/HtcContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/providers/contacts/HtcContactsProvider2$7;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v8}, Lcom/android/providers/contacts/HtcContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->insertDefaultContact(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V

    .line 2474
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2475
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "default_contact_initialized"

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2478
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2481
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #prefs:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v5

    .line 2482
    .local v5, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "HtcContactsProvider2"

    const-string v8, "handle MSG_CREATE_DEFAULT_CONTACT"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2488
    .end local v5           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_5
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v7

    new-instance v8, Lcom/android/providers/contacts/HtcContactsProvider2$7$2;

    invoke-direct {v8, p0}, Lcom/android/providers/contacts/HtcContactsProvider2$7$2;-><init>(Lcom/android/providers/contacts/HtcContactsProvider2$7;)V

    invoke-virtual {v7, v8}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto/16 :goto_0

    .line 2505
    :pswitch_6
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v7

    new-instance v8, Lcom/android/providers/contacts/HtcContactsProvider2$7$3;

    invoke-direct {v8, p0}, Lcom/android/providers/contacts/HtcContactsProvider2$7$3;-><init>(Lcom/android/providers/contacts/HtcContactsProvider2$7;)V

    invoke-virtual {v7, v8}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto/16 :goto_0

    .line 2381
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
