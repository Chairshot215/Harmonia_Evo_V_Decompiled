.class Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;
.super Landroid/database/ContentObserver;
.source "ImgOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/grid/ImgOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyChangeObserver"
.end annotation


# instance fields
.field mIsContentChanged:Z

.field mIsMonitoring:Z

.field final synthetic this$0:Lcom/htc/photowidget3d/grid/ImgOperator;


# direct methods
.method public constructor <init>(Lcom/htc/photowidget3d/grid/ImgOperator;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 65
    iput-object p1, p0, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->this$0:Lcom/htc/photowidget3d/grid/ImgOperator;

    .line 66
    #getter for: Lcom/htc/photowidget3d/grid/ImgOperator;->mObserverHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/htc/photowidget3d/grid/ImgOperator;->access$000(Lcom/htc/photowidget3d/grid/ImgOperator;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 61
    iput-boolean v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->mIsMonitoring:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->mIsContentChanged:Z

    .line 67
    return-void
.end method


# virtual methods
.method public isContentChanged()Z
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->mIsContentChanged:Z

    .line 78
    .local v0, bRet:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->mIsContentChanged:Z

    .line 79
    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->mIsContentChanged:Z

    .line 73
    return-void
.end method

.method public startMonitor(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    const/4 v1, 0x1

    .line 84
    iget-boolean v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->mIsMonitoring:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->stopMonitor()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->this$0:Lcom/htc/photowidget3d/grid/ImgOperator;

    #getter for: Lcom/htc/photowidget3d/grid/ImgOperator;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/photowidget3d/grid/ImgOperator;->access$100(Lcom/htc/photowidget3d/grid/ImgOperator;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->this$0:Lcom/htc/photowidget3d/grid/ImgOperator;

    #getter for: Lcom/htc/photowidget3d/grid/ImgOperator;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/photowidget3d/grid/ImgOperator;->access$100(Lcom/htc/photowidget3d/grid/ImgOperator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 93
    :cond_1
    iput-boolean v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->mIsMonitoring:Z

    .line 94
    return-void
.end method

.method public stopMonitor()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->this$0:Lcom/htc/photowidget3d/grid/ImgOperator;

    #getter for: Lcom/htc/photowidget3d/grid/ImgOperator;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/photowidget3d/grid/ImgOperator;->access$100(Lcom/htc/photowidget3d/grid/ImgOperator;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->mIsMonitoring:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->this$0:Lcom/htc/photowidget3d/grid/ImgOperator;

    #getter for: Lcom/htc/photowidget3d/grid/ImgOperator;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/photowidget3d/grid/ImgOperator;->access$100(Lcom/htc/photowidget3d/grid/ImgOperator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 102
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->mIsMonitoring:Z

    .line 103
    return-void
.end method
