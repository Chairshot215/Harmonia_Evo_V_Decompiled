.class Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryContactActionTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "ContactGlanceSelectDefaultActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryContactActionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryResult;",
        "Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private progress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/app/HtcProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 1064
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1065
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;[Landroid/net/Uri;)Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryResult;
    .locals 14
    .parameter "target"
    .parameter "params"

    .prologue
    .line 1070
    const/4 v2, 0x0

    aget-object v11, p2, v2

    .line 1071
    .local v11, lookupUri:Landroid/net/Uri;
    invoke-static {p1, v11}, Lcom/android/htccontacts/util/LinkUtils;->getContactUriFromLookUp(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    .line 1073
    .local v10, fixedUri:Landroid/net/Uri;
    new-instance v12, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryResult;

    const/4 v2, 0x0

    invoke-direct {v12, v2}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryResult;-><init>(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$1;)V

    .line 1074
    .local v12, result:Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryResult;
    if-eqz v10, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v12, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryResult;->existContact:Z

    .line 1075
    iget-boolean v2, v12, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryResult;->existContact:Z

    if-nez v2, :cond_1

    .line 1109
    :goto_1
    return-object v12

    .line 1074
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1079
    :cond_1
    #setter for: Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mUri:Landroid/net/Uri;
    invoke-static {p1, v10}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->access$102(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1081
    invoke-virtual {p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1082
    .local v0, resolver:Landroid/content/ContentResolver;
    #getter for: Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mDisplayName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->access$200(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1083
    #getter for: Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->access$100(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "data"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1085
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 1086
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1087
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mDisplayName:Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->access$202(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1089
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1093
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_3
    #getter for: Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->access$100(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    #setter for: Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mlPersonID:J
    invoke-static {p1, v4, v5}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->access$302(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;J)J

    .line 1095
    #getter for: Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mlPersonID:J
    invoke-static {p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->access$300(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)J

    move-result-wide v7

    .line 1097
    .local v7, contact_id:J
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1098
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 1099
    .local v6, builder:Landroid/net/Uri$Builder;
    const-string v2, "data"

    invoke-virtual {v6, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1100
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(mimetype = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "mimetype"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1106
    .local v3, selection:Ljava/lang/String;
    invoke-static {}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->access$400()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1107
    .local v13, resultCursor:Landroid/database/Cursor;
    iput-object v13, v12, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryResult;->cursor:Landroid/database/Cursor;

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1060
    check-cast p1, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;

    .end local p1
    check-cast p2, [Landroid/net/Uri;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryContactActionTask;->doInBackground(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;[Landroid/net/Uri;)Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryResult;)V
    .locals 3
    .parameter "target"
    .parameter "result"

    .prologue
    .line 1125
    iget-object v2, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryContactActionTask;->progress:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryContactActionTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/HtcProgressDialog;

    move-object v1, v2

    .line 1126
    .local v1, dialog:Lcom/htc/app/HtcProgressDialog;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->access$500(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1127
    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1130
    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v2, p2, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryResult;->existContact:Z

    if-nez v2, :cond_4

    .line 1131
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->finish()V

    .line 1142
    :cond_2
    :goto_1
    return-void

    .line 1125
    .end local v1           #dialog:Lcom/htc/app/HtcProgressDialog;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 1134
    .restart local v1       #dialog:Lcom/htc/app/HtcProgressDialog;
    :cond_4
    iget-object v0, p2, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryResult;->cursor:Landroid/database/Cursor;

    .line 1135
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1136
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1137
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 1139
    :cond_7
    invoke-virtual {p1, v0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->assignCursor(Landroid/database/Cursor;)V

    .line 1140
    invoke-virtual {p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->buildEntries()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1060
    check-cast p1, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;

    .end local p1
    check-cast p2, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryResult;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryContactActionTask;->onPostExecute(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryResult;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)V
    .locals 3
    .parameter "target"

    .prologue
    .line 1114
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1115
    const/4 v1, 0x0

    const v2, 0x7f0a0034

    invoke-virtual {p1, v2}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    .line 1116
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryContactActionTask;->progress:Ljava/lang/ref/WeakReference;

    .line 1117
    invoke-virtual {p1, v0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 1119
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1060
    check-cast p1, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryContactActionTask;->onPreExecute(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)V

    return-void
.end method
