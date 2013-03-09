.class Lcom/android/mms/ui/MmsBaseListActivity$1;
.super Landroid/os/Handler;
.source "MmsBaseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsBaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsBaseListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsBaseListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/mms/ui/MmsBaseListActivity$1;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 257
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 273
    iget-object v1, p0, Lcom/android/mms/ui/MmsBaseListActivity$1;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MmsBaseListActivity;->handleUIMessage(Landroid/os/Message;)V

    .line 276
    :goto_0
    return-void

    .line 259
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    .line 261
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/mms/ui/MmsBaseListActivity$1;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsBaseListActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_2

    .line 262
    :cond_0
    if-eqz v0, :cond_1

    .line 264
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;Z)V

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsBaseListActivity$1;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    iget-object v1, v1, Lcom/android/mms/ui/MmsBaseListActivity;->mCursorAdapter:Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MmsBaseListActivity$1;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    iget-object v1, v1, Lcom/android/mms/ui/MmsBaseListActivity;->mCursorAdapter:Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
