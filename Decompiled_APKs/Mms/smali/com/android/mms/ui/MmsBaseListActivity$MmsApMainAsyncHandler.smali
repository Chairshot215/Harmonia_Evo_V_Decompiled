.class public Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;
.super Lcom/android/mms/util/MmsAsyncWorkHandler;
.source "MmsBaseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsBaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MmsApMainAsyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsBaseListActivity;


# direct methods
.method protected constructor <init>(Lcom/android/mms/ui/MmsBaseListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    invoke-direct {p0}, Lcom/android/mms/util/MmsAsyncWorkHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage_Debug(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsBaseListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ltz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iget v0, v0, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->token:I

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 301
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    .line 302
    .local v6, args:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsBaseListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v6, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 306
    .local v7, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    invoke-virtual {v0, p1, v7}, Lcom/android/mms/ui/MmsBaseListActivity;->onApBGQueryComplete(Landroid/os/Message;Landroid/database/Cursor;)V

    .line 307
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MmsBaseListActivity;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    iget-object v1, v1, Lcom/android/mms/ui/MmsBaseListActivity;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
