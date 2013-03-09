.class public Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final MIME_TYPE_APK:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final MIME_TYPE_IMAGE:Ljava/lang/String; = "image/*"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFilePath:Ljava/lang/String;

.field private mSkinName:Ljava/lang/String;

.field private mstrGUID:Ljava/lang/String;

.field private mstrMIMEType:Ljava/lang/String;

.field private mstrTargetURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "taskid"
    .parameter "strGUID"
    .parameter "strURL"
    .parameter "type"
    .parameter "skinname"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "SkinPicker.DownloadTask"

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->TAG:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->mstrTargetURL:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->mstrMIMEType:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->mFilePath:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->mSkinName:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->mContext:Landroid/content/Context;

    .line 20
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->mstrGUID:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->mstrTargetURL:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->mstrMIMEType:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->mSkinName:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->mstrGUID:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 32
    const-string v0, "SkinPicker.DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadTask::run"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->mstrTargetURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->mstrTargetURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->mstrGUID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->mSkinName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->mstrMIMEType:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;->mContext:Landroid/content/Context;

    const-class v5, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/htc/home/personalize/util/SkinDownloadUtils;->DownloadFileFromURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    return-void
.end method
