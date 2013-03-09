.class public Lcom/android/settings/framework/activity/aboutphone/legal/HtcCopyrightAlertActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "HtcCopyrightAlertActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    return-void
.end method

.method private getHtcCopyright()Ljava/lang/String;
    .locals 9

    .prologue
    .line 44
    const/high16 v4, 0x7f06

    .line 45
    .local v4, resId:I
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcCopyrightAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f06

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 49
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x1000

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50
    .local v5, sb:Ljava/lang/StringBuilder;
    const/16 v6, 0x800

    new-array v2, v6, [C

    .line 54
    .local v2, data:[C
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    .local v1, count:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 55
    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #count:I
    .end local v2           #data:[C
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 62
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    const-string v6, "HTC Legal Information"

    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    return-object v6

    .line 59
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #count:I
    .restart local v2       #data:[C
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/legal/HtcCopyrightAlertActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 29
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x7f0c036f

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcCopyrightAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 30
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcCopyrightAlertActivity;->getHtcCopyright()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcCopyrightAlertActivity;->setupAlert()V

    .line 32
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 35
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 36
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/app/HtcAlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
