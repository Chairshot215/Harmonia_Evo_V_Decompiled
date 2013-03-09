.class Lcom/google/android/gm/GviewActivity$GviewAsyncTask;
.super Landroid/os/AsyncTask;
.source "GviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/GviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GviewAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mActivity:Landroid/app/Activity;

.field private mLoading:Z

.field private final mUrl:Ljava/lang/String;

.field private final mWebView:Landroid/webkit/WebView;

.field final synthetic this$0:Lcom/google/android/gm/GviewActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/GviewActivity;Landroid/app/Activity;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "activity"
    .parameter "account"
    .parameter "webView"
    .parameter "url"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->this$0:Lcom/google/android/gm/GviewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mActivity:Landroid/app/Activity;

    .line 179
    iput-object p3, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mAccount:Ljava/lang/String;

    .line 180
    iput-object p4, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mWebView:Landroid/webkit/WebView;

    .line 181
    iput-object p5, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mUrl:Ljava/lang/String;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mLoading:Z

    .line 183
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 170
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 15
    .parameter "params"

    .prologue
    .line 191
    const/4 v2, 0x0

    .line 192
    .local v2, entity:Lorg/apache/http/HttpEntity;
    const/4 v5, 0x0

    .line 196
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v0, Landroid/accounts/Account;

    iget-object v10, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mAccount:Ljava/lang/String;

    const-string v11, "com.google"

    invoke-direct {v0, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v0, account:Landroid/accounts/Account;
    iget-object v10, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mActivity:Landroid/app/Activity;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    const-string v11, "SID"

    const/4 v12, 0x0

    invoke-virtual {v10, v0, v11, v12}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 199
    .local v9, sid:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mActivity:Landroid/app/Activity;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    const-string v11, "LSID"

    const/4 v12, 0x0

    invoke-virtual {v10, v0, v11, v12}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, lsid:Ljava/lang/String;
    new-instance v3, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v10, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mActivity:Landroid/app/Activity;

    const-string v11, "Android-Gview/0.1"

    const/4 v12, 0x1

    invoke-direct {v3, v10, v11, v12}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 205
    .local v3, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    const-string v10, "https://www.google.com/accounts/IssueAuthToken?service=gaia&Session=false"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "SID"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v9, v11, v12

    const/4 v12, 0x2

    const-string v13, "LSID"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Lcom/google/android/gm/provider/Urls;->buildUri(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 207
    .local v7, request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-interface {v3, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 208
    .local v8, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 210
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-direct {v6, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3

    .line 211
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .local v6, out:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-interface {v2, v6}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 213
    const-string v10, "UTF-8"

    invoke-virtual {v6, v10}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_d

    move-result-object v10

    .line 221
    if-eqz v2, :cond_0

    .line 223
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 226
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 228
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    :goto_1
    move-object v5, v6

    .line 232
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v4           #lsid:Ljava/lang/String;
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .end local v7           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #sid:Ljava/lang/String;
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    :goto_2
    return-object v10

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, e:Landroid/accounts/AuthenticatorException;
    :goto_3
    :try_start_4
    const-string v10, "Gview"

    const-string v11, "Exception caught while loading Gview: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v1}, Landroid/accounts/AuthenticatorException;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 221
    if-eqz v2, :cond_2

    .line 223
    :try_start_5
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 226
    :cond_2
    :goto_4
    if-eqz v5, :cond_3

    .line 228
    :try_start_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 232
    .end local v1           #e:Landroid/accounts/AuthenticatorException;
    :cond_3
    :goto_5
    const/4 v10, 0x0

    goto :goto_2

    .line 216
    :catch_1
    move-exception v1

    .line 217
    .local v1, e:Ljava/io/IOException;
    :goto_6
    :try_start_7
    const-string v10, "Gview"

    const-string v11, "Exception caught while loading Gview: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 221
    if-eqz v2, :cond_4

    .line 223
    :try_start_8
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 226
    :cond_4
    :goto_7
    if-eqz v5, :cond_3

    .line 228
    :try_start_9
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    .line 229
    :catch_2
    move-exception v10

    goto :goto_5

    .line 218
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 219
    .local v1, e:Landroid/accounts/OperationCanceledException;
    :goto_8
    :try_start_a
    const-string v10, "Gview"

    const-string v11, "Exception caught while loading Gview: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v1}, Landroid/accounts/OperationCanceledException;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 221
    if-eqz v2, :cond_5

    .line 223
    :try_start_b
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 226
    :cond_5
    :goto_9
    if-eqz v5, :cond_3

    .line 228
    :try_start_c
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_5

    .line 229
    :catch_4
    move-exception v10

    goto :goto_5

    .line 221
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catchall_0
    move-exception v10

    :goto_a
    if-eqz v2, :cond_6

    .line 223
    :try_start_d
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 226
    :cond_6
    :goto_b
    if-eqz v5, :cond_7

    .line 228
    :try_start_e
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 229
    :cond_7
    :goto_c
    throw v10

    .line 224
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v3       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v4       #lsid:Ljava/lang/String;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    .restart local v9       #sid:Ljava/lang/String;
    :catch_5
    move-exception v11

    goto :goto_0

    .line 229
    :catch_6
    move-exception v11

    goto :goto_1

    .line 224
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v4           #lsid:Ljava/lang/String;
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .end local v7           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #sid:Ljava/lang/String;
    .local v1, e:Landroid/accounts/AuthenticatorException;
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v10

    goto :goto_4

    .line 229
    :catch_8
    move-exception v10

    goto :goto_5

    .line 224
    .local v1, e:Ljava/io/IOException;
    :catch_9
    move-exception v10

    goto :goto_7

    .local v1, e:Landroid/accounts/OperationCanceledException;
    :catch_a
    move-exception v10

    goto :goto_9

    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_b
    move-exception v11

    goto :goto_b

    .line 229
    :catch_c
    move-exception v11

    goto :goto_c

    .line 221
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v3       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v4       #lsid:Ljava/lang/String;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    .restart local v9       #sid:Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_a

    .line 218
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    :catch_d
    move-exception v1

    move-object v5, v6

    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_8

    .line 216
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    :catch_e
    move-exception v1

    move-object v5, v6

    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 214
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    :catch_f
    move-exception v1

    move-object v5, v6

    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_3
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mLoading:Z

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 170
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .parameter "uberAuthToken"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 241
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 245
    :cond_0
    iput-boolean v4, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mLoading:Z

    .line 246
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->dismissDialog(I)V

    .line 247
    if-eqz p1, :cond_1

    .line 250
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mWebView:Landroid/webkit/WebView;

    const-string v1, "https://www.google.com/accounts/TokenAuth?service=writely&source=gmail"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "auth"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    const-string v3, "continue"

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gm/provider/Urls;->buildUri(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method
