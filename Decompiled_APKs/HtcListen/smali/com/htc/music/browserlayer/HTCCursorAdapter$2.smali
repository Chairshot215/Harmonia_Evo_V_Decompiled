.class Lcom/htc/music/browserlayer/HTCCursorAdapter$2;
.super Ljava/lang/Object;
.source "HTCCursorAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/HTCCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/HTCCursorAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$2;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "[HTCCursorAdapter]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$2;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    iget-object v2, v2, Lcom/htc/music/browserlayer/HTCCursorAdapter;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> run mEnableAutoRequery, mAutoRequeryLock= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$2;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    iget-boolean v2, v2, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequeryLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$2;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequeryLock:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$2;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    iput-boolean v3, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequery:Z

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$2;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDataDirty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$2;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$2;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    iget-object v0, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mChangeObserver:Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$2;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    iget-object v0, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mChangeObserver:Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;->onChange(Z)V

    goto :goto_0
.end method
