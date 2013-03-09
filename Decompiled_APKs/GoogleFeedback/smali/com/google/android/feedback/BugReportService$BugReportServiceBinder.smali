.class public Lcom/google/android/feedback/BugReportService$BugReportServiceBinder;
.super Landroid/os/Binder;
.source "BugReportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/feedback/BugReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BugReportServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/feedback/BugReportService;


# direct methods
.method public constructor <init>(Lcom/google/android/feedback/BugReportService;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/feedback/BugReportService$BugReportServiceBinder;->this$0:Lcom/google/android/feedback/BugReportService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method private createFeedbackIntent(Landroid/os/Parcel;Landroid/app/ApplicationErrorReport;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 64
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/feedback/BugReportService$BugReportServiceBinder;->getService()Lcom/google/android/feedback/BugReportService;

    move-result-object v0

    const-class v2, Lcom/google/android/feedback/FeedbackActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const-string v0, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-static {v0}, Lcom/google/android/feedback/FeedbackSession$Screenshot;->from(Landroid/graphics/Bitmap;)Lcom/google/android/feedback/FeedbackSession$Screenshot;

    move-result-object v0

    .line 73
    const-string v2, "com.android.feedback.SCREENSHOT_EXTRA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    :cond_0
    return-object v1
.end method


# virtual methods
.method getService()Lcom/google/android/feedback/BugReportService;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/feedback/BugReportService$BugReportServiceBinder;->this$0:Lcom/google/android/feedback/BugReportService;

    return-object v0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 48
    .local v4, uid:I
    iget-object v6, p0, Lcom/google/android/feedback/BugReportService$BugReportServiceBinder;->this$0:Lcom/google/android/feedback/BugReportService;

    invoke-virtual {v6}, Lcom/google/android/feedback/BugReportService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 50
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, name:[Ljava/lang/String;
    array-length v6, v1

    if-nez v6, :cond_0

    .line 60
    :goto_0
    return v5

    .line 54
    :cond_0
    new-instance v3, Landroid/app/ApplicationErrorReport;

    invoke-direct {v3}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 55
    .local v3, report:Landroid/app/ApplicationErrorReport;
    aget-object v5, v1, v5

    iput-object v5, v3, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 56
    const/16 v5, 0xb

    iput v5, v3, Landroid/app/ApplicationErrorReport;->type:I

    .line 57
    iget-object v5, v3, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 58
    invoke-direct {p0, p2, v3}, Lcom/google/android/feedback/BugReportService$BugReportServiceBinder;->createFeedbackIntent(Landroid/os/Parcel;Landroid/app/ApplicationErrorReport;)Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, feedbackIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/feedback/BugReportService$BugReportServiceBinder;->getService()Lcom/google/android/feedback/BugReportService;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/feedback/BugReportService;->startActivity(Landroid/content/Intent;)V

    .line 60
    const/4 v5, 0x1

    goto :goto_0
.end method
