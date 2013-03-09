.class public Lcom/google/android/feedback/FeedbackSession;
.super Ljava/lang/Object;
.source "FeedbackSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/feedback/FeedbackSession$Screenshot;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field private mAnrStackTraces:Ljava/lang/String;

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppLabel:Ljava/lang/String;

.field private mChooseAccount:Landroid/widget/Spinner;

.field private mContext:Lcom/google/android/feedback/FeedbackActivity;

.field private mEventLog:Ljava/lang/String;

.field private mGotSystemLogs:Z

.field private mInstalledPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReport:Lcom/google/android/feedback/ExtendedErrorReport;

.field private mRunningApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshot:Lcom/google/android/feedback/FeedbackSession$Screenshot;

.field private mSendPrivateData:Z

.field private mSendScreenshot:Z

.field private mSystemLog:Ljava/lang/String;

.field private spinnerPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/feedback/FeedbackSession;->EMPTY_STRING_LIST:Ljava/util/List;

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/google/android/feedback/FeedbackSession;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/feedback/FeedbackActivity;Landroid/app/ApplicationErrorReport;)V
    .locals 1
    .parameter "context"
    .parameter "report"

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/feedback/FeedbackSession;-><init>(Lcom/google/android/feedback/FeedbackActivity;Landroid/app/ApplicationErrorReport;Lcom/google/android/feedback/FeedbackSession$Screenshot;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lcom/google/android/feedback/FeedbackActivity;Landroid/app/ApplicationErrorReport;Lcom/google/android/feedback/FeedbackSession$Screenshot;)V
    .locals 1
    .parameter "context"
    .parameter "report"
    .parameter "optionalScreenshot"

    .prologue
    const/4 v0, 0x1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    .line 114
    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackSession;->mSendScreenshot:Z

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/feedback/FeedbackSession;->spinnerPosition:I

    .line 140
    iput-object p1, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    .line 141
    new-instance v0, Lcom/google/android/feedback/ExtendedErrorReport;

    invoke-direct {v0, p2}, Lcom/google/android/feedback/ExtendedErrorReport;-><init>(Landroid/app/ApplicationErrorReport;)V

    iput-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    .line 143
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->getSystemInfo()V

    .line 144
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->getAppInfo()V

    .line 145
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    invoke-direct {p0, v0}, Lcom/google/android/feedback/FeedbackSession;->getBuildInfo(Lcom/google/android/feedback/ExtendedErrorReport;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    invoke-direct {p0, v0}, Lcom/google/android/feedback/FeedbackSession;->getTelephonyInfo(Lcom/google/android/feedback/ExtendedErrorReport;)V

    .line 147
    iput-object p3, p0, Lcom/google/android/feedback/FeedbackSession;->mScreenshot:Lcom/google/android/feedback/FeedbackSession$Screenshot;

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/google/android/feedback/FeedbackActivity;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    .line 114
    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackSession;->mSendScreenshot:Z

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/feedback/FeedbackSession;->spinnerPosition:I

    .line 154
    iput-object p1, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    .line 155
    invoke-virtual {p0, p2}, Lcom/google/android/feedback/FeedbackSession;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 156
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->getAppInfo()V

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/feedback/FeedbackSession;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mChooseAccount:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/feedback/FeedbackSession;)Lcom/google/android/feedback/FeedbackActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/feedback/FeedbackSession;)Lcom/google/android/feedback/ExtendedErrorReport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/feedback/FeedbackSession;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/google/android/feedback/FeedbackSession;->spinnerPosition:I

    return p1
.end method

.method private getAnrStackTraces()Ljava/lang/String;
    .locals 7

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 336
    .local v0, file:Ljava/io/FileReader;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v5, "/data/anr/traces.txt"

    invoke-direct {v1, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 337
    .end local v0           #file:Ljava/io/FileReader;
    .local v1, file:Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 338
    .local v3, reader:Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .local v4, result:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, line:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 348
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v5

    .line 354
    if-eqz v1, :cond_0

    .line 356
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_1
    move-object v0, v1

    .line 362
    .end local v1           #file:Ljava/io/FileReader;
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #result:Ljava/lang/StringBuilder;
    .restart local v0       #file:Ljava/io/FileReader;
    :goto_2
    return-object v5

    .line 344
    .end local v0           #file:Ljava/io/FileReader;
    .restart local v1       #file:Ljava/io/FileReader;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #result:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 349
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #result:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    move-object v0, v1

    .line 354
    .end local v1           #file:Ljava/io/FileReader;
    .restart local v0       #file:Ljava/io/FileReader;
    :goto_3
    if-eqz v0, :cond_2

    .line 356
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 362
    :cond_2
    :goto_4
    const/4 v5, 0x0

    goto :goto_2

    .line 351
    :catch_1
    move-exception v5

    .line 354
    :goto_5
    if-eqz v0, :cond_2

    .line 356
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 357
    :catch_2
    move-exception v5

    goto :goto_4

    .line 354
    :catchall_0
    move-exception v5

    :goto_6
    if-eqz v0, :cond_3

    .line 356
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 359
    :cond_3
    :goto_7
    throw v5

    .line 357
    .end local v0           #file:Ljava/io/FileReader;
    .restart local v1       #file:Ljava/io/FileReader;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #result:Ljava/lang/StringBuilder;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v1           #file:Ljava/io/FileReader;
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #result:Ljava/lang/StringBuilder;
    .restart local v0       #file:Ljava/io/FileReader;
    :catch_4
    move-exception v5

    goto :goto_4

    :catch_5
    move-exception v6

    goto :goto_7

    .line 354
    .end local v0           #file:Ljava/io/FileReader;
    .restart local v1       #file:Ljava/io/FileReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #file:Ljava/io/FileReader;
    .restart local v0       #file:Ljava/io/FileReader;
    goto :goto_6

    .line 351
    .end local v0           #file:Ljava/io/FileReader;
    .restart local v1       #file:Ljava/io/FileReader;
    :catch_6
    move-exception v5

    move-object v0, v1

    .end local v1           #file:Ljava/io/FileReader;
    .restart local v0       #file:Ljava/io/FileReader;
    goto :goto_5

    .line 349
    :catch_7
    move-exception v5

    goto :goto_3
.end method

.method private getAppInfo()V
    .locals 5

    .prologue
    .line 259
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v3}, Lcom/google/android/feedback/FeedbackActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 261
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget-object v3, v3, Lcom/google/android/feedback/ExtendedErrorReport;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 262
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 263
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 264
    .local v0, appLabel:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mAppLabel:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v0           #appLabel:Ljava/lang/CharSequence;
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mAppLabel:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 271
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v3}, Lcom/google/android/feedback/FeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mAppLabel:Ljava/lang/String;

    .line 274
    :cond_1
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 275
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v3}, Lcom/google/android/feedback/FeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 277
    :cond_2
    return-void

    .line 267
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getBuildInfo(Lcom/google/android/feedback/ExtendedErrorReport;)V
    .locals 4
    .parameter "report"

    .prologue
    .line 283
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->device:Ljava/lang/String;

    .line 284
    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->buildId:Ljava/lang/String;

    .line 285
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->buildType:Ljava/lang/String;

    .line 286
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->model:Ljava/lang/String;

    .line 287
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->product:Ljava/lang/String;

    .line 288
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->sdk_int:I

    .line 289
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->release:Ljava/lang/String;

    .line 290
    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->incremental:Ljava/lang/String;

    .line 291
    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->codename:Ljava/lang/String;

    .line 292
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->board:Ljava/lang/String;

    .line 293
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->brand:Ljava/lang/String;

    .line 294
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->buildFingerprint:Ljava/lang/String;

    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v2}, Lcom/google/android/feedback/FeedbackActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 298
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 299
    .local v0, info:Landroid/content/pm/PackageInfo;
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->packageVersion:I

    .line 300
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->packageVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getSystemInfo()V
    .locals 6

    .prologue
    .line 319
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/feedback/FeedbackSession;->mInstalledPackages:Ljava/util/ArrayList;

    .line 320
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/feedback/FeedbackSession;->mRunningApps:Ljava/util/ArrayList;

    .line 321
    iget-object v4, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Lcom/google/android/feedback/FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 322
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 323
    .local v2, apps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 324
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, p0, Lcom/google/android/feedback/FeedbackSession;->mRunningApps:Ljava/util/ArrayList;

    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    iget-object v4, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget v4, v4, Lcom/google/android/feedback/ExtendedErrorReport;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 329
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->getAnrStackTraces()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/feedback/FeedbackSession;->mAnrStackTraces:Ljava/lang/String;

    .line 331
    :cond_1
    return-void
.end method

.method private getTelephonyInfo(Lcom/google/android/feedback/ExtendedErrorReport;)V
    .locals 3
    .parameter "report"

    .prologue
    .line 307
    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/google/android/feedback/FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 309
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, p1, Lcom/google/android/feedback/ExtendedErrorReport;->phoneType:I

    .line 310
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/feedback/ExtendedErrorReport;->networkName:Ljava/lang/String;

    .line 311
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    iput v1, p1, Lcom/google/android/feedback/ExtendedErrorReport;->networkType:I

    .line 312
    return-void
.end method

.method private send()V
    .locals 2

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->updateReport()V

    .line 438
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v0}, Lcom/google/android/feedback/FeedbackActivity;->popSession()V

    .line 439
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    invoke-virtual {v0, v1}, Lcom/google/android/feedback/FeedbackActivity;->sendErrorReport(Lcom/google/android/feedback/ExtendedErrorReport;)V

    .line 440
    return-void
.end method

.method private setProgressBarVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 249
    invoke-static {p0}, Lcom/google/android/feedback/FeedbackActivity;->isCurrentSession(Lcom/google/android/feedback/FeedbackSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/feedback/FeedbackActivity;->setProgressBarVisible(Z)V

    goto :goto_0
.end method

.method private setScreenshotParams(Ljava/lang/String;II)V
    .locals 3
    .parameter "base64"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 421
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mScreenshot:Lcom/google/android/feedback/FeedbackSession$Screenshot;

    iget v1, v1, Lcom/google/android/feedback/FeedbackSession$Screenshot;->width:I

    iput v1, v0, Lcom/google/android/feedback/ExtendedErrorReport;->screenshotWidth:I

    .line 422
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mScreenshot:Lcom/google/android/feedback/FeedbackSession$Screenshot;

    iget v1, v1, Lcom/google/android/feedback/FeedbackSession$Screenshot;->height:I

    iput v1, v0, Lcom/google/android/feedback/ExtendedErrorReport;->screenshotHeight:I

    .line 423
    if-eqz p1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mScreenshot:Lcom/google/android/feedback/FeedbackSession$Screenshot;

    iget-object v1, v1, Lcom/google/android/feedback/FeedbackSession$Screenshot;->base64EncodedScreenshot:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/feedback/ExtendedErrorReport;->screenshot:Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mScreenshot:Lcom/google/android/feedback/FeedbackSession$Screenshot;

    iget-object v1, v1, Lcom/google/android/feedback/FeedbackSession$Screenshot;->base64EncodedScreenshot:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/feedback/ExtendedErrorReport;->screenshotBytes:[B

    .line 431
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iput-object v2, v0, Lcom/google/android/feedback/ExtendedErrorReport;->screenshot:Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iput-object v2, v0, Lcom/google/android/feedback/ExtendedErrorReport;->screenshotBytes:[B

    goto :goto_0
.end method

.method private showPreview()V
    .locals 3

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->updateReport()V

    .line 447
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const-class v2, Lcom/google/android/feedback/PreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/feedback/FeedbackActivity;->startActivity(Landroid/content/Intent;)V

    .line 449
    return-void
.end method

.method private updateReport()V
    .locals 8

    .prologue
    const v7, 0x7f08000d

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 386
    invoke-static {p0}, Lcom/google/android/feedback/FeedbackActivity;->isCurrentSession(Lcom/google/android/feedback/FeedbackSession;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 415
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const v5, 0x7f080008

    invoke-virtual {v3, v5}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 391
    .local v0, feedback:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/google/android/feedback/ExtendedErrorReport;->description:Ljava/lang/String;

    .line 393
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const v5, 0x7f08000c

    invoke-virtual {v3, v5}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 394
    .local v2, sendSystemInfo:Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    .line 396
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mScreenshot:Lcom/google/android/feedback/FeedbackSession$Screenshot;

    if-nez v3, :cond_2

    .line 397
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v3, v7}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :goto_1
    iget-object v5, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget-boolean v3, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mSystemLog:Ljava/lang/String;

    :goto_2
    iput-object v3, v5, Lcom/google/android/feedback/ExtendedErrorReport;->systemLog:Ljava/lang/String;

    .line 411
    iget-object v5, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget-boolean v3, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mEventLog:Ljava/lang/String;

    :goto_3
    iput-object v3, v5, Lcom/google/android/feedback/ExtendedErrorReport;->eventLog:Ljava/lang/String;

    .line 412
    iget-object v5, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget-boolean v3, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mInstalledPackages:Ljava/util/ArrayList;

    :goto_4
    iput-object v3, v5, Lcom/google/android/feedback/ExtendedErrorReport;->installedPackages:Ljava/util/List;

    .line 413
    iget-object v5, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget-boolean v3, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mRunningApps:Ljava/util/ArrayList;

    :goto_5
    iput-object v3, v5, Lcom/google/android/feedback/ExtendedErrorReport;->runningApplications:Ljava/util/List;

    .line 414
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget-boolean v5, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    if-eqz v5, :cond_1

    iget-object v4, p0, Lcom/google/android/feedback/FeedbackSession;->mAnrStackTraces:Ljava/lang/String;

    :cond_1
    iput-object v4, v3, Lcom/google/android/feedback/ExtendedErrorReport;->anrStackTraces:Ljava/lang/String;

    goto :goto_0

    .line 399
    :cond_2
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v3, v7}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const v5, 0x7f08000e

    invoke-virtual {v3, v5}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 401
    .local v1, sendScreenshot:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/feedback/FeedbackSession;->mSendScreenshot:Z

    .line 402
    iget-boolean v3, p0, Lcom/google/android/feedback/FeedbackSession;->mSendScreenshot:Z

    if-eqz v3, :cond_3

    .line 403
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mScreenshot:Lcom/google/android/feedback/FeedbackSession$Screenshot;

    iget-object v3, v3, Lcom/google/android/feedback/FeedbackSession$Screenshot;->base64EncodedScreenshot:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/feedback/FeedbackSession;->mScreenshot:Lcom/google/android/feedback/FeedbackSession$Screenshot;

    iget v5, v5, Lcom/google/android/feedback/FeedbackSession$Screenshot;->width:I

    iget-object v6, p0, Lcom/google/android/feedback/FeedbackSession;->mScreenshot:Lcom/google/android/feedback/FeedbackSession$Screenshot;

    iget v6, v6, Lcom/google/android/feedback/FeedbackSession$Screenshot;->height:I

    invoke-direct {p0, v3, v5, v6}, Lcom/google/android/feedback/FeedbackSession;->setScreenshotParams(Ljava/lang/String;II)V

    goto :goto_1

    .line 406
    :cond_3
    invoke-direct {p0, v4, v6, v6}, Lcom/google/android/feedback/FeedbackSession;->setScreenshotParams(Ljava/lang/String;II)V

    goto :goto_1

    .end local v1           #sendScreenshot:Landroid/widget/CheckBox;
    :cond_4
    move-object v3, v4

    .line 410
    goto :goto_2

    :cond_5
    move-object v3, v4

    .line 411
    goto :goto_3

    .line 412
    :cond_6
    sget-object v3, Lcom/google/android/feedback/FeedbackSession;->EMPTY_STRING_LIST:Ljava/util/List;

    goto :goto_4

    .line 413
    :cond_7
    sget-object v3, Lcom/google/android/feedback/FeedbackSession;->EMPTY_STRING_LIST:Ljava/util/List;

    goto :goto_5
.end method

.method private updateSpinner()V
    .locals 12

    .prologue
    .line 217
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v3, allGoogleAccounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v9, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v5

    .line 221
    .local v5, availableAccounts:[Landroid/accounts/Account;
    move-object v4, v5

    .local v4, arr$:[Landroid/accounts/Account;
    array-length v8, v4

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v0, v4, v7

    .line 222
    .local v0, account:Landroid/accounts/Account;
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v10, "com.google"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 223
    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 228
    .end local v0           #account:Landroid/accounts/Account;
    .end local v4           #arr$:[Landroid/accounts/Account;
    .end local v5           #availableAccounts:[Landroid/accounts/Account;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :catch_0
    move-exception v9

    .line 231
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [Ljava/lang/String;

    .line 232
    .local v1, accounts:[Ljava/lang/String;
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const v11, 0x7f06001e

    invoke-virtual {v10, v11}, Lcom/google/android/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    .line 233
    const/4 v6, 0x0

    .line 234
    .local v6, i:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    .local v0, account:Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    aput-object v0, v1, v6

    goto :goto_2

    .line 237
    .end local v0           #account:Ljava/lang/String;
    :cond_2
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v9, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const v10, 0x7f030008

    invoke-direct {v2, v9, v10, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 239
    .local v2, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v9, 0x1090009

    invoke-virtual {v2, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 240
    iget-object v9, p0, Lcom/google/android/feedback/FeedbackSession;->mChooseAccount:Landroid/widget/Spinner;

    invoke-virtual {v9, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 241
    iget-object v9, p0, Lcom/google/android/feedback/FeedbackSession;->mChooseAccount:Landroid/widget/Spinner;

    iget v10, p0, Lcom/google/android/feedback/FeedbackSession;->spinnerPosition:I

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 242
    return-void

    .line 226
    .end local v1           #accounts:[Ljava/lang/String;
    .end local v2           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v6           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method private updateUi()V
    .locals 11

    .prologue
    const v10, 0x7f08000f

    const/4 v3, 0x1

    const v9, 0x7f08000d

    const/16 v8, 0x8

    const/4 v4, 0x0

    .line 163
    invoke-static {p0}, Lcom/google/android/feedback/FeedbackActivity;->isCurrentSession(Lcom/google/android/feedback/FeedbackSession;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v2}, Lcom/google/android/feedback/FeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 169
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const v5, 0x7f080008

    invoke-virtual {v2, v5}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget-object v5, v5, Lcom/google/android/feedback/ExtendedErrorReport;->description:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const v5, 0x7f08000c

    invoke-virtual {v2, v5}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iget-boolean v5, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const v5, 0x7f060003

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/feedback/FeedbackSession;->mAppLabel:Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/feedback/FeedbackActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v2}, Lcom/google/android/feedback/FeedbackActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 173
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 174
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget v2, v2, Lcom/google/android/feedback/ExtendedErrorReport;->type:I

    const/16 v5, 0xb

    if-ne v2, v5, :cond_3

    .line 178
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mScreenshot:Lcom/google/android/feedback/FeedbackSession$Screenshot;

    if-nez v2, :cond_2

    .line 179
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v2, v9}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :goto_1
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v2, v10}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const v5, 0x7f080010

    invoke-virtual {v2, v5}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mChooseAccount:Landroid/widget/Spinner;

    .line 186
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mChooseAccount:Landroid/widget/Spinner;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mChooseAccount:Landroid/widget/Spinner;

    new-instance v5, Lcom/google/android/feedback/FeedbackSession$1;

    invoke-direct {v5, p0}, Lcom/google/android/feedback/FeedbackSession$1;-><init>(Lcom/google/android/feedback/FeedbackSession;)V

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 206
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->updateSpinner()V

    .line 213
    :goto_2
    iget-boolean v2, p0, Lcom/google/android/feedback/FeedbackSession;->mGotSystemLogs:Z

    if-nez v2, :cond_4

    move v2, v3

    :goto_3
    invoke-direct {p0, v2}, Lcom/google/android/feedback/FeedbackSession;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v2, v9}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const v5, 0x7f08000e

    invoke-virtual {v2, v5}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iget-boolean v5, p0, Lcom/google/android/feedback/FeedbackSession;->mSendScreenshot:Z

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 208
    :cond_3
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v2, v9}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v2, v10}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v2, v4

    .line 213
    goto :goto_3
.end method


# virtual methods
.method public getReport()Lcom/google/android/feedback/ExtendedErrorReport;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 380
    :goto_0
    :pswitch_0
    return-void

    .line 371
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->showPreview()V

    goto :goto_0

    .line 374
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->send()V

    goto :goto_0

    .line 377
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v0}, Lcom/google/android/feedback/FeedbackActivity;->popSession()V

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x7f080000
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onGotSystemLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "systemLog"
    .parameter "eventLog"

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/google/android/feedback/FeedbackSession;->mGotSystemLogs:Z

    if-nez v0, :cond_0

    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackSession;->mGotSystemLogs:Z

    .line 511
    iput-object p1, p0, Lcom/google/android/feedback/FeedbackSession;->mSystemLog:Ljava/lang/String;

    .line 512
    iput-object p2, p0, Lcom/google/android/feedback/FeedbackSession;->mEventLog:Ljava/lang/String;

    .line 513
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->updateReport()V

    .line 515
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/feedback/FeedbackSession;->setProgressBarVisible(Z)V

    .line 517
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 471
    const-string v0, "feedback.REPORT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/feedback/ExtendedErrorReport;

    iput-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    .line 472
    const-string v0, "feedback.SYSTEM_LOG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mSystemLog:Ljava/lang/String;

    .line 473
    const-string v0, "feedback.EVENT_LOG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mEventLog:Ljava/lang/String;

    .line 474
    const-string v0, "feedback.INSTALLED_PACKAGES"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mInstalledPackages:Ljava/util/ArrayList;

    .line 475
    const-string v0, "feedback.RUNNING_APPS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mRunningApps:Ljava/util/ArrayList;

    .line 476
    const-string v0, "feedback.GET_SYSTEM_LOG_THREAD_DONE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackSession;->mGotSystemLogs:Z

    .line 477
    const-string v0, "feedback.SEND_PRIVATE_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    .line 478
    const-string v0, "feedback.ANR_STACK_TRACES_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mAnrStackTraces:Ljava/lang/String;

    .line 479
    const-string v0, "feedback.SCREENSHOT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/feedback/FeedbackSession$Screenshot;

    iput-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mScreenshot:Lcom/google/android/feedback/FeedbackSession$Screenshot;

    .line 480
    return-void
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->updateReport()V

    .line 456
    const-string v0, "feedback.REPORT"

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 457
    const-string v0, "feedback.SYSTEM_LOG"

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mSystemLog:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v0, "feedback.EVENT_LOG"

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mEventLog:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v0, "feedback.INSTALLED_PACKAGES"

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mInstalledPackages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 460
    const-string v0, "feedback.RUNNING_APPS"

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mRunningApps:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 461
    const-string v0, "feedback.GET_SYSTEM_LOG_THREAD_DONE"

    iget-boolean v1, p0, Lcom/google/android/feedback/FeedbackSession;->mGotSystemLogs:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 462
    const-string v0, "feedback.SEND_PRIVATE_DATA"

    iget-boolean v1, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 463
    const-string v0, "feedback.ANR_STACK_TRACES_KEY"

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mAnrStackTraces:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v0, "feedback.SCREENSHOT_KEY"

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mScreenshot:Lcom/google/android/feedback/FeedbackSession$Screenshot;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 465
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->updateUi()V

    .line 488
    iget-boolean v0, p0, Lcom/google/android/feedback/FeedbackSession;->mGotSystemLogs:Z

    if-nez v0, :cond_0

    .line 489
    invoke-static {}, Lcom/google/android/feedback/SystemLogFetcher;->fetch()V

    .line 491
    sget-object v0, Lcom/google/android/feedback/FeedbackSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/feedback/FeedbackSession$2;

    invoke-direct {v1, p0}, Lcom/google/android/feedback/FeedbackSession$2;-><init>(Lcom/google/android/feedback/FeedbackSession;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 498
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->updateReport()V

    .line 502
    return-void
.end method
