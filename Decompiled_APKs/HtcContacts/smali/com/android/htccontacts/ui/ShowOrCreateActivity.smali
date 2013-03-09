.class public final Lcom/android/htccontacts/ui/ShowOrCreateActivity;
.super Lcom/android/htccontacts/app/BaseActivity;
.source "ShowOrCreateActivity.java"

# interfaces
.implements Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ui/ShowOrCreateActivity$IntentClickListener;,
        Lcom/android/htccontacts/ui/ShowOrCreateActivity$MyOnDismissListener;
    }
.end annotation


# static fields
.field static final CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field static final CONTACT_ID_INDEX:I = 0x0

.field static final CREATE_CONTACT_DIALOG:I = 0x1

.field static final LOGD:Z = false

.field static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field static final QUERY_TOKEN:I = 0x2a

.field static final TAG:Ljava/lang/String; = "ShowOrCreateActivity"


# instance fields
.field private mCreateDescrip:Ljava/lang/String;

.field private mCreateExtras:Landroid/os/Bundle;

.field private mCreateForce:Z

.field private mQueryHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 70
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseActivity;-><init>()V

    .line 266
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/16 v1, 0x2a

    const/4 v2, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_3

    .line 93
    new-instance v0, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    .line 98
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 99
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 102
    .local v8, data:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 103
    .local v11, scheme:Ljava/lang/String;
    const/4 v12, 0x0

    .line 104
    .local v12, ssp:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 105
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 106
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 110
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    .line 111
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 112
    .local v10, originalExtras:Landroid/os/Bundle;
    if-eqz v10, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 117
    :cond_1
    const-string v0, "com.android.contacts.action.CREATE_DESCRIPTION"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 119
    iput-object v12, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    .line 123
    :cond_2
    const-string v0, "com.android.contacts.action.FORCE_CREATE"

    const/4 v4, 0x0

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mCreateForce:Z

    .line 126
    const-string v0, "mailto"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v4, "email"

    invoke-virtual {v0, v4, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 130
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    sget-object v4, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v3           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 95
    .end local v8           #data:Landroid/net/Uri;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #originalExtras:Landroid/os/Bundle;
    .end local v11           #scheme:Ljava/lang/String;
    .end local v12           #ssp:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    goto :goto_0

    .line 132
    .restart local v8       #data:Landroid/net/Uri;
    .restart local v9       #intent:Landroid/content/Intent;
    .restart local v10       #originalExtras:Landroid/os/Bundle;
    .restart local v11       #scheme:Ljava/lang/String;
    .restart local v12       #ssp:Ljava/lang/String;
    :cond_4
    const-string v0, "tel"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    iget-object v0, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v4, "phone"

    invoke-virtual {v0, v4, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 136
    .restart local v3       #uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    sget-object v4, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 139
    .end local v3           #uri:Landroid/net/Uri;
    :cond_5
    const-string v0, "ShowOrCreateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->finish()V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    .line 217
    packed-switch p1, :pswitch_data_0

    .line 238
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 220
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, createIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 222
    const-string v3, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0275

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, message:Ljava/lang/CharSequence;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0274

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/htccontacts/ui/ShowOrCreateActivity$IntentClickListener;

    invoke-direct {v5, p0, v0}, Lcom/android/htccontacts/ui/ShowOrCreateActivity$IntentClickListener;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/htccontacts/ui/ShowOrCreateActivity$IntentClickListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/htccontacts/ui/ShowOrCreateActivity$IntentClickListener;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 235
    .local v1, d:Landroid/app/Dialog;
    new-instance v3, Lcom/android/htccontacts/ui/ShowOrCreateActivity$MyOnDismissListener;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/ui/ShowOrCreateActivity$MyOnDismissListener;-><init>(Lcom/android/htccontacts/ui/ShowOrCreateActivity;)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v9, 0x1

    .line 154
    if-nez p3, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->finish()V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const/4 v3, 0x0

    .line 163
    .local v3, count:I
    const-wide/16 v0, -0x1

    .line 165
    .local v0, contactId:J
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 166
    if-ne v3, v9, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 168
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 171
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 175
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 179
    if-ne v3, v9, :cond_3

    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-eqz v7, :cond_3

    .line 181
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 182
    .local v2, contactUri:Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 183
    .local v6, viewIntent:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->startActivity(Landroid/content/Intent;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->finish()V

    goto :goto_0

    .line 171
    .end local v2           #contactUri:Landroid/net/Uri;
    .end local v6           #viewIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v7

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v7

    .line 186
    :cond_3
    if-le v3, v9, :cond_4

    .line 188
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEARCH"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v5, listIntent:Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-direct {v7, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 190
    iget-object v7, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->startActivity(Landroid/content/Intent;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->finish()V

    goto :goto_0

    .line 195
    .end local v5           #listIntent:Landroid/content/Intent;
    :cond_4
    iget-boolean v7, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mCreateForce:Z

    if-eqz v7, :cond_5

    .line 197
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.INSERT"

    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 198
    .local v4, createIntent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 199
    const-string v7, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->startActivity(Landroid/content/Intent;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->finish()V

    goto :goto_0

    .line 205
    .end local v4           #createIntent:Landroid/content/Intent;
    :cond_5
    iget-boolean v7, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-eqz v7, :cond_6

    .line 206
    invoke-virtual {p0, v9}, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 209
    :cond_6
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onQueryEntitiesComplete(ILjava/lang/Object;Landroid/content/EntityIterator;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "iterator"

    .prologue
    .line 259
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onStop()V

    .line 147
    iget-object v0, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 150
    :cond_0
    return-void
.end method
