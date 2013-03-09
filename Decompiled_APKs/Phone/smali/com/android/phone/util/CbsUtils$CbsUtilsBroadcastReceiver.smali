.class Lcom/android/phone/util/CbsUtils$CbsUtilsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CbsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/util/CbsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CbsUtilsBroadcastReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 811
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/util/CbsUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/android/phone/util/CbsUtils$CbsUtilsBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 814
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->access$100()Lcom/android/phone/util/CbsUtils;

    move-result-object v9

    if-nez v9, :cond_1

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->access$200()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 818
    const-string v9, "cmas_list"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 820
    .local v4, cmasList:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->access$300()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/util/CbsUtils;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    invoke-static {v9, v8}, Lcom/android/phone/util/CbsUtils;->access$400(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 823
    .local v6, sp:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 824
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->access$500()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 825
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 826
    #calls: Lcom/android/phone/util/CbsUtils;->setCBCh()V
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->access$600()V

    goto :goto_0

    .line 831
    .end local v4           #cmasList:Ljava/lang/String;
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #sp:Landroid/content/SharedPreferences;
    :cond_2
    const-string v9, "com.android.mms.action.CB_LIST_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 834
    const-string v9, "cb_list"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, cbList:Ljava/lang/String;
    const-string v9, "cbname_list"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 836
    .local v2, cbNameList:Ljava/lang/String;
    const-string v9, "cbreadonly_list"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 838
    .local v3, cbReadonlyList:Ljava/lang/String;
    new-instance v9, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;

    invoke-direct {v9, v1, v2, v3}, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v9, v8}, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 841
    .end local v1           #cbList:Ljava/lang/String;
    .end local v2           #cbNameList:Ljava/lang/String;
    .end local v3           #cbReadonlyList:Ljava/lang/String;
    :cond_3
    const-string v9, "com.android.mms.action.CMAS_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 844
    const-string v9, "cmas_support"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 845
    .local v7, strExtraCMAS:Ljava/lang/String;
    const-string v9, "CbsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "got CMASsupport broadcasst: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->access$300()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/util/CbsUtils;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    invoke-static {v9, v8}, Lcom/android/phone/util/CbsUtils;->access$400(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 852
    .restart local v6       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 853
    .restart local v5       #editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->access$700()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 854
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 856
    const-string v9, "falseStr"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :goto_1
    invoke-static {v8}, Lcom/android/phone/util/CbsUtils;->access$802(Z)Z

    .line 857
    const-string v8, "CbsUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "phone got intent, cmas: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 856
    :cond_4
    const/4 v8, 0x1

    goto :goto_1
.end method
