.class public Lcom/android/server/ShowWatermarkService;
.super Landroid/app/Service;
.source "ShowWatermarkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ShowWatermarkService$LoadView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "watermark"

.field private static final VERSION:Ljava/lang/String; = "v1.4"


# instance fields
.field private MESSAGE:[Ljava/lang/String;

.field private mAccountChangeListener:Landroid/accounts/OnAccountsUpdateListener;

.field private mView:Landroid/view/View;

.field private monitorAccount:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ShowWatermarkService;->monitorAccount:Z

    new-instance v0, Lcom/android/server/ShowWatermarkService$1;

    invoke-direct {v0, p0}, Lcom/android/server/ShowWatermarkService$1;-><init>(Lcom/android/server/ShowWatermarkService;)V

    iput-object v0, p0, Lcom/android/server/ShowWatermarkService;->mAccountChangeListener:Landroid/accounts/OnAccountsUpdateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ShowWatermarkService;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ShowWatermarkService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/ShowWatermarkService;->strimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ShowWatermarkService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ShowWatermarkService;->monitorAccount:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/ShowWatermarkService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->removeAccountListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/ShowWatermarkService;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    return-object v0
.end method

.method private getAccount()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v6, "NoAccount"

    iput-boolean v8, p0, Lcom/android/server/ShowWatermarkService;->monitorAccount:Z

    if-nez v1, :cond_0

    :goto_0
    return-object v6

    :cond_0
    const-string v7, "com.htc.android.mail.eas"

    invoke-virtual {v1, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v7, v2

    if-lez v7, :cond_1

    aget-object v7, v2, v8

    iget-object v6, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v7, "com.google"

    invoke-virtual {v1, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v7, v2

    if-lez v7, :cond_2

    aget-object v7, v2, v8

    iget-object v6, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v7, v2

    if-lez v7, :cond_5

    move-object v3, v2

    array-length v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v0, v3, v4

    const-string v7, "com.htc.showme"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.htc.sync.provider.weather"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.htc.android.Stock"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.htc.stock"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.htc.newsreader"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/ShowWatermarkService;->monitorAccount:Z

    goto :goto_0
.end method

.method private getWatermarkWords()V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/htc/htcjavaflag/HtcWatermarkWord;->Htc_WATERMARK_MSG:[Ljava/lang/String;

    array-length v0, v2

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;

    sget-object v2, Lcom/htc/htcjavaflag/HtcWatermarkWord;->Htc_WATERMARK_MSG:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;

    const-string v3, "ro.serialno"

    const-string v4, "null"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ShowWatermarkService;->strimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    return-void
.end method

.method private removeAccountListener()V
    .locals 3

    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ShowWatermarkService;->mAccountChangeListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "watermark"

    const-string v2, "remove account listener fail, listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "watermark"

    const-string v2, "remove account listener fail, listener is not added"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private strimString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v1, "watermark"

    const-string v2, "stop watermark service, reboot device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/ShowWatermarkService;->monitorAccount:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->removeAccountListener()V

    :cond_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/server/ShowWatermarkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/os/Power;->shutdown()V

    goto :goto_0
.end method
