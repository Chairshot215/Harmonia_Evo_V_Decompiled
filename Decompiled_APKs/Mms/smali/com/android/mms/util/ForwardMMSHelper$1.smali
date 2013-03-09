.class Lcom/android/mms/util/ForwardMMSHelper$1;
.super Ljava/lang/Object;
.source "MsgForwardHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/ForwardMMSHelper;->sendMMSAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/ForwardMMSHelper;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ForwardMMSHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 805
    iput-object p1, p0, Lcom/android/mms/util/ForwardMMSHelper$1;->this$0:Lcom/android/mms/util/ForwardMMSHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 807
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 810
    .local v7, failed:Ljava/lang/Boolean;
    :try_start_0
    new-instance v0, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/util/ForwardMMSHelper$1;->this$0:Lcom/android/mms/util/ForwardMMSHelper;

    #getter for: Lcom/android/mms/util/ForwardMMSHelper;->m_ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/util/ForwardMMSHelper;->access$000(Lcom/android/mms/util/ForwardMMSHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/ForwardMMSHelper$1;->this$0:Lcom/android/mms/util/ForwardMMSHelper;

    #getter for: Lcom/android/mms/util/ForwardMMSHelper;->mMessageUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/util/ForwardMMSHelper;->access$100(Lcom/android/mms/util/ForwardMMSHelper;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/util/ForwardMMSHelper$1;->this$0:Lcom/android/mms/util/ForwardMMSHelper;

    #getter for: Lcom/android/mms/util/ForwardMMSHelper;->m_nIDThread:J
    invoke-static {v3}, Lcom/android/mms/util/ForwardMMSHelper;->access$200(Lcom/android/mms/util/ForwardMMSHelper;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/mms/util/ForwardMMSHelper$1;->this$0:Lcom/android/mms/util/ForwardMMSHelper;

    #calls: Lcom/android/mms/util/ForwardMMSHelper;->isFilterMmsReadReport()Z
    invoke-static {v5}, Lcom/android/mms/util/ForwardMMSHelper;->access$300(Lcom/android/mms/util/ForwardMMSHelper;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;JZ)V

    .line 812
    .local v0, msgSender:Lcom/android/mms/transaction/MessageSender;
    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 820
    .end local v0           #msgSender:Lcom/android/mms/transaction/MessageSender;
    :goto_0
    return-void

    .line 813
    :catch_0
    move-exception v6

    .line 814
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 819
    goto :goto_0

    .line 815
    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v6

    .line 816
    .local v6, e:Lcom/google/android/mms/MmsException;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 819
    goto :goto_0

    .line 817
    .end local v6           #e:Lcom/google/android/mms/MmsException;
    :catch_2
    move-exception v6

    .line 818
    .local v6, e:Ljava/lang/Exception;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0
.end method
