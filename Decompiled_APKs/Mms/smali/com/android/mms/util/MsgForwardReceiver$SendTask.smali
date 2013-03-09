.class Lcom/android/mms/util/MsgForwardReceiver$SendTask;
.super Landroid/os/AsyncTask;
.source "MsgForwardReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/MsgForwardReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/mms/util/MsgForwardReceiver;


# direct methods
.method constructor <init>(Lcom/android/mms/util/MsgForwardReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/mms/util/MsgForwardReceiver$SendTask;->this$0:Lcom/android/mms/util/MsgForwardReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/android/mms/util/MsgForwardReceiver$SendTask;->mContext:Landroid/content/Context;

    .line 71
    iput-object p3, p0, Lcom/android/mms/util/MsgForwardReceiver$SendTask;->mIntent:Landroid/content/Intent;

    .line 72
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .parameter "v"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/util/MsgForwardReceiver$SendTask;->this$0:Lcom/android/mms/util/MsgForwardReceiver;

    iget-object v1, p0, Lcom/android/mms/util/MsgForwardReceiver$SendTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/util/MsgForwardReceiver$SendTask;->mIntent:Landroid/content/Intent;

    #calls: Lcom/android/mms/util/MsgForwardReceiver;->sendMessage(Landroid/content/Context;Landroid/content/Intent;)I
    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MsgForwardReceiver;->access$000(Lcom/android/mms/util/MsgForwardReceiver;Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/util/MsgForwardReceiver$SendTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .parameter "result"

    .prologue
    const v7, 0x7f0902a9

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 80
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_1

    move v0, v4

    .line 82
    .local v0, phone:Z
    :goto_0
    const/4 v3, 0x0

    .line 83
    .local v3, sPreference:Lcom/htc/preference/HtcPreferenceActivity;
    const/4 v1, 0x0

    .line 84
    .local v1, prefForward:Lcom/android/mms/util/CForwardPreference;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupport2LayerSetting()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 85
    invoke-static {}, Lcom/android/mms/ui/MessageGeneralPreference;->getInstance()Lcom/android/mms/ui/MessageGeneralPreference;

    move-result-object v3

    .line 92
    :goto_1
    if-eqz v3, :cond_6

    .line 93
    if-eqz v0, :cond_3

    .line 94
    const-string v4, "pref_key_msg_forwarding_phone"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .end local v1           #prefForward:Lcom/android/mms/util/CForwardPreference;
    check-cast v1, Lcom/android/mms/util/CForwardPreference;

    .line 96
    .restart local v1       #prefForward:Lcom/android/mms/util/CForwardPreference;
    if-eqz v1, :cond_0

    .line 97
    iput-boolean v5, v1, Lcom/android/mms/util/CForwardPreference;->m_bEnable:Z

    .line 98
    iget-object v4, p0, Lcom/android/mms/util/MsgForwardReceiver$SendTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/mms/util/CForwardPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    :goto_2
    return-void

    .end local v0           #phone:Z
    .end local v1           #prefForward:Lcom/android/mms/util/CForwardPreference;
    .end local v3           #sPreference:Lcom/htc/preference/HtcPreferenceActivity;
    :cond_1
    move v0, v5

    .line 80
    goto :goto_0

    .line 87
    .restart local v0       #phone:Z
    .restart local v1       #prefForward:Lcom/android/mms/util/CForwardPreference;
    .restart local v3       #sPreference:Lcom/htc/preference/HtcPreferenceActivity;
    :cond_2
    invoke-static {}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInstance()Lcom/android/mms/ui/MessagingPreferenceActivity;

    move-result-object v3

    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gtz v4, :cond_4

    .line 102
    const-string v4, "pref_key_msg_forwarding_phone"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .end local v1           #prefForward:Lcom/android/mms/util/CForwardPreference;
    check-cast v1, Lcom/android/mms/util/CForwardPreference;

    .line 104
    .restart local v1       #prefForward:Lcom/android/mms/util/CForwardPreference;
    if-eqz v1, :cond_4

    .line 105
    iput-boolean v5, v1, Lcom/android/mms/util/CForwardPreference;->m_bEnable:Z

    .line 106
    iget-object v4, p0, Lcom/android/mms/util/MsgForwardReceiver$SendTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/mms/util/CForwardPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    :cond_4
    const-string v4, "pref_key_msg_forwarding_email"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .end local v1           #prefForward:Lcom/android/mms/util/CForwardPreference;
    check-cast v1, Lcom/android/mms/util/CForwardPreference;

    .line 113
    .restart local v1       #prefForward:Lcom/android/mms/util/CForwardPreference;
    if-eqz v1, :cond_5

    .line 114
    iput-boolean v5, v1, Lcom/android/mms/util/CForwardPreference;->m_bEnable:Z

    .line 115
    iget-object v4, p0, Lcom/android/mms/util/MsgForwardReceiver$SendTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/mms/util/CForwardPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    :cond_5
    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_2

    .line 122
    :cond_6
    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInstance()Lcom/android/mms/ui/MessagingPreferenceActivity;

    move-result-object v3

    .line 124
    if-eqz v3, :cond_0

    .line 125
    const-string v5, "pref_key_mms_read_reports"

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 126
    .local v2, prefReadReport:Lcom/htc/preference/HtcPreference;
    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/util/MsgForwardReceiver$SendTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
