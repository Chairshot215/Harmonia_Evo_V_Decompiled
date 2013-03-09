.class Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;
.super Landroid/os/Handler;
.source "YesCustomizationEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/YesCustomizationEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "intentHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/YesCustomizationEventReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/YesCustomizationEventReceiver;Lcom/htc/android/mail/YesCustomizationEventReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;-><init>(Lcom/htc/android/mail/YesCustomizationEventReceiver;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 55
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    #getter for: Lcom/htc/android/mail/YesCustomizationEventReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->access$100(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->getYesIDAccountInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v19

    .line 56
    .local v19, yesAccount:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v19, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v19, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    aget-object v1, v19, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    aget-object v1, v19, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/content/Intent;

    .line 65
    .local v13, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    const/4 v2, 0x0

    aget-object v2, v19, v2

    #setter for: Lcom/htc/android/mail/YesCustomizationEventReceiver;->mEmailAddress:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->access$202(Lcom/htc/android/mail/YesCustomizationEventReceiver;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    const/4 v2, 0x1

    aget-object v2, v19, v2

    #setter for: Lcom/htc/android/mail/YesCustomizationEventReceiver;->mPassword:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->access$302(Lcom/htc/android/mail/YesCustomizationEventReceiver;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "YesCustomizationEventReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEmailAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    #getter for: Lcom/htc/android/mail/YesCustomizationEventReceiver;->mEmailAddress:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->access$200(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    #getter for: Lcom/htc/android/mail/YesCustomizationEventReceiver;->mEmailAddress:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->access$200(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    #getter for: Lcom/htc/android/mail/YesCustomizationEventReceiver;->mEmailAddress:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->access$200(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    #getter for: Lcom/htc/android/mail/YesCustomizationEventReceiver;->mPassword:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->access$300(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    #getter for: Lcom/htc/android/mail/YesCustomizationEventReceiver;->mPassword:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->access$300(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 74
    const/4 v7, 0x0

    .line 75
    .local v7, accountExist:Z
    const-string v4, "_emailaddress like ?"

    .line 76
    .local v4, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    #getter for: Lcom/htc/android/mail/YesCustomizationEventReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->access$100(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/YesCustomizationEventReceiver;->mEmailAddress:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->access$200(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 77
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 78
    const/4 v7, 0x1

    .line 80
    :cond_3
    const-string v1, "YesCustomizationEventReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountExist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v14, 0x0

    .line 84
    .local v14, result:Z
    if-eqz v7, :cond_5

    .line 88
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 89
    .local v18, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    #getter for: Lcom/htc/android/mail/YesCustomizationEventReceiver;->mPassword:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->access$300(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 90
    .local v12, encodePwd:Ljava/lang/String;
    const-string v1, "_password"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "_outpassword"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "YesCustomizationEventReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encodePwd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    #getter for: Lcom/htc/android/mail/YesCustomizationEventReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->access$100(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    #getter for: Lcom/htc/android/mail/YesCustomizationEventReceiver;->mEmailAddress:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->access$200(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    move-object/from16 v0, v18

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 94
    .local v16, update:I
    const-string v1, "YesCustomizationEventReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-lez v16, :cond_4

    const/4 v14, 0x1

    .line 117
    .end local v12           #encodePwd:Ljava/lang/String;
    .end local v16           #update:I
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_4
    :goto_1
    const-string v1, "YesCustomizationEventReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action reslut = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v15, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.HtcYesID.UDPATE.RESULT"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v15, resultIntent:Landroid/content/Intent;
    const-string v1, "success"

    invoke-virtual {v15, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 101
    .end local v15           #resultIntent:Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    #calls: Lcom/htc/android/mail/YesCustomizationEventReceiver;->setContentValues()Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->access$400(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Landroid/content/ContentValues;

    move-result-object v11

    .line 103
    .local v11, contentValues:Landroid/content/ContentValues;
    if-eqz v11, :cond_4

    .line 105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    #getter for: Lcom/htc/android/mail/YesCustomizationEventReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->access$100(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/htc/android/mail/Account;->applyBatchAccountToDatabases(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .line 107
    .local v17, uri:Landroid/net/Uri;
    if-eqz v17, :cond_4

    .line 108
    const-string v1, "YesCustomizationEventReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v14, 0x1

    .line 111
    invoke-static/range {v17 .. v17}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 112
    .local v8, aid:J
    const-string v1, "YesCustomizationEventReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new account id>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/YesCustomizationEventReceiver$intentHandler;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    move-object/from16 v0, v17

    #calls: Lcom/htc/android/mail/YesCustomizationEventReceiver;->processAccountCreatedProcedure(Landroid/net/Uri;JLandroid/content/Intent;)V
    invoke-static {v1, v0, v8, v9, v13}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->access$500(Lcom/htc/android/mail/YesCustomizationEventReceiver;Landroid/net/Uri;JLandroid/content/Intent;)V

    goto :goto_1
.end method
