.class Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;
.super Ljava/lang/Thread;
.source "PrepayDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupwizard/PrepayDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrepayDetectionThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/setupwizard/PrepayDetectionService;


# direct methods
.method constructor <init>(Lcom/google/android/setupwizard/PrepayDetectionService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;->this$0:Lcom/google/android/setupwizard/PrepayDetectionService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method private trysleep(I)V
    .locals 2
    .parameter "milliseconds"

    .prologue
    .line 171
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/16 v11, 0x1f4

    const/4 v7, 0x2

    const/4 v1, 0x1

    .line 86
    const-string v0, "SetupWizard"

    const-string v2, "starting prepay detection thread"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    move-object v3, v5

    move v2, v7

    .line 91
    :goto_0
    if-ne v2, v7, :cond_9

    .line 94
    if-nez v0, :cond_8

    .line 95
    iget-object v0, p0, Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v5, v0

    .line 97
    :goto_1
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const-string v0, "SetupWizard"

    const-string v2, "ending prepay detection: not LTE"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_2
    const-string v0, "SetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting prepay status to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;->this$0:Lcom/google/android/setupwizard/PrepayDetectionService;

    const-string v2, "SetupWizardPrefs"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/setupwizard/PrepayDetectionService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "prepay_status"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 166
    iget-object v0, p0, Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;->this$0:Lcom/google/android/setupwizard/PrepayDetectionService;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/setupwizard/PrepayDetectionService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/android/setupwizard/PrepayDetectionService;->stopService(Landroid/content/Intent;)Z

    .line 167
    return-void

    .line 104
    :cond_0
    if-nez v3, :cond_7

    .line 105
    iget-object v0, p0, Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v6, v0

    .line 108
    :goto_3
    if-nez v6, :cond_1

    .line 109
    invoke-direct {p0, v11}, Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;->trysleep(I)V

    move-object v0, v5

    move-object v3, v6

    .line 110
    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 113
    if-nez v0, :cond_2

    .line 114
    invoke-direct {p0, v11}, Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;->trysleep(I)V

    move-object v0, v5

    move-object v3, v6

    .line 115
    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    const/16 v0, 0x7d0

    invoke-direct {p0, v0}, Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;->trysleep(I)V

    move-object v0, v5

    move-object v3, v6

    .line 119
    goto/16 :goto_0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;->this$0:Lcom/google/android/setupwizard/PrepayDetectionService;

    invoke-virtual {v0}, Lcom/google/android/setupwizard/PrepayDetectionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "setup_prepaid_detection_target_url"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 126
    iget-object v0, p0, Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;->this$0:Lcom/google/android/setupwizard/PrepayDetectionService;

    invoke-virtual {v0}, Lcom/google/android/setupwizard/PrepayDetectionService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x7f09

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 129
    const-string v3, "SetupWizard"

    const-string v4, "couldn\'t load a target url to try hitting"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v4, v0

    .line 133
    :try_start_0
    const-string v0, "ro.setupwizard.prepay_redir_url"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 136
    iget-object v0, p0, Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;->this$0:Lcom/google/android/setupwizard/PrepayDetectionService;

    invoke-virtual {v0}, Lcom/google/android/setupwizard/PrepayDetectionService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 139
    :goto_4
    const-string v0, "SetupWizard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attempting to load target url "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; looking for a redirect to prepay domain "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 144
    const-string v4, "GET"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 145
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 146
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 147
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 148
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    .line 149
    const-string v8, "SetupWizard"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "completed prepay detection attempt: code = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", url = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", host = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_5
    move-object v3, v6

    move v2, v0

    move-object v0, v5

    .line 160
    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 153
    goto :goto_5

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string v3, "SetupWizard"

    const-string v4, "IOException "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;->trysleep(I)V

    move v0, v2

    goto :goto_5

    :cond_6
    move-object v3, v0

    goto/16 :goto_4

    :cond_7
    move-object v6, v3

    goto/16 :goto_3

    :cond_8
    move-object v5, v0

    goto/16 :goto_1

    :cond_9
    move v1, v2

    goto/16 :goto_2
.end method
