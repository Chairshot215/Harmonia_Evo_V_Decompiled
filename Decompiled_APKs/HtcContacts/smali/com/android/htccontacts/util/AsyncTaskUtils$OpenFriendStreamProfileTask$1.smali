.class Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask$1;
.super Ljava/lang/Object;
.source "AsyncTaskUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask$1;->this$0:Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask$1;->this$0:Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;->cancel(Z)Z

    .line 48
    return-void
.end method
