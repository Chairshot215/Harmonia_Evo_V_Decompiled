.class public Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;
.super Lcom/android/htccontacts/BrowseCallHistoryActivity;
.source "HtcCallLogBlackListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field static final ADD_NUMBER_TO_CONTACT:I = 0xf04

.field static final BLACK_NUMBER_URI:Landroid/net/Uri; = null

.field private static final DEBUG:Z = false

.field private static final MENU_ITEM_DELETE:I = 0x1

.field private static final REMOVE_BLOCK_CALL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HtcCallLogBlackListActivity"


# instance fields
.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mTempNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/htc/provider/HtcContactsContract$BLOCKED_NUMBER;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->BLACK_NUMBER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->mTempNumber:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->doDeleteCallLog(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method private deleteBlockCalls()V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.DELETE_BLOCK_CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 122
    return-void
.end method

.method private doDeleteCallLog(IZ)V
    .locals 5
    .parameter "id"
    .parameter "fromPeople"

    .prologue
    const/4 v4, 0x0

    .line 224
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 225
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 227
    :cond_0
    return-void
.end method

.method private removeBlackNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "number"

    .prologue
    const/4 v4, 0x1

    .line 216
    sget-object v0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->BLACK_NUMBER_URI:Landroid/net/Uri;

    .line 217
    .local v0, uri:Landroid/net/Uri;
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 218
    .local v1, whereArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "number = ?"

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 220
    return v4
.end method


# virtual methods
.method protected addToContact(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->mTempNumber:Ljava/lang/String;

    .line 129
    invoke-static {p1}, Lcom/htc/util/contacts/ContactsUtility;->getAddToContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 130
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "send_to_voicemail"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    const/16 v1, 0xf04

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    return-void
.end method

.method protected getQueryUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->BLOCK_CALL_LOG_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 136
    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    .line 137
    const/4 v7, 0x2

    if-ne p1, v7, :cond_2

    .line 140
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 142
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 144
    const-string v7, "SELECTED_ID"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 146
    .local v3, selectedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v3, :cond_1

    move v4, v6

    .line 149
    .local v4, size:I
    :goto_0
    if-lez v4, :cond_0

    .line 151
    new-instance v7, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v7, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 153
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v8, 0x7f0a0192

    invoke-virtual {v7, v8}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 155
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v8, 0x7f0a0193

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 159
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v7, v6}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 161
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v4}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 163
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 165
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 167
    new-instance v5, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity$1;

    invoke-direct {v5, p0, v4, v3}, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity$1;-><init>(Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;ILjava/util/ArrayList;)V

    .line 184
    .local v5, thread:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 213
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v3           #selectedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4           #size:I
    .end local v5           #thread:Ljava/lang/Thread;
    :cond_0
    :goto_1
    return-void

    .line 146
    .restart local v1       #extras:Landroid/os/Bundle;
    .restart local v3       #selectedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    .line 189
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v3           #selectedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    const/16 v7, 0xf04

    if-ne p1, v7, :cond_0

    .line 191
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->mTempNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 192
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->mTempNumber:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->removeBlackNumber(Ljava/lang/String;)Z

    .line 194
    if-eqz p3, :cond_0

    .line 195
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 196
    .local v0, contactUri:Landroid/net/Uri;
    const-string v7, "is_sim"

    invoke-virtual {p3, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 197
    .local v2, isSim:Z
    if-eqz v0, :cond_0

    .line 198
    new-instance v5, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity$2;

    invoke-direct {v5, p0, v2, v0}, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity$2;-><init>(Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;ZLandroid/net/Uri;)V

    .line 207
    .restart local v5       #thread:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x20201ba

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/Title1;

    .line 68
    .local v0, title:Lcom/htc/widget/Title1;
    if-eqz v0, :cond_0

    .line 69
    const v1, 0x7f0a0383

    invoke-virtual {v0, v1}, Lcom/htc/widget/Title1;->setTitle1(I)V

    .line 72
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    const v0, 0x7f0a0311

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 87
    return v2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->onDestroy()V

    .line 232
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 103
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 112
    invoke-super {p0, p1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 106
    :pswitch_0
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[HtcCallLogBlackListActivity]Delete blocked calls"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->deleteBlockCalls()V

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 246
    invoke-super {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->onPause()V

    .line 247
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 93
    .local v0, delete:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 94
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 98
    :goto_0
    return v3

    .line 96
    :cond_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->onResume()V

    .line 238
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->isFromBlockCallView(Z)V

    .line 239
    invoke-static {p0}, Lcom/android/htccontacts/blacklist/HtcBlackListActivity;->checkNeedProtection(Landroid/content/Context;)V

    .line 242
    return-void
.end method
