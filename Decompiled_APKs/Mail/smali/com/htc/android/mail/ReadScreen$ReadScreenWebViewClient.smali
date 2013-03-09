.class Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadScreenWebViewClient"
.end annotation


# instance fields
.field private mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/ReadScreen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 5135
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 5136
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient;->mTarget:Ljava/lang/ref/WeakReference;

    .line 5137
    return-void
.end method

.method static synthetic access$8200(Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5131
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient;->mTarget:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 5141
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5142
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient$1;-><init>(Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5149
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12
    .parameter "view"
    .parameter "url"

    .prologue
    .line 5153
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "ReadScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "shouldOverrideUrlLoading:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5155
    :cond_0
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/ReadScreen;

    .line 5156
    .local v6, target:Lcom/htc/android/mail/ReadScreen;
    if-nez v6, :cond_1

    const/4 v8, 0x0

    .line 5240
    :goto_0
    return v8

    .line 5158
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 5159
    .local v5, szlowUrl:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "ReadScreen"

    invoke-static {v8, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5160
    :cond_2
    const/4 v2, 0x0

    .line 5161
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "tel:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 5162
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "ReadScreen"

    const-string v9, "startsWith(WebView.SCHEME_TEL)"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5163
    :cond_3
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5164
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v8, "accountID"

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccountId:J
    invoke-static {v6}, Lcom/htc/android/mail/ReadScreen;->access$5800(Lcom/htc/android/mail/ReadScreen;)J

    move-result-wide v9

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5165
    invoke-virtual {v6, v2}, Lcom/htc/android/mail/ReadScreen;->startActivity(Landroid/content/Intent;)V

    .line 5166
    const/4 v8, 0x1

    goto :goto_0

    .line 5167
    :cond_4
    const-string v8, "mailto:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 5168
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "ReadScreen"

    const-string v9, "startsWith(WebView.SCHEME_MAILTO)"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5169
    :cond_5
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5170
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v8, "accountID"

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccountId:J
    invoke-static {v6}, Lcom/htc/android/mail/ReadScreen;->access$5800(Lcom/htc/android/mail/ReadScreen;)J

    move-result-wide v9

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5171
    invoke-virtual {v6, v2}, Lcom/htc/android/mail/ReadScreen;->startActivity(Landroid/content/Intent;)V

    .line 5172
    const/4 v8, 0x1

    goto :goto_0

    .line 5173
    :cond_6
    const-string v8, "geo:0,0?q="

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 5175
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.htc.laputa.map.action.REVERSE_ADDR_ON_MAP"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5176
    .local v4, locationIntent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5177
    .local v0, bundle:Landroid/os/Bundle;
    const-string v8, "Address"

    const/16 v9, 0xa

    invoke-virtual {p2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "%2C"

    const-string v11, ","

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5178
    const-string v8, "REVERSE_ADDR_ON_MAP_BUNDLE"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5180
    const/4 v8, -0x1

    :try_start_0
    invoke-virtual {v6, v4, v8}, Lcom/htc/android/mail/ReadScreen;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 5181
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 5184
    :cond_7
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5185
    .end local v2           #intent:Landroid/content/Intent;
    .local v3, intent:Landroid/content/Intent;
    :try_start_1
    const-string v8, "accountID"

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccountId:J
    invoke-static {v6}, Lcom/htc/android/mail/ReadScreen;->access$5800(Lcom/htc/android/mail/ReadScreen;)J

    move-result-wide v9

    invoke-virtual {v3, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5186
    invoke-virtual {v6, v3}, Lcom/htc/android/mail/ReadScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 5187
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 5189
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 5190
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    :goto_1
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "ReadScreen"

    const-string v9, "ActivityNotFoundException in GEO)"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5196
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    .end local v4           #locationIntent:Landroid/content/Intent;
    :cond_8
    :try_start_2
    const-string v8, "mailto:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "tel:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "geo:0,0?q="

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "vnd.youtube:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "rtsp:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 5199
    invoke-static {p2}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5201
    :cond_9
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .line 5229
    .local v7, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v2, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5232
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v8, -0x1

    :try_start_3
    invoke-virtual {v6, v2, v8}, Lcom/htc/android/mail/ReadScreen;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v8

    if-eqz v8, :cond_a

    .line 5233
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 5202
    .end local v7           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 5203
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 5235
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v7       #uri:Landroid/net/Uri;
    :catch_2
    move-exception v8

    .line 5240
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 5189
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #uri:Landroid/net/Uri;
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #locationIntent:Landroid/content/Intent;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1
.end method
