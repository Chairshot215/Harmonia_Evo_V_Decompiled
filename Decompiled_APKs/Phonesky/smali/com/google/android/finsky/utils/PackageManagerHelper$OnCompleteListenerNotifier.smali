.class Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;
.super Landroid/os/AsyncTask;
.source "PackageManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/PackageManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnCompleteListenerNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContentUri:Landroid/net/Uri;

.field private final mDoNotifications:Z

.field private final mEncryptionParams:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

.field private final mExpectedSignature:Ljava/lang/String;

.field private final mExpectedSize:J

.field private final mHandler:Landroid/os/Handler;

.field private final mIsForwardLocked:Z

.field private final mIsUpdate:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

.field private final mTitle:Ljava/lang/String;

.field private volatile mVerified:Z


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZZLjava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;)V
    .locals 2
    .parameter "contentUri"
    .parameter "title"
    .parameter "expectedSize"
    .parameter "expectedSignature"
    .parameter "doNotifications"
    .parameter "postInstallCallback"
    .parameter "isUpdate"
    .parameter "isForwardLocked"
    .parameter "packageName"
    .parameter "encryptionParams"

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mHandler:Landroid/os/Handler;

    .line 158
    iput-object p1, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mContentUri:Landroid/net/Uri;

    .line 159
    iput-object p2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mTitle:Ljava/lang/String;

    .line 160
    iput-wide p3, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSize:J

    .line 161
    iput-object p5, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSignature:Ljava/lang/String;

    .line 162
    iput-boolean p6, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mDoNotifications:Z

    .line 163
    iput-object p7, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    .line 164
    iput-boolean p8, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mIsUpdate:Z

    .line 165
    iput-boolean p9, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mIsForwardLocked:Z

    .line 166
    iput-object p10, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    .line 167
    iput-object p11, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mEncryptionParams:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    .line 168
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZZLjava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;Lcom/google/android/finsky/utils/PackageManagerHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"

    .prologue
    .line 139
    invoke-direct/range {p0 .. p11}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZZLjava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mDoNotifications:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mIsUpdate:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 172
    iget-wide v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 173
    sget-boolean v2, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 174
    const-string v2, "Performing verification of \'%s\' (expectedSize=%d)..."

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-wide v4, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mEncryptionParams:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    if-nez v2, :cond_2

    .line 180
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 182
    .local v0, apkStream:Ljava/io/InputStream;
    iget-wide v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSize:J

    iget-object v4, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSignature:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/finsky/utils/PackageManagerHelper;->verifyApk(Ljava/io/InputStream;JLjava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mVerified:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0           #apkStream:Ljava/io/InputStream;
    :goto_0
    sget-boolean v2, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 191
    const-string v2, "Verification of \'%s\' finished (result=%s)."

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-boolean v4, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mVerified:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mContentUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/finsky/download/Storage;->getFileUriForContentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 185
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mContentUri:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSize:J

    #calls: Lcom/google/android/finsky/utils/PackageManagerHelper;->verifySize(Landroid/content/Context;Landroid/net/Uri;J)Z
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/finsky/utils/PackageManagerHelper;->access$100(Landroid/content/Context;Landroid/net/Uri;J)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mVerified:Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, e:Ljava/io/FileNotFoundException;
    iput-boolean v6, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mVerified:Z

    goto :goto_0

    .line 194
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_3
    const-string v2, "Signature check not required."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iput-boolean v7, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mVerified:Z

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 13
    .parameter "fileUri"

    .prologue
    const/4 v12, 0x1

    const/4 v5, -0x2

    const/4 v11, 0x0

    .line 203
    iget-boolean v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mVerified:Z

    if-nez v0, :cond_1

    .line 204
    const-string v0, "Signature check failed, aborting installation."

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iget-boolean v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mDoNotifications:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/google/android/finsky/utils/PackageManagerHelper;->notifyFailedInstall(Ljava/lang/String;I)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    const-string v4, "signature-check"

    invoke-interface {v0, v11, v4}, Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;->installCompleted(ZLjava/lang/String;)V

    .line 328
    :goto_0
    return-void

    .line 214
    :cond_1
    const/4 v3, 0x2

    .line 215
    .local v3, installFlags:I
    iget-boolean v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mIsForwardLocked:Z

    if-eqz v0, :cond_2

    .line 216
    or-int/lit8 v3, v3, 0x1

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    #calls: Lcom/google/android/finsky/utils/PackageManagerHelper;->isAlreadyInstalled(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/google/android/finsky/utils/PackageManagerHelper;->access$200(Ljava/lang/String;)Z

    move-result v9

    .line 220
    .local v9, isAlreadyInstalled:Z
    new-instance v2, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;-><init>(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)V

    .line 280
    .local v2, observer:Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;
    iget-boolean v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mDoNotifications:Z

    if-eqz v0, :cond_3

    .line 281
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v10

    .line 282
    .local v10, notifier:Lcom/google/android/finsky/utils/Notifier;
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    invoke-interface {v10, v0, v4, v9}, Lcom/google/android/finsky/utils/Notifier;->showInstallingMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 286
    .end local v10           #notifier:Lcom/google/android/finsky/utils/Notifier;
    :cond_3
    const/4 v6, 0x0

    .line 287
    .local v6, encryptionKey:Ljava/lang/String;
    const/4 v7, 0x0

    .line 288
    .local v7, encryptionHmacKey:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mEncryptionParams:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    if-eqz v0, :cond_8

    .line 290
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mEncryptionParams:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->getVersion()I

    move-result v8

    .line 291
    .local v8, encryptionVersion:I
    if-eq v8, v12, :cond_5

    .line 292
    iget-boolean v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mDoNotifications:Z

    if-eqz v0, :cond_4

    .line 293
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/google/android/finsky/utils/PackageManagerHelper;->notifyFailedInstall(Ljava/lang/String;I)V

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    const-string v4, "encryption-version"

    invoke-interface {v0, v11, v4}, Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;->installCompleted(ZLjava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_5
    invoke-static {}, Lcom/google/android/finsky/utils/PackageManagerUtils;->isEncryptionSupported()Z

    move-result v0

    if-nez v0, :cond_7

    .line 300
    iget-boolean v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mDoNotifications:Z

    if-eqz v0, :cond_6

    .line 301
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/google/android/finsky/utils/PackageManagerHelper;->notifyFailedInstall(Ljava/lang/String;I)V

    .line 304
    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    const-string v4, "encryption-not-supported"

    invoke-interface {v0, v11, v4}, Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;->installCompleted(ZLjava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mEncryptionParams:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->getEncryptionKey()Ljava/lang/String;

    move-result-object v6

    .line 309
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mEncryptionParams:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->getHmacKey()Ljava/lang/String;

    move-result-object v7

    .line 312
    or-int/lit8 v3, v3, 0x1

    .line 314
    const-string v0, "Install encrypted %s"

    new-array v4, v12, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    aput-object v5, v4, v11

    invoke-static {v0, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    .end local v8           #encryptionVersion:I
    :cond_8
    if-nez p1, :cond_9

    iget-object v1, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mContentUri:Landroid/net/Uri;

    .line 318
    .local v1, uri:Landroid/net/Uri;
    :goto_1
    if-eqz v1, :cond_a

    .line 319
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-wide v4, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSize:J

    invoke-static/range {v0 .. v7}, Lcom/google/android/finsky/utils/PackageManagerUtils;->installPackage(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;IJLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #uri:Landroid/net/Uri;
    :cond_9
    move-object v1, p1

    .line 317
    goto :goto_1

    .line 322
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mDoNotifications:Z

    if-eqz v0, :cond_b

    .line 323
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    const/4 v4, -0x3

    invoke-static {v0, v4}, Lcom/google/android/finsky/utils/PackageManagerHelper;->notifyFailedInstall(Ljava/lang/String;I)V

    .line 326
    :cond_b
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    const-string v4, "invalid-uri"

    invoke-interface {v0, v11, v4}, Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;->installCompleted(ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
