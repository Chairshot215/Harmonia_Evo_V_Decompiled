.class public Lcom/htc/painting/util/PenHelper;
.super Ljava/lang/Object;
.source "PenHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PenHelper"

.field static volatile mPens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/tool/pen/Pen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/painting/util/PenHelper;->mPens:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized initPens(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 19
    const-class v1, Lcom/htc/painting/util/PenHelper;

    monitor-enter v1

    :try_start_0
    const-string v0, "PenHelper"

    const-string v2, "initPens : "

    invoke-static {v0, v2}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/htc/painting/util/PenHelper;->mPens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 21
    invoke-static {p0}, Lcom/htc/painting/tool/pen/PenUtils;->getAllPen(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/htc/painting/util/PenHelper;->mPens:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_0
    monitor-exit v1

    return-void

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized queryPen(I)Lcom/htc/painting/tool/pen/Pen;
    .locals 6
    .parameter "penId"

    .prologue
    .line 25
    const-class v3, Lcom/htc/painting/util/PenHelper;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/htc/painting/util/PenHelper;->mPens:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 26
    sget-object v2, Lcom/htc/painting/util/PenHelper;->mPens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/tool/pen/Pen;

    .line 27
    .local v1, p:Lcom/htc/painting/tool/pen/Pen;
    invoke-virtual {v1}, Lcom/htc/painting/tool/pen/Pen;->getId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, p0, :cond_0

    .line 36
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/htc/painting/tool/pen/Pen;
    :goto_0
    monitor-exit v3

    return-object v1

    .line 31
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v2, "PenHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query pen fail, mPens doesnt contain this pen, pen id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 33
    :cond_2
    const-string v2, "PenHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query pen fail, mPens is null, id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 25
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized queryPen(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/painting/tool/pen/Pen;
    .locals 6
    .parameter "packageName"
    .parameter "penName"

    .prologue
    .line 39
    const-class v3, Lcom/htc/painting/util/PenHelper;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/htc/painting/util/PenHelper;->mPens:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 40
    sget-object v2, Lcom/htc/painting/util/PenHelper;->mPens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/tool/pen/Pen;

    .line 41
    .local v1, p:Lcom/htc/painting/tool/pen/Pen;
    invoke-virtual {v1}, Lcom/htc/painting/tool/pen/Pen;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/htc/painting/tool/pen/Pen;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/htc/painting/tool/pen/Pen;
    :goto_0
    monitor-exit v3

    return-object v1

    .line 46
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v2, "PenHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query pen fail, mPens doesnt contain this pen, package name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pen name :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 50
    :cond_2
    const-string v2, "PenHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query pen fail, mPens is null, package name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pen name :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 39
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
