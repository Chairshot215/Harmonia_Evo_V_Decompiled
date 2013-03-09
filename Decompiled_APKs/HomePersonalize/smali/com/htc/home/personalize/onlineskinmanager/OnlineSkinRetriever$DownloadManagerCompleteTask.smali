.class public Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$DownloadManagerCompleteTask;
.super Ljava/lang/Object;
.source "OnlineSkinRetriever.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadManagerCompleteTask"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$DownloadManagerCompleteTask;->this$0:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p2, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$DownloadManagerCompleteTask;->mContext:Landroid/content/Context;

    .line 280
    iput-object p3, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$DownloadManagerCompleteTask;->mIntent:Landroid/content/Intent;

    .line 281
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 284
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v1, "DownloadManagerCompleteTask::run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$DownloadManagerCompleteTask;->this$0:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$DownloadManagerCompleteTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$DownloadManagerCompleteTask;->mIntent:Landroid/content/Intent;

    #calls: Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->OnDownloadManagerComplete(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->access$000(Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;Landroid/content/Context;Landroid/content/Intent;)V

    .line 286
    return-void
.end method
