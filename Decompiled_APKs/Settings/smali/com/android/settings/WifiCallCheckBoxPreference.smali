.class public Lcom/android/settings/WifiCallCheckBoxPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "WifiCallCheckBoxPreference.java"


# static fields
.field private static final EVENT_IMS_WIFI_STATUS:I = 0x1

.field private static final IPManagerClassName:Ljava/lang/String; = "com.movial.ipphone.IPManager"

.field private static final IPPhoneSettingsClassName:Ljava/lang/String; = "com.movial.ipphone.IPPhoneSettings"

.field private static final IPStateListener4SettingClassName:Ljava/lang/String; = "com.movial.ipphone.IPStateListener4Setting"

.field private static final IPStateListenerClassName:Ljava/lang/String; = "com.movial.ipphone.IPStateListener"

.field private static final IPUtilesClasssName:Ljava/lang/String; = "com.movial.ipphone.IPUtils"

.field private static final TAG:Ljava/lang/String; = "WifiCallCheckBoxPreference"

.field private static final WifiCallStateChanged:Ljava/lang/String; = "com.htc.intent.action.WifiCallStateChanged"


# instance fields
.field private mCellOnly:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIPMInstance:Ljava/lang/Object;

.field private mIPMlisten:Ljava/lang/reflect/Method;

.field public mIPPhonefReceiver:Landroid/content/BroadcastReceiver;

.field private mIPStateListener:Ljava/lang/Object;

.field private mIPUtils:Ljava/lang/Class;

.field private mPreference:Lcom/htc/preference/HtcPreference;

.field private registered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/WifiCallCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 95
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/WifiCallCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput-boolean v2, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->registered:Z

    .line 77
    new-instance v2, Lcom/android/settings/WifiCallCheckBoxPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/WifiCallCheckBoxPreference$1;-><init>(Lcom/android/settings/WifiCallCheckBoxPreference;)V

    iput-object v2, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mHandler:Landroid/os/Handler;

    .line 234
    new-instance v2, Lcom/android/settings/WifiCallCheckBoxPreference$3;

    invoke-direct {v2, p0}, Lcom/android/settings/WifiCallCheckBoxPreference$3;-><init>(Lcom/android/settings/WifiCallCheckBoxPreference;)V

    iput-object v2, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mIPPhonefReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    iput-object p1, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mContext:Landroid/content/Context;

    .line 105
    :try_start_0
    const-string v2, "com.movial.ipphone.IPUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mIPUtils:Ljava/lang/Class;

    .line 106
    const-string v2, "com.movial.ipphone.IPStateListener4Setting"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/Handler;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mHandler:Landroid/os/Handler;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mIPStateListener:Ljava/lang/Object;

    .line 110
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/Class;

    .line 111
    .local v1, param:[Ljava/lang/Class;
    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 112
    const/4 v2, 0x1

    const-string v3, "com.movial.ipphone.IPStateListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 115
    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 116
    const-string v2, "com.movial.ipphone.IPManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "listen"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mIPMlisten:Ljava/lang/reflect/Method;

    .line 118
    const-string v2, "com.movial.ipphone.IPManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mIPMInstance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1           #param:[Ljava/lang/Class;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiCallCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get IPManager fail  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/WifiCallCheckBoxPreference;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mPreference:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/WifiCallCheckBoxPreference;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mIPStateListener:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/WifiCallCheckBoxPreference;)Ljava/lang/Class;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mIPUtils:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/WifiCallCheckBoxPreference;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mIPMInstance:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/WifiCallCheckBoxPreference;)Ljava/lang/reflect/Method;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mIPMlisten:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private registerIPPhoneReceiver()V
    .locals 3

    .prologue
    .line 261
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 262
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.WifiCallStateChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mIPPhonefReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->registered:Z

    .line 265
    const-string v1, "WifiCallCheckBoxPreference"

    const-string v2, "registerIPPhoneReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method private registerToIPRegistry(Z)V
    .locals 1
    .parameter "register"

    .prologue
    .line 204
    new-instance v0, Lcom/android/settings/WifiCallCheckBoxPreference$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/WifiCallCheckBoxPreference$2;-><init>(Lcom/android/settings/WifiCallCheckBoxPreference;Z)V

    .line 231
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 232
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 128
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 129
    const-string v4, "WifiCallCheckBoxPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/WifiCallCheckBoxPreference;->isChecked()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/WifiCallCheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mCellOnly:Z

    .line 133
    :try_start_0
    const-string v4, "com.movial.ipphone.IPPhoneSettings"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v7, "CELL_ONLY"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    .local v0, CELL_ONLY:Ljava/lang/Object;
    const-string v4, "com.movial.ipphone.IPPhoneSettings"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v7, "putBoolean"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/ContentResolver;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 138
    .local v3, putBoolean:Ljava/lang/reflect/Method;
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/Object;

    .line 139
    .local v2, param:[Ljava/lang/Object;
    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aput-object v7, v2, v4

    .line 140
    const/4 v4, 0x1

    aput-object v0, v2, v4

    .line 141
    const/4 v4, 0x2

    iget-boolean v7, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mCellOnly:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v4

    .line 142
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v0           #CELL_ONLY:Ljava/lang/Object;
    .end local v2           #param:[Ljava/lang/Object;
    .end local v3           #putBoolean:Ljava/lang/reflect/Method;
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mCellOnly:Z

    if-nez v4, :cond_1

    :goto_2
    invoke-direct {p0, v5}, Lcom/android/settings/WifiCallCheckBoxPreference;->registerToIPRegistry(Z)V

    .line 148
    return-void

    :cond_0
    move v4, v6

    .line 131
    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "WifiCallCheckBoxPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "putBoolean fail. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v5, v6

    .line 147
    goto :goto_2
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-direct {p0, v2}, Lcom/android/settings/WifiCallCheckBoxPreference;->registerToIPRegistry(Z)V

    .line 196
    iget-boolean v0, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->registered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mIPPhonefReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    iput-boolean v2, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->registered:Z

    .line 200
    :cond_0
    const-string v0, "WifiCallCheckBoxPreference"

    const-string v1, "unregisterReceiver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method public resume()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 160
    const/4 v3, 0x0

    .line 162
    .local v3, oCellOnly:Ljava/lang/Object;
    :try_start_0
    const-string v5, "com.movial.ipphone.IPPhoneSettings"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v8, "CELL_ONLY"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    .local v0, CELL_ONLY:Ljava/lang/Object;
    const-string v5, "com.movial.ipphone.IPPhoneSettings"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v8, "getBoolean"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/ContentResolver;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 167
    .local v2, getBoolean:Ljava/lang/reflect/Method;
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/Object;

    .line 168
    .local v4, param:[Ljava/lang/Object;
    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    aput-object v8, v4, v5

    .line 169
    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 170
    const/4 v5, 0x2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v5

    .line 171
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 175
    .end local v0           #CELL_ONLY:Ljava/lang/Object;
    .end local v2           #getBoolean:Ljava/lang/reflect/Method;
    .end local v3           #oCellOnly:Ljava/lang/Object;
    .end local v4           #param:[Ljava/lang/Object;
    :goto_0
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mCellOnly:Z

    .line 182
    const-string v5, "WifiCallCheckBoxPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCellOnly: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mCellOnly:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-boolean v5, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mCellOnly:Z

    if-nez v5, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/settings/WifiCallCheckBoxPreference;->setChecked(Z)V

    .line 185
    iget-boolean v5, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mCellOnly:Z

    if-eqz v5, :cond_0

    .line 186
    const-string v5, "Disabled"

    invoke-virtual {p0, v5}, Lcom/android/settings/WifiCallCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    :cond_0
    iget-object v8, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mPreference:Lcom/htc/preference/HtcPreference;

    iget-boolean v5, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mCellOnly:Z

    if-nez v5, :cond_4

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 188
    iget-boolean v5, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mCellOnly:Z

    if-nez v5, :cond_5

    move v5, v6

    :goto_3
    invoke-direct {p0, v5}, Lcom/android/settings/WifiCallCheckBoxPreference;->registerToIPRegistry(Z)V

    .line 189
    iget-boolean v5, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->registered:Z

    if-nez v5, :cond_1

    move v7, v6

    :cond_1
    if-ne v7, v6, :cond_2

    .line 190
    invoke-direct {p0}, Lcom/android/settings/WifiCallCheckBoxPreference;->registerIPPhoneReceiver()V

    .line 191
    :cond_2
    return-void

    .line 172
    .restart local v3       #oCellOnly:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 173
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "WifiCallCheckBoxPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBoolean fail. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #oCellOnly:Ljava/lang/Object;
    :cond_3
    move v5, v7

    .line 184
    goto :goto_1

    :cond_4
    move v5, v7

    .line 187
    goto :goto_2

    :cond_5
    move v5, v7

    .line 188
    goto :goto_3
.end method

.method public setValues(Lcom/htc/preference/HtcPreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/WifiCallCheckBoxPreference;->mPreference:Lcom/htc/preference/HtcPreference;

    .line 155
    return-void
.end method
