.class Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$2;
.super Ljava/lang/Object;
.source "HtcSimpleCursorAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;


# direct methods
.method constructor <init>(Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$2;->this$0:Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$2;->this$0:Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;

    iget-boolean v0, v0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$2;->this$0:Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;

    const/4 v1, 0x1

    #setter for: Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mAutoRequery:Z
    invoke-static {v0, v1}, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->access$502(Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;Z)Z

    .line 40
    iget-object v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$2;->this$0:Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;

    iget-boolean v0, v0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mDataDirty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$2;->this$0:Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;

    #getter for: Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mAutoRequery:Z
    invoke-static {v0}, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->access$600(Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$2;->this$0:Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->onContentChanged()V

    goto :goto_0
.end method
