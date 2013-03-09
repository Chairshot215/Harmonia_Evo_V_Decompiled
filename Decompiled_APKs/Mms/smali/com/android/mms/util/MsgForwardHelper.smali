.class public Lcom/android/mms/util/MsgForwardHelper;
.super Ljava/lang/Object;
.source "MsgForwardHelper.java"


# static fields
.field private static final EMAIL_PROJECTION:[Ljava/lang/String; = null

.field private static final FORWARD_LIMIT:I = 0x2

.field static final MESSAGE_FORWARD_EMAIL_NOTIFICATION:I = 0xc9

.field static final MESSAGE_FORWARD_NOTIFICATION:I = 0xc8

.field private static final PHONE_PATTERN_STRING:Ljava/lang/String; = "((\\+[0-9]+[\\- \\.]*)?(\\([0-9]+\\)[\\- \\.]*)?(([0-9][0-9\\- \\.][0-9\\- \\.]+(([ ][0-9]+((?=\\s)|\\b))|([\\.\\-][0-9]+)))|(((?<!\\d)[0-9])[0-9]?[\\-\\. ]([0-9]+|([0-9\\-\\. ]+(([ ][0-9]+((?=\\s)|\\b))|([\\.\\-][0-9]+)))))|((?<![ ])[0-9]+)))|([0-9]{5,})"

.field private static final PHONE_PROJECTION:[Ljava/lang/String; = null

.field private static final REQUEST_CONTACT_EMAIL_ADDRESS:I = 0x1

.field private static final REQUEST_CONTACT_PHONE_NUMBER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MsgForwardHelper"

.field public static closeDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/util/MsgForwardHelper;->PHONE_PROJECTION:[Ljava/lang/String;

    .line 80
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/util/MsgForwardHelper;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 104
    sput-boolean v2, Lcom/android/mms/util/MsgForwardHelper;->closeDialog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HandleActivityResult(Lcom/htc/preference/HtcPreferenceActivity;ILandroid/content/Intent;)Z
    .locals 9
    .parameter "atyPreference"
    .parameter "requestCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 143
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v8

    .line 203
    :goto_0
    return v0

    .line 147
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportForwardMsg()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v8

    .line 148
    goto :goto_0

    .line 151
    :cond_2
    const/4 v7, 0x0

    .line 152
    .local v7, prefForward:Lcom/android/mms/util/CForwardPreference;
    packed-switch p1, :pswitch_data_0

    .line 203
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 154
    :pswitch_0
    const-string v0, "pref_key_msg_forwarding_phone"

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    .end local v7           #prefForward:Lcom/android/mms/util/CForwardPreference;
    check-cast v7, Lcom/android/mms/util/CForwardPreference;

    .line 155
    .restart local v7       #prefForward:Lcom/android/mms/util/CForwardPreference;
    if-eqz v7, :cond_3

    .line 156
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mms/util/MsgForwardHelper;->PHONE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 159
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 160
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/mms/util/CForwardPreference;->setContactPickValue(Ljava/lang/String;)V

    .line 164
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 169
    .end local v6           #cursor:Landroid/database/Cursor;
    :pswitch_1
    const-string v0, "pref_key_msg_forwarding_email"

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    .end local v7           #prefForward:Lcom/android/mms/util/CForwardPreference;
    check-cast v7, Lcom/android/mms/util/CForwardPreference;

    .line 170
    .restart local v7       #prefForward:Lcom/android/mms/util/CForwardPreference;
    if-eqz v7, :cond_3

    .line 171
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mms/util/MsgForwardHelper;->EMAIL_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 174
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/mms/util/CForwardPreference;->setContactPickValue(Ljava/lang/String;)V

    .line 179
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static autoForwardMMS(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 7
    .parameter "ctx"
    .parameter "uriMMS"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 315
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v4

    .line 319
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportForwardMsg()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 323
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v2, listDest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;

    invoke-direct {v3}, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;-><init>()V

    .line 325
    .local v3, valuePref:Lcom/android/mms/util/CForwardPreference$PREF_VALUE;
    iput v5, v3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    .line 327
    invoke-static {p0, v3}, Lcom/android/mms/util/CForwardPreference;->getPreferenceValue(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, v3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    if-eqz v6, :cond_2

    .line 328
    iget-object v6, v3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->strValue:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_2
    const/4 v6, 0x2

    iput v6, v3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    .line 333
    invoke-static {p0, v3}, Lcom/android/mms/util/CForwardPreference;->getPreferenceValue(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, v3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    if-eqz v6, :cond_3

    .line 334
    iget-object v6, v3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->strValue:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 345
    new-instance v1, Lcom/android/mms/util/ForwardMMSHelper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/util/ForwardMMSHelper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 346
    .local v1, helperMMS:Lcom/android/mms/util/ForwardMMSHelper;
    invoke-virtual {v1, p0, p1}, Lcom/android/mms/util/ForwardMMSHelper;->loadMMS(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 349
    :try_start_0
    invoke-virtual {v1}, Lcom/android/mms/util/ForwardMMSHelper;->updateTemporaryMmsMessage()Z

    .line 350
    invoke-virtual {v1}, Lcom/android/mms/util/ForwardMMSHelper;->sendMMSAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 356
    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static autoForwardSMS(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Z
    .locals 7
    .parameter "ctx"
    .parameter "arySMSMsg"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 258
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v5, p1

    if-gtz v5, :cond_2

    :cond_0
    move v0, v4

    .line 293
    :cond_1
    :goto_0
    return v0

    .line 262
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportForwardMsg()Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v4

    .line 263
    goto :goto_0

    .line 266
    :cond_3
    const/4 v0, 0x0

    .line 268
    .local v0, bSent:Z
    new-instance v3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;

    invoke-direct {v3}, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;-><init>()V

    .line 269
    .local v3, valuePref:Lcom/android/mms/util/CForwardPreference$PREF_VALUE;
    iput v6, v3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    .line 271
    invoke-static {p0, v3}, Lcom/android/mms/util/CForwardPreference;->getPreferenceValue(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, v3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    if-eqz v5, :cond_4

    .line 272
    new-array v1, v6, [Ljava/lang/String;

    .line 273
    .local v1, dests:[Ljava/lang/String;
    iget-object v5, v3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->strValue:Ljava/lang/String;

    aput-object v5, v1, v4

    .line 275
    invoke-static {p0, v1, p1}, Lcom/android/mms/util/MsgForwardHelper;->sendSMSAsync(Landroid/content/Context;[Ljava/lang/String;[Landroid/telephony/SmsMessage;)V

    .line 277
    const/4 v0, 0x1

    .line 281
    .end local v1           #dests:[Ljava/lang/String;
    :cond_4
    const/4 v4, 0x2

    iput v4, v3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    .line 283
    invoke-static {p0, v3}, Lcom/android/mms/util/CForwardPreference;->getPreferenceValue(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    if-eqz v4, :cond_1

    .line 284
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v2, listDest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, v3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->strValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 287
    invoke-static {p0, v2, p1}, Lcom/android/mms/util/MsgForwardHelper;->sendSMSasMMS(Landroid/content/Context;Ljava/util/ArrayList;[Landroid/telephony/SmsMessage;)Z

    .line 288
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static initPreferenceLayout(Lcom/htc/preference/HtcPreferenceActivity;)Z
    .locals 12
    .parameter "atyPreference"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 107
    if-nez p0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v2

    .line 111
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportForwardMsg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const v1, 0x7f040009

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->addPreferencesFromResource(I)V

    .line 119
    const-string v1, "pref_key_msg_forwarding_phone"

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/CForwardPreference;

    .line 120
    .local v0, prefForward:Lcom/android/mms/util/CForwardPreference;
    if-eqz v0, :cond_2

    .line 121
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v3, itContact:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const v1, 0x7f0902ab

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/CForwardPreference;->initDefault(Landroid/app/Activity;ILandroid/content/Intent;Ljava/lang/String;Z)V

    .line 127
    .end local v3           #itContact:Landroid/content/Intent;
    :cond_2
    const-string v1, "pref_key_msg_forwarding_email"

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .end local v0           #prefForward:Lcom/android/mms/util/CForwardPreference;
    check-cast v0, Lcom/android/mms/util/CForwardPreference;

    .line 128
    .restart local v0       #prefForward:Lcom/android/mms/util/CForwardPreference;
    if-eqz v0, :cond_3

    .line 129
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .restart local v3       #itContact:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const v1, 0x7f0902ac

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v6, v0

    move-object v7, p0

    move v8, v5

    move-object v9, v3

    move v11, v2

    invoke-virtual/range {v6 .. v11}, Lcom/android/mms/util/CForwardPreference;->initDefault(Landroid/app/Activity;ILandroid/content/Intent;Ljava/lang/String;Z)V

    .line 137
    .end local v3           #itContact:Landroid/content/Intent;
    :cond_3
    invoke-static {p0}, Lcom/android/mms/util/MsgForwardHelper;->updateForwardIndicator(Landroid/content/Context;)V

    move v2, v5

    .line 138
    goto :goto_0
.end method

.method private static sendSMSAsync(Landroid/content/Context;[Ljava/lang/String;[Landroid/telephony/SmsMessage;)V
    .locals 2
    .parameter "ctx"
    .parameter "dests"
    .parameter "arySMSMsg"

    .prologue
    .line 364
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/util/MsgForwardHelper$1;

    invoke-direct {v1, p2, p1, p0}, Lcom/android/mms/util/MsgForwardHelper$1;-><init>([Landroid/telephony/SmsMessage;[Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 459
    return-void
.end method

.method private static sendSMSasMMS(Landroid/content/Context;Ljava/util/ArrayList;[Landroid/telephony/SmsMessage;)Z
    .locals 3
    .parameter "ctx"
    .parameter
    .parameter "arySMSMsg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Landroid/telephony/SmsMessage;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, listDest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 299
    .local v1, flag:Z
    new-instance v2, Lcom/android/mms/util/ForwardMMSHelper;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/util/ForwardMMSHelper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 300
    .local v2, helperMMS:Lcom/android/mms/util/ForwardMMSHelper;
    invoke-virtual {v2, p0, p2}, Lcom/android/mms/util/ForwardMMSHelper;->createTextMMS(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Z

    .line 304
    :try_start_0
    invoke-virtual {v2}, Lcom/android/mms/util/ForwardMMSHelper;->updateTemporaryMmsMessage()Z

    .line 305
    invoke-virtual {v2}, Lcom/android/mms/util/ForwardMMSHelper;->sendMMSAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    const/4 v1, 0x1

    .line 311
    :goto_0
    return v1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setForwardDefault(Landroid/content/Context;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    .line 628
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 631
    .local v1, nm:Landroid/app/NotificationManager;
    new-instance v2, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;

    invoke-direct {v2}, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;-><init>()V

    .line 632
    .local v2, phone:Lcom/android/mms/util/CForwardPreference$PREF_VALUE;
    new-instance v0, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;

    invoke-direct {v0}, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;-><init>()V

    .line 634
    .local v0, email:Lcom/android/mms/util/CForwardPreference$PREF_VALUE;
    const/16 v3, 0xc8

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 635
    const/16 v3, 0xc9

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 637
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    .line 638
    const/4 v3, 0x2

    iput v3, v0, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    .line 639
    iput-boolean v4, v2, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    .line 640
    iput-boolean v4, v0, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    .line 642
    invoke-static {p0, v2}, Lcom/android/mms/util/CForwardPreference;->writePreferenceValue(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    .line 643
    invoke-static {p0, v0}, Lcom/android/mms/util/CForwardPreference;->writePreferenceValue(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    .line 644
    return-void
.end method

.method public static updateForwardIndicator(Landroid/content/Context;)V
    .locals 10
    .parameter "ctx"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 210
    new-instance v2, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;

    invoke-direct {v2}, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;-><init>()V

    .line 211
    .local v2, phone:Lcom/android/mms/util/CForwardPreference$PREF_VALUE;
    new-instance v0, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;

    invoke-direct {v0}, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;-><init>()V

    .line 213
    .local v0, email:Lcom/android/mms/util/CForwardPreference$PREF_VALUE;
    iput v8, v2, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    .line 214
    const/4 v7, 0x2

    iput v7, v0, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    .line 215
    invoke-static {p0, v2}, Lcom/android/mms/util/CForwardPreference;->getPreferenceValue(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    move-result v3

    .line 216
    .local v3, phoneFlag:Z
    invoke-static {p0, v0}, Lcom/android/mms/util/CForwardPreference;->getPreferenceValue(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    move-result v1

    .line 219
    .local v1, emailFlag:Z
    if-eqz v1, :cond_1

    .line 220
    instance-of v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;

    if-eqz v7, :cond_1

    move-object v5, p0

    .line 222
    check-cast v5, Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 223
    .local v5, sPreference:Lcom/android/mms/ui/MessagingPreferenceActivity;
    const-string v7, "pref_key_mms_read_reports"

    invoke-virtual {v5, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    .line 224
    .local v4, prefReadReport:Lcom/htc/preference/HtcPreference;
    if-eqz v4, :cond_1

    .line 225
    iget-boolean v7, v0, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    if-eqz v7, :cond_0

    .line 226
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    move-object v7, v4

    .line 227
    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 229
    :cond_0
    iget-boolean v7, v0, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    if-nez v7, :cond_6

    move v7, v8

    :goto_0
    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 236
    .end local v4           #prefReadReport:Lcom/htc/preference/HtcPreference;
    .end local v5           #sPreference:Lcom/android/mms/ui/MessagingPreferenceActivity;
    :cond_1
    if-eqz v3, :cond_2

    iget-boolean v7, v2, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    if-eqz v7, :cond_2

    .line 237
    new-array v6, v8, [Ljava/lang/CharSequence;

    iget-object v7, v2, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->strValue:Ljava/lang/String;

    aput-object v7, v6, v9

    .line 238
    .local v6, str:[Ljava/lang/CharSequence;
    invoke-static {p0, v8, v6, v8}, Lcom/android/mms/util/MsgForwardHelper;->updateMessageForwardIndicator(Landroid/content/Context;Z[Ljava/lang/CharSequence;Z)V

    .line 241
    .end local v6           #str:[Ljava/lang/CharSequence;
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v7, v0, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    if-eqz v7, :cond_3

    .line 242
    new-array v6, v8, [Ljava/lang/CharSequence;

    iget-object v7, v0, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->strValue:Ljava/lang/String;

    aput-object v7, v6, v9

    .line 243
    .restart local v6       #str:[Ljava/lang/CharSequence;
    invoke-static {p0, v8, v6, v9}, Lcom/android/mms/util/MsgForwardHelper;->updateMessageForwardIndicator(Landroid/content/Context;Z[Ljava/lang/CharSequence;Z)V

    .line 246
    .end local v6           #str:[Ljava/lang/CharSequence;
    :cond_3
    new-array v6, v8, [Ljava/lang/CharSequence;

    const-string v7, "1"

    aput-object v7, v6, v9

    .line 247
    .restart local v6       #str:[Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    iget-boolean v7, v2, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    if-nez v7, :cond_4

    .line 248
    invoke-static {p0, v9, v6, v8}, Lcom/android/mms/util/MsgForwardHelper;->updateMessageForwardIndicator(Landroid/content/Context;Z[Ljava/lang/CharSequence;Z)V

    .line 250
    :cond_4
    if-eqz v1, :cond_5

    iget-boolean v7, v0, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    if-nez v7, :cond_5

    .line 251
    invoke-static {p0, v9, v6, v9}, Lcom/android/mms/util/MsgForwardHelper;->updateMessageForwardIndicator(Landroid/content/Context;Z[Ljava/lang/CharSequence;Z)V

    .line 254
    :cond_5
    return-void

    .end local v6           #str:[Ljava/lang/CharSequence;
    .restart local v4       #prefReadReport:Lcom/htc/preference/HtcPreference;
    .restart local v5       #sPreference:Lcom/android/mms/ui/MessagingPreferenceActivity;
    :cond_6
    move v7, v9

    .line 229
    goto :goto_0
.end method

.method public static updateMessageForwardIndicator(Landroid/content/Context;Z[Ljava/lang/CharSequence;Z)V
    .locals 21
    .parameter "ctx"
    .parameter "visible"
    .parameter "address"
    .parameter "phone"

    .prologue
    .line 468
    const-string v17, "MsgForwardHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "updateMessageForwardIndicator(): "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v17, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 473
    .local v9, nm:Landroid/app/NotificationManager;
    if-eqz p1, :cond_4

    .line 487
    const/4 v14, 0x1

    .line 489
    .local v14, showExpandedNotification:Z
    new-instance v8, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 490
    .local v8, intent:Landroid/content/Intent;
    const/high16 v17, 0x1000

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 492
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupport2LayerSetting()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 493
    const-string v17, "com.android.mms"

    const-string v18, "com.android.mms.ui.MessageGeneralPreference"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    :goto_0
    new-instance v10, Landroid/app/Notification;

    const v17, 0x7f02015b

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 508
    .local v10, notification:Landroid/app/Notification;
    new-instance v17, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const v19, 0x7f03003a

    invoke-direct/range {v17 .. v19}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v17

    iput-object v0, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 509
    iget-object v0, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    const v18, 0x1020006

    const v19, 0x7f02015b

    invoke-virtual/range {v17 .. v19}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 510
    iget-object v0, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    const v18, 0x7f0e0045

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0902c2

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 516
    const/16 v17, 0x1

    :try_start_0
    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "{0}"

    aput-object v18, v4, v17

    .line 517
    .local v4, SRC_TAGS:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0902c4

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 518
    .local v15, template:Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    invoke-static {v15, v4, v0}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 519
    .local v16, text:Ljava/lang/CharSequence;
    iget-object v0, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    const v18, 0x7f0e003d

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 520
    iget-object v0, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    const v18, 0x7f0e00c8

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0902c3

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .end local v4           #SRC_TAGS:[Ljava/lang/String;
    .end local v15           #template:Ljava/lang/CharSequence;
    .end local v16           #text:Ljava/lang/CharSequence;
    :goto_1
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 526
    new-instance v17, Landroid/app/NotificationButtonAction;

    invoke-direct/range {v17 .. v17}, Landroid/app/NotificationButtonAction;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v10, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    .line 527
    const/4 v5, 0x0

    .line 528
    .local v5, bi:Landroid/content/Intent;
    if-eqz p3, :cond_2

    .line 529
    new-instance v5, Landroid/content/Intent;

    .end local v5           #bi:Landroid/content/Intent;
    const-string v17, "com.htc.msg.mf.phone.disable"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .restart local v5       #bi:Landroid/content/Intent;
    :goto_2
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 535
    .local v11, pbi:Landroid/app/PendingIntent;
    iget-object v0, v10, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    move-object/from16 v17, v0

    const v18, 0x7f0e00c8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/app/NotificationButtonAction;->add(ILandroid/app/PendingIntent;)Z

    .line 546
    iget v0, v10, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 548
    if-eqz p3, :cond_3

    .line 550
    const/16 v17, 0xc8

    move/from16 v0, v17

    invoke-virtual {v9, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 624
    .end local v5           #bi:Landroid/content/Intent;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #notification:Landroid/app/Notification;
    .end local v11           #pbi:Landroid/app/PendingIntent;
    .end local v14           #showExpandedNotification:Z
    :cond_0
    :goto_3
    return-void

    .line 496
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v14       #showExpandedNotification:Z
    :cond_1
    const-string v17, "com.android.mms"

    const-string v18, "com.android.mms.ui.MessagingPreferenceActivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 521
    .restart local v10       #notification:Landroid/app/Notification;
    :catch_0
    move-exception v7

    .line 522
    .local v7, e:Ljava/lang/Exception;
    iget-object v0, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    const v18, 0x7f0e003d

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0902c5

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 531
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v5       #bi:Landroid/content/Intent;
    :cond_2
    new-instance v5, Landroid/content/Intent;

    .end local v5           #bi:Landroid/content/Intent;
    const-string v17, "com.htc.msg.mf.email.disable"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v5       #bi:Landroid/content/Intent;
    goto :goto_2

    .line 554
    .restart local v11       #pbi:Landroid/app/PendingIntent;
    :cond_3
    const/16 v17, 0xc9

    move/from16 v0, v17

    invoke-virtual {v9, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_3

    .line 559
    .end local v5           #bi:Landroid/content/Intent;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #notification:Landroid/app/Notification;
    .end local v11           #pbi:Landroid/app/PendingIntent;
    .end local v14           #showExpandedNotification:Z
    :cond_4
    if-eqz p3, :cond_6

    .line 560
    const/16 v17, 0xc8

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 565
    :goto_4
    const/4 v13, 0x0

    .line 566
    .local v13, sPreference:Lcom/htc/preference/HtcPreferenceActivity;
    const/4 v12, 0x0

    .line 567
    .local v12, prefForward:Lcom/android/mms/util/CForwardPreference;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupport2LayerSetting()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 568
    invoke-static {}, Lcom/android/mms/ui/MessageGeneralPreference;->getInstance()Lcom/android/mms/ui/MessageGeneralPreference;

    move-result-object v13

    .line 572
    :goto_5
    if-eqz v13, :cond_5

    .line 573
    if-eqz p3, :cond_8

    .line 574
    const-string v17, "pref_key_msg_forwarding_phone"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v12

    .end local v12           #prefForward:Lcom/android/mms/util/CForwardPreference;
    check-cast v12, Lcom/android/mms/util/CForwardPreference;

    .line 576
    .restart local v12       #prefForward:Lcom/android/mms/util/CForwardPreference;
    if-eqz v12, :cond_5

    .line 577
    invoke-virtual {v12}, Lcom/android/mms/util/CForwardPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    .line 578
    .local v6, dialog:Landroid/app/Dialog;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 579
    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/mms/util/MsgForwardHelper;->closeDialog:Z

    .line 580
    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 598
    .end local v6           #dialog:Landroid/app/Dialog;
    :cond_5
    :goto_6
    sget-boolean v17, Lcom/android/mms/util/MsgForwardReceiver;->bSupportSendTask:Z

    if-nez v17, :cond_0

    .line 600
    if-eqz v13, :cond_0

    .line 601
    if-eqz p3, :cond_9

    .line 602
    const-string v17, "pref_key_msg_forwarding_phone"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v12

    .end local v12           #prefForward:Lcom/android/mms/util/CForwardPreference;
    check-cast v12, Lcom/android/mms/util/CForwardPreference;

    .line 604
    .restart local v12       #prefForward:Lcom/android/mms/util/CForwardPreference;
    if-eqz v12, :cond_0

    .line 605
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v12, Lcom/android/mms/util/CForwardPreference;->m_bEnable:Z

    .line 606
    const v17, 0x7f0902a9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/mms/util/CForwardPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 562
    .end local v12           #prefForward:Lcom/android/mms/util/CForwardPreference;
    .end local v13           #sPreference:Lcom/htc/preference/HtcPreferenceActivity;
    :cond_6
    const/16 v17, 0xc9

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_4

    .line 570
    .restart local v12       #prefForward:Lcom/android/mms/util/CForwardPreference;
    .restart local v13       #sPreference:Lcom/htc/preference/HtcPreferenceActivity;
    :cond_7
    invoke-static {}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInstance()Lcom/android/mms/ui/MessagingPreferenceActivity;

    move-result-object v13

    goto :goto_5

    .line 584
    :cond_8
    const-string v17, "pref_key_msg_forwarding_email"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v12

    .end local v12           #prefForward:Lcom/android/mms/util/CForwardPreference;
    check-cast v12, Lcom/android/mms/util/CForwardPreference;

    .line 586
    .restart local v12       #prefForward:Lcom/android/mms/util/CForwardPreference;
    if-eqz v12, :cond_5

    .line 587
    invoke-virtual {v12}, Lcom/android/mms/util/CForwardPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    .line 588
    .restart local v6       #dialog:Landroid/app/Dialog;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 589
    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/mms/util/MsgForwardHelper;->closeDialog:Z

    .line 590
    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    goto :goto_6

    .line 609
    .end local v6           #dialog:Landroid/app/Dialog;
    :cond_9
    const-string v17, "pref_key_msg_forwarding_email"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v12

    .end local v12           #prefForward:Lcom/android/mms/util/CForwardPreference;
    check-cast v12, Lcom/android/mms/util/CForwardPreference;

    .line 611
    .restart local v12       #prefForward:Lcom/android/mms/util/CForwardPreference;
    if-eqz v12, :cond_a

    .line 612
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v12, Lcom/android/mms/util/CForwardPreference;->m_bEnable:Z

    .line 613
    const v17, 0x7f0902a9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/mms/util/CForwardPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 615
    :cond_a
    invoke-virtual {v13}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_3
.end method
