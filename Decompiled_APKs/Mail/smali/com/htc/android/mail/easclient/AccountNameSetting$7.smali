.class Lcom/htc/android/mail/easclient/AccountNameSetting$7;
.super Ljava/lang/Object;
.source "AccountNameSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/AccountNameSetting;->fillEASDefaultAccountName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/AccountNameSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 910
    iput-object p1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$7;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 912
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$7;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->AccountNameIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$1200(Lcom/htc/android/mail/easclient/AccountNameSetting;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$7;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->AccountNameIdList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$1202(Lcom/htc/android/mail/easclient/AccountNameSetting;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$7;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->AccountNameIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$1200(Lcom/htc/android/mail/easclient/AccountNameSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 916
    const/4 v7, 0x0

    .line 918
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_desc"

    aput-object v1, v2, v0

    .line 919
    .local v2, proj:[Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_protocol=%d AND _del!=1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 920
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$7;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$800(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 922
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 924
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 925
    .local v8, desc:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$7;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #calls: Lcom/htc/android/mail/easclient/AccountNameSetting;->defaultAccountNum(Ljava/lang/String;)I
    invoke-static {v0, v8}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$1300(Lcom/htc/android/mail/easclient/AccountNameSetting;Ljava/lang/String;)I

    move-result v6

    .line 926
    .local v6, accNameId:I
    if-eqz v6, :cond_2

    .line 927
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$7;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->AccountNameIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$1200(Lcom/htc/android/mail/easclient/AccountNameSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 932
    .end local v6           #accNameId:I
    .end local v8           #desc:Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 933
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 937
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$7;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    new-instance v1, Lcom/htc/android/mail/easclient/AccountNameSetting$7$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easclient/AccountNameSetting$7$1;-><init>(Lcom/htc/android/mail/easclient/AccountNameSetting$7;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 969
    return-void

    .line 932
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 933
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 932
    :cond_5
    throw v0
.end method
