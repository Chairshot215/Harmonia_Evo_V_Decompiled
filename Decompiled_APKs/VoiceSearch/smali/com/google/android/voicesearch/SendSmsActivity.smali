.class public Lcom/google/android/voicesearch/SendSmsActivity;
.super Landroid/app/Activity;
.source "SendSmsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;
    }
.end annotation


# instance fields
.field private mStatusReceiver:Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;

.field private mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/SendSmsActivity;Ljava/lang/Exception;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/SendSmsActivity;->fireFailure(Ljava/lang/Exception;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/SendSmsActivity;)Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/SendSmsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/voicesearch/SendSmsActivity;->fireSuccess()V

    return-void
.end method

.method private fireFailure(Ljava/lang/Exception;I)V
    .locals 3
    .parameter "e"
    .parameter "result"

    .prologue
    .line 274
    if-nez p1, :cond_1

    .line 275
    const-string v0, "SendSmsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failure sending sms, status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->stop()V

    .line 282
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/SendSmsActivity;->showDialog(I)V

    .line 283
    return-void

    .line 277
    :cond_1
    const-string v0, "SendSmsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failure sending sms, status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private fireSuccess()V
    .locals 2

    .prologue
    .line 263
    const v0, 0x7f0a072c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 264
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/SendSmsActivity;->setResult(I)V

    .line 265
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->stop()V

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/SendSmsActivity;->finish()V

    .line 269
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstanceState"

    .prologue
    .line 127
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/voicesearch/SendSmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 130
    .local v14, intent:Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 131
    .local v9, data:Landroid/net/Uri;
    const-string v4, "smsto"

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    const-string v4, "SendSmsActivity"

    const-string v7, "unexpected data scheme, requires \'smsto\'"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/voicesearch/SendSmsActivity;->finish()V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/voicesearch/SendSmsActivity;->showDialog(I)V

    .line 139
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 141
    .local v2, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "smsto"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 143
    .local v19, recipientsString:Ljava/lang/String;
    :try_start_0
    const-string v4, "UTF-8"

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 149
    const-string v4, ","

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 151
    .local v18, recipients:[Ljava/lang/String;
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v14, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 152
    .local v20, text:Ljava/lang/String;
    if-nez v20, :cond_2

    const-string v20, ""

    .line 153
    :cond_2
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 154
    .local v5, dividedMessage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 156
    .local v16, numMessages:I
    new-instance v4, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    const v7, 0xea60

    new-instance v21, Lcom/google/android/voicesearch/SendSmsActivity$1;

    invoke-direct/range {v21 .. v22}, Lcom/google/android/voicesearch/SendSmsActivity$1;-><init>(Lcom/google/android/voicesearch/SendSmsActivity;)V

    move-object/from16 v0, v21

    invoke-direct {v4, v7, v0}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;-><init>(ILjava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/voicesearch/SendSmsActivity;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    .line 167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/voicesearch/SendSmsActivity;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    invoke-virtual {v4}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->start()V

    .line 174
    new-instance v11, Landroid/content/IntentFilter;

    const-string v4, "com.google.android.voicesearch.action.SMS_STATUS"

    invoke-direct {v11, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 175
    .local v11, filter:Landroid/content/IntentFilter;
    new-instance v4, Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;

    move-object/from16 v0, v18

    array-length v7, v0

    mul-int v7, v7, v16

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;-><init>(Lcom/google/android/voicesearch/SendSmsActivity;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/voicesearch/SendSmsActivity;->mStatusReceiver:Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;

    .line 176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/voicesearch/SendSmsActivity;->mStatusReceiver:Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Lcom/google/android/voicesearch/SendSmsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    move-object/from16 v8, v18

    .local v8, arr$:[Ljava/lang/String;
    array-length v15, v8

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    if-ge v13, v15, :cond_0

    aget-object v3, v8, v13

    .line 185
    .local v3, recipient:Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    const-string v4, "com.google.android.voicesearch.action.SMS_STATUS"

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v17, pendingIntent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/voicesearch/SendSmsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v4, "com.google.android.voicesearch.extras.SMS_RECIPIENTS"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v4, "com.google.android.voicesearch.extras.SMS_MESSAGE"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    new-instance v6, Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    .local v6, pendingIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_3

    .line 194
    const/4 v4, 0x0

    const/high16 v7, 0x4000

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 144
    .end local v3           #recipient:Ljava/lang/String;
    .end local v5           #dividedMessage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #pendingIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v11           #filter:Landroid/content/IntentFilter;
    .end local v12           #i:I
    .end local v13           #i$:I
    .end local v15           #len$:I
    .end local v16           #numMessages:I
    .end local v17           #pendingIntent:Landroid/content/Intent;
    .end local v18           #recipients:[Ljava/lang/String;
    .end local v20           #text:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 145
    .local v10, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "SendSmsActivity"

    const-string v7, "error decoding recipients"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/google/android/voicesearch/SendSmsActivity;->fireFailure(Ljava/lang/Exception;I)V

    goto/16 :goto_0

    .line 202
    .end local v10           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v3       #recipient:Ljava/lang/String;
    .restart local v5       #dividedMessage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #pendingIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v11       #filter:Landroid/content/IntentFilter;
    .restart local v12       #i:I
    .restart local v13       #i$:I
    .restart local v15       #len$:I
    .restart local v16       #numMessages:I
    .restart local v17       #pendingIntent:Landroid/content/Intent;
    .restart local v18       #recipients:[Ljava/lang/String;
    .restart local v20       #text:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 204
    :catch_1
    move-exception v10

    .line 205
    .local v10, e:Ljava/lang/Exception;
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/google/android/voicesearch/SendSmsActivity;->fireFailure(Ljava/lang/Exception;I)V

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 258
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 228
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 230
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 231
    const v1, 0x7f0a072a

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/SendSmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 236
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a072b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/voicesearch/SendSmsActivity$3;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/SendSmsActivity$3;-><init>(Lcom/google/android/voicesearch/SendSmsActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a07d4

    new-instance v3, Lcom/google/android/voicesearch/SendSmsActivity$2;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/SendSmsActivity$2;-><init>(Lcom/google/android/voicesearch/SendSmsActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mStatusReceiver:Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mStatusReceiver:Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/SendSmsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mStatusReceiver:Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->stop()V

    .line 219
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 220
    return-void
.end method
