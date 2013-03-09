.class Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$InsertNumberTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "HtcContactBlackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InsertNumberTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/os/Bundle;",
        "Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 1097
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1098
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 16
    .parameter "target"
    .parameter "params"

    .prologue
    .line 1121
    const/4 v2, 0x0

    aget-object v14, p2, v2

    .line 1122
    .local v14, number:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1124
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "contact_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "account_type"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "display_name"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PHONE_NUMBERS_EQUAL( data1 , \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1128
    .local v10, c:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 1129
    .local v11, findContactExisted:Z
    const/4 v9, 0x0

    .line 1130
    .local v9, bundle:Landroid/os/Bundle;
    if-eqz v10, :cond_3

    .line 1131
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1132
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1133
    .local v12, id:J
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1134
    .local v8, accountType:Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_0

    .line 1135
    const-string v2, "com.anddroid.contacts.sim"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1136
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMailForSim(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 1139
    :goto_1
    const/4 v11, 0x1

    .line 1140
    if-nez v9, :cond_0

    .line 1142
    new-instance v9, Landroid/os/Bundle;

    .end local v9           #bundle:Landroid/os/Bundle;
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1143
    .restart local v9       #bundle:Landroid/os/Bundle;
    const-string v2, "name"

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const-string v2, "number"

    invoke-virtual {v9, v2, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1138
    :cond_1
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMail(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_1

    .line 1148
    .end local v8           #accountType:Ljava/lang/String;
    .end local v12           #id:J
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1152
    :cond_3
    if-nez v11, :cond_4

    .line 1153
    sget-object v7, Lcom/htc/provider/HtcContactsContract$BLOCKED_NUMBER;->CONTENT_URI:Landroid/net/Uri;

    .line 1154
    .local v7, BLACK_NUMBER_URI:Landroid/net/Uri;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1155
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "number"

    invoke-virtual {v15, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    :try_start_0
    invoke-virtual {v1, v7, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    .end local v7           #BLACK_NUMBER_URI:Landroid/net/Uri;
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_4
    :goto_2
    return-object v9

    .line 1159
    .restart local v7       #BLACK_NUMBER_URI:Landroid/net/Uri;
    .restart local v15       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1095
    check-cast p1, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    .end local p1
    check-cast p2, [Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$InsertNumberTask;->doInBackground(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;Landroid/os/Bundle;)V
    .locals 6
    .parameter "target"
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1103
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/util/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1104
    if-nez p2, :cond_0

    .line 1105
    const v1, 0x7f0a030c

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1111
    :goto_0
    return-void

    .line 1107
    :cond_0
    const v1, 0x7f0a030f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "number"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1, v1, v2}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1109
    .local v0, info:Ljava/lang/String;
    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1095
    check-cast p1, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    .end local p1
    check-cast p2, Landroid/os/Bundle;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$InsertNumberTask;->onPostExecute(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 1115
    invoke-super {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;->onPreExecute(Ljava/lang/Object;)V

    .line 1116
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1095
    check-cast p1, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$InsertNumberTask;->onPreExecute(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;)V

    return-void
.end method
