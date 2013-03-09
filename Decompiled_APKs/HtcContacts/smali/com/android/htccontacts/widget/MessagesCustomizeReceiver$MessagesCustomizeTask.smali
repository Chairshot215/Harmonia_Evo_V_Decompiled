.class Lcom/android/htccontacts/widget/MessagesCustomizeReceiver$MessagesCustomizeTask;
.super Landroid/os/AsyncTask;
.source "MessagesCustomizeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/MessagesCustomizeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessagesCustomizeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/widget/MessagesCustomizeReceiver$MessagesCustomizeTask;->mResolver:Landroid/content/ContentResolver;

    .line 33
    iput-object p1, p0, Lcom/android/htccontacts/widget/MessagesCustomizeReceiver$MessagesCustomizeTask;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/widget/MessagesCustomizeReceiver$MessagesCustomizeTask;->mResolver:Landroid/content/ContentResolver;

    .line 35
    return-void
.end method

.method private readDatafromCustomizeDB()Landroid/os/Bundle;
    .locals 12

    .prologue
    .line 38
    const-string v0, "content://customization_settings/SettingTable/application_MessageConfig"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 39
    .local v1, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 40
    .local v8, customizationBundle:Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 44
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/MessagesCustomizeReceiver$MessagesCustomizeTask;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 46
    if-eqz v7, :cond_0

    .line 47
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 49
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 50
    .local v6, columnIndex:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 52
    .local v10, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 53
    .local v11, parcel:Landroid/os/Parcel;
    const/4 v0, 0x0

    array-length v2, v10

    invoke-virtual {v11, v10, v0, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v8           #customizationBundle:Landroid/os/Bundle;
    .local v9, customizationBundle:Landroid/os/Bundle;
    :try_start_1
    invoke-virtual {v9, v11}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .line 62
    .end local v6           #columnIndex:I
    .end local v9           #customizationBundle:Landroid/os/Bundle;
    .end local v10           #data:[B
    .end local v11           #parcel:Landroid/os/Parcel;
    .restart local v8       #customizationBundle:Landroid/os/Bundle;
    :cond_0
    if-eqz v7, :cond_1

    .line 63
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_1
    :goto_0
    const/4 v7, 0x0

    .line 68
    return-object v8

    .line 62
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v7, :cond_2

    .line 63
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_2
    const/4 v7, 0x0

    .line 62
    throw v0

    .line 59
    :catch_0
    move-exception v0

    .line 62
    :goto_2
    if-eqz v7, :cond_1

    .line 63
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 62
    .end local v8           #customizationBundle:Landroid/os/Bundle;
    .restart local v6       #columnIndex:I
    .restart local v9       #customizationBundle:Landroid/os/Bundle;
    .restart local v10       #data:[B
    .restart local v11       #parcel:Landroid/os/Parcel;
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9           #customizationBundle:Landroid/os/Bundle;
    .restart local v8       #customizationBundle:Landroid/os/Bundle;
    goto :goto_1

    .line 59
    .end local v8           #customizationBundle:Landroid/os/Bundle;
    .restart local v9       #customizationBundle:Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move-object v8, v9

    .end local v9           #customizationBundle:Landroid/os/Bundle;
    .restart local v8       #customizationBundle:Landroid/os/Bundle;
    goto :goto_2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/MessagesCustomizeReceiver$MessagesCustomizeTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 6
    .parameter "intents"

    .prologue
    .line 75
    const/4 v3, 0x0

    aget-object v2, p1, v3

    .line 76
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, action:Ljava/lang/String;
    const-string v3, "Contact MessagesCustomReciver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, customizationBundle:Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/android/htccontacts/widget/MessagesCustomizeReceiver$MessagesCustomizeTask;->readDatafromCustomizeDB()Landroid/os/Bundle;

    move-result-object v1

    .line 80
    const-string v3, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/widget/MessagesCustomizeReceiver$MessagesCustomizeTask;->setMaxMRData(Landroid/os/Bundle;)V

    .line 86
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public setMaxMRData(Landroid/os/Bundle;)V
    .locals 8
    .parameter "customizationBundle"

    .prologue
    const/4 v1, -0x1

    .line 90
    const-string v5, "setting"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 91
    .local v3, setting:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/htccontacts/widget/MessagesCustomizeReceiver$MessagesCustomizeTask;->mContext:Landroid/content/Context;

    const-string v6, "com.android.htccontacts.customizationBySIM"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 93
    .local v4, sp:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 94
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "MMS_Max_Recipient_Number"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v5, "MMS_Max_Recipient_Number"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, MMS_MRN:I
    :goto_0
    if-lez v0, :cond_0

    .line 97
    const-string v5, "MMS_Max_Recipient_Number"

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-static {v0}, Lcom/android/htccontacts/util/MessageUtil;->setMaxMMSRecipientNumber(I)V

    .line 102
    :cond_0
    const-string v5, "SMS_Max_Recipient_Number"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v5, "SMS_Max_Recipient_Number"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 104
    .local v1, SMS_MRN:I
    :cond_1
    if-lez v1, :cond_2

    .line 105
    const-string v5, "SMS_Max_Recipient_Number"

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-static {v1}, Lcom/android/htccontacts/util/MessageUtil;->setMaxSMSRecipientNumber(I)V

    .line 108
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    return-void

    .end local v0           #MMS_MRN:I
    .end local v1           #SMS_MRN:I
    :cond_3
    move v0, v1

    .line 94
    goto :goto_0
.end method
