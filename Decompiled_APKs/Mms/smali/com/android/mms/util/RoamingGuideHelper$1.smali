.class Lcom/android/mms/util/RoamingGuideHelper$1;
.super Ljava/lang/Object;
.source "RoamingGuideHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/RoamingGuideHelper;->moveAutoSendMsg2Queue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/RoamingGuideHelper;


# direct methods
.method constructor <init>(Lcom/android/mms/util/RoamingGuideHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/mms/util/RoamingGuideHelper$1;->this$0:Lcom/android/mms/util/RoamingGuideHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 85
    const-string v0, "RoamingGuideHelper"

    const-string v1, "moveAutoSendMsg2Queue_run >>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 87
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "type"

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/util/RoamingGuideHelper;->access$100()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->getInstance()Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->register(Landroid/content/Context;)V

    .line 96
    invoke-static {}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->forceSendPendMessage()V

    .line 97
    const-string v0, "RoamingGuideHelper"

    const-string v1, "moveAutoSendMsg2Queue_run <<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method
