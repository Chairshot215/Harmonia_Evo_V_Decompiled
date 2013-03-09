.class Lcom/google/android/gm/provider/Label$LabelContentUpdater;
.super Lcom/google/android/gm/provider/DelayedTaskHandler;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LabelContentUpdater"
.end annotation


# instance fields
.field final mCallerHandler:Landroid/os/Handler;

.field final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/gm/provider/Label;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/Label;Landroid/content/Context;Landroid/os/Looper;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "looper"
    .parameter "requeryDelay"

    .prologue
    .line 803
    iput-object p1, p0, Lcom/google/android/gm/provider/Label$LabelContentUpdater;->this$0:Lcom/google/android/gm/provider/Label;

    .line 804
    invoke-direct {p0, p3, p4}, Lcom/google/android/gm/provider/DelayedTaskHandler;-><init>(Landroid/os/Looper;I)V

    .line 806
    iput-object p2, p0, Lcom/google/android/gm/provider/Label$LabelContentUpdater;->mContext:Landroid/content/Context;

    .line 807
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/Label$LabelContentUpdater;->mCallerHandler:Landroid/os/Handler;

    .line 808
    return-void
.end method


# virtual methods
.method protected performTask()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 812
    iget-object v0, p0, Lcom/google/android/gm/provider/Label$LabelContentUpdater;->this$0:Lcom/google/android/gm/provider/Label;

    #getter for: Lcom/google/android/gm/provider/Label;->mAccount:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gm/provider/Label;->access$000(Lcom/google/android/gm/provider/Label;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/provider/Label$LabelContentUpdater;->this$0:Lcom/google/android/gm/provider/Label;

    #getter for: Lcom/google/android/gm/provider/Label;->mId:J
    invoke-static {v2}, Lcom/google/android/gm/provider/Label;->access$100(Lcom/google/android/gm/provider/Label;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/Label;->getLabelUri(Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    .line 813
    .local v1, labelUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/gm/provider/Label$LabelContentUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/gm/provider/Gmail;->LABEL_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 815
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Label$LabelContentUpdater;->this$0:Lcom/google/android/gm/provider/Label;

    iget-object v2, p0, Lcom/google/android/gm/provider/Label$LabelContentUpdater;->mContext:Landroid/content/Context;

    #calls: Lcom/google/android/gm/provider/Label;->load(Landroid/content/Context;Landroid/database/Cursor;)V
    invoke-static {v0, v2, v6}, Lcom/google/android/gm/provider/Label;->access$200(Lcom/google/android/gm/provider/Label;Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Label$LabelContentUpdater;->mCallerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gm/provider/Label$LabelContentUpdater$1;

    invoke-direct {v2, p0}, Lcom/google/android/gm/provider/Label$LabelContentUpdater$1;-><init>(Lcom/google/android/gm/provider/Label$LabelContentUpdater;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 829
    return-void

    .line 819
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
