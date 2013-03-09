.class Lcom/htc/store/activity/CommentEditorActivity$UpdateCommentTask;
.super Landroid/os/AsyncTask;
.source "CommentEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/CommentEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCommentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/CommentEditorActivity;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/CommentEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/htc/store/activity/CommentEditorActivity$UpdateCommentTask;->this$0:Lcom/htc/store/activity/CommentEditorActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/CommentEditorActivity;Lcom/htc/store/activity/CommentEditorActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/htc/store/activity/CommentEditorActivity$UpdateCommentTask;-><init>(Lcom/htc/store/activity/CommentEditorActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .parameter "params"

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/CommentEditorActivity$UpdateCommentTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 252
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 189
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/CommentEditorActivity$UpdateCommentTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
