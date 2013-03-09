.class Lcom/android/htccontacts/group/GroupRemoveActivity$1;
.super Landroid/os/Handler;
.source "GroupRemoveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupRemoveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/GroupRemoveActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/group/GroupRemoveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$1;->this$0:Lcom/android/htccontacts/group/GroupRemoveActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$1;->this$0:Lcom/android/htccontacts/group/GroupRemoveActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->finish()V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
