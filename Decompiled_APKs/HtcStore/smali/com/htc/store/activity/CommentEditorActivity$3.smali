.class Lcom/htc/store/activity/CommentEditorActivity$3;
.super Ljava/lang/Object;
.source "CommentEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/CommentEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/CommentEditorActivity;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/CommentEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/htc/store/activity/CommentEditorActivity$3;->this$0:Lcom/htc/store/activity/CommentEditorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-object v0, p0, Lcom/htc/store/activity/CommentEditorActivity$3;->this$0:Lcom/htc/store/activity/CommentEditorActivity;

    invoke-virtual {v0, v3}, Lcom/htc/store/activity/CommentEditorActivity;->showDialog(I)V

    .line 185
    new-instance v0, Lcom/htc/store/activity/CommentEditorActivity$UpdateCommentTask;

    iget-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity$3;->this$0:Lcom/htc/store/activity/CommentEditorActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/store/activity/CommentEditorActivity$UpdateCommentTask;-><init>(Lcom/htc/store/activity/CommentEditorActivity;Lcom/htc/store/activity/CommentEditorActivity$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/CommentEditorActivity$UpdateCommentTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    return-void
.end method
