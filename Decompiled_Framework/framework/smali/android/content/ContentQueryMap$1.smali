.class Landroid/content/ContentQueryMap$1;
.super Landroid/database/ContentObserver;
.source "ContentQueryMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/ContentQueryMap;->setKeepUpdated(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/ContentQueryMap;


# direct methods
.method constructor <init>(Landroid/content/ContentQueryMap;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v1, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    invoke-virtual {v1}, Landroid/content/ContentQueryMap;->countObservers()I

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    invoke-virtual {v1}, Landroid/content/ContentQueryMap;->requery()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ContentQueryMap"

    const-string v2, "SQLiteDiskIOException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    const/4 v2, 0x1

    #setter for: Landroid/content/ContentQueryMap;->mDirty:Z
    invoke-static {v1, v2}, Landroid/content/ContentQueryMap;->access$002(Landroid/content/ContentQueryMap;Z)Z

    goto :goto_0
.end method
