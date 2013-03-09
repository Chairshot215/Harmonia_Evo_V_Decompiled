.class public Lcom/android/settings/framework/activity/system/HtcAndroidProperties;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "HtcAndroidProperties.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 15

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/system/HtcAndroidProperties;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v6

    .line 37
    .local v6, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v6, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v8

    .line 38
    .local v8, root:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v13, "Android properties"

    invoke-virtual {v8, v13}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0, v8}, Lcom/android/settings/framework/activity/system/HtcAndroidProperties;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 42
    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    .line 49
    .local v12, treeMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    const-string v14, "getprop"

    invoke-virtual {v13, v14}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 50
    .local v7, process:Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 53
    .local v0, br:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 54
    const-string v13, "["

    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 55
    .local v9, start:I
    if-ltz v9, :cond_0

    .line 58
    const-string v13, "]:"

    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 59
    .local v2, end:I
    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v5, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 61
    .local v11, title:Ljava/lang/String;
    const-string v13, "["

    add-int/lit8 v14, v2, 0x1

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 62
    const-string v13, "]"

    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 63
    add-int/lit8 v13, v2, 0x1

    invoke-virtual {v5, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 65
    .local v10, summary:Ljava/lang/String;
    invoke-virtual {v12, v11, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 78
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #end:I
    .end local v5           #line:Ljava/lang/String;
    .end local v7           #process:Ljava/lang/Process;
    .end local v9           #start:I
    .end local v10           #summary:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 79
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 68
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v7       #process:Ljava/lang/Process;
    :cond_2
    :try_start_1
    invoke-virtual {v12}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 70
    .local v4, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 71
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 72
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 73
    .restart local v11       #title:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 75
    .restart local v10       #summary:Ljava/lang/String;
    invoke-static {p0, v8, v11, v10}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginStatusPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/preference/HtcStatusPreference;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 80
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5           #line:Ljava/lang/String;
    .end local v7           #process:Ljava/lang/Process;
    .end local v10           #summary:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/system/HtcAndroidProperties;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
