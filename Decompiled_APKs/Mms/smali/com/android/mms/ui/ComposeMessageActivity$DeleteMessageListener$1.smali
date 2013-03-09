.class Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1987
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 1989
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteAll:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$3900(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x4e42

    .line 1990
    .local v1, token:I
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteLockedMessages:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v4, v5

    .line 1993
    .local v4, selection:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sms"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMsgType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4100(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mSmsGroupId:J
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4200(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteAll:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$3900(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1994
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    const-string v2, "content://sms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4302(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND gid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mSmsGroupId:J
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4200(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2000
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBackgroundDeletion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2001
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4300(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 2002
    .local v12, builder:Landroid/net/Uri$Builder;
    const-string v0, "bg"

    const-string v2, "true"

    invoke-virtual {v12, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2003
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4302(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2006
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcDeleteUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4400(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2007
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcDeleteUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4400(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 2008
    const-string v0, "bg"

    const-string v2, "true"

    invoke-virtual {v12, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2009
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcDeleteUri:Landroid/net/Uri;
    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4402(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2017
    .end local v12           #builder:Landroid/net/Uri$Builder;
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/DeletedItemsActivity;->isDeleteImmediatelyEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2018
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4300(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 2019
    .restart local v12       #builder:Landroid/net/Uri$Builder;
    const-string v0, "trash"

    const-string v2, "true"

    invoke-virtual {v12, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2020
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4302(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2023
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcDeleteUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4400(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2024
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcDeleteUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4400(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 2025
    const-string v0, "trash"

    const-string v2, "true"

    invoke-virtual {v12, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2026
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcDeleteUri:Landroid/net/Uri;
    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4402(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2032
    .end local v12           #builder:Landroid/net/Uri$Builder;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSimSms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2033
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteAll:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$3900(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2034
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcDeleteUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4400(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/util/SimIoUtil;->deleteSimSms(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2042
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteAll:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$3900(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2046
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2047
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcDeleteUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4400(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v3

    .line 2048
    .local v3, delUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcThreadId:J
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4500(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)J

    move-result-wide v13

    .line 2053
    .local v13, t_id:J
    :goto_3
    cmp-long v0, v13, v8

    if-gtz v0, :cond_4

    if-eqz v3, :cond_4

    .line 2054
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v13

    .line 2056
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;

    move-result-object v0

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v13, v14}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2068
    .end local v3           #delUri:Landroid/net/Uri;
    .end local v13           #t_id:J
    :goto_4
    return-void

    .line 1989
    .end local v1           #token:I
    .end local v4           #selection:Ljava/lang/String;
    :cond_5
    const/16 v1, 0x4e41

    goto/16 :goto_0

    .line 1990
    .restart local v1       #token:I
    :cond_6
    const-string v4, "locked=0"

    goto/16 :goto_1

    .line 2036
    .restart local v4       #selection:Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4300(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/util/SimIoUtil;->deleteSimSms(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_2

    .line 2050
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4300(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v3

    .line 2051
    .restart local v3       #delUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mThreadId:J
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4600(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)J

    move-result-wide v13

    .restart local v13       #t_id:J
    goto :goto_3

    .line 2059
    .end local v3           #delUri:Landroid/net/Uri;
    .end local v13           #t_id:J
    :cond_9
    const-string v0, "htcmsgs"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMsgType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4100(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2060
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;

    move-result-object v6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4300(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v9

    move v7, v1

    move-object v8, v5

    move-object v10, v5

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    .line 2063
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;

    move-result-object v6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4300(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v9

    move v7, v1

    move-object v8, v5

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4
.end method
