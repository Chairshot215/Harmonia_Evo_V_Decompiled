.class Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;
.super Landroid/os/AsyncTask;
.source "AccountNameSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/AccountNameSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostProfileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;",
        ">;"
    }
.end annotation


# instance fields
.field aEasAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

.field final synthetic this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/easclient/AccountNameSetting;)V
    .locals 1
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 831
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;->aEasAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/easclient/AccountNameSetting;Lcom/htc/android/mail/easclient/AccountNameSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 829
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;-><init>(Lcom/htc/android/mail/easclient/AccountNameSetting;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    .line 845
    aget-object v6, p1, v8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 846
    .local v0, accountId:J
    const/4 v4, 0x0

    .line 849
    .local v4, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$200(Lcom/htc/android/mail/easclient/AccountNameSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v6

    invoke-interface {v6, v0, v1}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getExchangeAccountInfo(J)Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;->aEasAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    .line 850
    iget-object v6, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;->aEasAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    if-nez v6, :cond_1

    .line 851
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    :catch_0
    move-exception v3

    .line 854
    .local v3, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "AccountNameSetting"

    const-string v7, "get easAccountInfo unsuccessful"

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 856
    new-instance v4, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    .end local v4           #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    invoke-direct {v4}, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;-><init>()V

    .line 857
    .restart local v4       #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    iput-boolean v8, v4, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    move-object v5, v4

    .line 866
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .local v5, result:Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 861
    .end local v5           #result:Ljava/lang/Object;
    .restart local v4       #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$000()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "AccountNameSetting"

    const-string v7, "PostProfileTask()"

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    :cond_2
    iget-object v6, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$800(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;->aEasAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    invoke-static {v6, v7}, Lcom/htc/android/mail/huxservice/HUXUTIL;->gen_profileBody(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;)Ljava/lang/String;

    move-result-object v2

    .line 864
    .local v2, body:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$800(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->postProfile(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v4

    move-object v5, v4

    .line 866
    .restart local v5       #result:Ljava/lang/Object;
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 829
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;->doInBackground([Ljava/lang/Long;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V
    .locals 4
    .parameter "finalResult"

    .prologue
    .line 835
    iget-boolean v1, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    if-eqz v1, :cond_0

    .line 836
    iget-object v1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$800(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/android/mail/Account;->setIsExchangeSaved(Landroid/content/Context;Z)V

    .line 837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;->aEasAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    const v3, 0x7f0b033c

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$800(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 840
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-virtual {v1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->finish()V

    .line 841
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 829
    check-cast p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;->onPostExecute(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V

    return-void
.end method
