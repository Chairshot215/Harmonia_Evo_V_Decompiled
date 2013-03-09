.class public Lcom/googlecode/android/wifi/tether/LogActivity;
.super Landroid/app/Activity;
.source "LogActivity.java"


# static fields
.field private static final FOOTER:Ljava/lang/String; = "</body></html>"

.field private static final HEADER:Ljava/lang/String; = "<html><head><title>background-color</title> <style type=\"text/css\"> body { background-color:#181818; font-family:Arial; font-size:100%; color: #ffffff } .date { font-family:Arial; font-size:80%; font-weight:bold} .done { font-family:Arial; font-size:80%; color: #2ff425} .failed { font-family:Arial; font-size:80%; color: #ff3636} .skipped { font-family:Arial; font-size:80%; color: #6268e5} </style> </head><body>"

.field public static final MSG_TAG:Ljava/lang/String; = "TETHER -> AccessControlActivity"


# instance fields
.field private application:Lcom/googlecode/android/wifi/tether/TetherApplication;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/LogActivity;->webView:Landroid/webkit/WebView;

    .line 24
    return-void
.end method

.method private readLogfile()Ljava/lang/String;
    .locals 11

    .prologue
    .line 66
    const/4 v5, 0x0

    .line 67
    .local v5, fis:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 68
    .local v7, isr:Ljava/io/InputStreamReader;
    const-string v1, ""

    .line 70
    .local v1, data:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/googlecode/android/wifi/tether/LogActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v10, v10, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v10, v10, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/var/tether.log"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v4, file:Ljava/io/File;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "utf-8"

    invoke-direct {v8, v6, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 73
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .local v8, isr:Ljava/io/InputStreamReader;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v9, v9

    new-array v0, v9, [C

    .line 74
    .local v0, buff:[C
    invoke-virtual {v8, v0}, Ljava/io/InputStreamReader;->read([C)I

    .line 75
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 83
    .end local v1           #data:Ljava/lang/String;
    .local v2, data:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 84
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 85
    :cond_0
    if-eqz v6, :cond_5

    .line 86
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v2

    .end local v2           #data:Ljava/lang/String;
    .restart local v1       #data:Ljava/lang/String;
    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v5, v6

    .line 91
    .end local v0           #buff:[C
    .end local v4           #file:Ljava/io/File;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v3

    .line 78
    .local v3, e:Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    iget-object v9, p0, Lcom/googlecode/android/wifi/tether/LogActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    const v10, 0x7f070029

    invoke-virtual {p0, v10}, Lcom/googlecode/android/wifi/tether/LogActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 83
    if-eqz v7, :cond_2

    .line 84
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 85
    :cond_2
    if-eqz v5, :cond_1

    .line 86
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 87
    :catch_1
    move-exception v9

    goto :goto_0

    .line 81
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 83
    :goto_2
    if-eqz v7, :cond_3

    .line 84
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 85
    :cond_3
    if-eqz v5, :cond_4

    .line 86
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 90
    :cond_4
    :goto_3
    throw v9

    .line 87
    .end local v1           #data:Ljava/lang/String;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v0       #buff:[C
    .restart local v2       #data:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/File;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catch_2
    move-exception v9

    move-object v1, v2

    .end local v2           #data:Ljava/lang/String;
    .restart local v1       #data:Ljava/lang/String;
    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .end local v0           #buff:[C
    .end local v4           #file:Ljava/io/File;
    :catch_3
    move-exception v10

    goto :goto_3

    .line 81
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #file:Ljava/io/File;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 77
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catch_5
    move-exception v3

    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1           #data:Ljava/lang/String;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v0       #buff:[C
    .restart local v2       #data:Ljava/lang/String;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :cond_5
    move-object v1, v2

    .end local v2           #data:Ljava/lang/String;
    .restart local v1       #data:Ljava/lang/String;
    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private setWebViewContent()V
    .locals 6

    .prologue
    .line 62
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/LogActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "fake://fakeme"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<html><head><title>background-color</title> <style type=\"text/css\"> body { background-color:#181818; font-family:Arial; font-size:100%; color: #ffffff } .date { font-family:Arial; font-size:80%; font-weight:bold} .done { font-family:Arial; font-size:80%; color: #2ff425} .failed { font-family:Arial; font-size:80%; color: #ff3636} .skipped { font-family:Arial; font-size:80%; color: #6268e5} </style> </head><body>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/LogActivity;->readLogfile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const-string v5, "fake://fakeme"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/LogActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/LogActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/googlecode/android/wifi/tether/TetherApplication;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/LogActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    .line 51
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/LogActivity;->webView:Landroid/webkit/WebView;

    .line 52
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/LogActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/LogActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 54
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/LogActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 55
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/LogActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/LogActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 57
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/LogActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 58
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/LogActivity;->setWebViewContent()V

    .line 59
    return-void
.end method
