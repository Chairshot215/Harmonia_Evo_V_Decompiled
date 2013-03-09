.class public Lcom/android/mms/util/MsgForwardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MsgForwardReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/MsgForwardReceiver$SendTask;
    }
.end annotation


# static fields
.field private static final KEY_EMAIL:Ljava/lang/String; = "EMAIL"

.field private static final KEY_EMAIL_TIMESTAMP:Ljava/lang/String; = "EMAIL_TIMESTAMP"

.field private static final KEY_NUMBER:Ljava/lang/String; = "NUMBER"

.field private static final KEY_NUMBER_TIMESTAMP:Ljava/lang/String; = "NUMBER_TIMESTAMP"

.field public static bSupportSendTask:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/util/MsgForwardReceiver;->bSupportSendTask:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/MsgForwardReceiver;Landroid/content/Context;Landroid/content/Intent;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/MsgForwardReceiver;->sendMessage(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method private sendMessage(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 12
    .parameter "ctx"
    .parameter "it"

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 139
    invoke-static {p1, p2}, Lcom/android/mms/util/MsgComposeHelper;->composeMessage(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v7, v9

    .line 210
    :cond_0
    :goto_0
    return v7

    .line 143
    :cond_1
    invoke-static {p1}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 144
    .local v2, prefDefault:Landroid/content/SharedPreferences;
    if-nez v2, :cond_2

    move v7, v9

    .line 145
    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 149
    .local v1, bdl:Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, strAction:Ljava/lang/String;
    const-string v5, ""

    .line 151
    .local v5, strKey:Ljava/lang/String;
    new-instance v6, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;

    invoke-direct {v6}, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;-><init>()V

    .line 153
    .local v6, valuePref:Lcom/android/mms/util/CForwardPreference$PREF_VALUE;
    const-string v10, "com.htc.msg.mfe.set"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 154
    iput v8, v6, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    .line 155
    const-string v5, "EMAIL"

    .line 157
    if-eqz v1, :cond_3

    .line 158
    const-string v10, "EMAIL_TIMESTAMP"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nTimestamp:J

    .line 187
    :cond_3
    :goto_1
    invoke-static {p1, v6}, Lcom/android/mms/util/CForwardPreference;->getPreferenceValue(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, bIsPhone:Z
    invoke-virtual {p0, p2, v5, v6}, Lcom/android/mms/util/MsgForwardReceiver;->getUpdateValue(Landroid/content/Intent;Ljava/lang/String;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 191
    invoke-static {p1, v6}, Lcom/android/mms/util/CForwardPreference;->writePreferenceValue(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    .line 194
    iget v10, v6, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    if-ne v10, v7, :cond_a

    .line 195
    const/4 v0, 0x1

    .line 200
    :goto_2
    iget-boolean v10, v6, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    if-eqz v10, :cond_b

    .line 201
    new-array v3, v7, [Ljava/lang/CharSequence;

    iget-object v10, v6, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->strValue:Ljava/lang/String;

    aput-object v10, v3, v9

    .line 202
    .local v3, str:[Ljava/lang/CharSequence;
    invoke-static {p1, v7, v3, v0}, Lcom/android/mms/util/MsgForwardHelper;->updateMessageForwardIndicator(Landroid/content/Context;Z[Ljava/lang/CharSequence;Z)V

    .line 209
    .end local v3           #str:[Ljava/lang/CharSequence;
    :cond_4
    :goto_3
    invoke-static {p1, v6}, Lcom/android/mms/util/MsgForwardUtility;->responseToCSServer(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    .line 210
    if-nez v0, :cond_0

    move v7, v8

    goto :goto_0

    .line 161
    .end local v0           #bIsPhone:Z
    :cond_5
    const-string v10, "com.htc.msg.mfn.set"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 162
    iput v7, v6, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    .line 163
    const-string v5, "NUMBER"

    .line 165
    if-eqz v1, :cond_3

    .line 166
    const-string v10, "NUMBER_TIMESTAMP"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nTimestamp:J

    goto :goto_1

    .line 169
    :cond_6
    const-string v10, "com.htc.msg.mf.all.disable"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 170
    invoke-virtual {p0, p1, v7}, Lcom/android/mms/util/MsgForwardReceiver;->disableForwardSettings(Landroid/content/Context;Z)Z

    move v7, v9

    .line 171
    goto :goto_0

    .line 174
    :cond_7
    const-string v10, "com.htc.msg.mf.phone.disable"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 175
    invoke-virtual {p0, p1, v7}, Lcom/android/mms/util/MsgForwardReceiver;->disableForwardSettings(Landroid/content/Context;Z)Z

    goto/16 :goto_0

    .line 178
    :cond_8
    const-string v7, "com.htc.msg.mf.email.disable"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 179
    invoke-virtual {p0, p1, v9}, Lcom/android/mms/util/MsgForwardReceiver;->disableForwardSettings(Landroid/content/Context;Z)Z

    move v7, v8

    .line 180
    goto/16 :goto_0

    :cond_9
    move v7, v9

    .line 184
    goto/16 :goto_0

    .line 197
    .restart local v0       #bIsPhone:Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    .line 205
    :cond_b
    const/4 v10, 0x0

    invoke-static {p1, v9, v10, v0}, Lcom/android/mms/util/MsgForwardHelper;->updateMessageForwardIndicator(Landroid/content/Context;Z[Ljava/lang/CharSequence;Z)V

    goto :goto_3
.end method

.method public static testSendMMS(Landroid/content/Context;)Z
    .locals 7
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 307
    const-string v2, "/mnt/sdcard/DCIM/SDCard/JPG/tenshi.jpg"

    const-wide/16 v3, 0x4d2

    invoke-static {p0, v2, v3, v4, v1}, Lcom/android/mms/util/MsgComposeHelper;->saveToFile(Landroid/content/Context;Ljava/lang/String;JI)Landroid/net/Uri;

    move-result-object v6

    .line 308
    .local v6, uriFile:Landroid/net/Uri;
    if-nez v6, :cond_0

    .line 325
    :goto_0
    return v1

    .line 313
    :cond_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v5, itCompose:Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND_MSG"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v1, "image/jpeg"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v5, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 318
    const-string v1, "address"

    const-string v2, "0919358266"

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string v1, "subject"

    const-string v2, "Test Send MMS"

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v1, "sms_body"

    const-string v2, "Test Test Test! Test Test again!"

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    new-instance v0, Lcom/android/mms/util/SendMMSHelper;

    invoke-direct {v0}, Lcom/android/mms/util/SendMMSHelper;-><init>()V

    .line 323
    .local v0, helperMMS:Lcom/android/mms/util/SendMMSHelper;
    const-string v2, ""

    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/SendMMSHelper;->SendMMS(Landroid/content/Context;Ljava/lang/String;JLandroid/content/Intent;)Z

    .line 325
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected disableForwardSettings(Landroid/content/Context;Z)Z
    .locals 10
    .parameter "ctx"
    .parameter "phone"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x3

    const/4 v6, 0x1

    .line 254
    if-nez p1, :cond_0

    .line 303
    :goto_0
    return v5

    .line 259
    :cond_0
    new-instance v4, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;

    invoke-direct {v4}, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;-><init>()V

    .line 260
    .local v4, valuePref:Lcom/android/mms/util/CForwardPreference$PREF_VALUE;
    invoke-static {p1}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 261
    .local v1, prefDefault:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 262
    .local v2, strPrefKey:Ljava/lang/String;
    const/4 v3, 0x0

    .line 265
    .local v3, strValue:Ljava/lang/String;
    if-nez p2, :cond_2

    .line 266
    const/4 v7, 0x2

    iput v7, v4, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    .line 267
    iput-boolean v5, v4, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    .line 268
    invoke-static {p1}, Lcom/htc/cscore/util/CSUtil;->getServerTime(Landroid/content/Context;)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nTimestamp:J

    .line 270
    if-eqz v1, :cond_1

    .line 271
    sget-object v2, Lcom/android/mms/util/CForwardPreference;->PREF_KEY_EMAIL:Ljava/lang/String;

    .line 272
    const-string v7, "0:"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 273
    if-eqz v3, :cond_1

    .line 274
    const-string v7, ":"

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, aryValues:[Ljava/lang/String;
    array-length v7, v0

    if-ne v7, v9, :cond_1

    .line 276
    aget-object v7, v0, v6

    iput-object v7, v4, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->strValue:Ljava/lang/String;

    .line 281
    .end local v0           #aryValues:[Ljava/lang/String;
    :cond_1
    invoke-static {p1, v4}, Lcom/android/mms/util/CForwardPreference;->writePreferenceValue(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    .line 282
    invoke-static {p1, v4}, Lcom/android/mms/util/MsgForwardUtility;->responseToCSServer(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    .line 301
    :goto_1
    const/4 v7, 0x0

    invoke-static {p1, v5, v7, p2}, Lcom/android/mms/util/MsgForwardHelper;->updateMessageForwardIndicator(Landroid/content/Context;Z[Ljava/lang/CharSequence;Z)V

    move v5, v6

    .line 303
    goto :goto_0

    .line 284
    :cond_2
    iput v6, v4, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    .line 286
    sget-object v2, Lcom/android/mms/util/CForwardPreference;->PREF_KEY_PHONE:Ljava/lang/String;

    .line 287
    if-eqz v1, :cond_3

    .line 288
    const-string v7, "0:"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 289
    if-eqz v3, :cond_3

    .line 290
    const-string v7, ":"

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 291
    .restart local v0       #aryValues:[Ljava/lang/String;
    array-length v7, v0

    if-ne v7, v9, :cond_3

    .line 292
    aget-object v7, v0, v6

    iput-object v7, v4, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->strValue:Ljava/lang/String;

    .line 297
    .end local v0           #aryValues:[Ljava/lang/String;
    :cond_3
    invoke-static {p1, v4}, Lcom/android/mms/util/CForwardPreference;->writePreferenceValue(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    .line 298
    invoke-static {p1, v4}, Lcom/android/mms/util/MsgForwardUtility;->responseToCSServer(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    goto :goto_1
.end method

.method protected getUpdateValue(Landroid/content/Intent;Ljava/lang/String;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z
    .locals 5
    .parameter "it"
    .parameter "strKey"
    .parameter "valueOut"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 229
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v2, v3

    .line 250
    :goto_0
    return v2

    .line 233
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 234
    .local v0, bdl:Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 235
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, strValue:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 237
    iput-boolean v2, p3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    .line 238
    iput-object v1, p3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->strValue:Ljava/lang/String;

    .line 239
    const/4 v3, 0x2

    iget v4, p3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    if-ne v3, v4, :cond_2

    .line 240
    const-string v3, "EMAIL_TIMESTAMP"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nTimestamp:J

    goto :goto_0

    .line 243
    :cond_2
    const-string v3, "NUMBER_TIMESTAMP"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nTimestamp:J

    goto :goto_0

    .line 249
    .end local v1           #strValue:Ljava/lang/String;
    :cond_3
    iput-boolean v3, p3, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "ctx"
    .parameter "it"

    .prologue
    const/4 v2, 0x0

    .line 215
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/util/MsgForwardReceiver;->bSupportSendTask:Z

    .line 222
    :goto_0
    sget-boolean v0, Lcom/android/mms/util/MsgForwardReceiver;->bSupportSendTask:Z

    if-eqz v0, :cond_2

    .line 223
    new-instance v0, Lcom/android/mms/util/MsgForwardReceiver$SendTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/util/MsgForwardReceiver$SendTask;-><init>(Lcom/android/mms/util/MsgForwardReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/MsgForwardReceiver$SendTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 226
    :goto_1
    return-void

    .line 220
    :cond_1
    sput-boolean v2, Lcom/android/mms/util/MsgForwardReceiver;->bSupportSendTask:Z

    goto :goto_0

    .line 225
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/MsgForwardReceiver;->sendMessage(Landroid/content/Context;Landroid/content/Intent;)I

    goto :goto_1
.end method
