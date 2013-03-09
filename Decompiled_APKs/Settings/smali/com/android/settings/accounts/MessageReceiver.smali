.class public Lcom/android/settings/accounts/MessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessageReceiver.java"


# static fields
.field private static final KEY_SMART_WIFI:Ljava/lang/String; = "SMART_WIFI"

.field private static final LOG_TAG:Ljava/lang/String; = "AccountManager-MessageReceiver"


# instance fields
.field private mAccounts:[Landroid/accounts/Account;

.field private mInvisibleAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/MessageReceiver;->mInvisibleAdapters:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/MessageReceiver;->mAccounts:[Landroid/accounts/Account;

    return-void
.end method

.method private SyncCheckedAuthorityForAllAccount(Landroid/content/Context;[Landroid/accounts/Account;I)V
    .locals 21
    .parameter "context"
    .parameter "accounts"
    .parameter "SmartWifiState"

    .prologue
    .line 53
    const-string v18, "AccountManager-MessageReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SmartWifiState="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/MessageReceiver;->mInvisibleAdapters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 56
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v15

    .line 57
    .local v15, syncAdapters:[Landroid/content/SyncAdapterType;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 60
    .local v4, accountTypeToAuthorities:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v9, 0x0

    .local v9, i:I
    array-length v13, v15

    .local v13, n:I
    :goto_0
    if-ge v9, v13, :cond_2

    .line 61
    aget-object v14, v15, v9

    .line 64
    .local v14, sa:Landroid/content/SyncAdapterType;
    invoke-virtual {v14}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 65
    iget-object v0, v14, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 66
    .local v5, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_0

    .line 67
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .restart local v5       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, v14, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    iget-object v0, v14, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v5           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 74
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/MessageReceiver;->mInvisibleAdapters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-object v0, v14, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    .end local v14           #sa:Landroid/content/SyncAdapterType;
    :cond_2
    const-string v18, "AccountManager-MessageReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SyncCheckedAuthorityForAllAccount accounts.length="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v9, 0x0

    move-object/from16 v0, p2

    array-length v13, v0

    :goto_2
    if-ge v9, v13, :cond_8

    .line 82
    aget-object v3, p2, v9

    .line 83
    .local v3, account:Landroid/accounts/Account;
    const/4 v7, 0x0

    .line 84
    .local v7, bEnableSmartWifi:Z
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v18

    const-string v19, "EnableSmartWiFi"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, EnableSmartWiFi:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 87
    const-string v18, "AccountManager-MessageReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "EnableSmartWiFi="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 89
    const/4 v7, 0x1

    .line 92
    :cond_3
    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 93
    .restart local v5       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_5

    .line 94
    const/4 v11, 0x0

    .local v11, j:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, m:I
    :goto_3
    if-ge v11, v12, :cond_5

    .line 95
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 97
    .local v6, authority:Ljava/lang/String;
    invoke-static {v3, v6}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v17

    .line 99
    .local v17, syncState:I
    invoke-static {v3, v6}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v16

    .line 102
    .local v16, syncEnabled:Z
    if-lez v17, :cond_4

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 103
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v8, extras:Landroid/os/Bundle;
    const-string v18, "force"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    const-string v18, "SMART_WIFI"

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    if-eqz v7, :cond_4

    .line 108
    invoke-static {v3, v6, v8}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 94
    .end local v8           #extras:Landroid/os/Bundle;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 114
    .end local v6           #authority:Ljava/lang/String;
    .end local v11           #j:I
    .end local v12           #m:I
    .end local v16           #syncEnabled:Z
    .end local v17           #syncState:I
    :cond_5
    if-eqz v3, :cond_7

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/MessageReceiver;->mInvisibleAdapters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 117
    .restart local v6       #authority:Ljava/lang/String;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 118
    .restart local v8       #extras:Landroid/os/Bundle;
    const-string v18, "force"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    const-string v18, "SMART_WIFI"

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    if-eqz v7, :cond_6

    .line 121
    invoke-static {v3, v6, v8}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    .line 81
    .end local v6           #authority:Ljava/lang/String;
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 126
    .end local v2           #EnableSmartWiFi:Ljava/lang/String;
    .end local v3           #account:Landroid/accounts/Account;
    .end local v5           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #bEnableSmartWifi:Z
    :cond_8
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, action:Ljava/lang/String;
    const-string v1, "AccountManager-MessageReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v1, "android.net.wifi.SMART_WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/MessageReceiver;->mAccounts:[Landroid/accounts/Account;

    .line 37
    const-string v1, "newState"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 38
    iget-object v1, p0, Lcom/android/settings/accounts/MessageReceiver;->mAccounts:[Landroid/accounts/Account;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/android/settings/accounts/MessageReceiver;->mAccounts:[Landroid/accounts/Account;

    invoke-direct {p0, p1, v1, v5}, Lcom/android/settings/accounts/MessageReceiver;->SyncCheckedAuthorityForAllAccount(Landroid/content/Context;[Landroid/accounts/Account;I)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accounts/MessageReceiver;->mAccounts:[Landroid/accounts/Account;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/android/settings/accounts/MessageReceiver;->mAccounts:[Landroid/accounts/Account;

    invoke-direct {p0, p1, v1, v4}, Lcom/android/settings/accounts/MessageReceiver;->SyncCheckedAuthorityForAllAccount(Landroid/content/Context;[Landroid/accounts/Account;I)V

    goto :goto_0
.end method
