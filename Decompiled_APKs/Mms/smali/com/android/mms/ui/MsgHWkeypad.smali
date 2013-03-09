.class public Lcom/android/mms/ui/MsgHWkeypad;
.super Ljava/lang/Object;
.source "MsgHWkeypad.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MsgHWkeypad"


# instance fields
.field private mAdapter:Landroid/widget/CursorAdapter;

.field private mCategory:Lcom/android/mms/category/Category;

.field private mContext:Landroid/app/Activity;

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mThreadId:J

.field private pre_keyCode:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/android/mms/category/Category;JLcom/htc/widget/HtcListView;Landroid/widget/CursorAdapter;)V
    .locals 2
    .parameter "context"
    .parameter "category"
    .parameter "threadId"
    .parameter "htcListView"
    .parameter "adapter"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MsgHWkeypad;->pre_keyCode:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/MsgHWkeypad;->mThreadId:J

    .line 44
    iput-object p2, p0, Lcom/android/mms/ui/MsgHWkeypad;->mCategory:Lcom/android/mms/category/Category;

    .line 45
    iput-object p1, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    .line 46
    iput-wide p3, p0, Lcom/android/mms/ui/MsgHWkeypad;->mThreadId:J

    .line 47
    iput-object p5, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    .line 48
    iput-object p6, p0, Lcom/android/mms/ui/MsgHWkeypad;->mAdapter:Landroid/widget/CursorAdapter;

    .line 49
    return-void
.end method

.method private getMsgListQueryProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lcom/android/mms/msg/util/ColumnsMap;->HTC_PROJECTION:[Ljava/lang/String;

    .line 293
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mms/msg/util/ColumnsMap;->PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method

.method private getThreadUri()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 301
    iget-wide v1, p0, Lcom/android/mms/ui/MsgHWkeypad;->mThreadId:J

    .line 311
    .local v1, id:J
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    sget-object v4, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 317
    .local v0, builder:Landroid/net/Uri$Builder;
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 319
    const-string v4, "category"

    iget-object v5, p0, Lcom/android/mms/ui/MsgHWkeypad;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v5}, Lcom/android/mms/category/Category;->value()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 320
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 323
    .local v3, uri:Landroid/net/Uri;
    return-object v3

    .line 314
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    sget-object v4, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto :goto_0
.end method

.method private gotoBottom()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 229
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportShortCutForHWKey()Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    :goto_0
    return v1

    .line 232
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    if-nez v3, :cond_1

    move v1, v2

    .line 233
    goto :goto_0

    .line 235
    :cond_1
    const/4 v0, 0x0

    .line 237
    .local v0, cnt:I
    iget-object v3, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v0

    .line 238
    const-string v3, "MsgHWkeypad"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gotoBottom  cnt>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v3, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    instance-of v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v3, :cond_2

    .line 241
    if-le v0, v1, :cond_3

    .line 242
    iget-object v2, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .line 246
    :cond_2
    if-lez v0, :cond_3

    .line 247
    iget-object v2, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 252
    goto :goto_0
.end method

.method private gotoComposeDelete()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 173
    iget-object v6, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    if-nez v6, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v5

    .line 177
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v0

    .line 178
    .local v0, id:J
    const-string v6, "MsgHWkeypad"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gotoDelete  id>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_0

    .line 182
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    const-class v6, Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v4, myintent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/mms/ui/MsgHWkeypad;->getThreadUri()Landroid/net/Uri;

    move-result-object v2

    .line 185
    .local v2, mBaseUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    iget-wide v6, p0, Lcom/android/mms/ui/MsgHWkeypad;->mThreadId:J

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, myaddress:Ljava/lang/String;
    const-string v5, "title"

    const v6, 0x7f0902c6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v5, "uri"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 188
    const-string v5, "projection"

    invoke-direct {p0}, Lcom/android/mms/ui/MsgHWkeypad;->getMsgListQueryProjection()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v5, "address"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    iget-object v5, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 191
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private gotoConversationDelete()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 256
    iget-object v6, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    if-nez v6, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v5

    .line 259
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 263
    iget-object v6, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v1

    .line 264
    .local v1, id:J
    const-string v6, "MsgHWkeypad"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gotoDelete  id>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-gez v6, :cond_0

    .line 269
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 270
    sget-object v5, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 273
    .local v0, builder:Landroid/net/Uri$Builder;
    :goto_1
    const-string v5, "category"

    iget-object v6, p0, Lcom/android/mms/ui/MsgHWkeypad;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v6}, Lcom/android/mms/category/Category;->value()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 274
    const-string v5, "simple"

    const-string v6, "true"

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 275
    const-string v5, "formal"

    const-string v6, "true"

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 276
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 277
    .local v4, mBaseUri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    const-class v6, Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "title"

    const v6, 0x7f09010c

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    const-string v5, "uri"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 280
    const-string v5, "projection"

    sget-object v6, Lcom/android/mms/ui/ConversationListAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-object v5, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 283
    const/4 v5, 0x1

    goto :goto_0

    .line 272
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #mBaseUri:Landroid/net/Uri;
    :cond_2
    sget-object v5, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto :goto_1
.end method

.method private gotoConversationForward()Z
    .locals 4

    .prologue
    .line 143
    iget-object v2, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v0

    .line 144
    .local v0, id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 148
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private gotoForward()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 125
    iget-object v4, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v0

    .line 126
    .local v0, id:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 138
    :goto_0
    return v3

    .line 129
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    const-class v5, Lcom/android/mms/ui/ForwardDetailView;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "CONTACT_ID"

    iget-wide v5, p0, Lcom/android/mms/ui/MsgHWkeypad;->mThreadId:J

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 131
    const-string v4, "CURRENT_POS"

    iget-object v5, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string v4, "DESCORDER"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    iget-object v3, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 134
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private gotoNewCompose()Z
    .locals 3

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "category"

    iget-object v2, p0, Lcom/android/mms/ui/MsgHWkeypad;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2}, Lcom/android/mms/category/Category;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 117
    const/4 v1, 0x1

    return v1
.end method

.method private gotoReply()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v3, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    instance-of v3, v3, Lcom/android/mms/ui/ConversationList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    if-nez v3, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v2

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v0

    .line 158
    .local v0, id:J
    const-string v3, "MsgHWkeypad"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gotoReply  id>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/android/mms/ui/MsgHWkeypad;->openThread()Z

    move-result v2

    goto :goto_0
.end method

.method private gotoReplyAll()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 367
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportShortCutForHWKey()Z

    move-result v6

    if-nez v6, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v4

    .line 370
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportReplyAll()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 373
    iget-object v6, p0, Lcom/android/mms/ui/MsgHWkeypad;->mAdapter:Landroid/widget/CursorAdapter;

    if-nez v6, :cond_2

    move v4, v5

    .line 374
    goto :goto_0

    .line 376
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/MsgHWkeypad;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 377
    .local v3, threadCursor:Landroid/database/Cursor;
    const/16 v6, 0x9

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 381
    const/4 v1, 0x0

    .line 382
    .local v1, index:I
    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 383
    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 384
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 386
    :cond_3
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 388
    invoke-direct {p0}, Lcom/android/mms/ui/MsgHWkeypad;->gotoReply()Z

    goto :goto_0

    .line 392
    :cond_4
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    const-class v6, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "compose_mode"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 394
    const-string v5, "exit_on_sent"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 396
    const-string v5, "address"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    iget-object v5, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v1           #index:I
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    move v4, v5

    .line 401
    goto :goto_0
.end method

.method private gotoTop()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 197
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportShortCutForHWKey()Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    :goto_0
    return v1

    .line 201
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    if-nez v3, :cond_1

    move v1, v2

    .line 202
    goto :goto_0

    .line 204
    :cond_1
    const/4 v0, 0x0

    .line 206
    .local v0, cnt:I
    iget-object v3, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v0

    .line 207
    const-string v3, "MsgHWkeypad"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gotoTop  cnt>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v3, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    instance-of v3, v3, Lcom/android/mms/ui/ConversationList;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposeMsgAtTitle()Z

    move-result v3

    if-nez v3, :cond_2

    .line 211
    if-le v0, v1, :cond_3

    .line 213
    iget-object v2, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .line 219
    :cond_2
    if-lez v0, :cond_3

    .line 221
    iget-object v3, p0, Lcom/android/mms/ui/MsgHWkeypad;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 225
    goto :goto_0
.end method

.method public static hWKeyboardShow(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 63
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v1, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportSense20HWkey()Z
    .locals 4

    .prologue
    .line 53
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openThread()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 332
    iget-object v8, p0, Lcom/android/mms/ui/MsgHWkeypad;->mAdapter:Landroid/widget/CursorAdapter;

    if-nez v8, :cond_0

    .line 362
    :goto_0
    return v6

    .line 335
    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/MsgHWkeypad;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v8}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 336
    .local v3, threadCursor:Landroid/database/Cursor;
    const/16 v8, 0x9

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, address:Ljava/lang/String;
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 339
    .local v4, threadId:J
    const/16 v8, 0xb

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 341
    .local v1, btype:I
    iget-object v8, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/android/mms/util/SpaceBufferUtil;->isLowStorage(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 342
    iget-object v8, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    invoke-static {v8, v7}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    goto :goto_0

    .line 345
    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    const-class v8, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v2, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "thread_id"

    invoke-virtual {v2, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 348
    const-string v6, "Reply_msg"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 350
    const-string v6, "address"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    :goto_1
    const-string v6, "broadcast_type"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const-string v6, "category"

    iget-object v8, p0, Lcom/android/mms/ui/MsgHWkeypad;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v8}, Lcom/android/mms/category/Category;->value()I

    move-result v8

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    iget-object v6, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v6, v7

    .line 359
    goto :goto_0

    .line 353
    :cond_2
    const-string v6, "address"

    iget-object v8, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    const v9, 0x7f090021

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method public executeKeyCode(I)Z
    .locals 2
    .parameter "KeyCode"

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, result:Z
    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    .line 71
    sparse-switch p1, :sswitch_data_0

    .line 105
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/mms/ui/MsgHWkeypad;->pre_keyCode:I

    .line 106
    return v0

    .line 73
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MsgHWkeypad;->gotoNewCompose()Z

    move-result v0

    .line 74
    goto :goto_0

    .line 77
    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    instance-of v1, v1, Lcom/android/mms/ui/ConversationList;

    if-eqz v1, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/android/mms/ui/MsgHWkeypad;->gotoConversationDelete()Z

    move-result v0

    goto :goto_0

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/MsgHWkeypad;->gotoComposeDelete()Z

    move-result v0

    .line 81
    goto :goto_0

    .line 83
    :sswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/MsgHWkeypad;->mContext:Landroid/app/Activity;

    instance-of v1, v1, Lcom/android/mms/ui/ConversationList;

    if-eqz v1, :cond_2

    .line 84
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/MsgHWkeypad;->gotoForward()Z

    move-result v0

    .line 87
    goto :goto_0

    .line 90
    :sswitch_3
    invoke-direct {p0}, Lcom/android/mms/ui/MsgHWkeypad;->gotoReply()Z

    move-result v0

    .line 91
    goto :goto_0

    .line 96
    :sswitch_4
    invoke-direct {p0}, Lcom/android/mms/ui/MsgHWkeypad;->gotoTop()Z

    move-result v0

    .line 97
    goto :goto_0

    .line 99
    :sswitch_5
    invoke-direct {p0}, Lcom/android/mms/ui/MsgHWkeypad;->gotoBottom()Z

    move-result v0

    goto :goto_0

    .line 71
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_3
        0x1e -> :sswitch_5
        0x1f -> :sswitch_0
        0x22 -> :sswitch_2
        0x2e -> :sswitch_3
        0x30 -> :sswitch_4
        0x43 -> :sswitch_1
    .end sparse-switch
.end method
