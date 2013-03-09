.class public Lcom/htc/feedback/PreviewInfoActivity;
.super Landroid/app/Activity;
.source "PreviewInfoActivity.java"


# static fields
.field private static final LOG:Z = false

.field private static final LOG_COMPLETE:I = 0x0

.field public static SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter; = null

.field private static final TAG:Ljava/lang/String; = "PreviewInfoActivity"


# instance fields
.field destory:Z

.field private mHandler:Landroid/os/Handler;

.field mTextView:Landroid/widget/TextView;

.field tag:Ljava/lang/String;

.field time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/htc/feedback/PreviewInfoActivity$1;

    invoke-direct {v0}, Lcom/htc/feedback/PreviewInfoActivity$1;-><init>()V

    sput-object v0, Lcom/htc/feedback/PreviewInfoActivity;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/feedback/PreviewInfoActivity;->tag:Ljava/lang/String;

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/feedback/PreviewInfoActivity;->time:J

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/feedback/PreviewInfoActivity;->destory:Z

    .line 47
    new-instance v0, Lcom/htc/feedback/PreviewInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/feedback/PreviewInfoActivity$2;-><init>(Lcom/htc/feedback/PreviewInfoActivity;)V

    iput-object v0, p0, Lcom/htc/feedback/PreviewInfoActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/feedback/PreviewInfoActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/feedback/PreviewInfoActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lcom/htc/feedback/PreviewInfoActivity;->requestWindowFeature(I)Z

    .line 64
    const/high16 v7, 0x7f03

    invoke-virtual {p0, v7}, Lcom/htc/feedback/PreviewInfoActivity;->setContentView(I)V

    .line 66
    const v7, 0x7f0a0002

    invoke-virtual {p0, v7}, Lcom/htc/feedback/PreviewInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/htc/feedback/PreviewInfoActivity;->mTextView:Landroid/widget/TextView;

    .line 68
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/htc/feedback/PreviewInfoActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/htc/feedback/PreviewInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 70
    .local v2, previewIntent:Landroid/content/Intent;
    const-string v7, "title"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, title:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/htc/feedback/PreviewInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    const-string v7, "text"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, text:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 75
    iget-object v7, p0, Lcom/htc/feedback/PreviewInfoActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0, v11}, Lcom/htc/feedback/PreviewInfoActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 175
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v7, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationErrorReport;

    .line 80
    .local v3, report:Landroid/app/ApplicationErrorReport;
    if-nez v3, :cond_1

    .line 81
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/htc/feedback/PreviewInfoActivity$3;

    invoke-direct {v8, p0}, Lcom/htc/feedback/PreviewInfoActivity$3;-><init>(Lcom/htc/feedback/PreviewInfoActivity;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 94
    :try_start_0
    iget-object v7, p0, Lcom/htc/feedback/PreviewInfoActivity;->mTextView:Landroid/widget/TextView;

    new-instance v8, Ljava/io/File;

    const-string v9, "/proc/last_kmsg"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    invoke-virtual {p0, v11}, Lcom/htc/feedback/PreviewInfoActivity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "PreviewInfoActivity"

    const-string v8, "error loading last_kmsg"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 100
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move-object v4, v3

    .line 101
    .local v4, reportInterface:Landroid/app/HtcIfApplicationErrorReport;
    invoke-interface {v4}, Landroid/app/HtcIfApplicationErrorReport;->getDropBoxTag()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/feedback/PreviewInfoActivity;->tag:Ljava/lang/String;

    .line 102
    iget-wide v7, v3, Landroid/app/ApplicationErrorReport;->time:J

    iput-wide v7, p0, Lcom/htc/feedback/PreviewInfoActivity;->time:J

    .line 104
    const-string v7, "dropbox"

    invoke-virtual {p0, v7}, Lcom/htc/feedback/PreviewInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 105
    .local v0, dbox:Landroid/os/DropBoxManager;
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/htc/feedback/PreviewInfoActivity$4;

    invoke-direct {v8, p0, v0}, Lcom/htc/feedback/PreviewInfoActivity$4;-><init>(Lcom/htc/feedback/PreviewInfoActivity;Landroid/os/DropBoxManager;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/feedback/PreviewInfoActivity;->destory:Z

    .line 181
    return-void
.end method
