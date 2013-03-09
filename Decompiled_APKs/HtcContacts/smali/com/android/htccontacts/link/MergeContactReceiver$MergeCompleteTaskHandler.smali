.class Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;
.super Landroid/os/Handler;
.source "MergeContactReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/MergeContactReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MergeCompleteTaskHandler"
.end annotation


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Looper;)V
    .locals 1
    .parameter "context"
    .parameter "handler"
    .parameter "looper"

    .prologue
    .line 142
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 143
    iput-object p1, p0, Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 145
    iput-object p2, p0, Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;->mUIHandler:Landroid/os/Handler;

    .line 146
    return-void
.end method

.method private processMerge(Landroid/content/Intent;)Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 161
    const-string v0, "MergeContactReceiver"

    const-string v3, "processMerge E"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, action:Ljava/lang/String;
    const/4 v11, 0x0

    .line 165
    .local v11, obj:Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 167
    .local v12, start:J
    const-string v0, "android.intent.action.CONTACT_MERGE_COMPLETE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/htccontacts/util/LinkUtils;->returnSuggestList(Landroid/content/Context;)Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 188
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v8, v2, v12

    .line 189
    .local v8, elapsedTime:J
    const-string v0, "MergeContactReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact query suggestion complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;->mContext:Landroid/content/Context;

    iput-object v0, v11, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mInnerContext:Landroid/content/Context;

    .line 191
    const-string v0, "MergeContactReceiver"

    const-string v2, "processMerge X"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-object v11

    .line 170
    .end local v8           #elapsedTime:J
    :catch_0
    move-exception v7

    .line 171
    .local v7, e:Ljava/lang/RuntimeException;
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v10

    .line 172
    .local v10, error:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "cursor window"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 177
    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :goto_0
    const-string v0, "content://com.android.contacts/debug/dump_sqlite_cursor"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 182
    .local v1, dumpUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 184
    .end local v1           #dumpUri:Landroid/net/Uri;
    :cond_1
    throw v7

    .line 178
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    .line 148
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 151
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;->processMerge(Landroid/content/Intent;)Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;

    move-result-object v2

    .line 152
    .local v2, obj:Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;
    iget-object v3, p0, Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    iget-object v3, p0, Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 154
    .local v1, message:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
