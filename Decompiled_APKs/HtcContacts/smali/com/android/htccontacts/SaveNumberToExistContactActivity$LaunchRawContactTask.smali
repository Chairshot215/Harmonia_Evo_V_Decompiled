.class Lcom/android/htccontacts/SaveNumberToExistContactActivity$LaunchRawContactTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "SaveNumberToExistContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/SaveNumberToExistContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LaunchRawContactTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/htccontacts/SaveNumberToExistContactActivity;",
        ">;"
    }
.end annotation


# instance fields
.field projection:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V
    .locals 3
    .parameter "target"

    .prologue
    .line 1149
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1143
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$LaunchRawContactTask;->projection:[Ljava/lang/String;

    .line 1150
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1140
    check-cast p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    .end local p1
    check-cast p2, [Landroid/content/Intent;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$LaunchRawContactTask;->doInBackground(Lcom/android/htccontacts/SaveNumberToExistContactActivity;[Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Lcom/android/htccontacts/SaveNumberToExistContactActivity;[Landroid/content/Intent;)Ljava/lang/Void;
    .locals 14
    .parameter "target"
    .parameter "params"

    .prologue
    .line 1154
    invoke-virtual {p1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1155
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    aget-object v10, p2, v2

    .line 1156
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1157
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 1158
    .local v6, contactId:J
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "deleted"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = 0 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1161
    .local v3, selection:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$LaunchRawContactTask;->projection:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1162
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 1163
    .local v8, counts:I
    const-wide/16 v11, -0x1

    .line 1164
    .local v11, rawContactId:J
    if-eqz v9, :cond_0

    .line 1165
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1168
    :cond_0
    const/4 v2, 0x1

    if-le v8, v2, :cond_2

    .line 1170
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.android.htccontacts.ACTION_PICK_JOINT_MEMBERS"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1171
    .local v13, requestIntent:Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1172
    const/16 v2, 0x65

    invoke-virtual {p1, v13, v2}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1184
    .end local v13           #requestIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1185
    const/4 v2, 0x0

    return-object v2

    .line 1174
    :cond_2
    const/4 v2, 0x1

    if-ne v8, v2, :cond_3

    .line 1176
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1177
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1178
    invoke-virtual {p1, v11, v12}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->loadRawContact(J)V

    goto :goto_0

    .line 1182
    :cond_3
    invoke-virtual {p1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->finish()V

    goto :goto_0
.end method
