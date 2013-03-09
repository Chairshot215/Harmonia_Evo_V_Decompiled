.class public Lcom/google/android/finsky/adapters/DownloadProgressHelper;
.super Ljava/lang/Object;
.source "DownloadProgressHelper.java"


# static fields
.field private static sDownloadStatusFormatBytes:Ljava/lang/CharSequence;

.field private static sDownloadStatusFormatPercents:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureDownloadProgressUi(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V
    .locals 11
    .parameter "ctx"
    .parameter "progressReport"
    .parameter "downloadingBytes"
    .parameter "downloadingPercentage"
    .parameter "progressBar"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 40
    invoke-static {p0}, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->initializeStrings(Landroid/content/Context;)V

    .line 42
    const-string v7, " "

    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const-string v7, " "

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v7, p1, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    sget-object v8, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOADING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    if-eq v7, v8, :cond_1

    .line 45
    invoke-virtual {p4, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 47
    iget-object v5, p1, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    sget-object v6, Lcom/google/android/finsky/receivers/Installer$InstallerState;->INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    if-ne v5, v6, :cond_0

    .line 48
    const v5, 0x7f07019d

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-wide v7, p1, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->bytesCompleted:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    iget-wide v7, p1, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->bytesTotal:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    iget-wide v7, p1, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->bytesCompleted:J

    iget-wide v9, p1, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->bytesTotal:J

    cmp-long v7, v7, v9

    if-gtz v7, :cond_2

    move v0, v5

    .line 59
    .local v0, bytesValid:Z
    :goto_1
    const/4 v1, 0x0

    .line 60
    .local v1, percent:I
    if-eqz v0, :cond_3

    .line 61
    iget-wide v7, p1, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->bytesCompleted:J

    const-wide/16 v9, 0x64

    mul-long/2addr v7, v9

    iget-wide v9, p1, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->bytesTotal:J

    div-long/2addr v7, v9

    long-to-int v1, v7

    .line 62
    invoke-virtual {p4, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 63
    invoke-virtual {p4, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 69
    :goto_2
    iget v4, p1, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->downloadStatus:I

    .line 70
    .local v4, status:I
    const/16 v7, 0xc3

    if-ne v4, v7, :cond_4

    .line 71
    const v5, 0x7f0701a5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .end local v0           #bytesValid:Z
    .end local v1           #percent:I
    .end local v4           #status:I
    :cond_2
    move v0, v6

    .line 55
    goto :goto_1

    .line 65
    .restart local v0       #bytesValid:Z
    .restart local v1       #percent:I
    :cond_3
    invoke-virtual {p4, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    .line 72
    .restart local v4       #status:I
    :cond_4
    const/16 v7, 0xc4

    if-ne v4, v7, :cond_5

    .line 73
    const v5, 0x7f0701a6

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 74
    :cond_5
    if-eqz v0, :cond_6

    .line 75
    sget-object v7, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->sDownloadStatusFormatPercents:Ljava/lang/CharSequence;

    new-array v8, v5, [Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 77
    .local v3, progressStringPercents:Ljava/lang/CharSequence;
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    sget-object v7, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->sDownloadStatusFormatBytes:Ljava/lang/CharSequence;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/CharSequence;

    iget-wide v9, p1, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->bytesCompleted:J

    invoke-static {p0, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    iget-wide v9, p1, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->bytesTotal:J

    invoke-static {p0, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-static {v7, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 81
    .local v2, progressStringBytes:Ljava/lang/CharSequence;
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    .end local v2           #progressStringBytes:Ljava/lang/CharSequence;
    .end local v3           #progressStringPercents:Ljava/lang/CharSequence;
    :cond_6
    const v5, 0x7f0701a4

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private static initializeStrings(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->sDownloadStatusFormatPercents:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 28
    const v0, 0x7f07019a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->sDownloadStatusFormatPercents:Ljava/lang/CharSequence;

    .line 31
    :cond_0
    sget-object v0, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->sDownloadStatusFormatBytes:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 32
    const v0, 0x7f07019b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->sDownloadStatusFormatBytes:Ljava/lang/CharSequence;

    .line 35
    :cond_1
    return-void
.end method
