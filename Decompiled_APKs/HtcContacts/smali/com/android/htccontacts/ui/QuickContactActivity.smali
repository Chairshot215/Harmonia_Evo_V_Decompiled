.class public final Lcom/android/htccontacts/ui/QuickContactActivity;
.super Landroid/app/Activity;
.source "QuickContactActivity.java"

# interfaces
.implements Lcom/android/htccontacts/ui/QuickContactWindow$OnDismissListener;
.implements Lcom/android/htccontacts/ui/QuickContactWindow$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ui/QuickContactActivity$TimeOutRunnable;
    }
.end annotation


# static fields
.field static final FORCE_CREATE:Z = false

.field static final HANDLER_MSG_FIX_LOOKUP:I = 0x1

.field static final LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "QuickContactActivity"

.field private static final TIMEOUT_MSG:I = 0x110001

.field private static final sTimeOutMillis:J = 0x7d0L


# instance fields
.field private final mFixLookupUriRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mQuickContact:Lcom/android/htccontacts/ui/QuickContactWindow;

.field private mTimeOutRunnable:Ljava/lang/Runnable;

.field private mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Lcom/android/htccontacts/ui/QuickContactActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/QuickContactActivity$1;-><init>(Lcom/android/htccontacts/ui/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mHandler:Landroid/os/Handler;

    .line 265
    new-instance v0, Lcom/android/htccontacts/ui/QuickContactActivity$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/QuickContactActivity$2;-><init>(Lcom/android/htccontacts/ui/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mFixLookupUriRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/ui/QuickContactActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/QuickContactActivity;->processOnNewIntentAfterLookupFixed(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ui/QuickContactActivity;)Lcom/android/htccontacts/ui/QuickContactWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mQuickContact:Lcom/android/htccontacts/ui/QuickContactWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ui/QuickContactActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private processOnNewIntentAfterLookupFixed(Landroid/net/Uri;)V
    .locals 19
    .parameter "lookupUri"

    .prologue
    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 130
    .local v18, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/QuickContactActivity;->mQuickContact:Lcom/android/htccontacts/ui/QuickContactWindow;

    if-eqz v3, :cond_1

    .line 137
    :goto_0
    const-string v3, "email"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 138
    .local v15, email:Ljava/lang/String;
    const-string v3, "phone"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, phone:Ljava/lang/String;
    const-string v3, "QuickContactActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onNewIntent - uri: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", email: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", phone: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 145
    .local v17, extras:Landroid/os/Bundle;
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 146
    .local v6, target:Landroid/graphics/Rect;
    const-string v3, "mode"

    const/4 v4, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 147
    .local v7, mode:I
    const-string v3, "exclude_mimes"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 150
    .local v16, excludeMimes:[Ljava/lang/String;
    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "vnd.android.cursor.item/htc_event_v2"

    aput-object v4, v8, v3

    .line 152
    .local v8, excludeMimesEvent:[Ljava/lang/String;
    if-nez v16, :cond_4

    .line 155
    if-eqz p1, :cond_2

    .line 157
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ui/QuickContactActivity;->sendTimeOutMessage()V

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/QuickContactActivity;->mQuickContact:Lcom/android/htccontacts/ui/QuickContactWindow;

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/htccontacts/ui/QuickContactWindow;->show(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;I[Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_1
    return-void

    .line 131
    .end local v5           #phone:Ljava/lang/String;
    .end local v6           #target:Landroid/graphics/Rect;
    .end local v7           #mode:I
    .end local v8           #excludeMimesEvent:[Ljava/lang/String;
    .end local v15           #email:Ljava/lang/String;
    .end local v16           #excludeMimes:[Ljava/lang/String;
    .end local v17           #extras:Landroid/os/Bundle;
    :cond_1
    const-string v3, "QuickContactActivity"

    const-string v4, "Preparing window"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v3, Lcom/android/htccontacts/ui/QuickContactWindow;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v3, v0, v1, v2}, Lcom/android/htccontacts/ui/QuickContactWindow;-><init>(Landroid/content/Context;Lcom/android/htccontacts/ui/QuickContactWindow$OnDismissListener;Lcom/android/htccontacts/ui/QuickContactWindow$OnShowListener;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/htccontacts/ui/QuickContactActivity;->mQuickContact:Lcom/android/htccontacts/ui/QuickContactWindow;

    goto/16 :goto_0

    .line 162
    .restart local v5       #phone:Ljava/lang/String;
    .restart local v6       #target:Landroid/graphics/Rect;
    .restart local v7       #mode:I
    .restart local v8       #excludeMimesEvent:[Ljava/lang/String;
    .restart local v15       #email:Ljava/lang/String;
    .restart local v16       #excludeMimes:[Ljava/lang/String;
    .restart local v17       #extras:Landroid/os/Bundle;
    :cond_2
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ui/QuickContactActivity;->sendTimeOutMessage()V

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/QuickContactActivity;->mQuickContact:Lcom/android/htccontacts/ui/QuickContactWindow;

    invoke-virtual {v3, v15, v5, v6, v7}, Lcom/android/htccontacts/ui/QuickContactWindow;->showUnknown(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;I)V

    goto :goto_1

    .line 171
    :cond_4
    const-string v3, "QuickContactActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "length: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    array-length v9, v0

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    move-object/from16 v0, v16

    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v14, v3, [Ljava/lang/String;

    .line 173
    .local v14, excludeMimesTotal:[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-static {v8, v3, v14, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v16

    array-length v9, v0

    move-object/from16 v0, v16

    invoke-static {v0, v3, v14, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    if-eqz p1, :cond_5

    .line 180
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ui/QuickContactActivity;->sendTimeOutMessage()V

    .line 182
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/htccontacts/ui/QuickContactActivity;->mQuickContact:Lcom/android/htccontacts/ui/QuickContactWindow;

    move-object/from16 v10, p1

    move-object v11, v5

    move-object v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcom/android/htccontacts/ui/QuickContactWindow;->show(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;I[Ljava/lang/String;)V

    goto :goto_1

    .line 185
    :cond_5
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ui/QuickContactActivity;->sendTimeOutMessage()V

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/QuickContactActivity;->mQuickContact:Lcom/android/htccontacts/ui/QuickContactWindow;

    invoke-virtual {v3, v15, v5, v6, v7}, Lcom/android/htccontacts/ui/QuickContactWindow;->showUnknown(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;I)V

    goto/16 :goto_1
.end method

.method private sendTimeOutMessage()V
    .locals 4

    .prologue
    const v3, 0x110001

    .line 302
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 304
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 305
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 306
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "QuickContactActivity"

    const-string v1, "Unexpected back captured by stub activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/QuickContactActivity;->finish()V

    .line 203
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 108
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mQuickContact:Lcom/android/htccontacts/ui/QuickContactWindow;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mQuickContact:Lcom/android/htccontacts/ui/QuickContactWindow;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/QuickContactWindow;->dismiss()V

    .line 110
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/QuickContactActivity;->finish()V

    .line 112
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const-string v0, "QuickContactActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    .line 101
    new-instance v0, Lcom/android/htccontacts/ui/QuickContactActivity$TimeOutRunnable;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/QuickContactActivity$TimeOutRunnable;-><init>(Lcom/android/htccontacts/ui/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mTimeOutRunnable:Ljava/lang/Runnable;

    .line 102
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/QuickContactActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mQuickContact:Lcom/android/htccontacts/ui/QuickContactWindow;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mQuickContact:Lcom/android/htccontacts/ui/QuickContactWindow;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/QuickContactWindow;->dismiss()V

    .line 220
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 223
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mHandler:Landroid/os/Handler;

    const v1, 0x110001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    const-string v0, "QuickContactActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method public onDismiss(Lcom/android/htccontacts/ui/QuickContactWindow;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 230
    const-string v0, "QuickContactActivity"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mHandler:Landroid/os/Handler;

    const v1, 0x110001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/QuickContactActivity;->finish()V

    .line 246
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/QuickContactActivity;->setIntent(Landroid/content/Intent;)V

    .line 119
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mFixLookupUriRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BackgroundWorkerHandler;->postInBackground(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 208
    const-string v0, "QuickContactActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mQuickContact:Lcom/android/htccontacts/ui/QuickContactWindow;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mQuickContact:Lcom/android/htccontacts/ui/QuickContactWindow;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/QuickContactWindow;->dismiss()V

    .line 214
    :cond_0
    return-void
.end method

.method public onShow(Lcom/android/htccontacts/ui/QuickContactWindow;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 297
    const-string v0, "QuickContactActivity"

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactActivity;->mHandler:Landroid/os/Handler;

    const v1, 0x110001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 299
    return-void
.end method
