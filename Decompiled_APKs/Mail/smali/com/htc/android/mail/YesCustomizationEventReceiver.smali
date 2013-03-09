.class public Lcom/htc/android/mail/YesCustomizationEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "YesCustomizationEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "YesCustomizationEventReceiver"

.field private static final YesUpdateAccountAction:Ljava/lang/String; = "com.HtcYesID.ACCOUNTUDPATE"

.field private static final YesUpdateAccountAction_ResultAcion:Ljava/lang/String; = "com.htc.android.mail.HtcYesID.UDPATE.RESULT"

.field private static final YesUpdateAccountAction_ResultSuccess:Ljava/lang/String; = "success"

.field private static mHandler:Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmailAddress:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mHandler:Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mEmailAddress:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mPassword:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mHandler:Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;-><init>(Lcom/htc/android/mail/YesCustomizationEventReceiver;Lcom/htc/android/mail/YesCustomizationEventReceiver$1;)V

    sput-object v0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mHandler:Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;

    .line 37
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/android/mail/YesCustomizationEventReceiver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mEmailAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/android/mail/YesCustomizationEventReceiver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->setContentValues()Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/mail/YesCustomizationEventReceiver;Landroid/net/Uri;JLandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->processAccountCreatedProcedure(Landroid/net/Uri;JLandroid/content/Intent;)V

    return-void
.end method

.method private processAccountCreatedProcedure(Landroid/net/Uri;JLandroid/content/Intent;)V
    .locals 5
    .parameter "uri"
    .parameter "aid"
    .parameter "intent"

    .prologue
    .line 190
    iget-object v3, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/android/mail/Mail;->setServicesEnabled(Landroid/content/Context;)V

    .line 193
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v2, result:Landroid/os/Bundle;
    const-string v3, "accountAuthenticatorResponse"

    invoke-virtual {p4, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 196
    .local v0, callback:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 198
    :cond_0
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setAccountChange()V

    .line 199
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3, p2, p3}, Lcom/htc/android/mail/MailEventBroadcaster;->setAccountID(J)V

    .line 200
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    iget-object v4, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 203
    new-instance v3, Landroid/app/backup/BackupManager;

    iget-object v4, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 205
    iget-object v3, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mEmailAddress:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->updateEmailAddrToPublicAccount(Ljava/lang/String;)V

    .line 208
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.launcher.ThemeChooser.action.silder_change"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, notifyIntent:Landroid/content/Intent;
    const-string v3, "silder_state"

    const/4 v4, 0x0

    invoke-virtual {p4, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    iget-object v3, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 211
    return-void
.end method

.method private setContentValues()Landroid/content/ContentValues;
    .locals 22

    .prologue
    .line 127
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v21, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/Util;->getAccountCountPref(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1

    .line 130
    const-string v1, "_defaultaccount"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    :goto_0
    const-string v20, "yes.my"

    .line 136
    .local v20, domain:Ljava/lang/String;
    const-string v4, "_domain like ?"

    .line 138
    .local v4, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/android/mail/MailProvider;->sProviderSettingsURI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v20, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 139
    .local v18, c:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 140
    .local v19, count:I
    if-lez v19, :cond_2

    .line 141
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    .line 142
    const-string v1, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 143
    .local v14, _providerId:I
    const-string v1, "_provider"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, _provider:Ljava/lang/String;
    const-string v1, "_providerGroup"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 145
    .local v13, _providerGroup:Ljava/lang/String;
    const-string v1, "_inserver"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 146
    .local v9, _inserver:Ljava/lang/String;
    const-string v1, "_inport"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 147
    .local v7, _inport:I
    const-string v1, "_outserver"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 148
    .local v11, _outserver:Ljava/lang/String;
    const-string v1, "_outport"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 149
    .local v10, _outport:I
    const-string v1, "_inprotocol"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 150
    .local v8, _inprotocol:I
    const-string v1, "_useSSLin"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 151
    .local v16, _useSSLin:I
    const-string v1, "_useSSLout"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 152
    .local v17, _useSSLout:I
    const-string v1, "_smtpauth"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 154
    .local v15, _smtpauth:I
    const-string v1, "YesCustomizationEventReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load(_providerId, _provider, _providerGroup, _inserver, _inport, _outserver, _outport, _inprotocol, _useSSLin, _useSSLout, _smtpauth)>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "_protocol"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v1, "_inserver"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "_inport"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string v1, "_outserver"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "_outport"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string v1, "_name"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "_emailaddress"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "_desc"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "_provider"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "_providerid"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v1, "_flags"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v1, "_useSSLin"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string v1, "_useSSLout"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v1, "_smtpauth"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string v1, "_providerGroup"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v1, "_username"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v1, "_password"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mPassword:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "_outusername"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "_outpassword"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mPassword:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "AccountVerify"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailCommon;->loadMailCommonSettings(Landroid/content/ContentValues;Landroid/content/Context;)Landroid/content/ContentValues;

    .line 180
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 186
    .end local v7           #_inport:I
    .end local v8           #_inprotocol:I
    .end local v9           #_inserver:Ljava/lang/String;
    .end local v10           #_outport:I
    .end local v11           #_outserver:Ljava/lang/String;
    .end local v12           #_provider:Ljava/lang/String;
    .end local v13           #_providerGroup:Ljava/lang/String;
    .end local v14           #_providerId:I
    .end local v15           #_smtpauth:I
    .end local v16           #_useSSLin:I
    .end local v17           #_useSSLout:I
    .end local v21           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return-object v21

    .line 132
    .end local v4           #where:Ljava/lang/String;
    .end local v18           #c:Landroid/database/Cursor;
    .end local v19           #count:I
    .end local v20           #domain:Ljava/lang/String;
    .restart local v21       #values:Landroid/content/ContentValues;
    :cond_1
    const-string v1, "_defaultaccount"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 185
    .restart local v4       #where:Ljava/lang/String;
    .restart local v18       #c:Landroid/database/Cursor;
    .restart local v19       #count:I
    .restart local v20       #domain:Ljava/lang/String;
    :cond_2
    if-eqz v18, :cond_3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_3
    const/16 v21, 0x0

    goto :goto_1
.end method

.method private updateEmailAddrToPublicAccount(Ljava/lang/String;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 214
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    new-instance v0, Lcom/htc/android/mail/YesCustomizationEventReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/htc/android/mail/YesCustomizationEventReceiver$1;-><init>(Lcom/htc/android/mail/YesCustomizationEventReceiver;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/htc/android/mail/YesCustomizationEventReceiver$1;->start()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, action:Ljava/lang/String;
    const-string v2, "YesCustomizationEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", action>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v2, "com.HtcYesID.ACCOUNTUDPATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const-string v2, "YesCustomizationEventReceiver"

    const-string v3, "Create Account Action"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mContext:Landroid/content/Context;

    .line 47
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 48
    .local v1, msg:Landroid/os/Message;
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    sget-object v2, Lcom/htc/android/mail/YesCustomizationEventReceiver;->mHandler:Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;

    invoke-virtual {v2, v1}, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;->sendMessage(Landroid/os/Message;)Z

    .line 51
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
